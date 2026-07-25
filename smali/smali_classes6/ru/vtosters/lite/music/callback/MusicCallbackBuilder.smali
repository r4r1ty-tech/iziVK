.class public Lru/vtosters/lite/music/callback/MusicCallbackBuilder;
.super Ljava/lang/Object;
.source "MusicCallbackBuilder.java"


# static fields
.field private static final notificationManager:Landroidx/core/app/NotificationManagerCompat;


# direct methods
.method static bridge synthetic -$$Nest$sfgetnotificationManager()Landroidx/core/app/NotificationManagerCompat;
    .locals 1

    sget-object v0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 15
    invoke-static {}, Lru/vtosters/lite/downloaders/notifications/NotificationChannels;->getNotificationManager()Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildOneTrackCallback(ILandroidx/core/app/NotificationCompat$Builder;)Lru/vtosters/lite/music/interfaces/Callback;
    .locals 1

    .line 18
    new-instance v0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$1;

    invoke-direct {v0, p1, p0}, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$1;-><init>(Landroidx/core/app/NotificationCompat$Builder;I)V

    return-object v0
.end method

.method public static buildPlaylistCallback(ILandroidx/core/app/NotificationCompat$Builder;I)Lru/vtosters/lite/music/interfaces/Callback;
    .locals 1

    .line 64
    new-instance v0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$2;

    invoke-direct {v0, p0, p1, p2}, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$2;-><init>(ILandroidx/core/app/NotificationCompat$Builder;I)V

    return-object v0
.end method
