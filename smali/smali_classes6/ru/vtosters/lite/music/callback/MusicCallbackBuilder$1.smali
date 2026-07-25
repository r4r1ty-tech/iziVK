.class Lru/vtosters/lite/music/callback/MusicCallbackBuilder$1;
.super Ljava/lang/Object;
.source "MusicCallbackBuilder.java"

# interfaces
.implements Lru/vtosters/lite/music/interfaces/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/vtosters/lite/music/callback/MusicCallbackBuilder;->buildOneTrackCallback(ILandroidx/core/app/NotificationCompat$Builder;)Lru/vtosters/lite/music/interfaces/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field elapsedTime:J

.field startTime:J

.field final synthetic val$notification:Landroidx/core/app/NotificationCompat$Builder;

.field final synthetic val$notificationId:I


# direct methods
.method constructor <init>(Landroidx/core/app/NotificationCompat$Builder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$1;->val$notification:Landroidx/core/app/NotificationCompat$Builder;

    iput p2, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$1;->val$notificationId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p1, 0x0

    .line 19
    iput-wide p1, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$1;->startTime:J

    .line 20
    iput-wide p1, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$1;->elapsedTime:J

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 52
    iget-object p1, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$1;->val$notification:Landroidx/core/app/NotificationCompat$Builder;

    const v0, 0x7f12169e

    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 53
    invoke-static {}, Lru/vtosters/lite/music/callback/MusicCallbackBuilder;->-$$Nest$sfgetnotificationManager()Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    iget v0, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$1;->val$notificationId:I

    iget-object v1, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$1;->val$notification:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public onProgress(I)V
    .locals 5

    .line 24
    iget-wide v0, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$1;->elapsedTime:J

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 25
    iget-object v0, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$1;->val$notification:Landroidx/core/app/NotificationCompat$Builder;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 26
    invoke-static {}, Lru/vtosters/lite/music/callback/MusicCallbackBuilder;->-$$Nest$sfgetnotificationManager()Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    iget v0, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$1;->val$notificationId:I

    iget-object v1, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$1;->val$notification:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$1;->startTime:J

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$1;->elapsedTime:J

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$1;->startTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$1;->elapsedTime:J

    :goto_0
    return-void
.end method

.method public onSizeReceived(JJ)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 38
    :try_start_0
    iget-object v0, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$1;->val$notification:Landroidx/core/app/NotificationCompat$Builder;

    const v1, 0x7f120acd

    .line 39
    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1, v1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x1080082

    .line 41
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 42
    invoke-static {}, Lru/vtosters/lite/music/callback/MusicCallbackBuilder;->-$$Nest$sfgetnotificationManager()Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    iget v1, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$1;->val$notificationId:I

    iget-object v2, p0, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$1;->val$notification:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "native libs"

    const-string v2, "AudioDownloader"

    .line 44
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0, v0}, Lru/vtosters/lite/music/callback/MusicCallbackBuilder$1;->onFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
