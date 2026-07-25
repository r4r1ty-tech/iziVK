.class public Lru/vtosters/lite/proxy/https/CustomHttps;
.super Ljava/lang/Object;
.source "CustomHttps.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadProxy()V
    .locals 2

    const-string v0, "https.proxyHost"

    .line 8
    invoke-static {}, Lru/vtosters/lite/proxy/https/CustomHttps;->proxyHostHTTPS()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "https.proxyPort"

    .line 9
    invoke-static {}, Lru/vtosters/lite/proxy/https/CustomHttps;->proxyPortHTTPS()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "https.proxyUser"

    .line 10
    invoke-static {}, Lru/vtosters/lite/proxy/https/CustomHttps;->proxyUserHTTPS()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "https.proxyPassword"

    .line 11
    invoke-static {}, Lru/vtosters/lite/proxy/https/CustomHttps;->proxyPassHTTPS()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    invoke-static {}, Lru/vtosters/lite/proxy/ProxyUtils;->forceProxyApplying()V

    return-void
.end method

.method private static proxyHostHTTPS()Ljava/lang/String;
    .locals 2

    const-string v0, "proxyHostHTTPS"

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

.method private static proxyPassHTTPS()Ljava/lang/String;
    .locals 2

    const-string v0, "proxyPassHTTPS"

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

.method private static proxyPortHTTPS()Ljava/lang/String;
    .locals 2

    const-string v0, "proxyPortHTTPS"

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

.method private static proxyUserHTTPS()Ljava/lang/String;
    .locals 2

    const-string v0, "proxyUserHTTPS"

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
