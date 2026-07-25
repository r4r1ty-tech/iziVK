.class Lru/vtosters/lite/downloaders/AudioDownloader$1;
.super Ljava/lang/Object;
.source "AudioDownloader.java"

# interfaces
.implements Lru/vtosters/lite/music/interfaces/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/vtosters/lite/downloaders/AudioDownloader;->cachePlaylist(Lcom/vk/dto/music/Playlist;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$playlist:Lcom/vk/dto/music/Playlist;


# direct methods
.method constructor <init>(Lcom/vk/dto/music/Playlist;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lru/vtosters/lite/downloaders/AudioDownloader$1;->val$playlist:Lcom/vk/dto/music/Playlist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 109
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
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

    .line 102
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lru/vtosters/lite/downloaders/AudioDownloader$1;->val$playlist:Lcom/vk/dto/music/Playlist;

    invoke-static {v0, v1}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->addPlaylist(Landroid/content/Context;Lcom/vk/dto/music/Playlist;)V

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adding to cache with thumbs "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/vtosters/lite/downloaders/AudioDownloader$1;->val$playlist:Lcom/vk/dto/music/Playlist;

    invoke-virtual {v1}, Lcom/vk/dto/music/Playlist;->v1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Playlist"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
