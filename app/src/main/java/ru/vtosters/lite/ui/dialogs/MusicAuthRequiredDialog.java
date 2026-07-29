package ru.vtosters.lite.ui.dialogs;

import android.app.Activity;
import android.content.Intent;

import com.vk.auth.main.AuthActivity;
import com.vk.auth.main.VKAuth;
import com.vk.core.dialogs.alert.VkAlertDialog;
import com.vtosters.lite.R;
import com.vtosters.lite.auth.AuthMode;

public final class MusicAuthRequiredDialog {
    private MusicAuthRequiredDialog() {
    }

    public static void show(Activity activity) {
        if (activity == null) {
            return;
        }

        new VkAlertDialog.Builder(activity)
                .setTitle(R.string.izivk_music_auth_required_title)
                .setMessage(R.string.izivk_music_auth_required_message)
                .setPositiveButton(R.string.izivk_auth_full_button, (dialog, which) -> startFullAuth(activity))
                .setNegativeButton(R.string.cancel, null)
                .show();
    }

    private static void startFullAuth(Activity activity) {
        AuthMode.clear();
        VKAuth.a("logout", false);
        activity.startActivity(new Intent(activity, AuthActivity.class));
    }
}
