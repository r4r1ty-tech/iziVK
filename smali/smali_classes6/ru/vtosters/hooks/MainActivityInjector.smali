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

