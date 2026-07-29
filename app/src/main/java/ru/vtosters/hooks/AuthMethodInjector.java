package ru.vtosters.hooks;

import android.app.Activity;
import android.content.Intent;
import android.view.View;

import androidx.fragment.app.Fragment;

import com.vk.auth.w.a.ChooseAuthMethodFragment;
import com.vtosters.lite.R;
import com.vtosters.lite.auth.SessionInjector;
import com.vtosters.lite.ui.activities.WebAuthActivity;
import com.vtosters.lite.ui.dialogs.AnonymousAuthWarningDialog;
import com.vtosters.lite.utils.AndroidUtils;

public final class AuthMethodInjector {
    public static final int REQUEST_WEB_AUTH = 0x1A01;

    private AuthMethodInjector() {
    }

    public static void inject(View root, Fragment fragment) {
        if (!(fragment instanceof ChooseAuthMethodFragment) || root == null) {
            return;
        }

        View anonymousButton = root.findViewById(R.id.login_anonymous_button);
        if (anonymousButton != null) {
            anonymousButton.setOnClickListener(v -> {
                Activity activity = fragment.getActivity();
                if (activity == null) {
                    return;
                }
                AnonymousAuthWarningDialog.show(
                        activity,
                        () -> activity.startActivityForResult(
                                new Intent(activity, WebAuthActivity.class),
                                REQUEST_WEB_AUTH
                        )
                );
            });
        }
    }

    public static boolean handleAuthActivityResult(int requestCode, int resultCode, Intent data, Activity activity) {
        if (requestCode != REQUEST_WEB_AUTH || activity == null) {
            return false;
        }

        if (resultCode != Activity.RESULT_OK || data == null) {
            return true;
        }

        String token = data.getStringExtra(WebAuthActivity.EXTRA_ACCESS_TOKEN);
        int userId;
        int expiresIn;
        try {
            userId = Integer.parseInt(data.getStringExtra(WebAuthActivity.EXTRA_USER_ID));
            expiresIn = Integer.parseInt(data.getStringExtra(WebAuthActivity.EXTRA_EXPIRES_IN));
        } catch (NumberFormatException e) {
            AndroidUtils.sendToast(activity.getString(R.string.auth_error_vtl));
            return true;
        }

        SessionInjector.loginWithToken(
                activity,
                token,
                userId,
                expiresIn,
                () -> {
                    activity.setResult(Activity.RESULT_OK);
                    activity.finish();
                },
                () -> AndroidUtils.sendToast(activity.getString(R.string.auth_error_vtl))
        );
        return true;
    }
}
