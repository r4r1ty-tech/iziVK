.class public Lru/vtosters/lite/downloaders/notifications/NotificationChannels;
.super Ljava/lang/Object;
.source "NotificationChannels.java"


# static fields
.field public static final MUSIC_CACHING_NAME:Ljava/lang/String;

.field public static final MUSIC_DOWNLOAD_CHANNEL_DESCRIPTION:Ljava/lang/String;

.field public static final MUSIC_DOWNLOAD_CHANNEL_ID:Ljava/lang/String; = "music_download_channel"

.field public static final MUSIC_DOWNLOAD_CHANNEL_NAME:Ljava/lang/String;

.field public static final MUSIC_PLAYLIST_DOWNLOAD_CHANNEL_DESCRIPTION:Ljava/lang/String;

.field public static final MUSIC_PLAYLIST_DOWNLOAD_CHANNEL_ID:Ljava/lang/String; = "music_playlist_download_channel"

.field public static final MUSIC_PLAYLIST_DOWNLOAD_CHANNEL_NAME:Ljava/lang/String;

.field private static notificationManagerCompat:Landroidx/core/app/NotificationManagerCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f1216b8

    .line 14
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/downloaders/notifications/NotificationChannels;->MUSIC_DOWNLOAD_CHANNEL_NAME:Ljava/lang/String;

    const v0, 0x7f1216b9

    .line 15
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/downloaders/notifications/NotificationChannels;->MUSIC_DOWNLOAD_CHANNEL_DESCRIPTION:Ljava/lang/String;

    const v0, 0x7f1216ee

    .line 18
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/downloaders/notifications/NotificationChannels;->MUSIC_PLAYLIST_DOWNLOAD_CHANNEL_NAME:Ljava/lang/String;

    const v0, 0x7f1216ef

    .line 19
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/downloaders/notifications/NotificationChannels;->MUSIC_PLAYLIST_DOWNLOAD_CHANNEL_DESCRIPTION:Ljava/lang/String;

    const v0, 0x7f121558

    .line 21
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/downloaders/notifications/NotificationChannels;->MUSIC_CACHING_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createChannels()V
    .locals 0

    .line 27
    invoke-static {}, Lru/vtosters/lite/downloaders/notifications/NotificationChannels;->createMusicDownloadChannel()V

    .line 28
    invoke-static {}, Lru/vtosters/lite/downloaders/notifications/NotificationChannels;->createMusicPlaylistDownloadChannel()V

    return-void
.end method

.method public static createMusicDownloadChannel()V
    .locals 4

    .line 33
    new-instance v0, Landroid/app/NotificationChannel;

    sget-object v1, Lru/vtosters/lite/downloaders/notifications/NotificationChannels;->MUSIC_DOWNLOAD_CHANNEL_NAME:Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, "music_download_channel"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 34
    sget-object v1, Lru/vtosters/lite/downloaders/notifications/NotificationChannels;->MUSIC_DOWNLOAD_CHANNEL_DESCRIPTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 37
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v1

    .line 38
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationManagerCompat;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public static createMusicPlaylistDownloadChannel()V
    .locals 4

    .line 43
    new-instance v0, Landroid/app/NotificationChannel;

    sget-object v1, Lru/vtosters/lite/downloaders/notifications/NotificationChannels;->MUSIC_PLAYLIST_DOWNLOAD_CHANNEL_NAME:Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, "music_playlist_download_channel"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 44
    sget-object v1, Lru/vtosters/lite/downloaders/notifications/NotificationChannels;->MUSIC_PLAYLIST_DOWNLOAD_CHANNEL_DESCRIPTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 45
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 47
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v1

    .line 48
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationManagerCompat;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public static getNotificationManager()Landroidx/core/app/NotificationManagerCompat;
    .locals 1

    .line 52
    sget-object v0, Lru/vtosters/lite/downloaders/notifications/NotificationChannels;->notificationManagerCompat:Landroidx/core/app/NotificationManagerCompat;

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/downloaders/notifications/NotificationChannels;->notificationManagerCompat:Landroidx/core/app/NotificationManagerCompat;

    .line 54
    :cond_0
    sget-object v0, Lru/vtosters/lite/downloaders/notifications/NotificationChannels;->notificationManagerCompat:Landroidx/core/app/NotificationManagerCompat;

    return-object v0
.end method
