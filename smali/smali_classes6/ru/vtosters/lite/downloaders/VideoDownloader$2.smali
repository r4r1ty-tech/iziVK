.class Lru/vtosters/lite/downloaders/VideoDownloader$2;
.super Ljava/lang/Object;
.source "VideoDownloader.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/vtosters/lite/downloaders/VideoDownloader;->downloadVideo(Lcom/vk/dto/common/VideoFile;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$finalContext:Landroid/content/Context;

.field final synthetic val$notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field final synthetic val$notificationManager:Landroid/app/NotificationManager;

.field final synthetic val$notificationTitle:Ljava/lang/String;

.field final synthetic val$videoFile:Lcom/vk/dto/common/VideoFile;


# direct methods
.method constructor <init>(Lcom/vk/dto/common/VideoFile;Landroidx/core/app/NotificationCompat$Builder;Landroid/app/NotificationManager;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lru/vtosters/lite/downloaders/VideoDownloader$2;->val$videoFile:Lcom/vk/dto/common/VideoFile;

    iput-object p2, p0, Lru/vtosters/lite/downloaders/VideoDownloader$2;->val$notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iput-object p3, p0, Lru/vtosters/lite/downloaders/VideoDownloader$2;->val$notificationManager:Landroid/app/NotificationManager;

    iput-object p4, p0, Lru/vtosters/lite/downloaders/VideoDownloader$2;->val$finalContext:Landroid/content/Context;

    iput-object p5, p0, Lru/vtosters/lite/downloaders/VideoDownloader$2;->val$notificationTitle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 111
    invoke-virtual {p2}, Ljava/io/IOException;->fillInStackTrace()Ljava/lang/Throwable;

    return-void
.end method

.method public a(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 11

    .line 116
    invoke-virtual {p2}, Lokhttp3/Response;->a()Lokhttp3/ResponseBody;

    move-result-object p1

    .line 118
    new-instance p2, Ljava/io/File;

    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "/VKVideo/"

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 124
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lru/vtosters/lite/downloaders/VideoDownloader$2;->val$videoFile:Lcom/vk/dto/common/VideoFile;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->a()Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v2, 0x1000

    :try_start_2
    new-array v2, v2, [B

    .line 131
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->d()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    .line 133
    :goto_0
    invoke-virtual {p2, v2}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eq p1, v7, :cond_1

    .line 134
    invoke-virtual {v1, v2, v8, p1}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v9, p1

    add-long/2addr v5, v9

    const-wide/16 v9, 0x64

    mul-long v9, v9, v5

    .line 136
    div-long/2addr v9, v3

    long-to-int p1, v9

    .line 138
    iget-object v7, p0, Lru/vtosters/lite/downloaders/VideoDownloader$2;->val$notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    const/16 v9, 0x64

    invoke-virtual {v7, v9, p1, v8}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u0417\u0430\u0433\u0440\u0443\u0436\u0435\u043d\u043e "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-virtual {v7, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 141
    iget-object p1, p0, Lru/vtosters/lite/downloaders/VideoDownloader$2;->val$notificationManager:Landroid/app/NotificationManager;

    sget v7, Lru/vtosters/lite/downloaders/VideoDownloader;->notificationId:I

    iget-object v8, p0, Lru/vtosters/lite/downloaders/VideoDownloader$2;->val$notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v8}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 146
    iget-object p1, p0, Lru/vtosters/lite/downloaders/VideoDownloader$2;->val$finalContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v8

    const/4 v0, 0x0

    invoke-static {p1, v2, v0, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 148
    iget-object p1, p0, Lru/vtosters/lite/downloaders/VideoDownloader$2;->val$notificationManager:Landroid/app/NotificationManager;

    sget v0, Lru/vtosters/lite/downloaders/VideoDownloader;->notificationId:I

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    const-string p1, "\u0424\u0430\u0439\u043b \u0443\u0441\u043f\u0435\u0448\u043d\u043e \u0441\u043a\u0430\u0447\u0430\u043d"

    .line 152
    iget-object v0, p0, Lru/vtosters/lite/downloaders/VideoDownloader$2;->val$notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 153
    invoke-virtual {p1, v8, v8, v8}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iget-object v0, p0, Lru/vtosters/lite/downloaders/VideoDownloader$2;->val$notificationTitle:Ljava/lang/String;

    .line 154
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const v0, 0x1080082

    .line 155
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 156
    invoke-virtual {p1, v8}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 158
    iget-object p1, p0, Lru/vtosters/lite/downloaders/VideoDownloader$2;->val$notificationManager:Landroid/app/NotificationManager;

    sget v0, Lru/vtosters/lite/downloaders/VideoDownloader;->notificationId:I

    iget-object v2, p0, Lru/vtosters/lite/downloaders/VideoDownloader$2;->val$notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p2, :cond_3

    :try_start_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 126
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz p2, :cond_2

    :try_start_7
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    :try_start_8
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    .line 160
    invoke-virtual {p1}, Ljava/io/IOException;->fillInStackTrace()Ljava/lang/Throwable;

    :cond_3
    :goto_3
    return-void
.end method
