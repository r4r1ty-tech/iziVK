.class public final Lru/vtosters/lite/music/downloader/TrackDownloader;
.super Ljava/lang/Object;
.source "TrackDownloader.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheTrack(Lcom/vk/dto/music/MusicTrack;Lru/vtosters/lite/music/interfaces/Callback;Lcom/vk/dto/music/Playlist;)V
    .locals 3

    .line 37
    invoke-static {p0}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->asId(Lcom/vk/dto/music/MusicTrack;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/lite/music/cache/MusicCacheImpl;->isCachedTrack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-static {p0}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->asId(Lcom/vk/dto/music/MusicTrack;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/lite/utils/music/MusicCacheStorageUtils;->getTrackFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 43
    invoke-static {}, Lru/vtosters/lite/concurrent/VTExecutors;->getMusicDownloadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lru/vtosters/lite/music/downloader/TrackDownloader$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p0, p1, p2}, Lru/vtosters/lite/music/downloader/TrackDownloader$$ExternalSyntheticLambda0;-><init>(Ljava/io/File;Lcom/vk/dto/music/MusicTrack;Lru/vtosters/lite/music/interfaces/Callback;Lcom/vk/dto/music/Playlist;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static downloadTrack(Lcom/vk/dto/music/MusicTrack;Ljava/lang/String;Lru/vtosters/lite/music/interfaces/Callback;)V
    .locals 4

    .line 23
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p1

    const-string v1, "TrackDownloader"

    if-eqz p1, :cond_0

    const-string p1, "Directory created"

    .line 26
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Directory creation failed"

    .line 28
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_1
    :goto_0
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lru/vtosters/lite/utils/music/MusicTrackUtils;->getArtists(Lcom/vk/dto/music/MusicTrack;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lru/vtosters/lite/music/downloader/Mp3Downloader;->getTitle(Lcom/vk/dto/music/MusicTrack;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lru/vtosters/lite/utils/IOUtils;->getValidFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".mp3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lru/vtosters/lite/concurrent/VTExecutors;->getMusicDownloadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/music/downloader/TrackDownloader$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p0, p2}, Lru/vtosters/lite/music/downloader/TrackDownloader$$ExternalSyntheticLambda1;-><init>(Ljava/io/File;Lcom/vk/dto/music/MusicTrack;Lru/vtosters/lite/music/interfaces/Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic lambda$cacheTrack$1(Ljava/io/File;Lcom/vk/dto/music/MusicTrack;Lru/vtosters/lite/music/interfaces/Callback;Lcom/vk/dto/music/Playlist;)V
    .locals 2

    .line 43
    new-instance v0, Lru/vtosters/lite/music/downloader/CachedDownloader;

    new-instance v1, Lru/vtosters/lite/music/downloader/Mp3Downloader;

    invoke-direct {v1, p0}, Lru/vtosters/lite/music/downloader/Mp3Downloader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Lru/vtosters/lite/music/downloader/CachedDownloader;-><init>(Lru/vtosters/lite/music/interfaces/ITrackDownloader;)V

    invoke-virtual {v0, p1, p2, p3}, Lru/vtosters/lite/music/downloader/CachedDownloader;->download(Lcom/vk/dto/music/MusicTrack;Lru/vtosters/lite/music/interfaces/Callback;Lcom/vk/dto/music/Playlist;)V

    return-void
.end method

.method static synthetic lambda$downloadTrack$0(Ljava/io/File;Lcom/vk/dto/music/MusicTrack;Lru/vtosters/lite/music/interfaces/Callback;)V
    .locals 1

    .line 33
    new-instance v0, Lru/vtosters/lite/music/downloader/Mp3Downloader;

    invoke-direct {v0, p0}, Lru/vtosters/lite/music/downloader/Mp3Downloader;-><init>(Ljava/io/File;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p2, p0}, Lru/vtosters/lite/music/downloader/Mp3Downloader;->download(Lcom/vk/dto/music/MusicTrack;Lru/vtosters/lite/music/interfaces/Callback;Lcom/vk/dto/music/Playlist;)V

    return-void
.end method
