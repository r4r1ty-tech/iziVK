.class public Lru/vtosters/lite/proxy/http/CustomHttp;
.super Ljava/lang/Object;
.source "CustomHttp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadProxy()V
    .locals 2

    const-string v0, "http.proxyHost"

    .line 8
    invoke-static {}, Lru/vtosters/lite/proxy/http/CustomHttp;->proxyHostHTTP()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http.proxyPort"

    .line 9
    invoke-static {}, Lru/vtosters/lite/proxy/http/CustomHttp;->proxyPortHTTP()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http.proxyUser"

    .line 10
    invoke-static {}, Lru/vtosters/lite/proxy/http/CustomHttp;->proxyUserHTTP()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http.proxyPassword"

    .line 11
    invoke-static {}, Lru/vtosters/lite/proxy/http/CustomHttp;->proxyPassHTTP()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    invoke-static {}, Lru/vtosters/lite/proxy/ProxyUtils;->forceProxyApplying()V

    return-void
.end method

.method private static proxyHostHTTP()Ljava/lang/String;
    .locals 2

    const-string v0, "proxyHostHTTP"

    .line 16
    invoke-static {v0}, Lru/vtosters/hooks/other/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "192.168.0.1"

    :cond_0
    return-object v0
.end method

.method private static proxyPassHTTP()Ljava/lang/String;
    .locals 2

    const-string v0, "proxyPassHTTP"

    .line 31
    invoke-static {v0}, Lru/vtosters/hooks/other/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method private static proxyPortHTTP()Ljava/lang/String;
    .locals 2

    const-string v0, "proxyPortHTTP"

    .line 21
    invoke-static {v0}, Lru/vtosters/hooks/other/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "8888"

    :cond_0
    return-object v0
.end method

.method private static proxyUserHTTP()Ljava/lang/String;
    .locals 2

    const-string v0, "proxyUserHTTP"

    .line 26
    invoke-static {v0}, Lru/vtosters/hooks/other/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method
