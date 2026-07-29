package ru.vtosters.lite.auth;

import ru.vtosters.hooks.other.Preferences;

public enum AuthMode {
    ANONYMOUS,
    FULL;

    private static final String PREF_KEY = "auth_mode";

    public static AuthMode get() {
        String value = Preferences.getString(PREF_KEY);
        if (FULL.name().equals(value)) {
            return FULL;
        }
        if (ANONYMOUS.name().equals(value)) {
            return ANONYMOUS;
        }
        return FULL;
    }

    public static void set(AuthMode mode) {
        Preferences.getPreferences().edit().putString(PREF_KEY, mode.name()).apply();
    }

    public static boolean isAnonymous() {
        return get() == ANONYMOUS;
    }

    public static void clear() {
        Preferences.getPreferences().edit().remove(PREF_KEY).apply();
    }
}
