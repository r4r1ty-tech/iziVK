.class public final Lru/vtosters/lite/music/downloader/PlaylistDownloader$ProgressCallback;
.super Ljava/lang/Object;
.source "PlaylistDownloader.java"

# interfaces
.implements Lru/vtosters/lite/music/interfaces/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/lite/music/downloader/PlaylistDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProgressCallback"
.end annotation


# instance fields
.field private final origin:Lru/vtosters/lite/music/interfaces/Callback;

.field private final progress:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lru/vtosters/lite/music/interfaces/Callback;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lru/vtosters/lite/music/downloader/PlaylistDownloader$ProgressCallback;->progress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    iput-object p1, p0, Lru/vtosters/lite/music/downloader/PlaylistDownloader$ProgressCallback;->origin:Lru/vtosters/lite/music/interfaces/Callback;

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lru/vtosters/lite/music/downloader/PlaylistDownloader$ProgressCallback;->origin:Lru/vtosters/lite/music/interfaces/Callback;

    invoke-interface {v0, p1}, Lru/vtosters/lite/music/interfaces/Callback;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onProgress(I)V
    .locals 0

    return-void
.end method

.method public onSizeReceived(JJ)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 57
    iget-object v0, p0, Lru/vtosters/lite/music/downloader/PlaylistDownloader$ProgressCallback;->origin:Lru/vtosters/lite/music/interfaces/Callback;

    iget-object v1, p0, Lru/vtosters/lite/music/downloader/PlaylistDownloader$ProgressCallback;->progress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-interface {v0, v1}, Lru/vtosters/lite/music/interfaces/Callback;->onProgress(I)V

    return-void
.end method
