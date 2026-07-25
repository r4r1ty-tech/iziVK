.class public Lru/vtosters/hooks/VerificationsHook;
.super Ljava/lang/Object;
.source "VerificationsHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static VerifyInfo(Lorg/json/JSONObject;)Lcom/vk/dto/common/VerifyInfo;
    .locals 2

    .line 48
    new-instance v0, Lcom/vk/dto/common/VerifyInfo;

    invoke-static {p0}, Lru/vtosters/hooks/VerificationsHook;->isVerified(Lorg/json/JSONObject;)Z

    move-result v1

    invoke-static {p0}, Lru/vtosters/hooks/VerificationsHook;->hasPrometheus(Lorg/json/JSONObject;)Z

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/vk/dto/common/VerifyInfo;-><init>(ZZ)V

    return-object v0
.end method

.method public static hasDeveloper(Lorg/json/JSONObject;)Z
    .locals 0

    .line 44
    invoke-static {p0}, Lru/vtosters/lite/utils/VTVerifications;->getId(Lorg/json/JSONObject;)I

    move-result p0

    invoke-static {p0}, Lru/vtosters/lite/utils/VTVerifications;->isDeveloper(I)Z

    move-result p0

    return p0
.end method

.method public static hasPrometheus(Lorg/json/JSONObject;)Z
    .locals 3

    const-string v0, "trending"

    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    const-string v0, "VT_Fire"

    .line 36
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->serverFeaturesDisable()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 40
    :cond_1
    invoke-static {p0}, Lru/vtosters/lite/utils/VTVerifications;->getId(Lorg/json/JSONObject;)I

    move-result p0

    invoke-static {p0}, Lru/vtosters/lite/utils/VTVerifications;->isPrometheus(I)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public static isVerified(I)Z
    .locals 1

    .line 12
    sget-object v0, Lru/vtosters/lite/utils/VTVerifications;->sVerifications:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isVerified(Lorg/json/JSONObject;)Z
    .locals 3

    const-string v0, "verified"

    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    const-string v0, "VT_Verification"

    .line 24
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->serverFeaturesDisable()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 28
    :cond_1
    invoke-static {p0}, Lru/vtosters/lite/utils/VTVerifications;->getId(Lorg/json/JSONObject;)I

    move-result p0

    invoke-static {p0}, Lru/vtosters/hooks/VerificationsHook;->isVerified(I)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public static vtverif()Z
    .locals 2

    const/4 v0, 0x1

    .line 16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "VT_Verification"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method
