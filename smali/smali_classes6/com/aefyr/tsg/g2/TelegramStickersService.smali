.class public Lcom/aefyr/tsg/g2/TelegramStickersService;
.super Ljava/lang/Object;
.source "TelegramStickersService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aefyr/tsg/g2/TelegramStickersService$StickersEventsListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TGStickersService"

.field private static instance:Lcom/aefyr/tsg/g2/TelegramStickersService;


# instance fields
.field private final activePacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/aefyr/tsg/g2/TelegramStickersPack;",
            ">;"
        }
    .end annotation
.end field

.field private final currentlyDownloading:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final dbHelper:Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;

.field private final executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final grabber:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;

.field private final inactivePacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/aefyr/tsg/g2/TelegramStickersPack;",
            ">;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/aefyr/tsg/g2/TelegramStickersService$StickersEventsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationsHelper:Lcom/aefyr/tsg/g2/NotificationsHelper;

.field private final packs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/aefyr/tsg/g2/TelegramStickersPack;",
            ">;"
        }
    .end annotation
.end field

.field private final queuedTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private ready:Z

.field private final uiThreadHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetactivePacks(Lcom/aefyr/tsg/g2/TelegramStickersService;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->activePacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentlyDownloading(Lcom/aefyr/tsg/g2/TelegramStickersService;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->currentlyDownloading:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinactivePacks(Lcom/aefyr/tsg/g2/TelegramStickersService;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->inactivePacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnotificationsHelper(Lcom/aefyr/tsg/g2/TelegramStickersService;)Lcom/aefyr/tsg/g2/NotificationsHelper;
    .locals 0

    iget-object p0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->notificationsHelper:Lcom/aefyr/tsg/g2/NotificationsHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpacks(Lcom/aefyr/tsg/g2/TelegramStickersService;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->packs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetqueuedTasks(Lcom/aefyr/tsg/g2/TelegramStickersService;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->queuedTasks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputready(Lcom/aefyr/tsg/g2/TelegramStickersService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->ready:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyActivePacksListChanged(Lcom/aefyr/tsg/g2/TelegramStickersService;)V
    .locals 0

    invoke-direct {p0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->notifyActivePacksListChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyInactivePacksListChanged(Lcom/aefyr/tsg/g2/TelegramStickersService;)V
    .locals 0

    invoke-direct {p0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->notifyInactivePacksListChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyPackAdded(Lcom/aefyr/tsg/g2/TelegramStickersService;Lcom/aefyr/tsg/g2/TelegramStickersPack;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aefyr/tsg/g2/TelegramStickersService;->notifyPackAdded(Lcom/aefyr/tsg/g2/TelegramStickersPack;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyPackChanged(Lcom/aefyr/tsg/g2/TelegramStickersService;Lcom/aefyr/tsg/g2/TelegramStickersPack;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aefyr/tsg/g2/TelegramStickersService;->notifyPackChanged(Lcom/aefyr/tsg/g2/TelegramStickersPack;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyPackDownloadError(Lcom/aefyr/tsg/g2/TelegramStickersService;Lcom/aefyr/tsg/g2/TelegramStickersPack;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aefyr/tsg/g2/TelegramStickersService;->notifyPackDownloadError(Lcom/aefyr/tsg/g2/TelegramStickersPack;Ljava/lang/Exception;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyPackRemoved(Lcom/aefyr/tsg/g2/TelegramStickersService;Lcom/aefyr/tsg/g2/TelegramStickersPack;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aefyr/tsg/g2/TelegramStickersService;->notifyPackRemoved(Lcom/aefyr/tsg/g2/TelegramStickersPack;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrunOnUiThread(Lcom/aefyr/tsg/g2/TelegramStickersService;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aefyr/tsg/g2/TelegramStickersService;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msyncPack(Lcom/aefyr/tsg/g2/TelegramStickersService;Lcom/aefyr/tsg/g2/TelegramStickersPack;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aefyr/tsg/g2/TelegramStickersService;->syncPack(Lcom/aefyr/tsg/g2/TelegramStickersPack;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->ready:Z

    .line 43
    sput-object p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->instance:Lcom/aefyr/tsg/g2/TelegramStickersService;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->listeners:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->currentlyDownloading:Ljava/util/HashSet;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->uiThreadHandler:Landroid/os/Handler;

    .line 48
    new-instance v0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->grabber:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;

    .line 49
    new-instance v0, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;

    invoke-direct {v0, p1}, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->dbHelper:Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->queuedTasks:Ljava/util/ArrayList;

    const/4 v0, 0x2

    .line 51
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 52
    new-instance v0, Lcom/aefyr/tsg/g2/NotificationsHelper;

    invoke-direct {v0, p1}, Lcom/aefyr/tsg/g2/NotificationsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->notificationsHelper:Lcom/aefyr/tsg/g2/NotificationsHelper;

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->packs:Ljava/util/ArrayList;

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->activePacks:Ljava/util/ArrayList;

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->inactivePacks:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 58
    invoke-direct {p0, p1}, Lcom/aefyr/tsg/g2/TelegramStickersService;->updatePacks(Z)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/aefyr/tsg/g2/TelegramStickersService;
    .locals 1

    .line 62
    sget-object v0, Lcom/aefyr/tsg/g2/TelegramStickersService;->instance:Lcom/aefyr/tsg/g2/TelegramStickersService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aefyr/tsg/g2/TelegramStickersService;

    invoke-direct {v0, p0}, Lcom/aefyr/tsg/g2/TelegramStickersService;-><init>(Landroid/content/Context;)V

    :cond_0
    return-object v0
.end method

.method private notifyActivePacksListChanged()V
    .locals 3

    .line 139
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->ACTION_RELOAD:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 140
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lru/vtosters/lite/ui/fragments/VTSettings;->ACTION_INVALIDATE_TGS_COUNT:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 141
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aefyr/tsg/g2/TelegramStickersService$StickersEventsListener;

    .line 145
    invoke-interface {v1}, Lcom/aefyr/tsg/g2/TelegramStickersService$StickersEventsListener;->onActivePacksListChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyInactivePacksListChanged()V
    .locals 3

    .line 150
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->ACTION_RELOAD:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 151
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aefyr/tsg/g2/TelegramStickersService$StickersEventsListener;

    .line 155
    invoke-interface {v1}, Lcom/aefyr/tsg/g2/TelegramStickersService$StickersEventsListener;->onInactivePacksListChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyPackAdded(Lcom/aefyr/tsg/g2/TelegramStickersPack;I)V
    .locals 3

    .line 99
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->ACTION_RELOAD:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 100
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aefyr/tsg/g2/TelegramStickersService$StickersEventsListener;

    .line 104
    invoke-interface {v1, p1, p2}, Lcom/aefyr/tsg/g2/TelegramStickersService$StickersEventsListener;->onPackAdded(Lcom/aefyr/tsg/g2/TelegramStickersPack;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyPackChanged(Lcom/aefyr/tsg/g2/TelegramStickersPack;I)V
    .locals 3

    .line 109
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->ACTION_RELOAD:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 110
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aefyr/tsg/g2/TelegramStickersService$StickersEventsListener;

    .line 114
    invoke-interface {v1, p1, p2}, Lcom/aefyr/tsg/g2/TelegramStickersService$StickersEventsListener;->onPackChanged(Lcom/aefyr/tsg/g2/TelegramStickersPack;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyPackDownloadError(Lcom/aefyr/tsg/g2/TelegramStickersPack;Ljava/lang/Exception;)V
    .locals 3

    .line 129
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->ACTION_RELOAD:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 130
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aefyr/tsg/g2/TelegramStickersService$StickersEventsListener;

    .line 134
    invoke-interface {v1, p1, p2}, Lcom/aefyr/tsg/g2/TelegramStickersService$StickersEventsListener;->onPackDownloadError(Lcom/aefyr/tsg/g2/TelegramStickersPack;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyPackRemoved(Lcom/aefyr/tsg/g2/TelegramStickersPack;I)V
    .locals 3

    .line 119
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->ACTION_RELOAD:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 120
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aefyr/tsg/g2/TelegramStickersService$StickersEventsListener;

    .line 124
    invoke-interface {v1, p1, p2}, Lcom/aefyr/tsg/g2/TelegramStickersService$StickersEventsListener;->onPackRemoved(Lcom/aefyr/tsg/g2/TelegramStickersPack;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->uiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private syncPack(Lcom/aefyr/tsg/g2/TelegramStickersPack;)V
    .locals 2

    .line 339
    iget-boolean v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->ready:Z

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->queuedTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/aefyr/tsg/g2/TelegramStickersService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/aefyr/tsg/g2/TelegramStickersService$$ExternalSyntheticLambda1;-><init>(Lcom/aefyr/tsg/g2/TelegramStickersService;Lcom/aefyr/tsg/g2/TelegramStickersPack;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 344
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sync="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->dbHelper:Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;

    invoke-virtual {v1, p1}, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;->syncPack(Lcom/aefyr/tsg/g2/TelegramStickersPack;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TGStickersService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updatePacks(Z)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->packs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 67
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->dbHelper:Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;

    new-instance v1, Lcom/aefyr/tsg/g2/TelegramStickersService$1;

    invoke-direct {v1, p0, p1}, Lcom/aefyr/tsg/g2/TelegramStickersService$1;-><init>(Lcom/aefyr/tsg/g2/TelegramStickersService;Z)V

    invoke-virtual {v0, v1}, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;->getAllPacks(Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper$PacksLoadingListener;)V

    return-void
.end method


# virtual methods
.method public deletePack(Lcom/aefyr/tsg/g2/TelegramStickersPack;)V
    .locals 3

    .line 310
    iget-boolean v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->ready:Z

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->queuedTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/aefyr/tsg/g2/TelegramStickersService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/aefyr/tsg/g2/TelegramStickersService$$ExternalSyntheticLambda3;-><init>(Lcom/aefyr/tsg/g2/TelegramStickersService;Lcom/aefyr/tsg/g2/TelegramStickersPack;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->dbHelper:Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;

    invoke-virtual {v0, p1}, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;->deletePack(Lcom/aefyr/tsg/g2/TelegramStickersPack;)Z

    move-result v0

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Delete from DB="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TGStickersService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->packs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 319
    iget-object v2, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->packs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 320
    invoke-direct {p0, p1, v1}, Lcom/aefyr/tsg/g2/TelegramStickersService;->notifyPackRemoved(Lcom/aefyr/tsg/g2/TelegramStickersPack;I)V

    .line 322
    iget-boolean v1, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->enabled:Z

    if-eqz v1, :cond_1

    .line 323
    iget-object v1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->activePacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 324
    invoke-direct {p0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->notifyActivePacksListChanged()V

    goto :goto_0

    .line 326
    :cond_1
    iget-object v1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->inactivePacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 327
    invoke-direct {p0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->notifyInactivePacksListChanged()V

    :goto_0
    if-eqz v0, :cond_2

    .line 331
    new-instance v0, Lcom/aefyr/tsg/g2/PackDeletionTask;

    invoke-direct {v0, p1}, Lcom/aefyr/tsg/g2/PackDeletionTask;-><init>(Lcom/aefyr/tsg/g2/TelegramStickersPack;)V

    iget-object p1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Lcom/aefyr/tsg/g2/PackDeletionTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    return-void
.end method

.method public getActivePacksListReference()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/aefyr/tsg/g2/TelegramStickersPack;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->activePacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInactivePacksListReference()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/aefyr/tsg/g2/TelegramStickersPack;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->inactivePacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPacksListReference()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/aefyr/tsg/g2/TelegramStickersPack;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->packs:Ljava/util/ArrayList;

    return-object v0
.end method

.method synthetic lambda$deletePack$2$com-aefyr-tsg-g2-TelegramStickersService(Lcom/aefyr/tsg/g2/TelegramStickersPack;)V
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Lcom/aefyr/tsg/g2/TelegramStickersService;->deletePack(Lcom/aefyr/tsg/g2/TelegramStickersPack;)V

    return-void
.end method

.method synthetic lambda$requestPackDownload$0$com-aefyr-tsg-g2-TelegramStickersService(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 183
    invoke-virtual {p0, p1, p2}, Lcom/aefyr/tsg/g2/TelegramStickersService;->requestPackDownload(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method synthetic lambda$setPackEnabled$1$com-aefyr-tsg-g2-TelegramStickersService(Lcom/aefyr/tsg/g2/TelegramStickersPack;ZZ)V
    .locals 0

    .line 285
    invoke-virtual {p0, p1, p2, p3}, Lcom/aefyr/tsg/g2/TelegramStickersService;->setPackEnabled(Lcom/aefyr/tsg/g2/TelegramStickersPack;ZZ)V

    return-void
.end method

.method synthetic lambda$syncPack$3$com-aefyr-tsg-g2-TelegramStickersService(Lcom/aefyr/tsg/g2/TelegramStickersPack;)V
    .locals 0

    .line 340
    invoke-direct {p0, p1}, Lcom/aefyr/tsg/g2/TelegramStickersService;->syncPack(Lcom/aefyr/tsg/g2/TelegramStickersPack;)V

    return-void
.end method

.method public requestPackDownload(Ljava/lang/String;Ljava/io/File;)V
    .locals 5

    .line 176
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->currentlyDownloading:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "Got request to download pack %s which is already downloading"

    .line 177
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "TGStickersService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 181
    :cond_0
    iget-boolean v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->ready:Z

    if-nez v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->queuedTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/aefyr/tsg/g2/TelegramStickersService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/aefyr/tsg/g2/TelegramStickersService$$ExternalSyntheticLambda2;-><init>(Lcom/aefyr/tsg/g2/TelegramStickersService;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 187
    :cond_1
    new-instance v0, Lcom/aefyr/tsg/g2/TelegramStickersPack;

    invoke-direct {v0, p1}, Lcom/aefyr/tsg/g2/TelegramStickersPack;-><init>(Ljava/lang/String;)V

    .line 190
    iget-object v3, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 192
    iget-object p2, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->packs:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/aefyr/tsg/g2/TelegramStickersPack;

    const/4 p2, 0x2

    .line 193
    iput p2, v0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->state:I

    .line 195
    iget-object p2, v0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->folder:Ljava/io/File;

    .line 196
    invoke-direct {p0, v0, v3}, Lcom/aefyr/tsg/g2/TelegramStickersService;->notifyPackChanged(Lcom/aefyr/tsg/g2/TelegramStickersPack;I)V

    const/4 v1, 0x1

    goto :goto_0

    .line 198
    :cond_2
    iput v2, v0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->state:I

    .line 199
    iput-object p2, v0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->folder:Ljava/io/File;

    .line 200
    iget-object v3, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v3, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-direct {p0, v0, v3}, Lcom/aefyr/tsg/g2/TelegramStickersService;->notifyPackAdded(Lcom/aefyr/tsg/g2/TelegramStickersPack;I)V

    .line 207
    :goto_0
    iget-object v2, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->currentlyDownloading:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v2, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->notificationsHelper:Lcom/aefyr/tsg/g2/NotificationsHelper;

    invoke-virtual {v2, v0}, Lcom/aefyr/tsg/g2/NotificationsHelper;->packStartedDownloading(Lcom/aefyr/tsg/g2/TelegramStickersPack;)V

    .line 212
    :try_start_0
    iget-object v2, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->grabber:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;

    iget-object v3, v0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->version:Ljava/lang/String;

    new-instance v4, Lcom/aefyr/tsg/g2/TelegramStickersService$2;

    invoke-direct {v4, p0, v0, v1}, Lcom/aefyr/tsg/g2/TelegramStickersService$2;-><init>(Lcom/aefyr/tsg/g2/TelegramStickersService;Lcom/aefyr/tsg/g2/TelegramStickersPack;Z)V

    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->grabPack(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 279
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setBotKey(Ljava/lang/String;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->grabber:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;

    invoke-virtual {v0, p1}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->setBotApiKey(Ljava/lang/String;)V

    return-void
.end method

.method public setPackEnabled(Lcom/aefyr/tsg/g2/TelegramStickersPack;ZZ)V
    .locals 2

    .line 284
    iget-boolean v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->ready:Z

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->queuedTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/aefyr/tsg/g2/TelegramStickersService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/aefyr/tsg/g2/TelegramStickersService$$ExternalSyntheticLambda0;-><init>(Lcom/aefyr/tsg/g2/TelegramStickersService;Lcom/aefyr/tsg/g2/TelegramStickersPack;ZZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 289
    :cond_0
    iget-boolean v0, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->enabled:Z

    if-ne v0, p2, :cond_1

    return-void

    .line 292
    :cond_1
    iput-boolean p2, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->enabled:Z

    .line 293
    invoke-direct {p0, p1}, Lcom/aefyr/tsg/g2/TelegramStickersService;->syncPack(Lcom/aefyr/tsg/g2/TelegramStickersPack;)V

    if-eqz p3, :cond_2

    .line 294
    iget-object p2, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->packs:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/aefyr/tsg/g2/TelegramStickersService;->notifyPackChanged(Lcom/aefyr/tsg/g2/TelegramStickersPack;I)V

    .line 296
    :cond_2
    iget-boolean p2, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->enabled:Z

    if-eqz p2, :cond_3

    .line 297
    iget-object p2, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->inactivePacks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 298
    iget-object p2, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->activePacks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 300
    :cond_3
    iget-object p2, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->activePacks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 301
    iget-object p2, p0, Lcom/aefyr/tsg/g2/TelegramStickersService;->inactivePacks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz p3, :cond_4

    .line 304
    invoke-direct {p0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->notifyActivePacksListChanged()V

    .line 305
    invoke-direct {p0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->notifyInactivePacksListChanged()V

    :cond_4
    return-void
.end method

.method public swap(Lcom/aefyr/tsg/g2/TelegramStickersPack;Lcom/aefyr/tsg/g2/TelegramStickersPack;)V
    .locals 3

    .line 348
    iget v0, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->index:I

    .line 349
    iget v1, p2, Lcom/aefyr/tsg/g2/TelegramStickersPack;->index:I

    .line 350
    iput v1, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->index:I

    .line 351
    iput v0, p2, Lcom/aefyr/tsg/g2/TelegramStickersPack;->index:I

    .line 352
    invoke-direct {p0, p1}, Lcom/aefyr/tsg/g2/TelegramStickersService;->syncPack(Lcom/aefyr/tsg/g2/TelegramStickersPack;)V

    .line 353
    invoke-direct {p0, p2}, Lcom/aefyr/tsg/g2/TelegramStickersService;->syncPack(Lcom/aefyr/tsg/g2/TelegramStickersPack;)V

    .line 355
    invoke-virtual {p0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->getActivePacksListReference()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->getActivePacksListReference()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->getInactivePacksListReference()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->getInactivePacksListReference()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    :cond_1
    invoke-virtual {p0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->getActivePacksListReference()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 357
    invoke-virtual {p0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->getActivePacksListReference()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 358
    invoke-virtual {p0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->getActivePacksListReference()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-virtual {p0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->getActivePacksListReference()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 361
    :cond_2
    invoke-virtual {p0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->getPacksListReference()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 362
    invoke-virtual {p0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->getPacksListReference()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 363
    invoke-virtual {p0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->getPacksListReference()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 364
    invoke-virtual {p0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->getPacksListReference()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
