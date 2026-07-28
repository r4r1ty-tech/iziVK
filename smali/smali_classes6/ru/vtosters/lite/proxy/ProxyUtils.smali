.class public Lru/vtosters/lite/proxy/ProxyUtils;
.super Ljava/lang/Object;
.source "ProxyUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forceProxyApplying()V
    .locals 0

    return-void
.end method

.method public static getApi()Ljava/lang/String;
    .locals 1

    const-string v0, "api.vk.com"

    return-object v0
.end method

.method public static getOauth()Ljava/lang/String;
    .locals 1

    const-string v0, "oauth.vk.com"

    return-object v0
.end method

.method public static getStatic()Ljava/lang/String;
    .locals 1

    const-string v0, "static.vk.com"

    return-object v0
.end method

.method public static isAnyProxyEnabled()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static isApiProxyEnabled()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static isVKProxyEnabled()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static isVikaProxyEnabled()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static isZaboronaEnabled()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static resetProxy()V
    .locals 0

    return-void
.end method

.method public static setProxy()V
    .locals 0

    return-void
.end method
