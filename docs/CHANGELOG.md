# Журнал изменений iziVK (Changelog)

Все изменения, доработки и исправления проекта `iziVK` фиксируются в данном документе.

---

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
