.class public Lru/vtosters/lite/music/downloader/PlaylistDownloader;
.super Ljava/lang/Object;
.source "PlaylistDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/vtosters/lite/music/downloader/PlaylistDownloader$ProgressCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cachePlaylist(Ljava/util/List;Lru/vtosters/lite/music/interfaces/Callback;Lcom/vk/dto/music/Playlist;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vk/dto/music/MusicTrack;",
            ">;",
            "Lru/vtosters/lite/music/interfaces/Callback;",
            "Lcom/vk/dto/music/Playlist;",
            ")V"
        }
    .end annotation

    .line 34
    new-instance v0, Lru/vtosters/lite/music/downloader/PlaylistDownloader$ProgressCallback;

    invoke-direct {v0, p1}, Lru/vtosters/lite/music/downloader/PlaylistDownloader$ProgressCallback;-><init>(Lru/vtosters/lite/music/interfaces/Callback;)V

    .line 36
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lru/vtosters/lite/music/downloader/PlaylistDownloader$$ExternalSyntheticLambda2;

    invoke-direct {p1, v0, p2}, Lru/vtosters/lite/music/downloader/PlaylistDownloader$$ExternalSyntheticLambda2;-><init>(Lru/vtosters/lite/music/interfaces/Callback;Lcom/vk/dto/music/Playlist;)V

    .line 37
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lru/vtosters/lite/music/downloader/PlaylistDownloader$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lru/vtosters/lite/music/downloader/PlaylistDownloader$$ExternalSyntheticLambda3;-><init>()V

    .line 42
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava8/util/concurrent/CompletableFuture;

    .line 35
    invoke-static {p0}, Ljava8/util/concurrent/CompletableFuture;->allOf([Ljava8/util/concurrent/CompletableFuture;)Ljava8/util/concurrent/CompletableFuture;

    return-void
.end method

.method public static downloadPlaylist(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lru/vtosters/lite/music/interfaces/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vk/dto/music/MusicTrack;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lru/vtosters/lite/music/interfaces/Callback;",
            ")V"
        }
    .end annotation

    .line 17
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 19
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    const-string v0, "PlaylistDownloader"

    if-eqz p1, :cond_0

    const-string p1, "Directory created"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Directory creation failed"

    .line 20
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_1
    :goto_0
    new-instance p1, Lru/vtosters/lite/music/downloader/PlaylistDownloader$ProgressCallback;

    invoke-direct {p1, p3}, Lru/vtosters/lite/music/downloader/PlaylistDownloader$ProgressCallback;-><init>(Lru/vtosters/lite/music/interfaces/Callback;)V

    .line 23
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance p3, Lru/vtosters/lite/music/downloader/PlaylistDownloader$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1, p2}, Lru/vtosters/lite/music/downloader/PlaylistDownloader$$ExternalSyntheticLambda0;-><init>(Lru/vtosters/lite/music/interfaces/Callback;Ljava/lang/String;)V

    .line 24
    invoke-interface {p0, p3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lru/vtosters/lite/music/downloader/PlaylistDownloader$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lru/vtosters/lite/music/downloader/PlaylistDownloader$$ExternalSyntheticLambda1;-><init>()V

    .line 30
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava8/util/concurrent/CompletableFuture;

    .line 22
    invoke-static {p0}, Ljava8/util/concurrent/CompletableFuture;->allOf([Ljava8/util/concurrent/CompletableFuture;)Ljava8/util/concurrent/CompletableFuture;

    return-void
.end method

.method static synthetic lambda$cachePlaylist$2(Lru/vtosters/lite/music/interfaces/Callback;Lcom/vk/dto/music/Playlist;Lcom/vk/dto/music/MusicTrack;)Lru/vtosters/lite/music/interfaces/Callback$CompletableFutureCallback;
    .locals 1

    .line 38
    new-instance v0, Lru/vtosters/lite/music/interfaces/Callback$CompletableFutureCallback;

    invoke-direct {v0, p0}, Lru/vtosters/lite/music/interfaces/Callback$CompletableFutureCallback;-><init>(Lru/vtosters/lite/music/interfaces/Callback;)V

    .line 39
    invoke-static {p2, v0, p1}, Lru/vtosters/lite/music/downloader/TrackDownloader;->cacheTrack(Lcom/vk/dto/music/MusicTrack;Lru/vtosters/lite/music/interfaces/Callback;Lcom/vk/dto/music/Playlist;)V

    return-object v0
.end method

.method static synthetic lambda$cachePlaylist$3(I)[Ljava8/util/concurrent/CompletableFuture;
    .locals 0

    .line 42
    new-array p0, p0, [Ljava8/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method static synthetic lambda$downloadPlaylist$0(Lru/vtosters/lite/music/interfaces/Callback;Ljava/lang/String;Lcom/vk/dto/music/MusicTrack;)Lru/vtosters/lite/music/interfaces/Callback$CompletableFutureCallback;
    .locals 1

    .line 25
    new-instance v0, Lru/vtosters/lite/music/interfaces/Callback$CompletableFutureCallback;

    invoke-direct {v0, p0}, Lru/vtosters/lite/music/interfaces/Callback$CompletableFutureCallback;-><init>(Lru/vtosters/lite/music/interfaces/Callback;)V

    .line 27
    invoke-static {p2, p1, v0}, Lru/vtosters/lite/music/downloader/TrackDownloader;->downloadTrack(Lcom/vk/dto/music/MusicTrack;Ljava/lang/String;Lru/vtosters/lite/music/interfaces/Callback;)V

    return-object v0
.end method

.method static synthetic lambda$downloadPlaylist$1(I)[Ljava8/util/concurrent/CompletableFuture;
    .locals 0

    .line 30
    new-array p0, p0, [Ljava8/util/concurrent/CompletableFuture;

    return-object p0
.end method
