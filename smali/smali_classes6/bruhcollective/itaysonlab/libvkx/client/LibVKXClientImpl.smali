.class public Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;
.super Ljava/lang/Object;
.source "LibVKXClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXActionGeneric;,
        Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXAction;
    }
.end annotation


# instance fields
.field private cn:Landroid/content/ServiceConnection;

.field private ctx:Landroid/content/Context;

.field private isBindFailed:Z

.field private pm:Landroid/content/pm/PackageManager;

.field private serviceInstance:Lbruhcollective/itaysonlab/libvkx/ILibVkxService;


# direct methods
.method static bridge synthetic -$$Nest$fgetserviceInstance(Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;)Lbruhcollective/itaysonlab/libvkx/ILibVkxService;
    .locals 0

    iget-object p0, p0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->serviceInstance:Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisBindFailed(Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->isBindFailed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputserviceInstance(Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)V
    .locals 0

    iput-object p1, p0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->serviceInstance:Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->isBindFailed:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->isBindFailed:Z

    .line 29
    iput-object p1, p0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->ctx:Landroid/content/Context;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->pm:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private checkIfAppExists()Z
    .locals 4

    .line 106
    iget-object v0, p0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->pm:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 107
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 110
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v3, "ua.itaysonlab.vkx"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v2
.end method

.method private getIntent()Landroid/content/Intent;
    .locals 2

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "bruhcollective.itaysonlab.libvkx.LIBVKX_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ua.itaysonlab.vkx"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private requestServiceInit(Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXAction;)Z
    .locals 3

    .line 67
    invoke-direct {p0}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->verifyBindActuality()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 69
    :cond_0
    new-instance v0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$1;

    invoke-direct {v0, p0, p1}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$1;-><init>(Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXAction;)V

    iput-object v0, p0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->cn:Landroid/content/ServiceConnection;

    .line 92
    iget-object p1, p0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->ctx:Landroid/content/Context;

    invoke-direct {p0}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->cn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return v2
.end method

.method private verifyBindActuality()Z
    .locals 1

    .line 97
    invoke-direct {p0}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->checkIfAppExists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 98
    :cond_0
    iget-boolean v0, p0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->isBindFailed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 34
    iget-object v0, p0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->cn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 35
    iget-object v1, p0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->serviceInstance:Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    return-void
.end method

.method public runOnService(Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXAction;)Z
    .locals 3

    .line 52
    iget-object v0, p0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->serviceInstance:Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 54
    :try_start_0
    invoke-interface {v0}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService;->getUserId()I

    move-result v0

    invoke-static {}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserId()I

    move-result v2

    if-eq v0, v2, :cond_0

    return v1

    .line 55
    :cond_0
    iget-object v0, p0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->serviceInstance:Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    invoke-interface {p1, v0}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXAction;->run(Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return v1

    .line 62
    :cond_1
    invoke-direct {p0, p1}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->requestServiceInit(Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXAction;)Z

    move-result p1

    return p1
.end method

.method public runOnServiceSync(Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXActionGeneric;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXActionGeneric<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->serviceInstance:Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {p1, v0}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXActionGeneric;->run(Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 45
    :cond_0
    invoke-interface {p1}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXActionGeneric;->defaultValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
