.class public Lru/vtosters/hooks/ssfs/ProfileHook;
.super Ljava/lang/Object;
.source "ProfileHook.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProfileHider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetchInfo(Lcom/vtosters/lite/api/ExtendedUserProfile;Lorg/json/JSONObject;)V
    .locals 1

    .line 23
    invoke-static {p0}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserID(Lcom/vtosters/lite/api/ExtendedUserProfile;)I

    move-result p1

    .line 25
    invoke-static {p1}, Lru/vtosters/lite/ssfs/UsersList;->hasDescription(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    :try_start_0
    invoke-static {p1}, Lru/vtosters/lite/ssfs/Handler;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    iput-object p1, p0, Lcom/vtosters/lite/api/ExtendedUserProfile;->z2:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "null \"profiles\" node\n"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ProfileHider"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static getInfo(Lcom/vtosters/lite/api/ExtendedUserProfile;)Ljava/lang/String;
    .locals 2

    .line 38
    invoke-static {p0}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserID(Lcom/vtosters/lite/api/ExtendedUserProfile;)I

    move-result v0

    .line 39
    invoke-static {v0}, Lru/vtosters/lite/ssfs/UsersList;->hasDescription(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/vtosters/lite/api/ExtendedUserProfile;->z2:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    iget-object p0, p0, Lcom/vtosters/lite/api/ExtendedUserProfile;->z2:Ljava/lang/String;

    return-object p0

    .line 43
    :cond_0
    invoke-static {v0}, Lru/vtosters/lite/ssfs/Handler;->getDescription(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 46
    :cond_1
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lcom/vk/profile/presenter/UserPresenter;->q0:Lcom/vk/profile/presenter/UserPresenter$a;

    invoke-virtual {v1, v0}, Lcom/vk/profile/presenter/UserPresenter$a;->a(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getProfileButton(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 50
    invoke-static {p0}, Lru/vtosters/lite/ssfs/ProfileButtons;->profileButton(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static isService(Ljava/lang/Integer;)Z
    .locals 2

    .line 19
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lru/vtosters/lite/ssfs/UsersList;->hasDescription(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x14d

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
