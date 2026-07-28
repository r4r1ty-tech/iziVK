package ru.vtosters.hooks;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import b.h.g.k.VKProgressDialog;
import com.vk.core.dialogs.alert.VkAlertDialog;
import com.vk.medianative.NativeLibLoader;
import com.vtosters.lite.R;
import ru.vtosters.hooks.other.Preferences;
import ru.vtosters.hooks.other.ThemesUtils;
import ru.vtosters.hooks.ui.SystemThemeChangerHook;
import ru.vtosters.lite.concurrent.VTExecutors;
import ru.vtosters.lite.downloaders.notifications.NotificationChannels;
import ru.vtosters.lite.ssfs.UsersList;
import ru.vtosters.lite.ui.dialogs.InstallGMS;
import ru.vtosters.lite.ui.dialogs.OTADialog;
import ru.vtosters.lite.ui.dialogs.Start;
import ru.vtosters.lite.utils.*;
import ru.vtosters.sponsorpost.internal.Native;
import ru.vtosters.sponsorpost.utils.Updates;

import static ru.vtosters.hooks.other.Preferences.checkupdates;
import static ru.vtosters.lite.utils.CacheUtils.getInstance;

public class MainActivityInjector {
    public static void inject(Activity activity) {
        SystemThemeChangerHook.themeOnStart(activity);

        UsersList.getUsersList();
        VTVerifications.load(activity);

        if (checkupdates()) OTADialog.checkUpdates(activity);

        VTExecutors.getSlowTasksScheduler().a(() -> {
            getInstance().autoCleaningCache();

            if (!Preferences.serverFeaturesDisable()) {
                Updates.updateFilters();
                Updates.updatePosts();
            }
        }); // slowTasksScheduler

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            NotificationChannels.createChannels();
        }

        VTExecutors.getIoScheduler().a(DeletedMessagesHook::reloadMessagesList); // ioScheduler

        if (activity.getIntent().getAction() != null && Intent.ACTION_APPLICATION_PREFERENCES.equals(activity.getIntent().getAction())) {
            NavigatorUtils.switchToSettings(activity);
            return;
        }

        Start.alert(activity);
        InstallGMS.alert(activity);
        // VKIDProtection.alert(activity);

        if (AccountManagerUtils.isLogin() && !Preferences.serverFeaturesDisable() && Preferences.isValidSignature()) {
            Native.canVote = NativeLibLoader.loadLibrary("sponsorpost");
        }
    }
}
