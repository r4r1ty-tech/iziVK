.class Lru/vtosters/lite/net/Request$MakeRequestTask;
.super Landroid/os/AsyncTask;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/lite/net/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MakeRequestTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lru/vtosters/lite/net/Request$RequestCallback;

.field private final mIsPut:Z

.field private final mIsVTostersRequest:Z

.field private final url:[B


# direct methods
.method public constructor <init>([BLru/vtosters/lite/net/Request$RequestCallback;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lru/vtosters/lite/net/Request$MakeRequestTask;->mIsVTostersRequest:Z

    .line 34
    iput-boolean v0, p0, Lru/vtosters/lite/net/Request$MakeRequestTask;->mIsPut:Z

    .line 35
    iput-object p2, p0, Lru/vtosters/lite/net/Request$MakeRequestTask;->callback:Lru/vtosters/lite/net/Request$RequestCallback;

    .line 36
    iput-object p1, p0, Lru/vtosters/lite/net/Request$MakeRequestTask;->url:[B

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lru/vtosters/lite/net/Request$MakeRequestTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    .line 41
    :try_start_0
    new-instance p1, Ljava/net/URL;

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lru/vtosters/lite/net/Request$MakeRequestTask;->url:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 42
    iget-boolean v0, p0, Lru/vtosters/lite/net/Request$MakeRequestTask;->mIsPut:Z

    if-eqz v0, :cond_0

    const-string v0, "PUT"

    goto :goto_0

    :cond_0
    const-string v0, "GET"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 44
    iget-boolean v0, p0, Lru/vtosters/lite/net/Request$MakeRequestTask;->mIsVTostersRequest:Z

    if-eqz v0, :cond_1

    const-string v0, "Token"

    .line 45
    invoke-static {}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_1
    iget-boolean v0, p0, Lru/vtosters/lite/net/Request$MakeRequestTask;->mIsVTostersRequest:Z

    if-nez v0, :cond_2

    const-string v0, "User-Agent"

    .line 48
    sget-object v1, Lcom/vk/core/network/Network;->l:Lcom/vk/core/network/Network;

    invoke-virtual {v1}, Lcom/vk/core/network/Network;->c()Lcom/vk/core/network/utils/NetworkUserAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/core/network/utils/NetworkUserAgent;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_2
    iget-boolean v0, p0, Lru/vtosters/lite/net/Request$MakeRequestTask;->mIsVTostersRequest:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "Content-Type"

    if-eqz v0, :cond_3

    move-object v0, v1

    goto :goto_1

    :cond_3
    :try_start_1
    const-string v0, "application/x-www-form-urlencoded"

    :goto_1
    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 58
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 60
    :cond_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lru/vtosters/lite/net/Request$MakeRequestTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lru/vtosters/lite/net/Request$MakeRequestTask;->callback:Lru/vtosters/lite/net/Request$RequestCallback;

    invoke-interface {v0, p1}, Lru/vtosters/lite/net/Request$RequestCallback;->onResponse(Ljava/lang/String;)V

    return-void
.end method
