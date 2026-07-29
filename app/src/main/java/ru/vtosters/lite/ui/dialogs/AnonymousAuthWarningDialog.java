package ru.vtosters.lite.ui.dialogs;

import android.content.Context;

import com.vk.core.dialogs.alert.VkAlertDialog;
import com.vtosters.lite.R;

public final class AnonymousAuthWarningDialog {
    public interface Listener {
        void onContinue();
    }

    private AnonymousAuthWarningDialog() {
    }

    public static void show(Context context, Listener listener) {
        new VkAlertDialog.Builder(context)
                .setTitle(R.string.izivk_auth_anonymous_title)
                .setMessage(R.string.izivk_auth_anonymous_warning)
                .setPositiveButton(R.string.izivk_auth_continue, (dialog, which) -> {
                    if (listener != null) {
                        listener.onContinue();
                    }
                })
                .setNegativeButton(R.string.cancel, null)
                .show();
    }
}
