.class Lru/vtosters/lite/utils/music/VKXUtils$2;
.super Ljava/lang/Object;
.source "VKXUtils.java"

# interfaces
.implements Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXActionGeneric;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/vtosters/lite/utils/music/VKXUtils;->isVkxCached(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXActionGeneric<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$trackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lru/vtosters/lite/utils/music/VKXUtils$2;->val$trackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public defaultValue()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic defaultValue()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lru/vtosters/lite/utils/music/VKXUtils$2;->defaultValue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public run(Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    .line 32
    :try_start_0
    iget-object v1, p0, Lru/vtosters/lite/utils/music/VKXUtils$2;->val$trackId:Ljava/lang/String;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 33
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 34
    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 35
    invoke-interface {p1, v2, v1}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService;->isTrackCached(II)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 37
    :catch_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic run(Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lru/vtosters/lite/utils/music/VKXUtils$2;->run(Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
