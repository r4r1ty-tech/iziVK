.class Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;
.super Ljava/lang/Object;
.source "TelegramStickersGrabber.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->a(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;

.field final synthetic val$fileDownloadRequest:Lokhttp3/Request;


# direct methods
.method constructor <init>(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;Lokhttp3/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;->this$1:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;

    iput-object p2, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;->val$fileDownloadRequest:Lokhttp3/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 9

    .line 155
    iget-object v0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;->this$1:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;

    iget-object v1, v0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->this$0:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;

    iget-object v0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;->this$1:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;

    iget-object v2, v0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$deathFlag:Lcom/aefyr/tsg/g2/stickersgrabber/util/Flag;

    iget-object v0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;->this$1:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;

    iget-object v3, v0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$listener:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;

    iget-object v0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;->this$1:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;

    iget-object v5, v0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$downloadedStickers:Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;

    iget-object v7, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;->val$fileDownloadRequest:Lokhttp3/Request;

    move-object v4, p2

    move-object v6, p1

    move-object v8, p0

    invoke-static/range {v1 .. v8}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->-$$Nest$mhandleFailure(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;Lcom/aefyr/tsg/g2/stickersgrabber/util/Flag;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;Ljava/lang/Exception;Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;Lokhttp3/Call;Lokhttp3/Request;Lokhttp3/Callback;)V

    return-void
.end method

.method public a(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 10

    .line 160
    iget-object v0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;->this$1:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;

    iget-object v0, v0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$deathFlag:Lcom/aefyr/tsg/g2/stickersgrabber/util/Flag;

    invoke-virtual {v0}, Lcom/aefyr/tsg/g2/stickersgrabber/util/Flag;->up()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 163
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    iget-object p2, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;->this$1:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;

    iget-object p2, p2, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->this$0:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;

    iget-object v0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;->val$fileDownloadRequest:Lokhttp3/Request;

    invoke-static {p2, p1, v0, p0}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->-$$Nest$mretryRequest(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;Lokhttp3/Call;Lokhttp3/Request;Lokhttp3/Callback;)V

    return-void

    .line 168
    :cond_1
    invoke-virtual {p2}, Lokhttp3/Response;->a()Lokhttp3/ResponseBody;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_3

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;->this$1:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;

    iget-object v2, v1, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->this$0:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;

    iget-object v1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;->this$1:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;

    iget-object v3, v1, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$deathFlag:Lcom/aefyr/tsg/g2/stickersgrabber/util/Flag;

    iget-object v1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;->this$1:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;

    iget-object v4, v1, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$listener:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;

    new-instance v5, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$TSGException;

    const-string v1, "Response body for a sticker is null :/"

    invoke-direct {v5, v1, v0}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$TSGException;-><init>(Ljava/lang/String;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$TSGException-IA;)V

    iget-object v0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;->this$1:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;

    iget-object v6, v0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$downloadedStickers:Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;

    iget-object v8, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;->val$fileDownloadRequest:Lokhttp3/Request;

    move-object v7, p1

    move-object v9, p0

    invoke-static/range {v2 .. v9}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->-$$Nest$mhandleFailure(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;Lcom/aefyr/tsg/g2/stickersgrabber/util/Flag;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;Ljava/lang/Exception;Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;Lokhttp3/Call;Lokhttp3/Request;Lokhttp3/Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    .line 193
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->close()V

    :cond_2
    return-void

    .line 174
    :cond_3
    :try_start_1
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->a()Ljava/io/InputStream;

    move-result-object v1

    .line 175
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_5

    .line 178
    iget-object v1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;->this$1:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;

    iget-object v2, v1, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->this$0:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;

    iget-object v1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;->this$1:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;

    iget-object v3, v1, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$deathFlag:Lcom/aefyr/tsg/g2/stickersgrabber/util/Flag;

    iget-object v1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;->this$1:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;

    iget-object v4, v1, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$listener:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;

    new-instance v5, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$TSGException;

    const-string v1, "Unable to decode sticker image"

    invoke-direct {v5, v1, v0}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$TSGException;-><init>(Ljava/lang/String;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$TSGException-IA;)V

    iget-object v0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;->this$1:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;

    iget-object v6, v0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$downloadedStickers:Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;

    iget-object v8, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;->val$fileDownloadRequest:Lokhttp3/Request;

    move-object v7, p1

    move-object v9, p0

    invoke-static/range {v2 .. v9}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->-$$Nest$mhandleFailure(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;Lcom/aefyr/tsg/g2/stickersgrabber/util/Flag;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;Ljava/lang/Exception;Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;Lokhttp3/Call;Lokhttp3/Request;Lokhttp3/Callback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_4

    .line 193
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->close()V

    :cond_4
    return-void

    .line 182
    :cond_5
    :try_start_2
    new-instance v2, Ljava/io/File;

    iget-object p1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;->this$1:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;

    iget-object p1, p1, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$packFolder:Ljava/io/File;

    const-string v0, "%03d.png"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;->this$1:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;

    iget v5, v5, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$stickerIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    :try_start_3
    iget-object p1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;->this$1:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;

    iget-object p1, p1, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->this$0:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;

    invoke-static {p1, v1, v2}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->-$$Nest$msaveStickerImage(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;Landroid/graphics/Bitmap;Ljava/io/File;)V
    :try_end_3
    .catch Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$TSGException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    :try_start_4
    iget-object p1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;->this$1:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;

    iget-object v0, p1, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$listener:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;

    iget-object p1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;->this$1:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;

    iget-object p1, p1, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$set:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;

    iget-object v1, p1, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;->name:Ljava/lang/String;

    iget-object p1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;->this$1:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;

    iget-object p1, p1, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$sticker:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$Sticker;

    iget-object p1, p1, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$Sticker;->emoji:Ljava/lang/String;

    iget-object v4, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;->this$1:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;

    iget v4, v4, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$stickerIndex:I

    iget-object v5, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;->this$1:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;

    iget-object v5, v5, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$downloadedStickers:Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;

    .line 191
    invoke-virtual {v5}, Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;->value()I

    move-result v5

    add-int/2addr v5, v3

    iget-object v3, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;->this$1:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;

    iget-object v3, v3, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$set:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;

    iget-object v3, v3, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    move-object v3, p1

    .line 190
    invoke-interface/range {v0 .. v6}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;->onStickerDownloaded(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;III)V

    .line 192
    iget-object p1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;->this$1:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;

    iget-object p1, p1, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$downloadedStickers:Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;

    invoke-virtual {p1}, Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;->increase()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p2, :cond_6

    .line 193
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->close()V

    :cond_6
    return-void

    :catch_0
    move-exception p1

    .line 187
    :try_start_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_7

    .line 168
    :try_start_6
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_0
    throw p1
.end method
