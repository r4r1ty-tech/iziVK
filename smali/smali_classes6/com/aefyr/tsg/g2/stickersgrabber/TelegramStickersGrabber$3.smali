.class Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$3;
.super Ljava/lang/Object;
.source "TelegramStickersGrabber.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->getPackInfo(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;

.field final synthetic val$installedVersion:Ljava/lang/String;

.field final synthetic val$listener:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;

.field final synthetic val$packFolder:Ljava/io/File;

.field final synthetic val$packName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 247
    iput-object p1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$3;->this$0:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;

    iput-object p2, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$3;->val$listener:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;

    iput-object p3, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$3;->val$installedVersion:Ljava/lang/String;

    iput-object p4, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$3;->val$packFolder:Ljava/io/File;

    iput-object p5, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$3;->val$packName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    const-string p1, "TSG"

    .line 250
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object p1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$3;->val$listener:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;

    invoke-interface {p1, p2}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;->onPackDownloadError(Ljava/lang/Exception;)V

    return-void
.end method

.method public a(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    invoke-virtual {p2}, Lokhttp3/Response;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TSG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {p2}, Lokhttp3/Response;->h()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 259
    invoke-virtual {p2}, Lokhttp3/Response;->a()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lokhttp3/Response;->a()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\nURL: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lokhttp3/Call;->m0()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->g()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "Unknown Exception, no response body"

    .line 260
    :goto_0
    iget-object p2, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$3;->val$listener:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;

    new-instance v0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$TSGException;

    invoke-direct {v0, p1, v2}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$TSGException;-><init>(Ljava/lang/String;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$TSGException-IA;)V

    invoke-interface {p2, v0}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;->onPackDownloadError(Ljava/lang/Exception;)V

    return-void

    .line 264
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->a()Lokhttp3/ResponseBody;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 266
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$3;->this$0:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;

    invoke-static {v3}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->-$$Nest$fgetsha256(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 268
    iget-object v3, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$3;->val$installedVersion:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 269
    iget-object p2, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$3;->val$listener:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;

    invoke-interface {p2, v2, v4}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;->onPackDownloaded(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    .line 297
    :try_start_2
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return-void

    :cond_3
    :try_start_3
    const-string v3, "stickers"

    .line 273
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 275
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_5

    .line 276
    iget-object p2, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$3;->val$listener:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;

    new-instance v0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$TSGException;

    const-string v1, "No stickers in pack"

    invoke-direct {v0, v1, v2}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$TSGException;-><init>(Ljava/lang/String;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$TSGException-IA;)V

    invoke-interface {p2, v0}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;->onPackDownloadError(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_4

    .line 297
    :try_start_4
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    return-void

    .line 280
    :cond_5
    :try_start_5
    iget-object v2, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$3;->this$0:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;

    invoke-static {v2, v3}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->-$$Nest$mparseStickers(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    .line 282
    new-instance v3, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;

    const-string v5, "name"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, v5, p2, v0, v2}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 284
    iget-object p2, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$3;->val$packFolder:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$3;->val$packFolder:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result p2

    if-nez p2, :cond_7

    .line 286
    iget-object p2, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$3;->val$listener:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t create folder for the pack!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;->onPackDownloadError(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p1, :cond_6

    .line 297
    :try_start_6
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_6
    return-void

    :cond_7
    :try_start_7
    const-string p2, "Got info for pack %s, now downloading stickers to %s"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 290
    iget-object v2, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$3;->val$packName:Ljava/lang/String;

    aput-object v2, v0, v4

    iget-object v2, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$3;->val$packFolder:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance p2, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;

    iget-object v0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$3;->val$packName:Ljava/lang/String;

    iget-object v1, v3, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;->name:Ljava/lang/String;

    iget-object v2, v3, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v4, v3, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;->version:Ljava/lang/String;

    invoke-direct {p2, v0, v1, v2, v4}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$3;->val$listener:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;

    invoke-interface {v0, p2}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;->onGotPackInfo(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;)V

    .line 296
    iget-object v0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$3;->this$0:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;

    iget-object v1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$3;->val$packFolder:Ljava/io/File;

    iget-object v2, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$3;->val$listener:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;

    invoke-static {v0, v3, v1, p2, v2}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->-$$Nest$mgetPack(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;Ljava/io/File;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz p1, :cond_9

    .line 297
    :try_start_8
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_8

    .line 264
    :try_start_9
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_a
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_1
    throw p2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception p1

    .line 298
    iget-object p2, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$3;->val$listener:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;

    invoke-interface {p2, p1}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;->onPackDownloadError(Ljava/lang/Exception;)V

    :cond_9
    :goto_2
    return-void
.end method
