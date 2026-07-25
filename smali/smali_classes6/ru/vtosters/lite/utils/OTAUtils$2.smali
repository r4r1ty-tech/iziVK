.class Lru/vtosters/lite/utils/OTAUtils$2;
.super Ljava/lang/Object;
.source "OTAUtils.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/vtosters/lite/utils/OTAUtils;->setData(Lokhttp3/Response;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/vtosters/lite/utils/OTAUtils;

.field final synthetic val$isManualCheck:Z


# direct methods
.method constructor <init>(Lru/vtosters/lite/utils/OTAUtils;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lru/vtosters/lite/utils/OTAUtils$2;->this$0:Lru/vtosters/lite/utils/OTAUtils;

    iput-boolean p2, p0, Lru/vtosters/lite/utils/OTAUtils$2;->val$isManualCheck:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error while getting latest commit info: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OTAHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p1, p0, Lru/vtosters/lite/utils/OTAUtils$2;->this$0:Lru/vtosters/lite/utils/OTAUtils;

    invoke-static {p1}, Lru/vtosters/lite/utils/OTAUtils;->-$$Nest$fgetmListener(Lru/vtosters/lite/utils/OTAUtils;)Lru/vtosters/lite/utils/OTAUtils$OTAListener;

    move-result-object p1

    invoke-interface {p1}, Lru/vtosters/lite/utils/OTAUtils$OTAListener;->onUpdateError()V

    return-void
.end method

.method public a(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1

    .line 70
    :try_start_0
    iget-object p1, p0, Lru/vtosters/lite/utils/OTAUtils$2;->this$0:Lru/vtosters/lite/utils/OTAUtils;

    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p2}, Lru/vtosters/sponsorpost/utils/GzipDecompressor;->decompressResponse(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lru/vtosters/lite/utils/OTAUtils;->-$$Nest$fputmCommitJson(Lru/vtosters/lite/utils/OTAUtils;Lorg/json/JSONObject;)V

    .line 71
    iget-object p1, p0, Lru/vtosters/lite/utils/OTAUtils$2;->this$0:Lru/vtosters/lite/utils/OTAUtils;

    invoke-static {p1}, Lru/vtosters/lite/utils/OTAUtils;->-$$Nest$fgetmCommitJson(Lru/vtosters/lite/utils/OTAUtils;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "object"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "sha"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lru/vtosters/lite/utils/OTAUtils;->-$$Nest$fputmCommitSHA(Lru/vtosters/lite/utils/OTAUtils;Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lru/vtosters/lite/utils/OTAUtils$2;->this$0:Lru/vtosters/lite/utils/OTAUtils;

    invoke-virtual {p1}, Lru/vtosters/lite/utils/OTAUtils;->isNewVersion()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lru/vtosters/lite/utils/OTAUtils$2;->this$0:Lru/vtosters/lite/utils/OTAUtils;

    invoke-static {p1}, Lru/vtosters/lite/utils/OTAUtils;->-$$Nest$fgetmListener(Lru/vtosters/lite/utils/OTAUtils;)Lru/vtosters/lite/utils/OTAUtils$OTAListener;

    move-result-object p1

    iget-boolean p2, p0, Lru/vtosters/lite/utils/OTAUtils$2;->val$isManualCheck:Z

    invoke-interface {p1, p2}, Lru/vtosters/lite/utils/OTAUtils$OTAListener;->onUpdateApplied(Z)V

    goto :goto_1

    .line 75
    :cond_0
    iget-object p1, p0, Lru/vtosters/lite/utils/OTAUtils$2;->this$0:Lru/vtosters/lite/utils/OTAUtils;

    invoke-static {p1}, Lru/vtosters/lite/utils/OTAUtils;->-$$Nest$fgetmListener(Lru/vtosters/lite/utils/OTAUtils;)Lru/vtosters/lite/utils/OTAUtils$OTAListener;

    move-result-object p1

    iget-boolean p2, p0, Lru/vtosters/lite/utils/OTAUtils$2;->val$isManualCheck:Z

    invoke-interface {p1, p2}, Lru/vtosters/lite/utils/OTAUtils$OTAListener;->onUpdateLatest(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 77
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    iget-object p1, p0, Lru/vtosters/lite/utils/OTAUtils$2;->this$0:Lru/vtosters/lite/utils/OTAUtils;

    invoke-static {p1}, Lru/vtosters/lite/utils/OTAUtils;->-$$Nest$fgetmListener(Lru/vtosters/lite/utils/OTAUtils;)Lru/vtosters/lite/utils/OTAUtils$OTAListener;

    move-result-object p1

    invoke-interface {p1}, Lru/vtosters/lite/utils/OTAUtils$OTAListener;->onUpdateError()V

    :goto_1
    return-void
.end method
