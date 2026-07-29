package ru.vtosters.lite.utils;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

public class DevicePrivacyShield {

    public static final String FAKE_ANDROID_ID = "0000000000000000";
    public static final String FAKE_IMEI = "000000000000000";
    public static final String FAKE_MAC = "02:00:00:00:00:00";

    private static final String[] VPN_IFACES = {"tun0", "tun1", "ppp0", "pptp0", "wg0", "ipsec0", "ccmni"};

    /**
     * Блокирует попытки приложения сканировать список установленных пакетов.
     */
    public static List<PackageInfo> sanitizeInstalledPackages(List<PackageInfo> originalList) {
        android.util.Log.d("iziVK-Privacy", "getInstalledPackages blocked");
        return Collections.emptyList();
    }

    /**
     * Блокирует getInstalledApplications().
     */
    public static List<ApplicationInfo> sanitizeInstalledApplications(List<ApplicationInfo> originalList) {
        android.util.Log.d("iziVK-Privacy", "getInstalledApplications blocked");
        return Collections.emptyList();
    }

    private static String sRandomAndroidId = null;
    private static String sRandomDeviceId = null;

    public static String getAnonymizedAndroidId(String realId) {
        if (sRandomAndroidId == null) {
            String saved = ru.vtosters.hooks.other.Preferences.getString("anon_android_id");
            if (saved != null && saved.length() == 16) {
                sRandomAndroidId = saved;
            } else {
                sRandomAndroidId = java.util.UUID.randomUUID().toString().replace("-", "").substring(0, 16);
                ru.vtosters.hooks.other.Preferences.getPreferences().edit().putString("anon_android_id", sRandomAndroidId).apply();
            }
        }
        return sRandomAndroidId;
    }

    public static String getAnonymizedDeviceId(String realId) {
        if (sRandomDeviceId == null) {
            sRandomDeviceId = "86" + java.util.UUID.randomUUID().toString().replaceAll("[^0-9]", "0").substring(0, 13);
        }
        return sRandomDeviceId;
    }

    public static String getAnonymizedMac(String realMac) {
        return FAKE_MAC;
    }

    public static String getAnonymizedBssid(String realBssid) {
        return FAKE_MAC;
    }

    public static String getAnonymizedSsid(String realSsid) {
        return "<unknown ssid>";
    }

    /**
     * Всегда сообщает, что VPN не активен (скрытие TRANSPORT_VPN / tun0).
     */
    public static boolean isVpnActive() {
        android.util.Log.d("iziVK-Privacy", "VPN check -> hidden (false)");
        return false;
    }

    /**
     * Убирает туннельные интерфейсы из списка (tun0, ppp0 и т.п.).
     */
    public static List<String> sanitizeNetworkInterfaces(List<String> interfaces) {
        if (interfaces == null || interfaces.isEmpty()) {
            return Collections.emptyList();
        }
        List<String> clean = new ArrayList<>();
        for (String name : interfaces) {
            if (name != null && !isVpnInterfaceName(name)) {
                clean.add(name);
            }
        }
        return clean;
    }

    public static boolean isVpnInterfaceName(String name) {
        if (name == null || name.isEmpty()) return false;
        String lower = name.toLowerCase(Locale.ROOT);
        for (String vpn : VPN_IFACES) {
            if (lower.equals(vpn) || lower.startsWith("tun") || lower.startsWith("ppp")) {
                return true;
            }
        }
        return false;
    }
}
