.class public Lru/vtosters/lite/utils/Metrics;
.super Ljava/lang/Object;
.source "Metrics.java"


# static fields
.field private static events:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lru/vtosters/lite/utils/Metrics;->events:Lorg/json/JSONArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static handleNetworkConnected(Lorg/json/JSONObject;Z)V
    .locals 0

    if-nez p1, :cond_1

    .line 32
    invoke-static {}, Lru/vtosters/lite/utils/Metrics;->shouldSaveUserTraffic()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lru/vtosters/lite/utils/Metrics;->events:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    invoke-static {p0}, Lru/vtosters/lite/utils/Metrics;->trackEventList(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    invoke-static {p0}, Lru/vtosters/lite/utils/Metrics;->trackEventsImmediately(Lorg/json/JSONObject;)V

    :goto_1
    return-void
.end method

.method private static handleNetworkDisconnected(Lorg/json/JSONObject;Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 41
    sget-object p1, Lru/vtosters/lite/utils/Metrics;->events:Lorg/json/JSONArray;

    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    return-void
.end method

.method private static isMobileNetwork()Z
    .locals 5

    .line 70
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 72
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_2

    .line 73
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    return v4

    .line 79
    :cond_2
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 80
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method private static resetEvents()V
    .locals 1

    .line 65
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lru/vtosters/lite/utils/Metrics;->events:Lorg/json/JSONArray;

    return-void
.end method

.method private static shouldSaveUserTraffic()Z
    .locals 3

    const/4 v0, 0x0

    .line 46
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isRoamingState"

    invoke-static {v2, v1}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lru/vtosters/lite/utils/Metrics;->isMobileNetwork()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static trackEventList(Lorg/json/JSONObject;)V
    .locals 1

    .line 50
    sget-object v0, Lru/vtosters/lite/utils/Metrics;->events:Lorg/json/JSONArray;

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 52
    sget-object p0, Lru/vtosters/lite/utils/Metrics;->events:Lorg/json/JSONArray;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p0

    const/4 v0, 0x2

    if-le p0, v0, :cond_0

    .line 53
    sget-object p0, Lru/vtosters/lite/utils/Metrics;->events:Lorg/json/JSONArray;

    invoke-static {p0}, Lru/vtosters/lite/utils/Metrics;->trackEventsRequest(Lorg/json/JSONArray;)V

    .line 54
    invoke-static {}, Lru/vtosters/lite/utils/Metrics;->resetEvents()V

    :cond_0
    return-void
.end method

.method public static trackEvents(Lorg/json/JSONObject;Z)V
    .locals 0

    return-void
.end method

.method private static trackEventsImmediately(Lorg/json/JSONObject;)V
    .locals 1

    .line 59
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 60
    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 61
    invoke-static {v0}, Lru/vtosters/lite/utils/Metrics;->trackEventsRequest(Lorg/json/JSONArray;)V

    return-void
.end method

.method private static trackEventsRequest(Lorg/json/JSONArray;)V
    .locals 3

    .line 87
    new-instance v0, Lokhttp3/Request$a;

    invoke-direct {v0}, Lokhttp3/Request$a;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lru/vtosters/lite/proxy/ProxyUtils;->getApi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/method/stats.trackEvents?events="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&v=5.119&access_token="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lokhttp3/Request$a;->b(Ljava/lang/String;)Lokhttp3/Request$a;

    move-result-object p0

    .line 89
    invoke-virtual {p0}, Lokhttp3/Request$a;->a()Lokhttp3/Request;

    move-result-object p0

    .line 91
    sget-object v0, Lcom/vk/core/network/Network$ClientType;->CLIENT_API:Lcom/vk/core/network/Network$ClientType;

    invoke-static {v0}, Lcom/vk/core/network/Network;->b(Lcom/vk/core/network/Network$ClientType;)Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    new-instance v0, Lru/vtosters/lite/utils/Metrics$1;

    invoke-direct {v0}, Lru/vtosters/lite/utils/Metrics$1;-><init>()V

    invoke-interface {p0, v0}, Lokhttp3/Call;->a(Lokhttp3/Callback;)V

    return-void
.end method
