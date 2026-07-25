.class Lru/vtosters/lite/ui/activities/VKAdminTokenActivity$1;
.super Landroid/webkit/WebViewClient;
.source "VKAdminTokenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/vtosters/lite/ui/activities/VKAdminTokenActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/vtosters/lite/ui/activities/VKAdminTokenActivity;


# direct methods
.method constructor <init>(Lru/vtosters/lite/ui/activities/VKAdminTokenActivity;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lru/vtosters/lite/ui/activities/VKAdminTokenActivity$1;->this$0:Lru/vtosters/lite/ui/activities/VKAdminTokenActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 3

    .line 39
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lru/vtosters/lite/proxy/ProxyUtils;->getOauth()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/auth_redirect?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "authorize_url"

    .line 42
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "="

    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 45
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "token"

    .line 46
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    iget-object p1, p0, Lru/vtosters/lite/ui/activities/VKAdminTokenActivity$1;->this$0:Lru/vtosters/lite/ui/activities/VKAdminTokenActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0, p2}, Lru/vtosters/lite/ui/activities/VKAdminTokenActivity;->setResult(ILandroid/content/Intent;)V

    .line 48
    iget-object p1, p0, Lru/vtosters/lite/ui/activities/VKAdminTokenActivity$1;->this$0:Lru/vtosters/lite/ui/activities/VKAdminTokenActivity;

    invoke-virtual {p1}, Lru/vtosters/lite/ui/activities/VKAdminTokenActivity;->finish()V

    const/4 p1, 0x0

    return p1

    .line 52
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1
.end method
