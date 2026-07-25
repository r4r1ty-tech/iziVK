.class public Lru/vtosters/lite/ui/fragments/OtherFragment;
.super Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;
.source "OtherFragment.java"


# static fields
.field private static final VK_ADMIN_TOKEN_REQUEST_CODE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;-><init>()V

    return-void
.end method

.method private copyText(Ljava/lang/String;)V
    .locals 2

    .line 147
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/OtherFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "MBH-ST"

    .line 148
    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method static synthetic lambda$prefs$2(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x0

    .line 58
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$prefs$5(Landroidx/preference/Preference;)Z
    .locals 0

    .line 85
    invoke-static {}, Lru/vtosters/lite/utils/RenameTool;->clearDatabase()V

    .line 86
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->restartApplicationWithTimer()V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$prefs$6(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 91
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->restartApplicationWithTimer()V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$prefs$8(Landroidx/preference/Preference;)Z
    .locals 0

    .line 102
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->restartApplication()V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$prefs$9(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 107
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->restartApplicationWithTimer()V

    const/4 p0, 0x1

    return p0
.end method

.method private prefs()V
    .locals 5

    const-string v0, "firebasefix"

    .line 43
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/ui/fragments/OtherFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lru/vtosters/lite/ui/fragments/OtherFragment$$ExternalSyntheticLambda5;-><init>(Lru/vtosters/lite/ui/fragments/OtherFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "applicationstop"

    .line 57
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/ui/fragments/OtherFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lru/vtosters/lite/ui/fragments/OtherFragment$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "microgsettings"

    .line 63
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-static {}, Lru/vtosters/hooks/GmsHook;->isAnyServicesInstalled()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-static {}, Lru/vtosters/hooks/GmsHook;->isGmsInstalled()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 65
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/ui/fragments/OtherFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lru/vtosters/lite/ui/fragments/OtherFragment$$ExternalSyntheticLambda10;-><init>(Lru/vtosters/lite/ui/fragments/OtherFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "tokencopy"

    .line 76
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/ui/fragments/OtherFragment$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lru/vtosters/lite/ui/fragments/OtherFragment$$ExternalSyntheticLambda11;-><init>(Lru/vtosters/lite/ui/fragments/OtherFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "unstableNameChangerDrop"

    .line 84
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/ui/fragments/OtherFragment$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lru/vtosters/lite/ui/fragments/OtherFragment$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "unstableNameChanger"

    .line 90
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/ui/fragments/OtherFragment$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lru/vtosters/lite/ui/fragments/OtherFragment$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "copydebuginfo"

    .line 95
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/ui/fragments/OtherFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lru/vtosters/lite/ui/fragments/OtherFragment$$ExternalSyntheticLambda1;-><init>(Lru/vtosters/lite/ui/fragments/OtherFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "applicationrestart"

    .line 101
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/ui/fragments/OtherFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lru/vtosters/lite/ui/fragments/OtherFragment$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "batchmessages"

    .line 106
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/ui/fragments/OtherFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lru/vtosters/lite/ui/fragments/OtherFragment$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "copyownlink"

    .line 111
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/ui/fragments/OtherFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lru/vtosters/lite/ui/fragments/OtherFragment$$ExternalSyntheticLambda4;-><init>(Lru/vtosters/lite/ui/fragments/OtherFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "deviceinfo"

    .line 117
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/ui/fragments/OtherFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lru/vtosters/lite/ui/fragments/OtherFragment$$ExternalSyntheticLambda6;-><init>(Lru/vtosters/lite/ui/fragments/OtherFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "updateverifdata"

    .line 122
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    new-instance v2, Lru/vtosters/lite/ui/fragments/OtherFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lru/vtosters/lite/ui/fragments/OtherFragment$$ExternalSyntheticLambda7;-><init>(Lru/vtosters/lite/ui/fragments/OtherFragment;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "VT_Verification"

    .line 130
    invoke-virtual {p0, v1}, Lru/vtosters/lite/ui/fragments/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->serverFeaturesDisable()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v1, "VT_Fire"

    .line 131
    invoke-virtual {p0, v1}, Lru/vtosters/lite/ui/fragments/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->serverFeaturesDisable()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 132
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->serverFeaturesDisable()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v0, "vk_admin_token"

    .line 134
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 135
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "new_music_downloading_way"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 136
    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    new-instance v1, Lru/vtosters/lite/ui/fragments/OtherFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lru/vtosters/lite/ui/fragments/OtherFragment$$ExternalSyntheticLambda8;-><init>(Lru/vtosters/lite/ui/fragments/OtherFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public T4()I
    .locals 1

    const v0, 0x7f1217f9

    return v0
.end method

.method synthetic lambda$prefs$0$ru-vtosters-lite-ui-fragments-OtherFragment()V
    .locals 2

    .line 49
    sget-object v0, Lcom/vk/pushes/PushSubscriber;->e:Lcom/vk/pushes/PushSubscriber;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vk/pushes/PushSubscriber;->a(Z)V

    .line 51
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/OtherFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121622

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vk/core/util/ToastUtils;->a(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/OtherFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121621

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vk/core/util/ToastUtils;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$prefs$1$ru-vtosters-lite-ui-fragments-OtherFragment(Landroidx/preference/Preference;)Z
    .locals 3

    .line 44
    invoke-static {}, Lcom/vtosters/lite/auth/VKAccountManager;->d()Lcom/vk/auth/api/VKAccount;

    .line 45
    sget-object p1, Lcom/vk/pushes/PushSubscriber;->e:Lcom/vk/pushes/PushSubscriber;

    invoke-virtual {p1}, Lcom/vk/pushes/PushSubscriber;->a()V

    .line 46
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/OtherFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f121623

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/vk/core/util/ToastUtils;->a(Ljava/lang/CharSequence;)V

    .line 47
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "gcm"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 48
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/OtherFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance v0, Lru/vtosters/lite/ui/fragments/OtherFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lru/vtosters/lite/ui/fragments/OtherFragment$$ExternalSyntheticLambda0;-><init>(Lru/vtosters/lite/ui/fragments/OtherFragment;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$prefs$10$ru-vtosters-lite-ui-fragments-OtherFragment(Landroidx/preference/Preference;)Z
    .locals 1

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "https://vk.com/id"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lru/vtosters/lite/ui/fragments/OtherFragment;->copyText(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/OtherFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1205e1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/vk/core/util/ToastUtils;->a(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$prefs$11$ru-vtosters-lite-ui-fragments-OtherFragment(Landroidx/preference/Preference;)Z
    .locals 1

    .line 118
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/OtherFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lru/vtosters/lite/ui/fragments/SystemInfo;

    invoke-static {p1, v0}, Lru/vtosters/lite/utils/NavigatorUtils;->switchFragment(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$prefs$12$ru-vtosters-lite-ui-fragments-OtherFragment(Landroidx/preference/Preference;)Z
    .locals 0

    .line 123
    invoke-static {}, Lru/vtosters/lite/ssfs/UsersList;->getUsersList()V

    const/4 p1, 0x0

    .line 124
    sput-boolean p1, Lru/vtosters/lite/utils/VTVerifications;->isLoaded:Z

    .line 125
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/OtherFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/utils/VTVerifications;->load(Landroid/content/Context;)V

    const-string p1, "data_updated"

    .line 126
    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$prefs$13$ru-vtosters-lite-ui-fragments-OtherFragment(Landroidx/preference/Preference;)Z
    .locals 2

    .line 138
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/OtherFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lru/vtosters/lite/ui/activities/VKAdminTokenActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lru/vtosters/lite/ui/fragments/OtherFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v0
.end method

.method synthetic lambda$prefs$3$ru-vtosters-lite-ui-fragments-OtherFragment(Landroidx/preference/Preference;)Z
    .locals 3

    .line 67
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    new-instance v0, Landroid/content/ComponentName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lru/vtosters/hooks/GmsHook;->getCurrentGms()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".android.gms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.microg.gms.ui.SettingsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/OtherFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$prefs$4$ru-vtosters-lite-ui-fragments-OtherFragment(Landroidx/preference/Preference;)Z
    .locals 2

    .line 77
    invoke-static {}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserToken()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lru/vtosters/lite/ui/fragments/OtherFragment;->copyText(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/OtherFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/OtherFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121594

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 80
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/OtherFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f121787

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/vk/core/util/ToastUtils;->a(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$prefs$7$ru-vtosters-lite-ui-fragments-OtherFragment(Landroidx/preference/Preference;)Z
    .locals 2

    .line 96
    new-instance p1, Lru/vtosters/lite/deviceinfo/DeviceInfoCollector;

    invoke-direct {p1}, Lru/vtosters/lite/deviceinfo/DeviceInfoCollector;-><init>()V

    invoke-virtual {p1}, Lru/vtosters/lite/deviceinfo/DeviceInfoCollector;->collect()Lru/vtosters/lite/deviceinfo/Device;

    move-result-object p1

    invoke-virtual {p1}, Lru/vtosters/lite/deviceinfo/Device;->forLogging()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lru/vtosters/lite/ui/fragments/OtherFragment;->copyText(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/OtherFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "device_info_copied"

    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 31
    invoke-super {p0, p1, p2, p3}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    const-string p1, "token"

    .line 36
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string p3, "vk_admin_token"

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 38
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/OtherFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/OtherFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f121786

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f15001b

    .line 25
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/OtherFragment;->addPreferencesFromResource(I)V

    .line 26
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/OtherFragment;->prefs()V

    return-void
.end method
