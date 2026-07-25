.class public Lru/vtosters/lite/utils/AccountManagerUtils;
.super Ljava/lang/Object;
.source "AccountManagerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromEup(Lcom/vtosters/lite/api/ExtendedUserProfile;)Lcom/vk/dto/user/UserProfile;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/vtosters/lite/api/ExtendedUserProfile;->a:Lcom/vk/dto/user/UserProfile;

    return-object p0
.end method

.method public static getGroupName(Lcom/vk/dto/user/UserProfile;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/vk/dto/user/UserProfile;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static getUserFirstName(Lcom/vk/dto/user/UserProfile;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/vk/dto/user/UserProfile;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static getUserID(Lcom/vk/dto/user/UserProfile;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/vk/dto/user/UserProfile;->b:I

    return p0
.end method

.method public static getUserID(Lcom/vtosters/lite/api/ExtendedUserProfile;)I
    .locals 0

    .line 66
    invoke-static {p0}, Lru/vtosters/lite/utils/AccountManagerUtils;->fromEup(Lcom/vtosters/lite/api/ExtendedUserProfile;)Lcom/vk/dto/user/UserProfile;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserID(Lcom/vk/dto/user/UserProfile;)I

    move-result p0

    return p0
.end method

.method public static getUserId()I
    .locals 1

    .line 10
    invoke-static {}, Lcom/vtosters/lite/auth/VKAccountManager;->d()Lcom/vk/auth/api/VKAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/auth/api/VKAccount;->D0()I

    move-result v0

    return v0
.end method

.method public static getUserLastName(Lcom/vk/dto/user/UserProfile;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/vk/dto/user/UserProfile;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static getUserPhoto()Ljava/lang/String;
    .locals 1

    .line 42
    invoke-static {}, Lcom/vtosters/lite/auth/VKAccountManager;->d()Lcom/vk/auth/api/VKAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/auth/api/VKAccount;->d0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserSecret()Ljava/lang/String;
    .locals 1

    .line 30
    invoke-static {}, Lcom/vtosters/lite/auth/VKAccountManager;->d()Lcom/vk/auth/api/VKAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/auth/api/VKAccount;->l0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserToken()Ljava/lang/String;
    .locals 1

    .line 34
    invoke-static {}, Lcom/vtosters/lite/auth/VKAccountManager;->d()Lcom/vk/auth/api/VKAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/auth/api/VKAccount;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUsername()Ljava/lang/String;
    .locals 1

    .line 38
    invoke-static {}, Lcom/vtosters/lite/auth/VKAccountManager;->d()Lcom/vk/auth/api/VKAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/auth/api/VKAccount;->Z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isLogin()Z
    .locals 1

    .line 62
    invoke-static {}, Lcom/vtosters/lite/auth/VKAccountManager;->d()Lcom/vk/auth/api/VKAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/auth/api/VKAccount;->b1()Z

    move-result v0

    return v0
.end method

.method public static isVKTester()Z
    .locals 1

    const-string v0, "tester"

    .line 14
    invoke-static {v0}, Lru/vtosters/lite/utils/AccountManagerUtils;->role(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isVKWorker()Z
    .locals 1

    const-string v0, "worker"

    .line 18
    invoke-static {v0}, Lru/vtosters/lite/utils/AccountManagerUtils;->role(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static role(Ljava/lang/String;)Z
    .locals 1

    .line 23
    :try_start_0
    invoke-static {}, Lcom/vtosters/lite/auth/VKAccountManager;->d()Lcom/vk/auth/api/VKAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/auth/api/VKAccount;->k0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
