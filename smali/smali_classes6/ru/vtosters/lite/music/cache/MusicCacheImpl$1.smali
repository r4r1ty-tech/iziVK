.class Lru/vtosters/lite/music/cache/MusicCacheImpl$1;
.super Ljava/lang/Object;
.source "MusicCacheImpl.java"

# interfaces
.implements Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXActionGeneric;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/vtosters/lite/music/cache/MusicCacheImpl;->getTracksCount()J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXActionGeneric<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public defaultValue()Ljava/lang/Long;
    .locals 2

    const-wide/16 v0, 0x0

    .line 82
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic defaultValue()Ljava/lang/Object;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/MusicCacheImpl$1;->defaultValue()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public run(Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)Ljava/lang/Long;
    .locals 2

    .line 73
    :try_start_0
    invoke-interface {p1}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService;->getCache()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 76
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/MusicCacheImpl$1;->defaultValue()Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic run(Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lru/vtosters/lite/music/cache/MusicCacheImpl$1;->run(Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
