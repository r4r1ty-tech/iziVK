.class public Lru/vtosters/lite/ui/fragments/DataSettingsFragment;
.super Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;
.source "DataSettingsFragment.java"


# static fields
.field private static final RECOVER_ACCOUNTS:I = 0x2

.field private static final RECOVER_SETTINGS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;-><init>()V

    return-void
.end method

.method private cacheAutoCleanDialog()V
    .locals 10

    const/4 v0, 0x0

    const-string v1, "100 MB"

    const-string v2, "500 MB"

    const-string v3, "1 GB"

    const-string v4, "2 GB"

    const-string v5, "5 GB"

    .line 330
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "autoclearcache_size"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 333
    new-instance v2, Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x41900000    # 18.0f

    .line 335
    invoke-static {v4}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v5

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v6}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v6

    invoke-static {v4}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v4

    invoke-virtual {v2, v5, v6, v4, v3}, Landroid/widget/RadioGroup;->setPadding(IIII)V

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x5

    const/4 v6, 0x1

    if-gt v4, v5, :cond_2

    .line 338
    new-instance v5, Landroid/widget/RadioButton;

    new-instance v7, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f1303e6

    invoke-direct {v7, v8, v9}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v5, v7}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 339
    invoke-static {v5}, Lru/vtosters/hooks/SwitchHook;->setCompoundButton(Landroid/widget/CompoundButton;)V

    .line 340
    invoke-virtual {v2, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 341
    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setId(I)V

    const/high16 v7, 0x41600000    # 14.0f

    .line 342
    invoke-static {v7}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v3, v7}, Landroid/widget/RadioButton;->setTextSize(IF)V

    .line 344
    aget-object v7, v0, v4

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v7, "autoclearcachedisabled"

    .line 345
    invoke-static {v7}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 347
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTextAttr()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setTextColor(I)V

    if-ne v1, v4, :cond_1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    .line 348
    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 351
    :cond_2
    new-instance v0, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 352
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f121548

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    .line 353
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f12154b

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    .line 354
    invoke-virtual {v0, v6}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setCancelable(Z)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    .line 355
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f12018a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    .line 356
    invoke-virtual {v0, v2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    .line 357
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f120cb1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda7;

    invoke-direct {v3, v2}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda7;-><init>(Landroid/widget/RadioGroup;)V

    invoke-virtual {v0, v1, v3}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method static synthetic lambda$cacheAutoCleanDialog$18(Landroid/widget/RadioGroup;Landroid/content/DialogInterface;I)V
    .locals 6

    const-string v0, "Default"

    const-string v1, "100mb"

    const-string v2, "500mb"

    const-string v3, "1gb"

    const-string v4, "2gb"

    const-string v5, "5gb"

    .line 358
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object p1

    .line 359
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p0

    .line 360
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "autoclearcache_size"

    .line 361
    invoke-interface {p2, v0, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "autoclearcache"

    aget-object p0, p1, p0

    .line 362
    invoke-interface {p2, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 363
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic lambda$onCreate$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 88
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onCreate$12(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 268
    invoke-static {}, Lru/vtosters/lite/ui/components/BackupManager;->deletePrefs()V

    .line 269
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->restartApplication()V

    return-void
.end method

.method static synthetic lambda$onCreate$13(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 271
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onCreate$15(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 287
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "disableForceTrafficSaver"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 288
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->restartApplicationWithTimer()V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$onCreate$16(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 302
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "analyticsDisabled"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 303
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->restartApplicationWithTimer()V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$onCreate$17(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 317
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "serverFeaturesDisable"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 318
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->restartApplicationWithTimer()V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$onCreate$6(Landroidx/preference/Preference;)Z
    .locals 0

    .line 185
    invoke-static {}, Lru/vtosters/lite/utils/VKAccountDB;->saveData()V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$onCreate$8(Landroidx/preference/Preference;)Z
    .locals 0

    .line 209
    invoke-static {}, Lru/vtosters/lite/utils/VKAccountDB;->resetData()V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$onCreate$9(Landroidx/preference/Preference;)Z
    .locals 0

    .line 223
    invoke-static {}, Lru/vtosters/lite/ui/components/BackupManager;->backupSettings()V

    const/4 p0, 0x0

    return p0
.end method

.method private updateCacheSize()V
    .locals 4

    const-string v0, "currcache"

    .line 325
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f12188e

    invoke-virtual {p0, v2}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->getString(I)Ljava/lang/String;

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

    const v0, 0x7f121857

    return v0
.end method

.method synthetic lambda$onCreate$0$ru-vtosters-lite-ui-fragments-DataSettingsFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 78
    new-instance p1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 79
    invoke-static {}, Lcom/vk/imageloader/VKImageLoader;->e()V

    .line 80
    invoke-static {}, Lcom/vk/im/ui/providers/audiomsg/ImAudioMsgPlayerProvider;->b()Lcom/vk/audiomsg/player/AudioMsgPlayer;

    move-result-object p1

    sget-object p2, Lcom/vk/im/ui/providers/audiomsg/PlayerActionSources;->a:Lcom/vk/im/ui/providers/audiomsg/PlayerActionSource;

    invoke-interface {p1, p2}, Lcom/vk/audiomsg/player/AudioMsgPlayer;->e(Lcom/vk/audiomsg/player/Source;)V

    .line 81
    invoke-static {}, Lcom/vk/im/ui/providers/audiomsg/ImAudioMsgPlayerProvider;->b()Lcom/vk/audiomsg/player/AudioMsgPlayer;

    move-result-object p1

    sget-object p2, Lcom/vk/im/ui/providers/audiomsg/PlayerActionSources;->a:Lcom/vk/im/ui/providers/audiomsg/PlayerActionSource;

    invoke-interface {p1, p2}, Lcom/vk/audiomsg/player/AudioMsgPlayer;->d(Lcom/vk/audiomsg/player/Source;)V

    .line 82
    invoke-static {}, Lb/h/g/m/FileUtils;->l()Ljava/io/File;

    .line 83
    sget-object p1, Lcom/vk/media/player/cache/AutoPlayCacheHolder;->d:Lcom/vk/media/player/cache/AutoPlayCacheHolder;

    invoke-virtual {p1}, Lcom/vk/media/player/cache/AutoPlayCacheHolder;->a()V

    .line 84
    invoke-static {}, Lcom/vk/mediastore/MediaStorage;->a()V

    .line 85
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/utils/IOUtils;->deleteRecursive(Ljava/io/File;)V

    .line 86
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->updateCacheSize()V

    return-void
.end method

.method synthetic lambda$onCreate$10$ru-vtosters-lite-ui-fragments-DataSettingsFragment(Landroidx/preference/Preference;)Z
    .locals 3

    const/4 p1, 0x0

    .line 236
    :try_start_0
    invoke-static {}, Lru/vtosters/lite/ui/components/BackupManager;->backupOnlines()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1216ca

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return p1
.end method

.method synthetic lambda$onCreate$11$ru-vtosters-lite-ui-fragments-DataSettingsFragment(Landroidx/preference/Preference;)Z
    .locals 1

    .line 251
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "text/xml"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$14$ru-vtosters-lite-ui-fragments-DataSettingsFragment(Landroidx/preference/Preference;)Z
    .locals 3

    .line 263
    new-instance p1, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 264
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12182f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    .line 265
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121739

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 266
    invoke-virtual {p1, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setCancelable(Z)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    .line 267
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1214f3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p1, v1, v2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    .line 271
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12018a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p1, v1, v2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    .line 272
    invoke-virtual {p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return v0
.end method

.method synthetic lambda$onCreate$2$ru-vtosters-lite-ui-fragments-DataSettingsFragment(Landroidx/preference/Preference;)Z
    .locals 2

    .line 75
    new-instance p1, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f12188f

    .line 76
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    .line 77
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1214f3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda5;-><init>(Lru/vtosters/lite/ui/fragments/DataSettingsFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    .line 88
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12018a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$3$ru-vtosters-lite-ui-fragments-DataSettingsFragment(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p1, "stickers_storage"

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_5

    if-eq p2, v1, :cond_4

    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    const/4 p1, 0x3

    if-eq p2, p1, :cond_2

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    goto/16 :goto_0

    .line 138
    :cond_0
    new-instance p1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    goto/16 :goto_0

    .line 134
    :cond_1
    invoke-static {}, Lcom/vtosters/lite/im/ImEngineProvider;->b()Lcom/vk/im/engine/ImEngine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vk/im/engine/ImEngine;->a()Ljava/util/concurrent/Future;

    .line 135
    invoke-static {}, Lcom/vk/im/ui/providers/audiomsg/ImAudioMsgPlayerProvider;->b()Lcom/vk/audiomsg/player/AudioMsgPlayer;

    move-result-object p1

    sget-object p2, Lcom/vk/im/ui/providers/audiomsg/PlayerActionSources;->a:Lcom/vk/im/ui/providers/audiomsg/PlayerActionSource;

    invoke-interface {p1, p2}, Lcom/vk/audiomsg/player/AudioMsgPlayer;->e(Lcom/vk/audiomsg/player/Source;)V

    .line 136
    invoke-static {}, Lcom/vk/im/ui/providers/audiomsg/ImAudioMsgPlayerProvider;->b()Lcom/vk/audiomsg/player/AudioMsgPlayer;

    move-result-object p1

    sget-object p2, Lcom/vk/im/ui/providers/audiomsg/PlayerActionSources;->a:Lcom/vk/im/ui/providers/audiomsg/PlayerActionSource;

    invoke-interface {p1, p2}, Lcom/vk/audiomsg/player/AudioMsgPlayer;->d(Lcom/vk/audiomsg/player/Source;)V

    goto/16 :goto_0

    .line 130
    :cond_2
    sget-object p1, Lcom/vk/media/player/cache/AutoPlayCacheHolder;->d:Lcom/vk/media/player/cache/AutoPlayCacheHolder;

    invoke-virtual {p1}, Lcom/vk/media/player/cache/AutoPlayCacheHolder;->a()V

    .line 131
    invoke-static {}, Lcom/vk/mediastore/MediaStorage;->a()V

    goto/16 :goto_0

    .line 126
    :cond_3
    invoke-static {}, Lcom/vk/imageloader/VKImageLoader;->e()V

    .line 127
    invoke-static {}, Lcom/vk/im/engine/ImEngine1;->a()Lcom/vk/im/engine/ImEngine;

    move-result-object p1

    invoke-static {p1}, Lcom/vk/im/engine/ImEngineExt;->a(Lcom/vk/im/engine/ImEngine;)V

    goto :goto_0

    .line 121
    :cond_4
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 122
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 123
    sget-object p1, Lcom/vk/stickers/Stickers;->l:Lcom/vk/stickers/Stickers;

    invoke-virtual {p1}, Lcom/vk/stickers/Stickers;->c()V

    goto :goto_0

    .line 106
    :cond_5
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 107
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    new-instance p1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 109
    invoke-static {}, Lcom/vk/imageloader/VKImageLoader;->e()V

    .line 110
    invoke-static {}, Lcom/vtosters/lite/im/ImEngineProvider;->b()Lcom/vk/im/engine/ImEngine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vk/im/engine/ImEngine;->a()Ljava/util/concurrent/Future;

    .line 111
    invoke-static {}, Lcom/vk/im/ui/providers/audiomsg/ImAudioMsgPlayerProvider;->b()Lcom/vk/audiomsg/player/AudioMsgPlayer;

    move-result-object p1

    sget-object p2, Lcom/vk/im/ui/providers/audiomsg/PlayerActionSources;->a:Lcom/vk/im/ui/providers/audiomsg/PlayerActionSource;

    invoke-interface {p1, p2}, Lcom/vk/audiomsg/player/AudioMsgPlayer;->e(Lcom/vk/audiomsg/player/Source;)V

    .line 112
    invoke-static {}, Lcom/vk/im/ui/providers/audiomsg/ImAudioMsgPlayerProvider;->b()Lcom/vk/audiomsg/player/AudioMsgPlayer;

    move-result-object p1

    sget-object p2, Lcom/vk/im/ui/providers/audiomsg/PlayerActionSources;->a:Lcom/vk/im/ui/providers/audiomsg/PlayerActionSource;

    invoke-interface {p1, p2}, Lcom/vk/audiomsg/player/AudioMsgPlayer;->d(Lcom/vk/audiomsg/player/Source;)V

    .line 113
    invoke-static {}, Lb/h/g/m/FileUtils;->l()Ljava/io/File;

    .line 114
    sget-object p1, Lcom/vk/stickers/Stickers;->l:Lcom/vk/stickers/Stickers;

    invoke-virtual {p1}, Lcom/vk/stickers/Stickers;->c()V

    .line 115
    invoke-static {}, Lcom/vk/im/engine/ImEngine1;->a()Lcom/vk/im/engine/ImEngine;

    move-result-object p1

    invoke-static {p1}, Lcom/vk/im/engine/ImEngineExt;->a(Lcom/vk/im/engine/ImEngine;)V

    .line 116
    sget-object p1, Lcom/vk/media/player/cache/AutoPlayCacheHolder;->d:Lcom/vk/media/player/cache/AutoPlayCacheHolder;

    invoke-virtual {p1}, Lcom/vk/media/player/cache/AutoPlayCacheHolder;->a()V

    .line 117
    invoke-static {}, Lcom/vk/mediastore/MediaStorage;->a()V

    .line 118
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/utils/IOUtils;->deleteRecursive(Ljava/io/File;)V

    .line 140
    :goto_0
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f121549

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 141
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->updateCacheSize()V

    return-void
.end method

.method synthetic lambda$onCreate$4$ru-vtosters-lite-ui-fragments-DataSettingsFragment(Landroidx/preference/Preference;)Z
    .locals 2

    .line 101
    new-instance p1, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 102
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121733

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f03005d

    .line 103
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda4;-><init>(Lru/vtosters/lite/ui/fragments/DataSettingsFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    .line 143
    invoke-virtual {p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$5$ru-vtosters-lite-ui-fragments-DataSettingsFragment(Landroidx/preference/Preference;)Z
    .locals 0

    .line 155
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->cacheAutoCleanDialog()V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$7$ru-vtosters-lite-ui-fragments-DataSettingsFragment(Landroidx/preference/Preference;)Z
    .locals 1

    .line 197
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "application/*"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x0

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 41
    invoke-super {p0, p1, p2, p3}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/utils/VKAccountDB;->saveDatabase(Landroid/net/Uri;)V

    goto :goto_0

    .line 49
    :cond_2
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/ui/components/BackupManager;->restoreBackup(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->restartApplicationWithTimer()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 60
    invoke-super {p0, p1}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f150013

    .line 61
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->addPreferencesFromResource(I)V

    .line 63
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getBackgroundContent()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 64
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getBackgroundContent()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 66
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "data"

    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreferenceCategory(Landroidx/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroidx/preference/PreferenceCategory;

    .line 69
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "currcache"

    const p1, 0x7f12188d

    .line 71
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f12188e

    .line 72
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/lite/utils/IOUtils;->getDirSize(Ljava/io/File;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lru/vtosters/lite/utils/CacheUtils;->humanReadableByteCountBin(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lru/vtosters/lite/ui/fragments/DataSettingsFragment;)V

    .line 68
    invoke-static/range {v1 .. v6}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 95
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, ""

    const-string p1, "clearcache_other_title"

    .line 97
    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    const/4 v11, 0x0

    new-instance v12, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda13;

    invoke-direct {v12, p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda13;-><init>(Lru/vtosters/lite/ui/fragments/DataSettingsFragment;)V

    .line 94
    invoke-static/range {v7 .. v12}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 149
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "autoclearcache_btn"

    const-string p1, "autoclearcache"

    .line 151
    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    new-instance v5, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda14;

    invoke-direct {v5, p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda14;-><init>(Lru/vtosters/lite/ui/fragments/DataSettingsFragment;)V

    .line 148
    invoke-static/range {v0 .. v5}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 160
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Default"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "500mb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "100mb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "5gb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "2gb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "1gb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    const-string p1, "autoclearcache_btn"

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 167
    :pswitch_0
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121546

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 165
    :pswitch_1
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121543

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 173
    :pswitch_2
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121547

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 171
    :pswitch_3
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121545

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 169
    :pswitch_4
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121544

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 163
    :pswitch_5
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12154a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 176
    :goto_1
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "accounts"

    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreferenceCategory(Landroidx/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroidx/preference/PreferenceCategory;

    .line 179
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, ""

    const-string p1, "save_accounts"

    .line 181
    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x0

    new-instance v6, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda15;

    invoke-direct {v6}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda15;-><init>()V

    .line 178
    invoke-static/range {v1 .. v6}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    move-result-object p1

    .line 188
    invoke-static {}, Lru/vtosters/lite/utils/AccountManagerUtils;->isLogin()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 191
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, ""

    const-string p1, "restore_accounts"

    .line 193
    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    new-instance v6, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda16;

    invoke-direct {v6, p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda16;-><init>(Lru/vtosters/lite/ui/fragments/DataSettingsFragment;)V

    .line 190
    invoke-static/range {v1 .. v6}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 203
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, ""

    const-string p1, "reset_accounts"

    .line 205
    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    const/4 v11, 0x0

    new-instance v12, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda17;

    invoke-direct {v12}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda17;-><init>()V

    .line 202
    invoke-static/range {v7 .. v12}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    move-result-object p1

    .line 212
    invoke-static {}, Lru/vtosters/lite/utils/AccountManagerUtils;->isLogin()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 214
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "menu_settings"

    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreferenceCategory(Landroidx/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroidx/preference/PreferenceCategory;

    .line 217
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, ""

    const-string p1, "saveprefs_title"

    .line 219
    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    new-instance v6, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda18;

    invoke-direct {v6}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda18;-><init>()V

    .line 216
    invoke-static/range {v1 .. v6}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 229
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, ""

    const-string p1, "save_online_data"

    .line 231
    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    new-instance v12, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v12, p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda1;-><init>(Lru/vtosters/lite/ui/fragments/DataSettingsFragment;)V

    .line 228
    invoke-static/range {v7 .. v12}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 245
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, ""

    const-string p1, "restore_settings"

    .line 247
    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    new-instance v5, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda2;-><init>(Lru/vtosters/lite/ui/fragments/DataSettingsFragment;)V

    .line 244
    invoke-static/range {v0 .. v5}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 257
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, ""

    const-string p1, "reset_all_settings"

    .line 259
    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const/4 v10, 0x0

    new-instance v11, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v11, p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda3;-><init>(Lru/vtosters/lite/ui/fragments/DataSettingsFragment;)V

    .line 256
    invoke-static/range {v6 .. v11}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 277
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "sett_other"

    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreferenceCategory(Landroidx/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroidx/preference/PreferenceCategory;

    .line 280
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "disableForceTrafficSaver"

    const-string p1, "disable_roaming_state"

    .line 282
    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p1, "disable_roaming_state_submit"

    .line 283
    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda10;

    invoke-direct {v7}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda10;-><init>()V

    .line 279
    invoke-static/range {v1 .. v7}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addMaterialSwitchPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZLandroidx/preference/Preference$OnPreferenceChangeListener;)Lcom/vtosters/lite/ui/MaterialSwitchPreference;

    .line 293
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->serverFeaturesDisable()Z

    move-result p1

    if-nez p1, :cond_6

    .line 295
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "analyticsDisabled"

    const-string p1, "disable_analytics"

    .line 297
    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p1, "disable_analytics_summ"

    .line 298
    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda11;

    invoke-direct {v6}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda11;-><init>()V

    .line 294
    invoke-static/range {v0 .. v6}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addMaterialSwitchPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZLandroidx/preference/Preference$OnPreferenceChangeListener;)Lcom/vtosters/lite/ui/MaterialSwitchPreference;

    .line 310
    :cond_6
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "serverFeaturesDisable"

    const-string p1, "serverFeaturesDisable"

    .line 312
    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string p1, "serverFeaturesDisable_summ"

    .line 313
    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-instance v13, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda12;

    invoke-direct {v13}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment$$ExternalSyntheticLambda12;-><init>()V

    .line 309
    invoke-static/range {v7 .. v13}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addMaterialSwitchPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZLandroidx/preference/Preference$OnPreferenceChangeListener;)Lcom/vtosters/lite/ui/MaterialSwitchPreference;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x40b391df -> :sswitch_5
        0xc4cc -> :sswitch_4
        0xc88d -> :sswitch_3
        0xd3d0 -> :sswitch_2
        0x2c91346 -> :sswitch_1
        0x301714a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .line 375
    invoke-super {p0}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;->onResume()V

    .line 376
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;->updateCacheSize()V

    return-void
.end method
