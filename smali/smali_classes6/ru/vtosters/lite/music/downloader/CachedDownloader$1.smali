.class Lru/vtosters/lite/music/downloader/CachedDownloader$1;
.super Ljava/lang/Object;
.source "CachedDownloader.java"

# interfaces
.implements Lru/vtosters/lite/music/interfaces/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/vtosters/lite/music/downloader/CachedDownloader;->download(Lcom/vk/dto/music/MusicTrack;Lru/vtosters/lite/music/interfaces/Callback;Lcom/vk/dto/music/Playlist;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/vtosters/lite/music/downloader/CachedDownloader;

.field final synthetic val$callback:Lru/vtosters/lite/music/interfaces/Callback;

.field final synthetic val$playlist:Lcom/vk/dto/music/Playlist;

.field final synthetic val$track:Lcom/vk/dto/music/MusicTrack;


# direct methods
.method constructor <init>(Lru/vtosters/lite/music/downloader/CachedDownloader;Lru/vtosters/lite/music/interfaces/Callback;Lcom/vk/dto/music/MusicTrack;Lcom/vk/dto/music/Playlist;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lru/vtosters/lite/music/downloader/CachedDownloader$1;->this$0:Lru/vtosters/lite/music/downloader/CachedDownloader;

    iput-object p2, p0, Lru/vtosters/lite/music/downloader/CachedDownloader$1;->val$callback:Lru/vtosters/lite/music/interfaces/Callback;

    iput-object p3, p0, Lru/vtosters/lite/music/downloader/CachedDownloader$1;->val$track:Lcom/vk/dto/music/MusicTrack;

    iput-object p4, p0, Lru/vtosters/lite/music/downloader/CachedDownloader$1;->val$playlist:Lcom/vk/dto/music/Playlist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lru/vtosters/lite/music/downloader/CachedDownloader$1;->val$callback:Lru/vtosters/lite/music/interfaces/Callback;

    invoke-interface {v0, p1}, Lru/vtosters/lite/music/interfaces/Callback;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onProgress(I)V
    .locals 1

    .line 25
    iget-object v0, p0, Lru/vtosters/lite/music/downloader/CachedDownloader$1;->val$callback:Lru/vtosters/lite/music/interfaces/Callback;

    invoke-interface {v0, p1}, Lru/vtosters/lite/music/interfaces/Callback;->onProgress(I)V

    return-void
.end method

.method public onSizeReceived(JJ)V
    .locals 1

    .line 61
    iget-object v0, p0, Lru/vtosters/lite/music/downloader/CachedDownloader$1;->val$callback:Lru/vtosters/lite/music/interfaces/Callback;

    invoke-interface {v0, p1, p2, p3, p4}, Lru/vtosters/lite/music/interfaces/Callback;->onSizeReceived(JJ)V

    return-void
.end method

.method public onSuccess()V
    .locals 4

    .line 30
    new-instance v0, Lru/vtosters/lite/music/downloader/ThumbnailTrackDownloader;

    invoke-direct {v0}, Lru/vtosters/lite/music/downloader/ThumbnailTrackDownloader;-><init>()V

    iget-object v1, p0, Lru/vtosters/lite/music/downloader/CachedDownloader$1;->val$track:Lcom/vk/dto/music/MusicTrack;

    new-instance v2, Lru/vtosters/lite/music/downloader/CachedDownloader$1$1;

    invoke-direct {v2, p0}, Lru/vtosters/lite/music/downloader/CachedDownloader$1$1;-><init>(Lru/vtosters/lite/music/downloader/CachedDownloader$1;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lru/vtosters/lite/music/downloader/ThumbnailTrackDownloader;->download(Lcom/vk/dto/music/MusicTrack;Lru/vtosters/lite/music/interfaces/Callback;Lcom/vk/dto/music/Playlist;)V

    .line 49
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lru/vtosters/lite/music/downloader/CachedDownloader$1;->val$playlist:Lcom/vk/dto/music/Playlist;

    invoke-virtual {v1}, Lcom/vk/dto/music/Playlist;->v1()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lru/vtosters/lite/music/downloader/CachedDownloader$1;->val$track:Lcom/vk/dto/music/MusicTrack;

    invoke-virtual {v2}, Lcom/vk/dto/music/MusicTrack;->y1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->addTrackToPlaylist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lru/vtosters/lite/music/downloader/CachedDownloader$1;->val$track:Lcom/vk/dto/music/MusicTrack;

    invoke-static {v0}, Lru/vtosters/lite/music/cache/MusicCacheImpl;->addTrack(Lcom/vk/dto/music/MusicTrack;)V

    .line 51
    iget-object v0, p0, Lru/vtosters/lite/music/downloader/CachedDownloader$1;->val$callback:Lru/vtosters/lite/music/interfaces/Callback;

    invoke-interface {v0}, Lru/vtosters/lite/music/interfaces/Callback;->onSuccess()V

    return-void
.end method
