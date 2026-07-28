.class public Lru/vtosters/lite/ui/fragments/VTSettings;
.super Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;
.source "VTSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/vtosters/lite/ui/fragments/VTSettings$AboutInformation;
    }
.end annotation





# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;-><init>()V

    return-void
.end method



.method public static getValAsString(ILjava/lang/Boolean;)Ljava/lang/String;
    .locals 1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, ": "

    if-eqz p1, :cond_0

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p0, 0x7f121805

    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p0, 0x7f121804

    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onCreate$1(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 140
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic lambda$onCreate$11(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 298
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "ssl"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$onCreate$22(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$onCreate$43(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 726
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "autoupdates"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x1

    return p0
.end method

.method private switchTheme(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 94
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getDarkTheme()Lcom/vk/core/ui/themes/VKTheme;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getLightTheme()Lcom/vk/core/ui/themes/VKTheme;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lru/vtosters/hooks/other/ThemesUtils;->setTheme(Lcom/vk/core/ui/themes/VKTheme;Landroid/app/Activity;Ljava/lang/Boolean;)V

    return-void
.end method

.method private updateCacheSize()V
    .locals 4

    const-string v0, "currcache"

    .line 746
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/VTSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f12188e

    invoke-virtual {p0, v2}, Lru/vtosters/lite/ui/fragments/VTSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lru/vtosters/lite/utils/IOUtils;->getDirSize(Ljava/io/File;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lru/vtosters/lite/utils/CacheUtils;->humanReadableByteCountBin(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public T4()I
    .locals 1

    const v0, 0x7f12099f

    return v0
.end method

.method synthetic lambda$onCreate$0$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 3

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "logout"

    .line 122
    invoke-static {v0, p1}, Lcom/vtosters/lite/auth/VKAuth;->a(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :catch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vtosters/lite/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x8000

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return p1
.end method

.method synthetic lambda$onCreate$10$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 1

    .line 285
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/vtosters/lite/fragments/n2/SettingsDebugFragment;

    invoke-static {p1, v0}, Lru/vtosters/lite/utils/NavigatorUtils;->switchFragment(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$12$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 1

    const-string p1, "account"

    .line 314
    invoke-static {p1}, Lru/vtosters/lite/ui/fragments/VKUIwrapper;->officalLinks(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lru/vtosters/lite/ui/fragments/VKUIwrapper;

    invoke-static {p1, v0}, Lru/vtosters/lite/utils/NavigatorUtils;->switchFragment(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$13$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 1

    .line 327
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/vk/webapp/fragments/PrivacyFragment;

    invoke-static {p1, v0}, Lru/vtosters/lite/utils/NavigatorUtils;->switchFragment(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$14$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 1

    .line 339
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/vtosters/lite/general/fragments/SettingsAccountFragment;

    invoke-static {p1, v0}, Lru/vtosters/lite/utils/NavigatorUtils;->switchFragment(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$15$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 2

    .line 352
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/vk/identity/fragments/IdentityListFragment$a;

    const-string v1, "menu"

    invoke-direct {v0, v1}, Lcom/vk/identity/fragments/IdentityListFragment$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vk/identity/fragments/IdentityListFragment$a;->e()Lcom/vk/navigation/Navigator;

    move-result-object v0

    invoke-static {p1, v0}, Lru/vtosters/lite/utils/NavigatorUtils;->switchFragmentNavigator(Landroid/content/Context;Lcom/vk/navigation/Navigator;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$16$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 1

    const-string p1, "bugs"

    .line 366
    invoke-static {p1}, Lru/vtosters/lite/ui/fragments/VKUIwrapper;->officalLinks(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lru/vtosters/lite/ui/fragments/VKUIwrapper;

    invoke-static {p1, v0}, Lru/vtosters/lite/utils/NavigatorUtils;->switchFragment(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$17$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 1

    .line 383
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/vtosters/lite/general/fragments/SettingsGeneralFragment;

    invoke-static {p1, v0}, Lru/vtosters/lite/utils/NavigatorUtils;->switchFragment(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$18$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 1

    .line 395
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/vtosters/lite/fragments/w2/BlacklistFragment;

    invoke-static {p1, v0}, Lru/vtosters/lite/utils/NavigatorUtils;->switchFragment(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$19$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 1

    .line 407
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/vk/notifications/settings/NotificationsSettingsFragment;

    invoke-static {p1, v0}, Lru/vtosters/lite/utils/NavigatorUtils;->switchFragment(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$2$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)V
    .locals 3

    .line 137
    invoke-static {}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserPhoto()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v2}, Lru/vtosters/lite/utils/ImageUtils;->getDrawableFromUrl(Ljava/lang/String;IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda37;

    invoke-direct {v2, p1, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda37;-><init>(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$onCreate$20$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 1

    .line 420
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/vtosters/lite/fragments/money/music/control/subscription/MusicSubscriptionControlFragment;

    invoke-static {p1, v0}, Lru/vtosters/lite/utils/NavigatorUtils;->switchFragment(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$21$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 1

    .line 433
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/vk/balance/BalanceFragment;

    invoke-static {p1, v0}, Lru/vtosters/lite/utils/NavigatorUtils;->switchFragment(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$23$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 1

    .line 457
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lru/vtosters/lite/ui/fragments/FeedFragment;

    invoke-static {p1, v0}, Lru/vtosters/lite/utils/NavigatorUtils;->switchFragment(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$24$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 1

    .line 470
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lru/vtosters/lite/ui/fragments/MediaFragment;

    invoke-static {p1, v0}, Lru/vtosters/lite/utils/NavigatorUtils;->switchFragment(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$25$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 1

    .line 482
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lru/vtosters/lite/ui/fragments/MusicFragment;

    invoke-static {p1, v0}, Lru/vtosters/lite/utils/NavigatorUtils;->switchFragment(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$26$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 1

    .line 496
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lru/vtosters/lite/ui/fragments/MessagesFragment;

    invoke-static {p1, v0}, Lru/vtosters/lite/utils/NavigatorUtils;->switchFragment(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    return p1
.end method





.method synthetic lambda$onCreate$29$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 1

    .line 532
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lru/vtosters/lite/ui/fragments/InterfaceFragment;

    invoke-static {p1, v0}, Lru/vtosters/lite/utils/NavigatorUtils;->switchFragment(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$3$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 1

    .line 152
    invoke-static {}, Lru/vtosters/lite/ssfs/Utils;->getVKUILink()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/ui/fragments/VKUIwrapper;->setLink(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lru/vtosters/lite/ui/fragments/VKUIwrapper;

    invoke-static {p1, v0}, Lru/vtosters/lite/utils/NavigatorUtils;->switchFragment(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    return p1
.end method



.method synthetic lambda$onCreate$31$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 1

    .line 558
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;

    invoke-static {p1, v0}, Lru/vtosters/lite/utils/NavigatorUtils;->switchFragment(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$32$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 1

    .line 570
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lru/vtosters/lite/ui/fragments/ActivityFragment;

    invoke-static {p1, v0}, Lru/vtosters/lite/utils/NavigatorUtils;->switchFragment(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$33$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 1

    .line 582
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lru/vtosters/lite/ui/fragments/ProxySettingsFragment;

    invoke-static {p1, v0}, Lru/vtosters/lite/utils/NavigatorUtils;->switchFragment(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$34$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 2

    .line 595
    new-instance p1, Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.settings.APP_LOCALE_SETTINGS"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/VTSettings;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$35$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 1

    .line 608
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lru/vtosters/lite/ui/fragments/OtherFragment;

    invoke-static {p1, v0}, Lru/vtosters/lite/utils/NavigatorUtils;->switchFragment(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$36$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 1

    .line 622
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/vk/about/AboutAppFragment;

    invoke-static {p1, v0}, Lru/vtosters/lite/utils/NavigatorUtils;->switchFragment(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$37$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 2

    .line 635
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lru/vtosters/hooks/AboutHook;->getCommitLink()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$38$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 3

    .line 648
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 649
    new-instance v0, Lru/vtosters/lite/ui/fragments/VTSettings$AboutInformation;

    invoke-direct {v0}, Lru/vtosters/lite/ui/fragments/VTSettings$AboutInformation;-><init>()V

    const-string v1, "vk_link"

    const-string v2, "https://vk.me/join/jKE1bIZczHTF2mLkuoiQcd0qIBYgHuGFPRA="

    .line 651
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tg_link"

    const-string v2, "https://t.me/vtosterschat"

    .line 652
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    invoke-virtual {v0, p1}, Lru/vtosters/lite/ui/fragments/VTSettings$AboutInformation;->setArguments(Landroid/os/Bundle;)V

    .line 655
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lru/vtosters/lite/ui/fragments/VTSettings$AboutInformation;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$39$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 3

    .line 667
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 668
    new-instance v0, Lru/vtosters/lite/ui/fragments/VTSettings$AboutInformation;

    invoke-direct {v0}, Lru/vtosters/lite/ui/fragments/VTSettings$AboutInformation;-><init>()V

    const-string v1, "vk_link"

    const-string v2, "https://vk.com/vtosters_official"

    .line 670
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tg_link"

    const-string v2, "https://t.me/vtosters"

    .line 671
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    invoke-virtual {v0, p1}, Lru/vtosters/lite/ui/fragments/VTSettings$AboutInformation;->setArguments(Landroid/os/Bundle;)V

    .line 674
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lru/vtosters/lite/ui/fragments/VTSettings$AboutInformation;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$4$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 170
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->systemtheme()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "systemtheme_enabled"

    .line 171
    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 174
    :cond_0
    check-cast p1, Lcom/vtosters/lite/ui/MaterialSwitchPreference;

    .line 175
    invoke-virtual {p1}, Lcom/vtosters/lite/ui/MaterialSwitchPreference;->isChecked()Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    .line 176
    invoke-direct {p0, p1}, Lru/vtosters/lite/ui/fragments/VTSettings;->switchTheme(Z)V

    return p2
.end method

.method synthetic lambda$onCreate$40$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 2

    .line 686
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "https://t.me/s/vtosters_faq"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$41$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 2

    .line 698
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "https://github.com/r4r1ty-tech/iziVK/issues"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$42$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 0

    .line 713
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/ui/dialogs/OTADialog;->checkUpdatesManual(Landroid/app/Activity;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$5$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 190
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "system_theme"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 191
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/hooks/ui/SystemThemeChangerHook;->onThemeChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreate$6$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 1

    .line 208
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lru/vtosters/lite/ui/fragments/InstallGMSFragment;

    invoke-static {p1, v0}, Lru/vtosters/lite/utils/NavigatorUtils;->switchFragment(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$7$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 4

    const-string p1, "package:"

    .line 223
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APP_OPEN_BY_DEFAULT_SETTINGS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 224
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 227
    :catchall_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 228
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$8$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 2

    .line 247
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 248
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    .line 250
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$9$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)Z
    .locals 2

    .line 265
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 266
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.provider.extra.APP_PACKAGE"

    .line 267
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 268
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 21

    move-object/from16 v0, p0

    .line 101
    invoke-super/range {p0 .. p1}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const v1, 0x7f150013

    .line 105
    invoke-virtual {v0, v1}, Lru/vtosters/lite/ui/fragments/VTSettings;->addPreferencesFromResource(I)V

    .line 107
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 108
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lru/vtosters/lite/utils/AndroidUtils;->isLinksUnverified(Landroid/app/Activity;)Z

    move-result v2

    .line 109
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 197
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    if-lt v3, v4, :cond_0

    .line 109
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 110
    :goto_0
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->areNotificationsEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 111
    :goto_1
    invoke-static {}, Lru/vtosters/hooks/GmsHook;->isAnyServicesInstalled()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lru/vtosters/hooks/GmsHook;->isGmsInstalled()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 113
    :goto_2
    invoke-static {}, Lru/vtosters/lite/utils/AccountManagerUtils;->isLogin()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 115
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "account_switcher"

    .line 117
    invoke-static {}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUsername()Ljava/lang/String;

    move-result-object v10

    .line 118
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f1217eb

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 119
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f080833

    invoke-virtual {v4, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    new-instance v13, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda0;

    invoke-direct {v13, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda0;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 114
    invoke-static/range {v8 .. v13}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    move-result-object v4

    .line 136
    invoke-static {}, Lru/vtosters/lite/concurrent/VTExecutors;->getIoScheduler()Lio/reactivex/Scheduler;

    move-result-object v6

    new-instance v8, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda2;

    invoke-direct {v8, v0, v4}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda2;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;Landroidx/preference/Preference;)V

    invoke-virtual {v6, v8}, Lio/reactivex/Scheduler;->a(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 144
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->hasSpecialVerif()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 146
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, ""

    .line 148
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f12181e

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    const v12, 0x7f080522

    new-instance v13, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda14;

    invoke-direct {v13, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda14;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 145
    invoke-static/range {v8 .. v13}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 160
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    const v6, 0x7f121528

    invoke-static {v4, v6}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreferenceCategory(Landroidx/preference/PreferenceScreen;I)Landroidx/preference/PreferenceCategory;

    .line 163
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, ""

    .line 165
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f12181b

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    const v12, 0x7f08069b

    .line 168
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isDarkTheme()Z

    move-result v13

    new-instance v14, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda26;

    invoke-direct {v14, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda26;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 162
    invoke-static/range {v8 .. v14}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addMaterialSwitchPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZLandroidx/preference/Preference$OnPreferenceChangeListener;)Lcom/vtosters/lite/ui/MaterialSwitchPreference;

    .line 181
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v4, v6, :cond_4

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 183
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "system_theme"

    const-string v4, "systemtheme"

    .line 185
    invoke-static {v4}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v4, "systemtheme_summ"

    .line 186
    invoke-static {v4}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f08069b

    .line 188
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->systemtheme()Z

    move-result v13

    new-instance v14, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda30;

    invoke-direct {v14, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda30;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 182
    invoke-static/range {v8 .. v14}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addMaterialSwitchPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZLandroidx/preference/Preference$OnPreferenceChangeListener;)Lcom/vtosters/lite/ui/MaterialSwitchPreference;

    :cond_4
    if-nez v2, :cond_5

    if-nez v1, :cond_5

    if-nez v3, :cond_5

    if-eqz v5, :cond_a

    :cond_5
    const-string v4, "dialogrecomm"

    .line 197
    invoke-static {v4, v7}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 198
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    const-string v6, "sett_recommendations"

    invoke-static {v6}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreferenceCategory(Landroidx/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroidx/preference/PreferenceCategory;

    const v4, 0x7f0601ec

    if-eqz v5, :cond_6

    .line 202
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, ""

    .line 204
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f121677

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v5, "sett_nogms_summ"

    .line 205
    invoke-static {v5}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const v5, 0x7f080559

    .line 206
    invoke-static {v4}, Lru/vtosters/hooks/other/ThemesUtils;->getColor(I)I

    move-result v6

    invoke-static {v5, v6}, Lru/vtosters/lite/themes/utils/RecolorUtils;->recolorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    new-instance v13, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda31;

    invoke-direct {v13, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda31;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 201
    invoke-static/range {v8 .. v13}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    :cond_6
    if-eqz v2, :cond_7

    .line 216
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, ""

    const-string v2, "sett_missing_links"

    .line 218
    invoke-static {v2}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v2, "sett_missing_links_summ"

    .line 219
    invoke-static {v2}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const v2, 0x7f080528

    .line 220
    invoke-static {v4}, Lru/vtosters/hooks/other/ThemesUtils;->getColor(I)I

    move-result v5

    invoke-static {v2, v5}, Lru/vtosters/lite/themes/utils/RecolorUtils;->recolorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    new-instance v2, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda32;

    invoke-direct {v2, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda32;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    move-object/from16 v19, v2

    .line 215
    invoke-static/range {v14 .. v19}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    :cond_7
    if-eqz v1, :cond_9

    .line 240
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, ""

    const-string v1, "sett_battery"

    .line 242
    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sett_battery_summ1"

    .line 243
    invoke-static {v2}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isMIUI()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "sett_battery_summ2"

    invoke-static {v2}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_8
    const-string v2, ""

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const v1, 0x7f08048e

    .line 244
    invoke-static {v4}, Lru/vtosters/hooks/other/ThemesUtils;->getColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lru/vtosters/lite/themes/utils/RecolorUtils;->recolorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    new-instance v13, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda34;

    invoke-direct {v13, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda34;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 239
    invoke-static/range {v8 .. v13}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    :cond_9
    if-eqz v3, :cond_a

    .line 258
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, ""

    const-string v1, "sett_notifs"

    .line 260
    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v1, "sett_notifs_summ"

    .line 261
    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const v1, 0x7f080679

    .line 262
    invoke-static {v4}, Lru/vtosters/hooks/other/ThemesUtils;->getColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lru/vtosters/lite/themes/utils/RecolorUtils;->recolorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    new-instance v1, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda35;

    invoke-direct {v1, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda35;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    move-object/from16 v19, v1

    .line 257
    invoke-static/range {v14 .. v19}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 275
    :cond_a
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->devmenu()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 276
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const v2, 0x7f120d17

    invoke-static {v1, v2}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreferenceCategory(Landroidx/preference/PreferenceScreen;I)Landroidx/preference/PreferenceCategory;

    .line 279
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, ""

    .line 281
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    const v12, 0x7f08038f

    new-instance v13, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda36;

    invoke-direct {v13, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda36;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 278
    invoke-static/range {v8 .. v13}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 291
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, "ssl"

    .line 293
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1215ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 294
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1215ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    const v18, 0x7f0804e3

    const/16 v19, 0x1

    new-instance v20, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda11;

    invoke-direct/range {v20 .. v20}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda11;-><init>()V

    .line 290
    invoke-static/range {v14 .. v20}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addMaterialSwitchPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZLandroidx/preference/Preference$OnPreferenceChangeListener;)Lcom/vtosters/lite/ui/MaterialSwitchPreference;

    .line 304
    :cond_b
    invoke-static {}, Lru/vtosters/lite/utils/AccountManagerUtils;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 305
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const v2, 0x7f12181a

    invoke-static {v1, v2}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreferenceCategory(Landroidx/preference/PreferenceScreen;I)Landroidx/preference/PreferenceCategory;

    .line 308
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, ""

    .line 310
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1217b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    const v12, 0x7f080833

    new-instance v13, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda22;

    invoke-direct {v13, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda22;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 307
    invoke-static/range {v8 .. v13}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 321
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, ""

    .line 323
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f120b83

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const v5, 0x7f0806f8

    new-instance v6, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda33;

    invoke-direct {v6, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda33;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 320
    invoke-static/range {v1 .. v6}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 333
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, ""

    .line 335
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120d02

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    const v12, 0x7f08083c

    new-instance v13, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda38;

    invoke-direct {v13, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda38;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 332
    invoke-static/range {v8 .. v13}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 344
    invoke-static {}, Lcom/vtosters/lite/auth/VKAccountManager;->d()Lcom/vk/auth/api/VKAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/auth/api/VKAccount;->N0()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 346
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, ""

    .line 348
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120595

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    const v12, 0x7f08075b

    new-instance v13, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda39;

    invoke-direct {v13, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda39;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 345
    invoke-static/range {v8 .. v13}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 358
    :cond_c
    invoke-static {}, Lru/vtosters/lite/utils/AccountManagerUtils;->isVKTester()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 360
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, ""

    .line 362
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f121541

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    const v12, 0x7f08038f

    new-instance v13, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda40;

    invoke-direct {v13, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda40;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 359
    invoke-static/range {v8 .. v13}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 374
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f121816

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreferenceCategory(Landroidx/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroidx/preference/PreferenceCategory;

    .line 377
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, ""

    .line 379
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120d24

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    const v12, 0x7f08075f

    new-instance v13, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda41;

    invoke-direct {v13, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda41;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 376
    invoke-static/range {v8 .. v13}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 389
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, ""

    .line 391
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f12015c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const v5, 0x7f080842

    new-instance v6, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda42;

    invoke-direct {v6, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda42;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 388
    invoke-static/range {v1 .. v6}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 401
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, ""

    .line 403
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120d3a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    const v12, 0x7f0805ac

    new-instance v13, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda43;

    invoke-direct {v13, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda43;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 400
    invoke-static/range {v8 .. v13}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 412
    invoke-static {}, Lcom/vtosters/lite/auth/VKAccountManager;->d()Lcom/vk/auth/api/VKAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/auth/api/VKAccount;->isMusicSubs()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 414
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, ""

    .line 416
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120fa2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    const v12, 0x7f0805f5

    new-instance v13, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda1;

    invoke-direct {v13, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda1;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 413
    invoke-static/range {v8 .. v13}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 427
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, ""

    .line 429
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1214c7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const v5, 0x7f0803ef

    new-instance v6, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda3;

    invoke-direct {v6, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda3;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 426
    invoke-static/range {v1 .. v6}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 438
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f12181c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreferenceCategory(Landroidx/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroidx/preference/PreferenceCategory;

    .line 440
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->vkme()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 442
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, ""

    .line 444
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12182f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 445
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1217b5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f08031d

    new-instance v13, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda4;

    invoke-direct {v13}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda4;-><init>()V

    .line 441
    invoke-static/range {v8 .. v13}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    goto :goto_4

    .line 451
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, ""

    .line 453
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1217de

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 454
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->ads()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const v5, 0x7f1217e1

    invoke-static {v5, v4}, Lru/vtosters/lite/ui/fragments/VTSettings;->getValAsString(ILjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f08060f

    new-instance v6, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda5;

    invoke-direct {v6, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda5;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 450
    invoke-static/range {v1 .. v6}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 464
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, ""

    .line 466
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1217ec

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 467
    invoke-static {}, Lcom/vk/medianative/MediaImageEncoder;->needToCompress()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const v2, 0x7f120d14

    invoke-static {v2, v1}, Lru/vtosters/lite/ui/fragments/VTSettings;->getValAsString(ILjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f080595

    new-instance v13, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda6;

    invoke-direct {v13, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda6;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 463
    invoke-static/range {v8 .. v13}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 476
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, ""

    .line 478
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f12077d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "useGenius"

    .line 479
    invoke-static {v4, v7}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const v5, 0x7f121885    # 1.941946E38f

    invoke-static {v5, v4}, Lru/vtosters/lite/ui/fragments/VTSettings;->getValAsString(ILjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0805f5

    new-instance v6, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda7;

    invoke-direct {v6, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda7;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 475
    invoke-static/range {v1 .. v6}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 488
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, ""

    .line 490
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1217ee

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 491
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 492
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->autotranslate()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const v2, 0x7f121536

    invoke-static {v2, v1}, Lru/vtosters/lite/ui/fragments/VTSettings;->getValAsString(ILjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 493
    :cond_10
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->vkme()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const v2, 0x7f1217f0

    invoke-static {v2, v1}, Lru/vtosters/lite/ui/fragments/VTSettings;->getValAsString(ILjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    move-object v10, v1

    const v11, 0x7f0805b9

    new-instance v12, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda8;

    invoke-direct {v12, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda8;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 487
    invoke-static/range {v7 .. v12}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 502


    .line 514
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, ""

    .line 516
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f121812

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 517
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMilkshake()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const v2, 0x7f1216b2

    invoke-static {v2, v1}, Lru/vtosters/lite/ui/fragments/VTSettings;->getValAsString(ILjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0808a1

    new-instance v12, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda10;

    invoke-direct {v12, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda10;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 513
    invoke-static/range {v7 .. v12}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 526
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, ""

    .line 528
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1217e7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 529
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->superapp()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const v5, 0x7f12173e

    invoke-static {v5, v4}, Lru/vtosters/lite/ui/fragments/VTSettings;->getValAsString(ILjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080bce

    new-instance v6, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda12;

    invoke-direct {v6, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda12;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 525
    invoke-static/range {v1 .. v6}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 537
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->vkme()Z

    move-result v1

    const-string v2, ": "


    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "currcache"

    const v1, 0x7f121859

    .line 554
    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f12188e

    .line 555
    invoke-virtual {v0, v3}, Lru/vtosters/lite/ui/fragments/VTSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lru/vtosters/lite/utils/IOUtils;->getDirSize(Ljava/io/File;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lru/vtosters/lite/utils/CacheUtils;->humanReadableByteCountBin(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f08042b

    new-instance v14, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda15;

    invoke-direct {v14, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda15;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 551
    invoke-static/range {v9 .. v14}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 564
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, ""

    .line 566
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1217d3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 567
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->offline()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const v5, 0x7f1217d4

    invoke-static {v5, v4}, Lru/vtosters/lite/ui/fragments/VTSettings;->getValAsString(ILjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0808a3

    new-instance v6, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda16;

    invoke-direct {v6, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda16;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 563
    invoke-static/range {v1 .. v6}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 576

    .line 587
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_13

    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isMIUI()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isHyperOs()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 589
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, ""

    const-string v1, "appLanguage"

    .line 591
    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentLanguage"

    .line 592
    invoke-static {v5}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lru/vtosters/lite/utils/AndroidUtils;->upString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0804e3

    new-instance v7, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda18;

    invoke-direct {v7, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda18;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 588
    invoke-static/range {v2 .. v7}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 602
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, ""

    .line 604
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1217f9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 605
    invoke-static {}, Lru/vtosters/hooks/VerificationsHook;->vtverif()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const v2, 0x7f1217fa

    invoke-static {v2, v1}, Lru/vtosters/lite/ui/fragments/VTSettings;->getValAsString(ILjava/lang/Boolean;)Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f0805d5

    new-instance v13, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda19;

    invoke-direct {v13, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda19;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 601
    invoke-static/range {v8 .. v13}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 613
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f121819

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreferenceCategory(Landroidx/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroidx/preference/PreferenceCategory;

    .line 616
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, ""

    .line 618
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1206f1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 619
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getBuildName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->isValidSignature()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {}, Lru/vtosters/lite/utils/VersionReader;->getVersionBuild()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_14
    invoke-static {}, Lru/vtosters/lite/utils/VersionReader;->getVersionFull()Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f08031d

    new-instance v8, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda20;

    invoke-direct {v8, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda20;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 615
    invoke-static/range {v3 .. v8}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 627
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->isAdbOrDeveloperOptionsEnabled(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 629
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, ""

    .line 631
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f1216d5

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const v6, 0x7f080523

    new-instance v7, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda21;

    invoke-direct {v7, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda21;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 628
    invoke-static/range {v2 .. v7}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 642
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, ""

    const-string v1, "sett_chats"

    .line 644
    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "sett_chats_summ"

    .line 645
    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f0805b9

    new-instance v13, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda23;

    invoke-direct {v13, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda23;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 641
    invoke-static/range {v8 .. v13}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 661
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, ""

    const-string v3, "sett_community"

    .line 663
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sett_community_summ"

    .line 664
    invoke-static {v4}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080a5d

    new-instance v6, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda24;

    invoke-direct {v6, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda24;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 660
    invoke-static/range {v1 .. v6}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 680
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, ""

    .line 682
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1217c3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 683
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1217c4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0804ee

    new-instance v12, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda25;

    invoke-direct {v12, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda25;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 679
    invoke-static/range {v7 .. v12}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 692
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, ""

    .line 694
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f12171f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 695
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->requireContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f121720

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f08038f

    new-instance v6, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda27;

    invoke-direct {v6, v0}, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda27;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V

    .line 691
    invoke-static/range {v1 .. v6}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 703
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->isValidSignature()Z

    return-void
.end method



.method public onResume()V
    .locals 0

    .line 741
    invoke-super {p0}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;->onResume()V

    .line 742
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/VTSettings;->updateCacheSize()V

    return-void
.end method
