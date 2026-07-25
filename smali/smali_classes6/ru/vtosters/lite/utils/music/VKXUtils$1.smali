.class Lru/vtosters/lite/utils/music/VKXUtils$1;
.super Ljava/lang/Object;
.source "VKXUtils.java"

# interfaces
.implements Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXActionGeneric;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/vtosters/lite/utils/music/VKXUtils;->isVkxCached(II)Z
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
.field final synthetic val$owner_id:I

.field final synthetic val$playlist_id:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 10
    iput p1, p0, Lru/vtosters/lite/utils/music/VKXUtils$1;->val$playlist_id:I

    iput p2, p0, Lru/vtosters/lite/utils/music/VKXUtils$1;->val$owner_id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public defaultValue()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic defaultValue()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lru/vtosters/lite/utils/music/VKXUtils$1;->defaultValue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public run(Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)Ljava/lang/Boolean;
    .locals 2

    .line 14
    :try_start_0
    iget v0, p0, Lru/vtosters/lite/utils/music/VKXUtils$1;->val$playlist_id:I

    iget v1, p0, Lru/vtosters/lite/utils/music/VKXUtils$1;->val$owner_id:I

    invoke-interface {p1, v0, v1}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService;->isPlaylistCached(II)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    .line 16
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic run(Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lru/vtosters/lite/utils/music/VKXUtils$1;->run(Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
