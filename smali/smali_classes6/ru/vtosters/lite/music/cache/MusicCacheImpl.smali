.class public Lru/vtosters/lite/music/cache/MusicCacheImpl;
.super Ljava/lang/Object;
.source "MusicCacheImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTrack(Lcom/vk/dto/music/MusicTrack;)V
    .locals 10

    .line 24
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lcom/vk/dto/music/MusicTrack;->y1()Ljava/lang/String;

    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/vk/dto/music/MusicTrack;->I:Lcom/vk/dto/music/AlbumLink;

    const-string v3, ""

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/vk/dto/music/MusicTrack;->I:Lcom/vk/dto/music/AlbumLink;

    invoke-virtual {v4}, Lcom/vk/dto/music/AlbumLink;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "-1"

    :goto_0
    iget-object v4, p0, Lcom/vk/dto/music/MusicTrack;->f:Ljava/lang/String;

    .line 28
    iget-object v5, p0, Lcom/vk/dto/music/MusicTrack;->g:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/vk/dto/music/MusicTrack;->g:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v5, v3

    .line 29
    :goto_1
    invoke-static {p0}, Lru/vtosters/lite/utils/music/MusicTrackUtils;->getArtists(Lcom/vk/dto/music/MusicTrack;)Ljava/lang/String;

    move-result-object v6

    .line 30
    iget-object v7, p0, Lcom/vk/dto/music/MusicTrack;->I:Lcom/vk/dto/music/AlbumLink;

    if-eqz v7, :cond_2

    iget-object v3, p0, Lcom/vk/dto/music/MusicTrack;->I:Lcom/vk/dto/music/AlbumLink;

    invoke-virtual {v3}, Lcom/vk/dto/music/AlbumLink;->getTitle()Ljava/lang/String;

    move-result-object v3

    :cond_2
    move-object v7, v3

    iget-boolean v8, p0, Lcom/vk/dto/music/MusicTrack;->K:Z

    iget v9, p0, Lcom/vk/dto/music/MusicTrack;->h:I

    iget-object v3, p0, Lcom/vk/dto/music/MusicTrack;->I:Lcom/vk/dto/music/AlbumLink;

    if-eqz v3, :cond_3

    iget-object p0, p0, Lcom/vk/dto/music/MusicTrack;->I:Lcom/vk/dto/music/AlbumLink;

    .line 33
    invoke-virtual {p0}, Lcom/vk/dto/music/AlbumLink;->u1()Lcom/vk/dto/music/Thumb;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move v8, v9

    move v9, p0

    .line 23
    invoke-static/range {v0 .. v9}, Lru/vtosters/lite/music/cache/delegate/MusicCacheDbDelegate;->addTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V

    return-void
.end method

.method public static clear()V
    .locals 1

    .line 96
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/lite/music/cache/delegate/MusicCacheDbDelegate;->drop(Landroid/content/Context;)V

    .line 97
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->drop(Landroid/content/Context;)V

    .line 98
    invoke-static {}, Lru/vtosters/lite/utils/music/MusicCacheStorageUtils;->clear()V

    return-void
.end method

.method public static getAllOwnTracks()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vk/dto/music/MusicTrack;",
            ">;"
        }
    .end annotation

    .line 42
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_-1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->getTracksInPlaylist(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getPlaylist(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/dto/music/Playlist;
    .locals 1

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/lite/music/cache/MusicCacheImpl;->getPlaylistById(Ljava/lang/String;)Lcom/vk/dto/music/Playlist;

    move-result-object p0

    return-object p0
.end method

.method public static getPlaylistById(Ljava/lang/String;)Lcom/vk/dto/music/Playlist;
    .locals 1

    .line 58
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->getPlaylistById(Landroid/content/Context;Ljava/lang/String;)Lcom/vk/dto/music/Playlist;

    move-result-object p0

    return-object p0
.end method

.method public static getPlaylistSongs(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/vk/dto/music/MusicTrack;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->getTracksInPlaylist(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getPlaylists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vk/dto/music/Playlist;",
            ">;"
        }
    .end annotation

    .line 54
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->getAllPlaylists(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getTracksCount()J
    .locals 3

    .line 66
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->isIntegrationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_-1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->getTracksCountInPlaylist(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->getInstance()Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/music/cache/MusicCacheImpl$1;

    invoke-direct {v1}, Lru/vtosters/lite/music/cache/MusicCacheImpl$1;-><init>()V

    invoke-virtual {v0, v1}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->runOnServiceSync(Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXActionGeneric;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static hasPlaylist()Z
    .locals 1

    .line 62
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->isPlaylistsDbEmpty(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isCachedTrack(Ljava/lang/String;)Z
    .locals 1

    .line 88
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lru/vtosters/lite/music/cache/delegate/MusicCacheDbDelegate;->isCachedTrack(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isEmpty()Z
    .locals 1

    .line 92
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->isIntegrationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/lite/music/cache/delegate/MusicCacheDbDelegate;->isEmpty(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static removeTrack(Ljava/lang/String;)V
    .locals 1

    .line 37
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lru/vtosters/lite/music/cache/delegate/MusicCacheDbDelegate;->removeTrack(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    invoke-static {p0}, Lru/vtosters/lite/utils/music/MusicCacheStorageUtils;->removeTrackDirById(Ljava/lang/String;)V

    return-void
.end method
