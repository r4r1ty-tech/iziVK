package ru.vtosters.lite.utils;

import android.content.pm.PackageInfo;
import java.util.Collections;
import java.util.List;

public class DevicePrivacyShield {

    // Статический анонимный Android ID
    public static final String FAKE_ANDROID_ID = "0000000000000000";
    public static final String FAKE_IMEI = "000000000000000";
    public static final String FAKE_MAC = "02:00:00:00:00:00";

    /**
     * Блокирует попытки приложения сканировать список установленных пакетов на устройстве.
     * Возвращает пустой список, предотвращая сбор маркетингового профиля.
     */
    public static List<PackageInfo> sanitizeInstalledPackages(List<PackageInfo> originalList) {
        return Collections.emptyList();
    }

    /**
     * Возвращает анонимизированный Android ID вместо реального системного идентификатора.
     */
    public static String getAnonymizedAndroidId(String realId) {
        return FAKE_ANDROID_ID;
    }

    /**
     * Возвращает анонимизированный IMEI / Device ID.
     */
    public static String getAnonymizedDeviceId(String realId) {
        return FAKE_IMEI;
    }

    /**
     * Возвращает анонимизированный MAC-адрес.
     */
    public static String getAnonymizedMac(String realMac) {
        return FAKE_MAC;
    }
}
