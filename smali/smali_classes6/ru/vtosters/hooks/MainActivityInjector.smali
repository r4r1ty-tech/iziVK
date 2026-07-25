.class public Lru/vtosters/hooks/MainActivityInjector;
.super Ljava/lang/Object;
.source "MainActivityInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Landroid/app/Activity;)V
    .locals 2

    .line 30
    invoke-static {p0}, Lru/vtosters/hooks/ui/SystemThemeChangerHook;->themeOnStart(Landroid/app/Activity;)V

    .line 32
    invoke-static {}, Lru/vtosters/lite/ssfs/UsersList;->getUsersList()V

    .line 33
    invoke-static {p0}, Lru/vtosters/lite/utils/VTVerifications;->load(Landroid/content/Context;)V

    .line 35
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->checkupdates()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lru/vtosters/lite/ui/dialogs/OTADialog;->checkUpdates(Landroid/app/Activity;)V

    .line 37
    :cond_0
    invoke-static {}, Lru/vtosters/lite/concurrent/VTExecutors;->getSlowTasksScheduler()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, Lru/vtosters/hooks/MainActivityInjector$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lru/vtosters/hooks/MainActivityInjector$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->a(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 47
    invoke-static {}, Lru/vtosters/lite/downloaders/notifications/NotificationChannels;->createChannels()V

    .line 50
    :cond_1
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->isNewBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMonetTheme()Z

    move-result v0

    if-nez v0, :cond_2

    .line 52
    invoke-static {}, Lru/vtosters/lite/themes/ThemesManager;->canApplyCustomAccent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->updateBuildNumber()V

    .line 54
    invoke-static {p0}, Lru/vtosters/hooks/MainActivityInjector;->updateBinsAndTmpArchive(Landroid/app/Activity;)V

    .line 57
    :cond_2
    invoke-static {}, Lru/vtosters/lite/concurrent/VTExecutors;->getIoScheduler()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, Lru/vtosters/hooks/MainActivityInjector$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lru/vtosters/hooks/MainActivityInjector$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->a(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.APPLICATION_PREFERENCES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    invoke-static {p0}, Lru/vtosters/lite/utils/NavigatorUtils;->switchToSettings(Landroid/content/Context;)V

    return-void

    .line 64
    :cond_3
    invoke-static {p0}, Lru/vtosters/lite/ui/dialogs/Start;->alert(Landroid/app/Activity;)V

    .line 65
    invoke-static {p0}, Lru/vtosters/lite/ui/dialogs/InstallGMS;->alert(Landroid/app/Activity;)V

    .line 68
    invoke-static {p0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->getInstance(Landroid/content/Context;)Lcom/aefyr/tsg/g2/TelegramStickersService;

    .line 70
    invoke-static {}, Lru/vtosters/lite/utils/AccountManagerUtils;->isLogin()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->serverFeaturesDisable()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->isValidSignature()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "sponsorpost"

    .line 71
    invoke-static {p0}, Lcom/vk/medianative/NativeLibLoader;->loadLibrary(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lru/vtosters/sponsorpost/internal/Native;->canVote:Z

    :cond_4
    return-void
.end method

.method static synthetic lambda$inject$0()V
    .locals 1

    .line 38
    invoke-static {}, Lru/vtosters/lite/utils/CacheUtils;->getInstance()Lru/vtosters/lite/utils/CacheUtils;

    move-result-object v0

    invoke-virtual {v0}, Lru/vtosters/lite/utils/CacheUtils;->autoCleaningCache()V

    .line 40
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->serverFeaturesDisable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    invoke-static {}, Lru/vtosters/sponsorpost/utils/Updates;->updateFilters()V

    .line 42
    invoke-static {}, Lru/vtosters/sponsorpost/utils/Updates;->updatePosts()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$updateBinsAndTmpArchive$1(Lb/h/g/k/VKProgressDialog;Landroid/app/Activity;Ljava/lang/Throwable;)V
    .locals 1

    .line 88
    invoke-virtual {p0}, Lb/h/g/k/VKProgressDialog;->cancel()V

    .line 89
    new-instance p0, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-direct {p0, p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120369

    .line 90
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error_applying_accent"

    .line 91
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f1209b9

    const/4 p2, 0x0

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p0

    .line 93
    invoke-virtual {p0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method static synthetic lambda$updateBinsAndTmpArchive$2(Landroid/app/Activity;Lb/h/g/k/VKProgressDialog;)V
    .locals 2

    .line 83
    :try_start_0
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getReservedAccent()I

    move-result v0

    invoke-static {v0}, Lru/vtosters/lite/themes/ThemesManager;->generateModApk(I)V

    .line 84
    new-instance v0, Lru/vtosters/hooks/MainActivityInjector$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lru/vtosters/hooks/MainActivityInjector$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 87
    new-instance v1, Lru/vtosters/hooks/MainActivityInjector$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p0, v0}, Lru/vtosters/hooks/MainActivityInjector$$ExternalSyntheticLambda4;-><init>(Lb/h/g/k/VKProgressDialog;Landroid/app/Activity;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private static updateBinsAndTmpArchive(Landroid/app/Activity;)V
    .locals 3

    .line 76
    new-instance v0, Lb/h/g/k/VKProgressDialog;

    invoke-direct {v0, p0}, Lb/h/g/k/VKProgressDialog;-><init>(Landroid/content/Context;)V

    const-string v1, "applying_accent"

    .line 78
    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/h/g/k/VKProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v0}, Lb/h/g/k/VKProgressDialog;->show()V

    .line 81
    invoke-static {}, Lru/vtosters/lite/concurrent/VTExecutors;->getIoExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lru/vtosters/hooks/MainActivityInjector$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lru/vtosters/hooks/MainActivityInjector$$ExternalSyntheticLambda2;-><init>(Landroid/app/Activity;Lb/h/g/k/VKProgressDialog;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
