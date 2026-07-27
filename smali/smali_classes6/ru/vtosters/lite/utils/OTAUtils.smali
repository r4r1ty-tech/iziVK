.class public Lru/vtosters/lite/utils/OTAUtils;
.super Ljava/lang/Object;
.source "OTAUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/vtosters/lite/utils/OTAUtils$OTAListener;
    }
.end annotation


# static fields
.field private static final LATEST_RELEASE_COMMIT_URL:Ljava/lang/String; = "https://api.github.com/repos/r4r1ty-tech/iziVK/git/ref/tags/%s"

.field private static final LATEST_RELEASE_URL:Ljava/lang/String; = "https://api.github.com/repos/r4r1ty-tech/iziVK/releases/latest"


# instance fields
.field private final mClient:Lokhttp3/OkHttpClient;

.field private mCommitJson:Lorg/json/JSONObject;

.field private mCommitSHA:Ljava/lang/String;

.field private final mListener:Lru/vtosters/lite/utils/OTAUtils$OTAListener;

.field private mReleaseJson:Lorg/json/JSONObject;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCommitJson(Lru/vtosters/lite/utils/OTAUtils;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lru/vtosters/lite/utils/OTAUtils;->mCommitJson:Lorg/json/JSONObject;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lru/vtosters/lite/utils/OTAUtils;)Lru/vtosters/lite/utils/OTAUtils$OTAListener;
    .locals 0

    iget-object p0, p0, Lru/vtosters/lite/utils/OTAUtils;->mListener:Lru/vtosters/lite/utils/OTAUtils$OTAListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCommitJson(Lru/vtosters/lite/utils/OTAUtils;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lru/vtosters/lite/utils/OTAUtils;->mCommitJson:Lorg/json/JSONObject;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCommitSHA(Lru/vtosters/lite/utils/OTAUtils;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/vtosters/lite/utils/OTAUtils;->mCommitSHA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lru/vtosters/lite/utils/OTAUtils$OTAListener;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lru/vtosters/lite/di/singleton/VtOkHttpClient;->getInstance()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lru/vtosters/lite/utils/OTAUtils;->mClient:Lokhttp3/OkHttpClient;

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lru/vtosters/lite/utils/OTAUtils;->mCommitSHA:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lru/vtosters/lite/utils/OTAUtils;->mListener:Lru/vtosters/lite/utils/OTAUtils$OTAListener;

    return-void
.end method


# virtual methods
.method public getCommitSHA()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lru/vtosters/lite/utils/OTAUtils;->mCommitSHA:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 2

    .line 114
    :try_start_0
    iget-object v0, p0, Lru/vtosters/lite/utils/OTAUtils;->mReleaseJson:Lorg/json/JSONObject;

    const-string v1, "assets"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 115
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "browser_download_url"

    .line 116
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNewVersionName()Ljava/lang/String;
    .locals 2

    .line 98
    :try_start_0
    iget-object v0, p0, Lru/vtosters/lite/utils/OTAUtils;->mReleaseJson:Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUpdateDescription()Ljava/lang/String;
    .locals 2

    .line 106
    :try_start_0
    iget-object v0, p0, Lru/vtosters/lite/utils/OTAUtils;->mReleaseJson:Lorg/json/JSONObject;

    const-string v1, "body"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isNewVersion()Z
    .locals 2

    .line 90
    :try_start_0
    iget-object v0, p0, Lru/vtosters/lite/utils/OTAUtils;->mCommitSHA:Ljava/lang/String;

    invoke-static {}, Lru/vtosters/lite/utils/VersionReader;->getVersionBuild()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadData(Z)V
    .locals 3

    .line 27
    new-instance v0, Lokhttp3/Request$a;

    invoke-direct {v0}, Lokhttp3/Request$a;-><init>()V

    const-string v1, "https://api.github.com/repos/r4r1ty-tech/iziVK/releases/latest"

    .line 28
    invoke-virtual {v0, v1}, Lokhttp3/Request$a;->b(Ljava/lang/String;)Lokhttp3/Request$a;

    move-result-object v0

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    .line 29
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$a;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lokhttp3/Request$a;->a()Lokhttp3/Request;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lru/vtosters/lite/utils/OTAUtils;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/utils/OTAUtils$1;

    invoke-direct {v1, p0, p1}, Lru/vtosters/lite/utils/OTAUtils$1;-><init>(Lru/vtosters/lite/utils/OTAUtils;Z)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->a(Lokhttp3/Callback;)V

    return-void
.end method

.method setData(Lokhttp3/Response;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p1}, Lru/vtosters/sponsorpost/utils/GzipDecompressor;->decompressResponse(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lru/vtosters/lite/utils/OTAUtils;->mReleaseJson:Lorg/json/JSONObject;

    const-string p1, "tag_name"

    .line 54
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 55
    new-instance v0, Lokhttp3/Request$a;

    invoke-direct {v0}, Lokhttp3/Request$a;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "https://api.github.com/repos/r4r1ty-tech/iziVK/git/ref/tags/%s"

    .line 56
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/Request$a;->b(Ljava/lang/String;)Lokhttp3/Request$a;

    move-result-object p1

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    .line 57
    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$a;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lokhttp3/Request$a;->a()Lokhttp3/Request;

    move-result-object p1

    .line 60
    iget-object v0, p0, Lru/vtosters/lite/utils/OTAUtils;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance v0, Lru/vtosters/lite/utils/OTAUtils$2;

    invoke-direct {v0, p0, p2}, Lru/vtosters/lite/utils/OTAUtils$2;-><init>(Lru/vtosters/lite/utils/OTAUtils;Z)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->a(Lokhttp3/Callback;)V

    return-void
.end method
