.class public Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;
.super Ljava/lang/Object;
.source "LibVKXClient.java"


# static fields
.field private static impl:Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asId(Lcom/vk/dto/music/MusicTrack;)Ljava/lang/String;
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/vk/dto/music/MusicTrack;->y1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;
    .locals 1

    .line 30
    sget-object v0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->impl:Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;

    if-nez v0, :cond_0

    .line 31
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->getInstance(Landroid/content/Context;)Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;
    .locals 1

    .line 23
    sget-object v0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->impl:Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;

    invoke-direct {v0, p0}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->impl:Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;

    .line 26
    :cond_0
    sget-object p0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->impl:Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;

    return-object p0
.end method

.method public static isIntegrationEnabled()Z
    .locals 3

    const/4 v0, 0x0

    .line 44
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "libvkx_integration"

    invoke-static {v2, v1}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->isVkxInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isVkxInstalled()Z
    .locals 3

    const/4 v0, 0x0

    .line 36
    :try_start_0
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "ua.itaysonlab.vkx"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 37
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->isValidSignature()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->serverFeaturesDisable()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method static synthetic lambda$play$0(Ljava/util/List;Lcom/vk/dto/music/MusicTrack;Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)V
    .locals 0

    .line 52
    invoke-static {p0, p1, p2}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->lambdaplay(Ljava/util/List;Lcom/vk/dto/music/MusicTrack;Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)V

    return-void
.end method

.method public static lambdaplay(Ljava/util/List;Lcom/vk/dto/music/MusicTrack;Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vk/dto/music/MusicTrack;",
            ">;",
            "Lcom/vk/dto/music/MusicTrack;",
            "Lbruhcollective/itaysonlab/libvkx/ILibVkxService;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 81
    invoke-static {p0, p1, p2, v0}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->lambdaplay(Ljava/util/List;Lcom/vk/dto/music/MusicTrack;Lbruhcollective/itaysonlab/libvkx/ILibVkxService;Lcom/vk/music/common/MusicPlaybackLaunchContext;)V

    return-void
.end method

.method public static lambdaplay(Ljava/util/List;Lcom/vk/dto/music/MusicTrack;Lbruhcollective/itaysonlab/libvkx/ILibVkxService;Lcom/vk/music/common/MusicPlaybackLaunchContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vk/dto/music/MusicTrack;",
            ">;",
            "Lcom/vk/dto/music/MusicTrack;",
            "Lbruhcollective/itaysonlab/libvkx/ILibVkxService;",
            "Lcom/vk/music/common/MusicPlaybackLaunchContext;",
            ")V"
        }
    .end annotation

    :try_start_0
    const-string v0, ""

    if-eqz p3, :cond_0

    .line 62
    invoke-virtual {p3}, Lcom/vk/music/common/MusicPlaybackLaunchContext;->v0()Ljava/lang/String;

    move-result-object v0

    .line 65
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 66
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/dto/music/MusicTrack;

    .line 68
    invoke-static {v1}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->asId(Lcom/vk/dto/music/MusicTrack;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    if-ne p1, p0, :cond_2

    const/4 p1, 0x0

    .line 74
    :cond_2
    invoke-interface {p2, p3, p1, v0}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService;->play(Ljava/util/List;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 76
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static play(Lcom/vk/dto/music/MusicTrack;Ljava/util/List;Lcom/vk/music/common/MusicPlaybackLaunchContext;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/music/MusicTrack;",
            "Ljava/util/List<",
            "Lcom/vk/dto/music/MusicTrack;",
            ">;",
            "Lcom/vk/music/common/MusicPlaybackLaunchContext;",
            ")Z"
        }
    .end annotation

    .line 48
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->isIntegrationEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 52
    :cond_0
    new-instance p2, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1, p0}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Lcom/vk/dto/music/MusicTrack;)V

    .line 54
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->getInstance()Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;

    move-result-object p0

    invoke-virtual {p0, p2}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->runOnService(Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXAction;)Z

    move-result p0

    return p0
.end method
