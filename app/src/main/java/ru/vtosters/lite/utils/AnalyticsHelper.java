package ru.vtosters.lite.utils;

import android.app.Application;
import ru.vtosters.lite.ui.fragments.TrackedMaterialPreferenceToolbarFragment;

import java.util.HashMap;

public class AnalyticsHelper {

    public static void start(Application application) {
        // Disabled for privacy - 0 telemetry
    }

    public static void trackEvent(String event) {
        // Disabled for privacy
    }

    public static void trackEvent(String event, HashMap<String, String> map) {
        // Disabled for privacy
    }

    public static void trackSettingsFragment(Class<? extends TrackedMaterialPreferenceToolbarFragment> fragment) {
        // Disabled for privacy
    }

    public static void trackError(Throwable th) {
        // Disabled for privacy
    }

    public static void setAnalyticsStatus(Boolean bool) {
        // Disabled for privacy
    }
}
