.class Lru/vtosters/lite/music/callback/MusicCallbackBuilder$2;
.super Ljava/lang/Object;
.source "MusicCallbackBuilder.java"

# interfaces
.implements Lru/vtosters/lite/music/interfaces/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/vtosters/lite/music/callback/MusicCallbackBuilder;->buildPlaylistCallback(ILandroidx/core/app/NotificationCompat$Builder;I)Lru/vtosters/lite/music/interfaces/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$notification:Landroidx/core/app/NotificationCompat$Builder;

.field final synthetic val$notificationId:I

.field final synthetic val$playlistSize:I


# direct methods
.method constructor <init>(ILandroidx/core/app/NotificationCompat$Builder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    iput p1, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$2;->val$playlistSize:I

    iput-object p2, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$2;->val$notification:Landroidx/core/app/NotificationCompat$Builder;

    iput p3, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$2;->val$notificationId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 85
    iget-object p1, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$2;->val$notification:Landroidx/core/app/NotificationCompat$Builder;

    const v0, 0x7f12169e

    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 86
    invoke-static {}, Lru/vtosters/lite/music/callback/MusicCallbackBuilder;->-$$Nest$sfgetnotificationManager()Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    iget v0, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$2;->val$notificationId:I

    iget-object v1, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$2;->val$notification:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public onProgress(I)V
    .locals 6

    .line 67
    iget v0, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$2;->val$playlistSize:I

    if-ne p1, v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$2;->onSuccess()V

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$2;->val$notification:Landroidx/core/app/NotificationCompat$Builder;

    const v1, 0x7f1216ed

    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$2;->val$playlistSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 71
    iget-object v0, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$2;->val$notification:Landroidx/core/app/NotificationCompat$Builder;

    iget v1, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$2;->val$playlistSize:I

    invoke-virtual {v0, v1, p1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 73
    :goto_0
    invoke-static {}, Lru/vtosters/lite/music/callback/MusicCallbackBuilder;->-$$Nest$sfgetnotificationManager()Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    iget v0, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$2;->val$notificationId:I

    iget-object v1, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$2;->val$notification:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public onSizeReceived(JJ)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 78
    iget-object v0, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$2;->val$notification:Landroidx/core/app/NotificationCompat$Builder;

    const v1, 0x7f120acd

    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 79
    iget-object v0, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$2;->val$notification:Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 80
    iget-object v0, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$2;->val$notification:Landroidx/core/app/NotificationCompat$Builder;

    const v1, 0x1080082

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method
