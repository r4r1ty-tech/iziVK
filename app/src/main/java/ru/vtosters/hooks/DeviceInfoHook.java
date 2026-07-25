package ru.vtosters.hooks;

import android.annotation.SuppressLint;
import android.os.Build;
import android.util.Log;
import ru.vtosters.lite.utils.DevicePrivacyShield;

import static ru.vtosters.hooks.other.Preferences.getBoolValue;
import static ru.vtosters.lite.utils.AndroidUtils.MD5;

public class DeviceInfoHook {
    public static String getDeviceInfo(String input) {
        Log.d("DeviceInfoHook", "getDeviceInfo: " + input);
        if (getBoolValue("hideDeviceInfo", true)) return "";
        return input;
    }

    public static String getDeviceId(String input) {
        return findDeviceId() + ":" + getDeviceId();
    }

    public static String getDeviceId() {
        String sb2 = Build.PRODUCT +
                Build.BOARD +
                Build.BOOTLOADER +
                Build.BRAND +
                Build.DEVICE +
                Build.DISPLAY +
                Build.FINGERPRINT +
                Build.HARDWARE +
                Build.HOST +
                Build.ID +
                Build.MANUFACTURER +
                Build.MODEL +
                Build.PRODUCT +
                Build.TAGS;

        return MD5(sb2);
    }

    @SuppressLint("HardwareIds")
    public static String findDeviceId() {
        return DevicePrivacyShield.getAnonymizedAndroidId(null);
    }
}
