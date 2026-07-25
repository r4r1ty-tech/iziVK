.class public final synthetic Lru/vtosters/lite/music/downloader/TrackDownloader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:Lcom/vk/dto/music/MusicTrack;

.field public final synthetic f$2:Lru/vtosters/lite/music/interfaces/Callback;

.field public final synthetic f$3:Lcom/vk/dto/music/Playlist;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Lcom/vk/dto/music/MusicTrack;Lru/vtosters/lite/music/interfaces/Callback;Lcom/vk/dto/music/Playlist;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/music/downloader/TrackDownloader$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    iput-object p2, p0, Lru/vtosters/lite/music/downloader/TrackDownloader$$ExternalSyntheticLambda0;->f$1:Lcom/vk/dto/music/MusicTrack;

    iput-object p3, p0, Lru/vtosters/lite/music/downloader/TrackDownloader$$ExternalSyntheticLambda0;->f$2:Lru/vtosters/lite/music/interfaces/Callback;

    iput-object p4, p0, Lru/vtosters/lite/music/downloader/TrackDownloader$$ExternalSyntheticLambda0;->f$3:Lcom/vk/dto/music/Playlist;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lru/vtosters/lite/music/downloader/TrackDownloader$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    iget-object v1, p0, Lru/vtosters/lite/music/downloader/TrackDownloader$$ExternalSyntheticLambda0;->f$1:Lcom/vk/dto/music/MusicTrack;

    iget-object v2, p0, Lru/vtosters/lite/music/downloader/TrackDownloader$$ExternalSyntheticLambda0;->f$2:Lru/vtosters/lite/music/interfaces/Callback;

    iget-object v3, p0, Lru/vtosters/lite/music/downloader/TrackDownloader$$ExternalSyntheticLambda0;->f$3:Lcom/vk/dto/music/Playlist;

    invoke-static {v0, v1, v2, v3}, Lru/vtosters/lite/music/downloader/TrackDownloader;->lambda$cacheTrack$1(Ljava/io/File;Lcom/vk/dto/music/MusicTrack;Lru/vtosters/lite/music/interfaces/Callback;Lcom/vk/dto/music/Playlist;)V

    return-void
.end method
