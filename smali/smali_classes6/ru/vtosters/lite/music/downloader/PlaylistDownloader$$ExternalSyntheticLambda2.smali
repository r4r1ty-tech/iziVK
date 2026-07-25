.class public final synthetic Lru/vtosters/lite/music/downloader/PlaylistDownloader$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lru/vtosters/lite/music/interfaces/Callback;

.field public final synthetic f$1:Lcom/vk/dto/music/Playlist;


# direct methods
.method public synthetic constructor <init>(Lru/vtosters/lite/music/interfaces/Callback;Lcom/vk/dto/music/Playlist;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/music/downloader/PlaylistDownloader$$ExternalSyntheticLambda2;->f$0:Lru/vtosters/lite/music/interfaces/Callback;

    iput-object p2, p0, Lru/vtosters/lite/music/downloader/PlaylistDownloader$$ExternalSyntheticLambda2;->f$1:Lcom/vk/dto/music/Playlist;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lru/vtosters/lite/music/downloader/PlaylistDownloader$$ExternalSyntheticLambda2;->f$0:Lru/vtosters/lite/music/interfaces/Callback;

    iget-object v1, p0, Lru/vtosters/lite/music/downloader/PlaylistDownloader$$ExternalSyntheticLambda2;->f$1:Lcom/vk/dto/music/Playlist;

    check-cast p1, Lcom/vk/dto/music/MusicTrack;

    invoke-static {v0, v1, p1}, Lru/vtosters/lite/music/downloader/PlaylistDownloader;->lambda$cachePlaylist$2(Lru/vtosters/lite/music/interfaces/Callback;Lcom/vk/dto/music/Playlist;Lcom/vk/dto/music/MusicTrack;)Lru/vtosters/lite/music/interfaces/Callback$CompletableFutureCallback;

    move-result-object p1

    return-object p1
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
