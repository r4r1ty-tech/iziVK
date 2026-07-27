# Журнал изменений iziVK (Changelog)

Все изменения, доработки и исправления проекта `iziVK` фиксируются в данном документе.

---

## [Недавно добавленное] - 2026-07-27

### 🔒 Полный вырез телеметрии, метрик и слежки (по итогам аудита)

По итогам сквозного аудита кодовой базы (Java-патчи + smali) были устранены все оставшиеся каналы телеметрии/трекинга, найденные аудитом:

- **VK Vigo (видео/войс/API телеметрия) — полностью нейтрализован**:
  - `smali_classes4/com/vk/vigo/Vigo.smali`: геттер `useVigo` (`a()Z`) теперь всегда возвращает `false` — это единственная точка входа, которую проверяют `VigoVideo`, `VigoVoip`, `VigoApi` и `Vigo$vigoBootstrapBuilder$2` перед созданием `VigoSession`/`VigoBootstrapBuilder`. Ни один `vigo.sdk.Vigo`/`VigoSession` больше не создаётся.
  - В блок-лист `CleanInterceptor` добавлен `stats.vk-portal.net` (Vigo `EXIT_GATE`) и `reef.vk-cdn.net` (VK Reef) — на случай прямых обращений в обход гейта.
- **Facebook SDK (AppEvents/attribution) — отключена автоматическая инициализация**:
  - `smali/com/facebook/internal/FacebookInitProvider.smali`: `onCreate()` больше не вызывает `FacebookSdk.sdkInitialize(...)` при старте приложения — SDK не поднимается автоматически в фоне.
  - `com.facebook.CampaignTrackingReceiver` (install-referrer атрибуция) отключён в `AndroidManifest.xml` (`enabled="false"`, `exported="false"`).
  - В блок-лист `CleanInterceptor` добавлены `facebook.com`, `graph.facebook.com`, `graph-video.facebook.com`, `connect.facebook.net`, `fbcdn.net`.
  - Ручные пути инициализации (Facebook Login/Share, по явному действию пользователя) не тронуты — это фича, а не слежка, и уже ограничена мета-данными `AutoLogAppEventsEnabled=false`/`AdvertiserIDCollectionEnabled=false`.
- **Вторая SIM-карта (Dual-SIM) — устранена утечка IMEI/ICCID/IMSI**:
  - `smali_classes5/ru/mail/libverify/accounts/f.smali`: для второй SIM (получаемой через reflection) `getDeviceId` теперь пропускается через `DevicePrivacyShield.getAnonymizedDeviceId`, `getSimSerialNumber`/`getSubscriberId` зануляются — по аналогии с уже пропатченным путём первой SIM.
- **SSID в Chromium WebView — устранена утечка**:
  - `smali_classes5/org/chromium/net/NetworkChangeNotifierAutoDetect$h.smali`: прямой вызов `WifiInfo.getSSID()` теперь пропускается через `DevicePrivacyShield.getAnonymizedSsid`.
- **Android ID в libverify (SMS-верификация) — анонимизирован**:
  - `smali_classes5/ru/mail/libverify/storage/m.smali`: прямое чтение `Settings.Secure.ANDROID_ID` теперь пропускается через `DevicePrivacyShield.getAnonymizedAndroidId`.
- **Firebase Remote Config — сетевой запрос отключён полностью**:
  - `smali/com/google/firebase/remoteconfig/internal/ConfigFetchHttpClient.smali`: метод `fetch(...)` теперь сразу выбрасывает `FirebaseRemoteConfigException` вместо реального HTTP-запроса. Это устраняет обход `CleanInterceptor`, так как Remote Config использует сырой `HttpURLConnection`, а не OkHttp.
- **Прямые вызовы `stats.trackEvents` (VK API) — устранены**:
  - Убраны вызовы `StatsTrackEvents` (построение + отправка `ApiRequest`) в `ArticleFragment$a`, `EditorAnalytics$a`, `MasksAnalytics$a`, `ProfileTracker1`, `VkAppsAnalytics` — эти запросы шли на `api.vk.com`, поэтому не могли быть заблокированы по домену без разрыва основного API.
  - `Analytics$g` (пиксельная отправка `StatisticUrl`) больше не выполняет реальный сетевой запрос (`Analytics.b(url)`), локальный код обработки ответа сохранён (обрабатывает "пустой ответ" как штатный случай).
- **`Metrics.java` — удалён мёртвый сетевой код**:
  - Убраны неиспользуемые приватные методы `trackEventsRequest`, `handleNetworkConnected`, `handleNetworkDisconnected`, `trackEventList`, `trackEventsImmediately`, `resetEvents`, `shouldSaveUserTraffic`, `isMobileNetwork` — ранее недостижимый код с реальным HTTP-запросом на `stats.trackEvents` (включая `access_token` в URL) удалён целиком, а не просто отключён.
  - Соответствующий smali (`smali_classes6/ru/vtosters/lite/utils/Metrics.smali`, `Metrics$1.smali`) синхронизирован с Java-источником.
- **Блок-лист `CleanInterceptor` дополнен**: `tracker.my.com` (MyTarget SDK).

### ✅ Проверка сборки
- Все правки (Java + smali) проверены полной пересборкой дерева `smali/` через `apktool b --use-aapt2` — ошибок ассемблирования bytecode и компиляции ресурсов нет.

## [Недавно добавленное] - 2026-07-26

### 🔒 Безопасность и Приватность
- **Нейтрализация данных SIM-карты**:
  - В файле `smali_classes5/ru/mail/libverify/accounts/f.smali` нейтрализовано считывание серийного номера SIM (`getSimSerialNumber()`) и IMSI (`getSubscriberId()`) — вызовы перехвачены, возвращается `null`.
- **Анонимизация Wi-Fi точек (BSSID и SSID)**:
  - Добавлены статические методы-заглушки в `DevicePrivacyShield.java` и `DevicePrivacyShield.smali` (`getAnonymizedBssid` и `getAnonymizedSsid`).
  - Обернуты вызовы получения BSSID и SSID в Smali-модулях: `LocationInfo.smali`, `ReefNetworkUtil.smali`, `Vigo.smali`, `AndroidNetworkLibrary.smali`, `b.smali`.
- **Защита от анти-VPN проверок VK**:
  - Закреплена маскировка сетевых статусов: `DevicePrivacyShield.isVpnActive()` всегда возвращает `false`.
  - `DirectSocketFactory` перенаправляет служебный сетевой трафик через физический сетевой интерфейс (`TRANSPORT_WIFI`/`TRANSPORT_CELLULAR`), предотвращая обрыв соединения из-за блокировок VPN со стороны серверов VK.

### 🏷 Брендинг и Интерфейс
- **Очистка текстов VTosters на iziVK**:
  - Обновлены тексты приветствия, стартового соглашения, системных ошибок и справки о верификации в `smali/res/values-ru/strings.xml` и `smali/res/values/strings.xml`.
  - Имя приложения в системе установлено в `iziVK`.

### 🛠 Сборка
- Проведена полная пересборка и подпись APK-файла через `scripts/build.sh`.
- Готовый APK сохранен в `scripts/VTLite.apk`.
