package ru.vtosters.hooks;

import android.app.Activity;

import ru.vtosters.lite.auth.AuthMode;
import ru.vtosters.lite.ui.dialogs.MusicAuthRequiredDialog;
import ru.vtosters.lite.utils.LifecycleUtils;

public final class MusicAuthGateHook {
    private MusicAuthGateHook() {
    }

    public static boolean checkMusicAccess() {
        if (!AuthMode.isAnonymous()) {
            return true;
        }

        Activity activity = LifecycleUtils.getCurrentActivity();
        if (activity != null) {
            activity.runOnUiThread(() -> MusicAuthRequiredDialog.show(activity));
        }
        return false;
    }
}
