.class Lru/vtosters/lite/downloaders/VideoDownloader$3;
.super Ljava/lang/Object;
.source "VideoDownloader.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/vtosters/lite/downloaders/VideoDownloader;->parseVideoLink(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/ProgressDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 222
    iput-object p1, p0, Lru/vtosters/lite/downloaders/VideoDownloader$3;->val$ctx:Landroid/content/Context;

    iput-object p2, p0, Lru/vtosters/lite/downloaders/VideoDownloader$3;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 226
    invoke-virtual {p2}, Ljava/io/IOException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 227
    iget-object p1, p0, Lru/vtosters/lite/downloaders/VideoDownloader$3;->val$ctx:Landroid/content/Context;

    const p2, 0x7f12179e

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public a(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    iget-object p1, p0, Lru/vtosters/lite/downloaders/VideoDownloader$3;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    const/4 p1, 0x0

    .line 235
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p2}, Lru/vtosters/sponsorpost/utils/GzipDecompressor;->decompressResponse(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "response"

    .line 236
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "items"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    .line 237
    new-instance v0, Lcom/vk/dto/stories/model/StoryEntry;

    invoke-direct {v0, p2}, Lcom/vk/dto/stories/model/StoryEntry;-><init>(Lorg/json/JSONObject;)V

    .line 238
    invoke-static {v0}, Lru/vtosters/lite/downloaders/StoryDownloader;->downloadStory(Lcom/vk/dto/stories/model/StoryEntry;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 240
    invoke-virtual {p2}, Lorg/json/JSONException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 241
    iget-object p2, p0, Lru/vtosters/lite/downloaders/VideoDownloader$3;->val$ctx:Landroid/content/Context;

    const v0, 0x7f12179e

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
