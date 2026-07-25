.class public final Lru/vtosters/lite/music/downloader/CachedDownloader;
.super Ljava/lang/Object;
.source "CachedDownloader.java"

# interfaces
.implements Lru/vtosters/lite/music/interfaces/ITrackDownloader;


# instance fields
.field private final origin:Lru/vtosters/lite/music/interfaces/ITrackDownloader;


# direct methods
.method public constructor <init>(Lru/vtosters/lite/music/interfaces/ITrackDownloader;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lru/vtosters/lite/music/downloader/CachedDownloader;->origin:Lru/vtosters/lite/music/interfaces/ITrackDownloader;

    return-void
.end method


# virtual methods
.method public download(Lcom/vk/dto/music/MusicTrack;Lru/vtosters/lite/music/interfaces/Callback;Lcom/vk/dto/music/Playlist;)V
    .locals 2

    .line 22
    iget-object v0, p0, Lru/vtosters/lite/music/downloader/CachedDownloader;->origin:Lru/vtosters/lite/music/interfaces/ITrackDownloader;

    new-instance v1, Lru/vtosters/lite/music/downloader/CachedDownloader$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lru/vtosters/lite/music/downloader/CachedDownloader$1;-><init>(Lru/vtosters/lite/music/downloader/CachedDownloader;Lru/vtosters/lite/music/interfaces/Callback;Lcom/vk/dto/music/MusicTrack;Lcom/vk/dto/music/Playlist;)V

    invoke-interface {v0, p1, v1, p3}, Lru/vtosters/lite/music/interfaces/ITrackDownloader;->download(Lcom/vk/dto/music/MusicTrack;Lru/vtosters/lite/music/interfaces/Callback;Lcom/vk/dto/music/Playlist;)V

    return-void
.end method
