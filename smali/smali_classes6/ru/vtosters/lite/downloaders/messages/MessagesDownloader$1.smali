.class Lru/vtosters/lite/downloaders/messages/MessagesDownloader$1;
.super Ljava/lang/Object;
.source "MessagesDownloader.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/vtosters/lite/downloaders/messages/MessagesDownloader;->downloadDialog(ILru/vtosters/lite/downloaders/messages/DialogDownloaderFormatProvider;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/vtosters/lite/downloaders/messages/MessagesDownloader;

.field final synthetic val$format:Lru/vtosters/lite/downloaders/messages/DialogDownloaderFormatProvider;

.field final synthetic val$fos:Ljava/io/FileOutputStream;

.field final synthetic val$out:Ljava/io/File;


# direct methods
.method constructor <init>(Lru/vtosters/lite/downloaders/messages/MessagesDownloader;Ljava/io/FileOutputStream;Lru/vtosters/lite/downloaders/messages/DialogDownloaderFormatProvider;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lru/vtosters/lite/downloaders/messages/MessagesDownloader$1;->this$0:Lru/vtosters/lite/downloaders/messages/MessagesDownloader;

    iput-object p2, p0, Lru/vtosters/lite/downloaders/messages/MessagesDownloader$1;->val$fos:Ljava/io/FileOutputStream;

    iput-object p3, p0, Lru/vtosters/lite/downloaders/messages/MessagesDownloader$1;->val$format:Lru/vtosters/lite/downloaders/messages/DialogDownloaderFormatProvider;

    iput-object p4, p0, Lru/vtosters/lite/downloaders/messages/MessagesDownloader$1;->val$out:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    const-string p1, "MessagesDownloader"

    .line 115
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 5

    .line 121
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-static {p2}, Lru/vtosters/sponsorpost/utils/GzipDecompressor;->decompressResponse(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "response"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 123
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    .line 124
    iget-object v0, p0, Lru/vtosters/lite/downloaders/messages/MessagesDownloader$1;->this$0:Lru/vtosters/lite/downloaders/messages/MessagesDownloader;

    const-string v1, "profiles"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, v2}, Lru/vtosters/lite/downloaders/messages/MessagesDownloader;->-$$Nest$mparseUsers(Lru/vtosters/lite/downloaders/messages/MessagesDownloader;Landroid/util/SparseArray;Lorg/json/JSONArray;Z)V

    .line 125
    iget-object v0, p0, Lru/vtosters/lite/downloaders/messages/MessagesDownloader$1;->this$0:Lru/vtosters/lite/downloaders/messages/MessagesDownloader;

    const-string v1, "groups"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, p2, v1, v2}, Lru/vtosters/lite/downloaders/messages/MessagesDownloader;->-$$Nest$mparseUsers(Lru/vtosters/lite/downloaders/messages/MessagesDownloader;Landroid/util/SparseArray;Lorg/json/JSONArray;Z)V

    .line 127
    iget-object v0, p0, Lru/vtosters/lite/downloaders/messages/MessagesDownloader$1;->this$0:Lru/vtosters/lite/downloaders/messages/MessagesDownloader;

    const-string v1, "items"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {v0, p1}, Lru/vtosters/lite/downloaders/messages/MessagesDownloader;->-$$Nest$mparseMessages(Lru/vtosters/lite/downloaders/messages/MessagesDownloader;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    .line 129
    sput-object p2, Lru/vtosters/lite/downloaders/messages/MessagesDownloader;->usersArray:Landroid/util/SparseArray;

    .line 131
    iget-object v0, p0, Lru/vtosters/lite/downloaders/messages/MessagesDownloader$1;->val$fos:Ljava/io/FileOutputStream;

    iget-object v1, p0, Lru/vtosters/lite/downloaders/messages/MessagesDownloader$1;->val$format:Lru/vtosters/lite/downloaders/messages/DialogDownloaderFormatProvider;

    const-string v2, "TODO"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lru/vtosters/lite/downloaders/messages/MessagesDownloader;->formatTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lru/vtosters/lite/downloaders/messages/DialogDownloaderFormatProvider;->provideHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 132
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/vtosters/lite/downloaders/messages/items/MiniMsg;

    .line 133
    iget-object v1, p0, Lru/vtosters/lite/downloaders/messages/MessagesDownloader$1;->val$fos:Ljava/io/FileOutputStream;

    iget-object v2, p0, Lru/vtosters/lite/downloaders/messages/MessagesDownloader$1;->val$format:Lru/vtosters/lite/downloaders/messages/DialogDownloaderFormatProvider;

    iget v3, v0, Lru/vtosters/lite/downloaders/messages/items/MiniMsg;->fromId:I

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/vtosters/lite/downloaders/messages/items/MiniUser;

    invoke-virtual {v2, v0, v3}, Lru/vtosters/lite/downloaders/messages/DialogDownloaderFormatProvider;->provideMessage(Lru/vtosters/lite/downloaders/messages/items/MiniMsg;Lru/vtosters/lite/downloaders/messages/items/MiniUser;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object p1, p0, Lru/vtosters/lite/downloaders/messages/MessagesDownloader$1;->val$fos:Ljava/io/FileOutputStream;

    iget-object p2, p0, Lru/vtosters/lite/downloaders/messages/MessagesDownloader$1;->val$format:Lru/vtosters/lite/downloaders/messages/DialogDownloaderFormatProvider;

    invoke-virtual {p2}, Lru/vtosters/lite/downloaders/messages/DialogDownloaderFormatProvider;->provideDocumentEnd()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 136
    iget-object p1, p0, Lru/vtosters/lite/downloaders/messages/MessagesDownloader$1;->val$fos:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const p2, 0x7f121727

    invoke-static {p2}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lru/vtosters/lite/downloaders/messages/MessagesDownloader$1;->val$out:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/vk/core/util/ToastUtils;->a(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 139
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
