.class public Lcom/aefyr/tsg/g2/NotificationsHelper;
.super Ljava/lang/Object;
.source "NotificationsHelper.java"


# static fields
.field private static final MAX_UPDATE_NOTIFICATIONS_PER_SECOND:I = 0x3

.field private static final MIN_TIME_BETWEEN_UPDATE_NOTIFICATIONS:I = 0x14d

.field private static final NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "tgss_chan_v5"


# instance fields
.field private final c:Landroid/content/Context;

.field private final downloadingPacksNotificationsIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final lastNotificationTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final manager:Landroidx/core/app/NotificationManagerCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/aefyr/tsg/g2/NotificationsHelper;->lastNotificationTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 33
    iput-object p1, p0, Lcom/aefyr/tsg/g2/NotificationsHelper;->c:Landroid/content/Context;

    .line 34
    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/aefyr/tsg/g2/NotificationsHelper;->manager:Landroidx/core/app/NotificationManagerCompat;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aefyr/tsg/g2/NotificationsHelper;->downloadingPacksNotificationsIds:Ljava/util/List;

    .line 39
    invoke-direct {p0}, Lcom/aefyr/tsg/g2/NotificationsHelper;->oreo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Landroid/app/NotificationChannel;

    const v1, 0x7f12177f

    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const-string v3, "tgss_chan_v5"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v1, "notification"

    .line 41
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method private commonBuilder()Landroid/app/Notification$Builder;
    .locals 2

    .line 103
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/aefyr/tsg/g2/NotificationsHelper;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f08043a

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 104
    invoke-direct {p0}, Lcom/aefyr/tsg/g2/NotificationsHelper;->oreo()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "tgss_chan_v5"

    .line 105
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_0
    return-object v0
.end method

.method private oreo()Z
    .locals 2

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public packDoneDownloading(Lcom/aefyr/tsg/g2/TelegramStickersPack;ZZLjava/lang/Exception;)V
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/aefyr/tsg/g2/NotificationsHelper;->downloadingPacksNotificationsIds:Ljava/util/List;

    iget-object v1, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->hash:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/aefyr/tsg/g2/NotificationsHelper;->commonBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 78
    invoke-virtual {v0, v1, v1, v1}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 79
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const v2, 0x7f12177f

    .line 80
    invoke-static {v2}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-string v2, " "

    if-eqz p2, :cond_2

    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->title:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    const p3, 0x7f121780

    goto :goto_0

    :cond_1
    const p3, 0x7f12177a

    :goto_0
    invoke-static {p3}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 86
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->title:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_3

    const p3, 0x7f12177d

    goto :goto_1

    :cond_3
    const p3, 0x7f12177c

    :goto_1
    invoke-static {p3}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 88
    :goto_2
    instance-of p3, p4, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$TSGException;

    if-eqz p3, :cond_4

    .line 89
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->title:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_4
    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    .line 92
    iget-object p4, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->title:Ljava/lang/String;

    aput-object p4, p3, v1

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 94
    iget-object p2, p0, Lcom/aefyr/tsg/g2/NotificationsHelper;->manager:Landroidx/core/app/NotificationManagerCompat;

    iget-object p1, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->hash:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public packDownloadUpdated(Lcom/aefyr/tsg/g2/TelegramStickersPack;I)V
    .locals 5

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/aefyr/tsg/g2/NotificationsHelper;->lastNotificationTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x14d

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    iget-object v0, p0, Lcom/aefyr/tsg/g2/NotificationsHelper;->downloadingPacksNotificationsIds:Ljava/util/List;

    iget-object v1, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->hash:Ljava/lang/Integer;

    .line 58
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/aefyr/tsg/g2/NotificationsHelper;->lastNotificationTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 63
    invoke-direct {p0}, Lcom/aefyr/tsg/g2/NotificationsHelper;->commonBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    .line 64
    iget v1, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f12177b

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f121781

    :goto_0
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->stickersCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 66
    iget v1, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->stickersCount:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p2, v3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 67
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 68
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 70
    iget-object p2, p0, Lcom/aefyr/tsg/g2/NotificationsHelper;->manager:Landroidx/core/app/NotificationManagerCompat;

    iget-object p1, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->hash:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public packStartedDownloading(Lcom/aefyr/tsg/g2/TelegramStickersPack;)V
    .locals 4

    .line 46
    iget-object v0, p0, Lcom/aefyr/tsg/g2/NotificationsHelper;->downloadingPacksNotificationsIds:Ljava/util/List;

    iget-object v1, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->hash:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-direct {p0}, Lcom/aefyr/tsg/g2/NotificationsHelper;->commonBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    .line 49
    iget v1, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f12177b

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f121781

    :goto_0
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const v1, 0x7f12177e

    .line 50
    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 51
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 53
    iget-object v1, p0, Lcom/aefyr/tsg/g2/NotificationsHelper;->manager:Landroidx/core/app/NotificationManagerCompat;

    iget-object p1, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->hash:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public removePackNotification(Lcom/aefyr/tsg/g2/TelegramStickersPack;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/aefyr/tsg/g2/NotificationsHelper;->downloadingPacksNotificationsIds:Ljava/util/List;

    iget-object v1, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->hash:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/aefyr/tsg/g2/NotificationsHelper;->manager:Landroidx/core/app/NotificationManagerCompat;

    iget-object p1, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->hash:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    :cond_0
    return-void
.end method
