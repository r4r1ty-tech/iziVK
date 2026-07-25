.class Lru/vtosters/lite/utils/OTAUtils$1;
.super Ljava/lang/Object;
.source "OTAUtils.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/vtosters/lite/utils/OTAUtils;->loadData(Z)V
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

    .line 32
    iput-object p1, p0, Lru/vtosters/lite/utils/OTAUtils$1;->this$0:Lru/vtosters/lite/utils/OTAUtils;

    iput-boolean p2, p0, Lru/vtosters/lite/utils/OTAUtils$1;->val$isManualCheck:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error while getting latest release info: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OTAHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object p1, p0, Lru/vtosters/lite/utils/OTAUtils$1;->this$0:Lru/vtosters/lite/utils/OTAUtils;

    invoke-static {p1}, Lru/vtosters/lite/utils/OTAUtils;->-$$Nest$fgetmListener(Lru/vtosters/lite/utils/OTAUtils;)Lru/vtosters/lite/utils/OTAUtils$OTAListener;

    move-result-object p1

    invoke-interface {p1}, Lru/vtosters/lite/utils/OTAUtils$OTAListener;->onUpdateError()V

    return-void
.end method

.method public a(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    :try_start_0
    iget-object p1, p0, Lru/vtosters/lite/utils/OTAUtils$1;->this$0:Lru/vtosters/lite/utils/OTAUtils;

    iget-boolean v0, p0, Lru/vtosters/lite/utils/OTAUtils$1;->val$isManualCheck:Z

    invoke-virtual {p1, p2, v0}, Lru/vtosters/lite/utils/OTAUtils;->setData(Lokhttp3/Response;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 44
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
