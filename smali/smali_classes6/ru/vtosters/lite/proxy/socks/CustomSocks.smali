.class public Lru/vtosters/lite/proxy/socks/CustomSocks;
.super Ljava/lang/Object;
.source "CustomSocks.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadProxy()V
    .locals 2

    const-string v0, "socksProxyHost"

    .line 8
    invoke-static {}, Lru/vtosters/lite/proxy/socks/CustomSocks;->proxyHostSocks()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "socksProxyPort"

    .line 9
    invoke-static {}, Lru/vtosters/lite/proxy/socks/CustomSocks;->proxyPortSocks()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    invoke-static {}, Lru/vtosters/lite/proxy/ProxyUtils;->forceProxyApplying()V

    return-void
.end method

.method private static proxyHostSocks()Ljava/lang/String;
    .locals 2

    const-string v0, "proxyHostSocks"

    .line 14
    invoke-static {v0}, Lru/vtosters/hooks/other/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "192.168.0.1"

    :cond_0
    return-object v0
.end method

.method private static proxyPortSocks()Ljava/lang/String;
    .locals 2

    const-string v0, "proxyPortSocks"

    .line 19
    invoke-static {v0}, Lru/vtosters/hooks/other/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "8888"

    :cond_0
    return-object v0
.end method
