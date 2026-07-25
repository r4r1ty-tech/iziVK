.class Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;
.super Ljava/lang/Object;
.source "TelegramStickersGrabber.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->getPack(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;Ljava/io/File;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;

.field final synthetic val$deathFlag:Lcom/aefyr/tsg/g2/stickersgrabber/util/Flag;

.field final synthetic val$downloadedStickers:Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;

.field final synthetic val$fileInfoRequest:Lokhttp3/Request;

.field final synthetic val$listener:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;

.field final synthetic val$packFolder:Ljava/io/File;

.field final synthetic val$set:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;

.field final synthetic val$sticker:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$Sticker;

.field final synthetic val$stickerIndex:I


# direct methods
.method constructor <init>(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;Lcom/aefyr/tsg/g2/stickersgrabber/util/Flag;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;Lokhttp3/Request;Ljava/io/File;ILcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$Sticker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->this$0:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;

    iput-object p2, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$deathFlag:Lcom/aefyr/tsg/g2/stickersgrabber/util/Flag;

    iput-object p3, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$listener:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;

    iput-object p4, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$downloadedStickers:Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;

    iput-object p5, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$fileInfoRequest:Lokhttp3/Request;

    iput-object p6, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$packFolder:Ljava/io/File;

    iput p7, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$stickerIndex:I

    iput-object p8, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$set:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;

    iput-object p9, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$sticker:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$Sticker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 8

    .line 128
    iget-object v0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->this$0:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;

    iget-object v1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$deathFlag:Lcom/aefyr/tsg/g2/stickersgrabber/util/Flag;

    iget-object v2, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$listener:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;

    iget-object v4, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$downloadedStickers:Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;

    iget-object v6, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$fileInfoRequest:Lokhttp3/Request;

    move-object v3, p2

    move-object v5, p1

    move-object v7, p0

    invoke-static/range {v0 .. v7}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->-$$Nest$mhandleFailure(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;Lcom/aefyr/tsg/g2/stickersgrabber/util/Flag;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;Ljava/lang/Exception;Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;Lokhttp3/Call;Lokhttp3/Request;Lokhttp3/Callback;)V

    return-void
.end method

.method public a(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 8

    .line 133
    iget-object v0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$deathFlag:Lcom/aefyr/tsg/g2/stickersgrabber/util/Flag;

    invoke-virtual {v0}, Lcom/aefyr/tsg/g2/stickersgrabber/util/Flag;->up()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 136
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    iget-object p2, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->this$0:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;

    iget-object v0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$fileInfoRequest:Lokhttp3/Request;

    invoke-static {p2, p1, v0, p0}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->-$$Nest$mretryRequest(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;Lokhttp3/Call;Lokhttp3/Request;Lokhttp3/Callback;)V

    return-void

    .line 141
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->a()Lokhttp3/ResponseBody;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "file_path"

    .line 143
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->this$0:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;

    invoke-static {v1}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->-$$Nest$fgetbotApiKey(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->this$0:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->-$$Nest$fputbotApiKey(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;Ljava/lang/String;)V

    .line 147
    :cond_2
    invoke-static {}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->-$$Nest$sfgetBOT_API_BASE_FILE_URL()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->this$0:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;

    invoke-static {v3}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->-$$Nest$fgetbotApiKey(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 148
    new-instance v1, Lokhttp3/Request$a;

    invoke-direct {v1}, Lokhttp3/Request$a;-><init>()V

    .line 149
    invoke-virtual {v1, v0}, Lokhttp3/Request$a;->b(Ljava/lang/String;)Lokhttp3/Request$a;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lokhttp3/Request$a;->a()Lokhttp3/Request;

    move-result-object v0

    .line 152
    invoke-static {}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->-$$Nest$sfgetsClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    new-instance v2, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;

    invoke-direct {v2, p0, v0}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2$1;-><init>(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;Lokhttp3/Request;)V

    invoke-interface {v1, v2}, Lokhttp3/Call;->a(Lokhttp3/Callback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_4

    .line 196
    :try_start_2
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz p2, :cond_3

    .line 141
    :try_start_3
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p2

    move-object v3, p2

    .line 197
    iget-object v0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->this$0:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;

    iget-object v1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$deathFlag:Lcom/aefyr/tsg/g2/stickersgrabber/util/Flag;

    iget-object v2, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$listener:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;

    iget-object v4, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$downloadedStickers:Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;

    iget-object v6, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;->val$fileInfoRequest:Lokhttp3/Request;

    move-object v5, p1

    move-object v7, p0

    invoke-static/range {v0 .. v7}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->-$$Nest$mhandleFailure(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;Lcom/aefyr/tsg/g2/stickersgrabber/util/Flag;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;Ljava/lang/Exception;Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;Lokhttp3/Call;Lokhttp3/Request;Lokhttp3/Callback;)V

    :cond_4
    :goto_1
    return-void
.end method
