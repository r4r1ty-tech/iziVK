.class public Lru/vtosters/lite/proxy/api/VikaMobile;
.super Ljava/lang/Object;
.source "VikaMobile.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApiHost()Ljava/lang/String;
    .locals 1

    .line 7
    invoke-static {}, Lru/vtosters/lite/proxy/api/VikaMobile;->isAlternativeHost()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vk-api-proxy.vikamobile.ru"

    goto :goto_0

    :cond_0
    const-string v0, "vk-api-proxy.symbian.live"

    :goto_0
    return-object v0
.end method

.method public static getOauthHost()Ljava/lang/String;
    .locals 1

    .line 11
    invoke-static {}, Lru/vtosters/lite/proxy/api/VikaMobile;->isAlternativeHost()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vk-oauth-proxy.vikamobile.ru"

    goto :goto_0

    :cond_0
    const-string v0, "vk-oauth-proxy.symbian.live"

    :goto_0
    return-object v0
.end method

.method public static getStaticHost()Ljava/lang/String;
    .locals 1

    .line 15
    invoke-static {}, Lru/vtosters/lite/proxy/api/VikaMobile;->isAlternativeHost()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vk-static-proxy.vikamobile.ru"

    goto :goto_0

    :cond_0
    const-string v0, "vk-static-proxy.symbian.live"

    :goto_0
    return-object v0
.end method

.method public static isAlternativeHost()Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    .line 19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "altervika"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
