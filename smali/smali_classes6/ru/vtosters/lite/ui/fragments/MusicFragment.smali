.class public Lru/vtosters/lite/ui/fragments/MusicFragment;
.super Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;
.source "MusicFragment.java"


# static fields
.field private static final executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/ui/fragments/MusicFragment;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;-><init>()V

    return-void
.end method

.method private cachedPlaylistsDialog(Landroid/content/Context;)V
    .locals 4

    .line 439
    invoke-static {p1}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->getAllPlaylists(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 440
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 442
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 443
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vk/dto/music/Playlist;

    iget-object v3, v3, Lcom/vk/dto/music/Playlist;->g:Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 446
    :cond_0
    new-instance v2, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-direct {v2, p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u0421\u043a\u0430\u0447\u0430\u043d\u043d\u044b\u0435 \u043f\u043b\u0435\u0439\u043b\u0438\u0441\u0442\u044b"

    .line 447
    invoke-virtual {v2, v3}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    .line 448
    new-instance v3, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, p1}, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda1;-><init>(Lru/vtosters/lite/ui/fragments/MusicFragment;Ljava/util/List;Landroid/content/Context;)V

    invoke-virtual {v2, v1, v3}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    .line 456
    invoke-virtual {v2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private delcache(Landroid/content/Context;Z)V
    .locals 2

    .line 460
    new-instance v0, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12182f

    .line 461
    invoke-virtual {v0, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(I)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f121556

    .line 462
    invoke-virtual {v0, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setMessage(I)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0, p2, p1}, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda26;-><init>(Lru/vtosters/lite/ui/fragments/MusicFragment;ZLandroid/content/Context;)V

    const p1, 0x7f1214f3

    .line 463
    invoke-virtual {v0, p1, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda27;

    invoke-direct {p2}, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda27;-><init>()V

    const v0, 0x7f120944

    .line 473
    invoke-virtual {p1, v0, p2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    .line 474
    invoke-virtual {p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private dlaudio(Landroid/content/Context;)V
    .locals 2

    .line 478
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->isIntegrationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "vkx_integration_enabled_info"

    .line 479
    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    return-void

    .line 483
    :cond_0
    new-instance v0, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f121610

    .line 484
    invoke-virtual {v0, p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(I)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f121612

    .line 485
    invoke-virtual {p1, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setMessage(I)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda21;-><init>()V

    const v1, 0x7f121611

    .line 486
    invoke-virtual {p1, v1, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda23;-><init>()V

    const v1, 0x7f121613

    .line 489
    invoke-virtual {p1, v1, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    .line 492
    invoke-virtual {p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private static getAutocacheSumm()Ljava/lang/String;
    .locals 2

    .line 408
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->autocache()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "\u041e\u0442\u043a\u043b\u044e\u0447\u0435\u043d\u043e"

    goto :goto_0

    :cond_0
    const-string v0, "\u041a\u0435\u0448\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u0432\u0441\u0451"

    goto :goto_0

    :cond_1
    const-string v0, "\u0422\u043e\u043b\u044c\u043a\u043e \u0434\u043b\u044f \u0441\u0432\u043e\u0438\u0445"

    :goto_0
    return-object v0
.end method

.method static synthetic lambda$delcache$24(ZLandroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 466
    invoke-static {p1}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->removeAllPlaylists(Landroid/content/Context;)V

    goto :goto_0

    .line 468
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_-1"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->deletePlaylist(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$delcache$26(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 473
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$dlaudio$27(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 487
    sget-object p0, Lru/vtosters/lite/ui/fragments/MusicFragment;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic lambda$dlaudio$28(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 490
    sget-object p0, Lru/vtosters/lite/ui/fragments/MusicFragment;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda24;

    invoke-direct {p1}, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda24;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic lambda$lastfmAuth$20(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 398
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 399
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 400
    invoke-static {p0, p1}, Lru/vtosters/lite/music/LastFMScrobbler;->authenticate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$logout$21(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 431
    invoke-static {}, Lru/vtosters/lite/music/LastFMScrobbler;->logout()V

    return-void
.end method

.method static synthetic lambda$logout$22(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 433
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onCreate$10(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 214
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onCreate$12(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 230
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "sendMusicMetrics"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$onCreate$13(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 243
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "playStatCatalog"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$onCreate$14(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 258
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "useGenius"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$onCreate$16(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 290
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "lastfm_enabled"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$onCreate$17(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 318
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "libvkx_integration"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$onCreate$18(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 339
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "useOldAppVer"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 340
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->restartApplicationWithTimer()V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$onCreate$19(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 364
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "playlistsCatalogs"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$onCreate$4(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 111
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "invertCachedTracks"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$onCreate$7(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 162
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "dldir"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 163
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->restartApplicationWithTimer()V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$onCreate$8(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 176
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "setMetaData"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x1

    return p0
.end method

.method private lastfmAuth(Landroid/content/Context;)V
    .locals 7

    .line 371
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 372
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 374
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const v2, 0x7f121697

    .line 375
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 376
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTextAttr()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 377
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getSTextAttr()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 378
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccenedColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 379
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 380
    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 381
    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v4, 0x41a00000    # 20.0f

    .line 382
    invoke-static {v4}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v4}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v4

    invoke-virtual {v2, v5, v6, v4, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 383
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const v5, 0x7f12169b

    .line 386
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 387
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTextAttr()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTextColor(I)V

    .line 388
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getSTextAttr()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 389
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccenedColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 390
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 391
    invoke-virtual {v4}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 392
    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    new-instance v2, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-direct {v2, p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f121696

    .line 395
    invoke-virtual {v2, p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(I)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    new-instance v2, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda25;

    invoke-direct {v2, v1, v4}, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda25;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;)V

    const v1, 0x7f121695    # 1.9418454E38f

    .line 396
    invoke-virtual {p1, v1, v2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    .line 403
    invoke-virtual {p1, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    .line 404
    invoke-virtual {p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private logout(Landroid/content/Context;)V
    .locals 2

    .line 427
    new-instance v0, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f12169a

    .line 428
    invoke-virtual {v0, p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(I)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f121698

    .line 429
    invoke-virtual {p1, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setMessage(I)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda11;-><init>()V

    const v1, 0x7f12146f

    .line 430
    invoke-virtual {p1, v1, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda22;-><init>()V

    const v1, 0x7f121388

    .line 432
    invoke-virtual {p1, v1, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    .line 434
    invoke-virtual {p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public T4()I
    .locals 1

    const v0, 0x7f1217ce

    return v0
.end method

.method synthetic lambda$cachedPlaylistsDialog$23$ru-vtosters-lite-ui-fragments-MusicFragment(Ljava/util/List;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 449
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vk/dto/music/Playlist;

    .line 450
    invoke-virtual {p1}, Lcom/vk/dto/music/Playlist;->v1()Ljava/lang/String;

    move-result-object p1

    .line 451
    invoke-static {p2, p1}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->deletePlaylist(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "\u041f\u043b\u0435\u0439\u043b\u0438\u0441\u0442 \u0443\u0434\u0430\u043b\u0435\u043d"

    .line 452
    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    const-string p1, "cached_playlists"

    .line 453
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/MusicFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {}, Lru/vtosters/lite/music/cache/MusicCacheImpl;->getPlaylists()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, p2, p4

    const-string p3, "\u0421\u043a\u0430\u0447\u0430\u043d\u043e \u043f\u043b\u0435\u0439\u043b\u0438\u0441\u0442\u043e\u0432: %d"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$delcache$25$ru-vtosters-lite-ui-fragments-MusicFragment(ZLandroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 464
    sget-object p3, Lru/vtosters/lite/ui/fragments/MusicFragment;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance p4, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda28;

    invoke-direct {p4, p1, p2}, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda28;-><init>(ZLandroid/content/Context;)V

    invoke-interface {p3, p4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const-string p1, "cached_tracks"

    .line 471
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/MusicFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f121553

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {}, Lru/vtosters/lite/music/cache/MusicCacheImpl;->getTracksCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const/4 v0, 0x0

    aput-object p4, p3, v0

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$onCreate$0$ru-vtosters-lite-ui-fragments-MusicFragment(Landroidx/preference/Preference;)Z
    .locals 1

    .line 56
    invoke-static {}, Lru/vtosters/lite/music/cache/MusicCacheImpl;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1216c8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->delcache(Landroid/content/Context;Z)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreate$1$ru-vtosters-lite-ui-fragments-MusicFragment(Landroidx/preference/Preference;)Z
    .locals 0

    .line 73
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lru/vtosters/lite/ui/fragments/MusicFragment;->cachedPlaylistsDialog(Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreate$11$ru-vtosters-lite-ui-fragments-MusicFragment(Landroidx/preference/Preference;)Z
    .locals 6

    .line 188
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 189
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 191
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v2, "\u041f\u043e-\u0443\u043c\u043e\u043b\u0447\u0430\u043d\u0438\u044e: ; \u0441 \u043f\u0440\u043e\u0431\u0435\u043b\u043e\u043c"

    .line 192
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 193
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTextAttr()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 194
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getSTextAttr()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 195
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccenedColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 196
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->metadataSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 197
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 199
    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v3, 0x41a00000    # 20.0f

    .line 200
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v3

    invoke-virtual {v2, v4, v5, v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 201
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    new-instance v2, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\u0420\u0430\u0437\u0434\u0435\u043b\u0438\u0442\u0435\u043b\u044c"

    .line 204
    invoke-virtual {v2, v3}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v2

    .line 205
    invoke-virtual {v2, p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    new-instance v2, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda29;

    invoke-direct {v2, p0, v1}, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda29;-><init>(Lru/vtosters/lite/ui/fragments/MusicFragment;Landroid/widget/EditText;)V

    const-string v1, "\u0421\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c"

    .line 206
    invoke-virtual {p1, v1, v2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda30;

    invoke-direct {v1}, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda30;-><init>()V

    const-string v2, "\u041e\u0442\u043c\u0435\u043d\u0430"

    .line 214
    invoke-virtual {p1, v2, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    .line 215
    invoke-virtual {p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return v0
.end method

.method synthetic lambda$onCreate$15$ru-vtosters-lite-ui-fragments-MusicFragment(Landroidx/preference/Preference;)Z
    .locals 0

    .line 272
    invoke-static {}, Lru/vtosters/lite/music/LastFMScrobbler;->isLoggedIn()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 273
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lru/vtosters/lite/ui/fragments/MusicFragment;->logout(Landroid/content/Context;)V

    goto :goto_0

    .line 275
    :cond_0
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lru/vtosters/lite/ui/fragments/MusicFragment;->lastfmAuth(Landroid/content/Context;)V

    .line 277
    :goto_0
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->updateLastFmPref()V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreate$2$ru-vtosters-lite-ui-fragments-MusicFragment(Landroidx/preference/Preference;)Z
    .locals 1

    .line 85
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->delcache(Landroid/content/Context;Z)V

    return v0
.end method

.method synthetic lambda$onCreate$3$ru-vtosters-lite-ui-fragments-MusicFragment(Landroidx/preference/Preference;)Z
    .locals 0

    .line 98
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lru/vtosters/lite/ui/fragments/MusicFragment;->dlaudio(Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreate$5$ru-vtosters-lite-ui-fragments-MusicFragment(Landroid/widget/ArrayAdapter;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 141
    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 142
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "autocaching"

    invoke-interface {p1, v0, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "autocache_params"

    .line 143
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/MusicFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getAutocacheSumm()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 144
    invoke-interface {p2}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method synthetic lambda$onCreate$6$ru-vtosters-lite-ui-fragments-MusicFragment(Landroidx/preference/Preference;)Z
    .locals 4

    const-string p1, "\u0422\u043e\u043b\u044c\u043a\u043e \u0441\u0432\u043e\u0438"

    const-string v0, "\u0412\u0441\u0435"

    const-string v1, "\u041d\u0435 \u043a\u0435\u0448\u0438\u0440\u043e\u0432\u0430\u0442\u044c"

    .line 123
    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 125
    new-instance v0, Lru/vtosters/lite/ui/fragments/MusicFragment$1;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090003

    invoke-direct {v0, p0, v1, v2, p1}, Lru/vtosters/lite/ui/fragments/MusicFragment$1;-><init>(Lru/vtosters/lite/ui/fragments/MusicFragment;Landroid/content/Context;ILjava/util/List;)V

    .line 134
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "autocaching"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 135
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_0

    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 139
    :cond_0
    new-instance p1, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda0;-><init>(Lru/vtosters/lite/ui/fragments/MusicFragment;Landroid/widget/ArrayAdapter;)V

    .line 140
    invoke-virtual {p1, v0, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    .line 146
    invoke-virtual {p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreate$9$ru-vtosters-lite-ui-fragments-MusicFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 207
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "\u0420\u0430\u0437\u0434\u0435\u043b\u0438\u0442\u0435\u043b\u044c \u043d\u0435 \u043c\u043e\u0436\u0435\u0442 \u0431\u044b\u0442\u044c \u043f\u0443\u0441\u0442\u044b\u043c"

    .line 208
    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    return-void

    .line 211
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lru/vtosters/hooks/other/Preferences;->setMetadataSeparator(Ljava/lang/String;)V

    const-string p2, "metadataSeparator"

    .line 212
    invoke-virtual {p0, p2}, Lru/vtosters/lite/ui/fragments/MusicFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 25

    move-object/from16 v0, p0

    .line 41
    invoke-super/range {p0 .. p1}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f150013

    .line 42
    invoke-virtual {v0, v1}, Lru/vtosters/lite/ui/fragments/MusicFragment;->addPreferencesFromResource(I)V

    .line 44
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getBackgroundContent()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 45
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getBackgroundContent()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 47
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "\u041e\u0444\u043b\u0430\u0439\u043d \u043f\u0440\u043e\u0441\u043b\u0443\u0448\u0438\u0432\u0430\u043d\u0438\u0435"

    invoke-static {v1, v2}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreferenceCategory(Landroidx/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroidx/preference/PreferenceCategory;

    .line 50
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "cached_tracks"

    const v1, 0x7f121557

    .line 52
    invoke-virtual {v0, v1}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 53
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f121553

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {}, Lru/vtosters/lite/music/cache/MusicCacheImpl;->getTracksCount()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v9, 0x0

    .line 246
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v7, v6, v9

    .line 53
    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda3;

    invoke-direct {v8, v0}, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda3;-><init>(Lru/vtosters/lite/ui/fragments/MusicFragment;)V

    .line 49
    invoke-static/range {v3 .. v8}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 65
    invoke-static {}, Lru/vtosters/lite/music/cache/MusicCacheImpl;->hasPlaylist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "cached_playlists"

    const-string v5, "\u041a\u0435\u0448\u0438\u0440\u043e\u0432\u0430\u043d\u043d\u044b\u0435 \u043f\u043b\u0435\u0439\u043b\u0438\u0441\u0442\u044b"

    new-array v1, v2, [Ljava/lang/Object;

    .line 70
    invoke-static {}, Lru/vtosters/lite/music/cache/MusicCacheImpl;->getPlaylists()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v9

    const-string v6, "\u0421\u043a\u0430\u0447\u0430\u043d\u043e \u043f\u043b\u0435\u0439\u043b\u0438\u0441\u0442\u043e\u0432: %d"

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda12;

    invoke-direct {v8, v0}, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda12;-><init>(Lru/vtosters/lite/ui/fragments/MusicFragment;)V

    .line 66
    invoke-static/range {v3 .. v8}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 79
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "cached_playlists"

    const-string v13, "\u0423\u0434\u0430\u043b\u0438\u0442\u044c \u0432\u0441\u0435 \u0441\u043a\u0430\u0447\u0430\u043d\u043d\u044b\u0435 \u043f\u043b\u0435\u0439\u043b\u0438\u0441\u0442\u044b"

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-instance v1, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda13;

    invoke-direct {v1, v0}, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda13;-><init>(Lru/vtosters/lite/ui/fragments/MusicFragment;)V

    move-object/from16 v16, v1

    .line 78
    invoke-static/range {v11 .. v16}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 92
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "audio_download"

    const v1, 0x7f12152b

    .line 94
    invoke-virtual {v0, v1}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda14;

    invoke-direct {v8, v0}, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda14;-><init>(Lru/vtosters/lite/ui/fragments/MusicFragment;)V

    .line 91
    invoke-static/range {v3 .. v8}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 104
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "invertCachedTracks"

    const v1, 0x7f121896

    .line 106
    invoke-virtual {v0, v1}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v1, 0x7f121895

    .line 107
    invoke-virtual {v0, v1}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    new-instance v17, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda15;

    invoke-direct/range {v17 .. v17}, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda15;-><init>()V

    .line 103
    invoke-static/range {v11 .. v17}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addMaterialSwitchPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZLandroidx/preference/Preference$OnPreferenceChangeListener;)Lcom/vtosters/lite/ui/MaterialSwitchPreference;

    move-result-object v1

    .line 114
    invoke-static {}, Lru/vtosters/lite/music/cache/MusicCacheImpl;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/vtosters/lite/ui/MaterialSwitchPreference;->setEnabled(Z)V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "autocache_params"

    const v1, 0x7f121531

    .line 119
    invoke-virtual {v0, v1}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 120
    invoke-static {}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getAutocacheSumm()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-instance v1, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda16;

    invoke-direct {v1, v0}, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda16;-><init>(Lru/vtosters/lite/ui/fragments/MusicFragment;)V

    move-object/from16 v16, v1

    .line 116
    invoke-static/range {v11 .. v16}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 152
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "\u0421\u043a\u0430\u0447\u0438\u0432\u0430\u043d\u0438\u0435 \u0430\u0443\u0434\u0438\u043e \u0432 MP3"

    invoke-static {v1, v3}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreferenceCategory(Landroidx/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroidx/preference/PreferenceCategory;

    .line 155
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "dldir"

    const-string v13, "\u0410\u043b\u044c\u0442\u0435\u0440\u043d\u0430\u0442\u0438\u0432\u043d\u0430\u044f \u043f\u0430\u043f\u043a\u0430 \u0434\u043b\u044f \u0441\u043a\u0430\u0447\u0438\u0432\u0430\u043d\u0438\u044f"

    const-string v14, "\u0418\u0441\u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u044c \u043f\u0430\u043f\u043a\u0443 Downloads \u0432\u043c\u0435\u0441\u0442\u043e Music \u0434\u043b\u044f \u0441\u043a\u0430\u0447\u0438\u0432\u0430\u043d\u0438\u044f \u043c\u0443\u0437\u044b\u043a\u0438 \u0432 MP3"

    const/16 v16, 0x0

    new-instance v17, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda17;

    invoke-direct/range {v17 .. v17}, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda17;-><init>()V

    .line 154
    invoke-static/range {v11 .. v17}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addMaterialSwitchPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZLandroidx/preference/Preference$OnPreferenceChangeListener;)Lcom/vtosters/lite/ui/MaterialSwitchPreference;

    .line 169
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v18

    const-string v19, "setMetaData"

    const-string v20, "\u0421\u043e\u0445\u0440\u0430\u043d\u044f\u0442\u044c \u043c\u0435\u0442\u0430\u0434\u0430\u0442\u0443 \u043f\u0435\u0441\u0435\u043d"

    const-string v21, "\u0421\u043e\u0445\u0440\u0430\u043d\u044f\u0442\u044c id3v2 \u0442\u0435\u0433\u0438 \u0434\u043b\u044f \u043f\u0435\u0441\u0435\u043d \u0434\u043b\u044f MP3"

    const/16 v22, 0x0

    const/16 v23, 0x1

    new-instance v24, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda18;

    invoke-direct/range {v24 .. v24}, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda18;-><init>()V

    .line 168
    invoke-static/range {v18 .. v24}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addMaterialSwitchPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZLandroidx/preference/Preference$OnPreferenceChangeListener;)Lcom/vtosters/lite/ui/MaterialSwitchPreference;

    .line 182
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "metadataSeparator"

    const-string v5, "\u0420\u0430\u0437\u0434\u0435\u043b\u0438\u0442\u0435\u043b\u044c \u0434\u043b\u044f id3v2 \u0442\u0435\u0433\u043e\u0432"

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda19;

    invoke-direct {v8, v0}, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda19;-><init>(Lru/vtosters/lite/ui/fragments/MusicFragment;)V

    .line 181
    invoke-static/range {v3 .. v8}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 221
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "\u0420\u0435\u043a\u043e\u043c\u0435\u043d\u0434\u0430\u0446\u0438\u0438 \u043c\u0443\u0437\u044b\u043a\u0438"

    invoke-static {v1, v3}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreferenceCategory(Landroidx/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroidx/preference/PreferenceCategory;

    .line 223
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "sendMusicMetrics"

    const-string v13, "\u041e\u0442\u043f\u0440\u0430\u0432\u043b\u044f\u0442\u044c \u0441\u0442\u0430\u0442\u0438\u0441\u0442\u0438\u043a\u0443"

    const-string v14, "\u0421\u0442\u0430\u0442\u0438\u0441\u0442\u0438\u043a\u0430 \u043f\u0440\u043e\u0441\u043b\u0443\u0448\u0438\u0432\u0430\u043d\u0438\u0439 \u043d\u0435\u043e\u0431\u0445\u043e\u0434\u0438\u043c\u0430 \u0434\u043b\u044f \u0440\u0430\u0431\u043e\u0442\u044b \u0440\u0435\u043a\u043e\u043c\u0435\u043d\u0434\u0430\u0446\u0438\u0439 \u0438 \u0438\u0441\u0442\u043e\u0440\u0438\u0438 \u043f\u0440\u043e\u0441\u043b\u0443\u0448\u0438\u0432\u0430\u043d\u0438\u044f \u043c\u0443\u0437\u044b\u043a\u0438"

    const/16 v16, 0x1

    new-instance v17, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda20;

    invoke-direct/range {v17 .. v17}, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda20;-><init>()V

    .line 222
    invoke-static/range {v11 .. v17}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addMaterialSwitchPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZLandroidx/preference/Preference$OnPreferenceChangeListener;)Lcom/vtosters/lite/ui/MaterialSwitchPreference;

    .line 236
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v18

    const-string v19, "playStatCatalog"

    const-string v20, "\u0421\u043f\u0438\u0441\u043e\u043a \u0438\u0441\u0442\u043e\u0440\u0438\u0438 \u043f\u0440\u043e\u0441\u043b\u0443\u0448\u0438\u0432\u0430\u043d\u0438\u0439"

    const-string v21, "\u041f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c \u0432\u043a\u043b\u0430\u0434\u043a\u0443 \u0438\u0441\u0442\u043e\u0440\u0438\u0438 \u043f\u0440\u043e\u0441\u043b\u0443\u0448\u0438\u0432\u0430\u043d\u0438\u0439 \u0432 \u043c\u0443\u0437\u044b\u043a\u0430\u043b\u044c\u043d\u043e\u043c \u0440\u0430\u0437\u0434\u0435\u043b\u0435\n\n\u041e\u0442\u043a\u043b\u044e\u0447\u0435\u043d\u0438\u0435 \u0443\u0441\u043a\u043e\u0440\u0438\u0442 \u043e\u0442\u043a\u0440\u044b\u0442\u0438\u0435 \u043c\u0443\u0437\u044b\u043a\u0430\u043b\u044c\u043d\u043e\u0433\u043e \u0440\u0430\u0437\u0434\u0435\u043b\u0430 \u043f\u0440\u0438 \u043c\u0435\u0434\u043b\u0435\u043d\u043d\u043e\u043c \u0438\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0435"

    const/16 v23, 0x0

    new-instance v24, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda4;

    invoke-direct/range {v24 .. v24}, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda4;-><init>()V

    .line 235
    invoke-static/range {v18 .. v24}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addMaterialSwitchPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZLandroidx/preference/Preference$OnPreferenceChangeListener;)Lcom/vtosters/lite/ui/MaterialSwitchPreference;

    move-result-object v1

    .line 246
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->sendMusicMetrics()Z

    move-result v3

    const-string v4, "useOldAppVer"

    if-eqz v3, :cond_1

    invoke-static {v4, v10}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Lcom/vtosters/lite/ui/MaterialSwitchPreference;->setVisible(Z)V

    .line 248
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->serverFeaturesDisable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 249
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "\u0418\u043d\u0442\u0435\u0433\u0440\u0430\u0446\u0438\u044f Genius"

    invoke-static {v1, v3}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreferenceCategory(Landroidx/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroidx/preference/PreferenceCategory;

    .line 251
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "useGenius"

    const v1, 0x7f121885    # 1.941946E38f

    .line 253
    invoke-virtual {v0, v1}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v1, 0x7f121884

    .line 254
    invoke-virtual {v0, v1}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    new-instance v17, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda5;

    invoke-direct/range {v17 .. v17}, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda5;-><init>()V

    .line 250
    invoke-static/range {v11 .. v17}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addMaterialSwitchPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZLandroidx/preference/Preference$OnPreferenceChangeListener;)Lcom/vtosters/lite/ui/MaterialSwitchPreference;

    .line 263
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "\u0418\u043d\u0442\u0435\u0433\u0440\u0430\u0446\u0438\u044f Last.fm"

    invoke-static {v1, v3}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreferenceCategory(Landroidx/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroidx/preference/PreferenceCategory;

    .line 266
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "lastfm_auth"

    const v1, 0x7f121690

    .line 268
    invoke-virtual {v0, v1}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v1, 0x7f12168f

    .line 269
    invoke-virtual {v0, v1}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    new-instance v1, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda6;-><init>(Lru/vtosters/lite/ui/fragments/MusicFragment;)V

    move-object/from16 v16, v1

    .line 265
    invoke-static/range {v11 .. v16}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 283
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v16

    const-string v17, "lastfm_enabled"

    const-string v1, "lastfm_enabled_title"

    .line 285
    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v1, "lastfm_enabled_summ"

    .line 286
    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    new-instance v22, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda7;

    invoke-direct/range {v22 .. v22}, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda7;-><init>()V

    .line 282
    invoke-static/range {v16 .. v22}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addMaterialSwitchPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZLandroidx/preference/Preference$OnPreferenceChangeListener;)Lcom/vtosters/lite/ui/MaterialSwitchPreference;

    move-result-object v1

    .line 293
    invoke-static {}, Lru/vtosters/lite/music/LastFMScrobbler;->isLoggedIn()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/vtosters/lite/ui/MaterialSwitchPreference;->setEnabled(Z)V

    .line 295
    invoke-static {}, Lru/vtosters/lite/music/LastFMScrobbler;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "lastfm_auth"

    .line 296
    invoke-virtual {v0, v1}, Lru/vtosters/lite/ui/fragments/MusicFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f121691

    invoke-virtual {v0, v5}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lru/vtosters/lite/music/LastFMScrobbler;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 299
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "\u0418\u043d\u0442\u0435\u0433\u0440\u0430\u0446\u0438\u044f VK X"

    invoke-static {v1, v3}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreferenceCategory(Landroidx/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroidx/preference/PreferenceCategory;

    .line 302
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, ""

    const v1, 0x7f1217bf

    .line 304
    invoke-virtual {v0, v1}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v1, 0x7f1217c0

    .line 305
    invoke-virtual {v0, v1}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 301
    invoke-static/range {v11 .. v16}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 311
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v17

    const-string v18, "libvkx_integration"

    const v1, 0x7f1217bb

    .line 313
    invoke-virtual {v0, v1}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    new-instance v23, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda8;

    invoke-direct/range {v23 .. v23}, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda8;-><init>()V

    .line 310
    invoke-static/range {v17 .. v23}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addMaterialSwitchPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZLandroidx/preference/Preference$OnPreferenceChangeListener;)Lcom/vtosters/lite/ui/MaterialSwitchPreference;

    .line 323
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->isVkxInstalled()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "libvkx_integration"

    .line 324
    invoke-virtual {v0, v1}, Lru/vtosters/lite/ui/fragments/MusicFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    const-string v5, "\u0423 \u0432\u0430\u0441 \u043d\u0435 \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d VKX. \u0418\u043d\u0442\u0435\u0433\u0440\u0430\u0446\u0438\u044f \u0440\u0430\u0431\u043e\u0442\u0430\u0442\u044c \u043d\u0435 \u0431\u0443\u0434\u0435\u0442"

    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 325
    invoke-virtual {v0, v1}, Lru/vtosters/lite/ui/fragments/MusicFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 329
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "\u041f\u0440\u043e\u0447\u0435\u0435"

    invoke-static {v1, v3}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreferenceCategory(Landroidx/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroidx/preference/PreferenceCategory;

    .line 332
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "useOldAppVer"

    const v1, 0x7f121889

    .line 334
    invoke-virtual {v0, v1}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "\u0412\u043a\u043b\u044e\u0447\u0438\u0442\u0435 \u0435\u0441\u043b\u0438 \u0432\u0430\u0441 \u043d\u0435 \u0443\u0441\u0442\u0440\u0430\u0438\u0432\u0430\u044e\u0442 \u043d\u043e\u0432\u044b\u0435 \u0440\u0435\u043a\u043e\u043c\u0435\u043d\u0434\u0430\u0446\u0438\u0438 \u0438 \u0432\u0430\u0441 \u0438\u043d\u0442\u0435\u0440\u0435\u0441\u0443\u0435\u0442 \u0442\u043e\u043b\u044c\u043a\u043e \u0441\u0432\u043e\u0435 \u0430\u0443\u0434\u0438\u043e"

    const/4 v15, 0x0

    const/16 v16, 0x0

    new-instance v17, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda9;

    invoke-direct/range {v17 .. v17}, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda9;-><init>()V

    .line 331
    invoke-static/range {v11 .. v17}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addMaterialSwitchPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZLandroidx/preference/Preference$OnPreferenceChangeListener;)Lcom/vtosters/lite/ui/MaterialSwitchPreference;

    .line 345
    new-instance v1, Lcom/vtosters/lite/ui/SummaryListPreference;

    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/vtosters/lite/ui/SummaryListPreference;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1216bb

    .line 346
    invoke-virtual {v1, v3}, Lcom/vtosters/lite/ui/SummaryListPreference;->setTitle(I)V

    const-string v3, "musicdefcatalog"

    .line 347
    invoke-virtual {v1, v3}, Lcom/vtosters/lite/ui/SummaryListPreference;->setKey(Ljava/lang/String;)V

    const v3, 0x7f03006b

    .line 348
    invoke-virtual {v1, v3}, Lcom/vtosters/lite/ui/SummaryListPreference;->setEntryValues(I)V

    const v3, 0x7f03006c

    .line 349
    invoke-virtual {v1, v3}, Lcom/vtosters/lite/ui/SummaryListPreference;->setEntries(I)V

    const v3, 0x7f1216ba

    .line 350
    invoke-virtual {v1, v3}, Lcom/vtosters/lite/ui/SummaryListPreference;->setDialogTitle(I)V

    const-string v3, "default"

    .line 351
    invoke-virtual {v1, v3}, Lcom/vtosters/lite/ui/SummaryListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 352
    invoke-static {v4, v10}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/vtosters/lite/ui/SummaryListPreference;->setVisible(Z)V

    .line 354
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 357
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "playlistsCatalogs"

    const-string v13, "\u0421\u043f\u0438\u0441\u043a\u0438 \u043f\u043b\u0435\u0439\u043b\u0438\u0441\u0442\u043e\u0432"

    const-string v14, "\u041f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c \u0432\u043a\u043b\u0430\u0434\u043a\u0443 \u043f\u043b\u0435\u0439\u043b\u0438\u0441\u0442\u043e\u0432 \u0438 \u0430\u043b\u044c\u0431\u043e\u043c\u043e\u0432 \u043f\u0440\u043e\u0441\u043b\u0443\u0448\u0438\u0432\u0430\u043d\u0438\u0439 \u0432 \u043c\u0443\u0437\u044b\u043a\u0430\u043b\u044c\u043d\u043e\u043c \u0440\u0430\u0437\u0434\u0435\u043b\u0435\n\n\u041e\u0442\u043a\u043b\u044e\u0447\u0435\u043d\u0438\u0435 \u0443\u0441\u043a\u043e\u0440\u0438\u0442 \u043e\u0442\u043a\u0440\u044b\u0442\u0438\u0435 \u043c\u0443\u0437\u044b\u043a\u0430\u043b\u044c\u043d\u043e\u0433\u043e \u0440\u0430\u0437\u0434\u0435\u043b\u0430 \u043f\u0440\u0438 \u043c\u0435\u0434\u043b\u0435\u043d\u043d\u043e\u043c \u0438\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0435"

    const/4 v15, 0x0

    const/16 v16, 0x1

    new-instance v17, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda10;

    invoke-direct/range {v17 .. v17}, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda10;-><init>()V

    .line 356
    invoke-static/range {v11 .. v17}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addMaterialSwitchPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZLandroidx/preference/Preference$OnPreferenceChangeListener;)Lcom/vtosters/lite/ui/MaterialSwitchPreference;

    move-result-object v1

    .line 367
    invoke-static {v4, v10}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/vtosters/lite/ui/MaterialSwitchPreference;->setVisible(Z)V

    return-void
.end method

.method public updateLastFmPref()V
    .locals 4

    .line 417
    invoke-static {}, Lru/vtosters/lite/music/LastFMScrobbler;->isLoggedIn()Z

    move-result v0

    const-string v1, "lastfm_enabled"

    const-string v2, "lastfm_auth"

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {p0, v2}, Lru/vtosters/lite/ui/fragments/MusicFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f121691

    invoke-virtual {p0, v3}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lru/vtosters/lite/music/LastFMScrobbler;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 419
    invoke-virtual {p0, v1}, Lru/vtosters/lite/ui/fragments/MusicFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {p0, v2}, Lru/vtosters/lite/ui/fragments/MusicFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const v2, 0x7f12168f

    invoke-virtual {p0, v2}, Lru/vtosters/lite/ui/fragments/MusicFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 422
    invoke-virtual {p0, v1}, Lru/vtosters/lite/ui/fragments/MusicFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method
