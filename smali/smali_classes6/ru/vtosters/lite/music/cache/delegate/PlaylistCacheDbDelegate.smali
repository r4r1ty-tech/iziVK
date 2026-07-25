.class public Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;
.super Ljava/lang/Object;
.source "PlaylistCacheDbDelegate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addPhotoSizeToJSON(Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 55
    invoke-static {p1, p2}, Lru/vtosters/lite/utils/music/MusicCacheStorageUtils;->getPlaylistThumb(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "thumb link "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lru/vtosters/lite/utils/music/MusicCacheStorageUtils;->getPlaylistThumb(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Playlist"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static addPlaylist(Landroid/content/Context;Lcom/vk/dto/music/Playlist;)V
    .locals 7

    .line 24
    invoke-static {p0}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->connectToDb(Landroid/content/Context;)Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;

    move-result-object p0

    .line 25
    :try_start_0
    iget v1, p1, Lcom/vk/dto/music/Playlist;->a:I

    iget v2, p1, Lcom/vk/dto/music/Playlist;->b:I

    iget-boolean v3, p1, Lcom/vk/dto/music/Playlist;->C:Z

    iget-object v4, p1, Lcom/vk/dto/music/Playlist;->g:Ljava/lang/String;

    iget-object v5, p1, Lcom/vk/dto/music/Playlist;->B:Ljava/lang/String;

    invoke-static {p1}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->generatePhotoJSON(Lcom/vk/dto/music/Playlist;)Lorg/json/JSONObject;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->addPlaylist(IIZLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 26
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 24
    :try_start_1
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method

.method public static addTrackToPlaylist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 123
    invoke-static {p0}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->connectToDb(Landroid/content/Context;)Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;

    move-result-object p0

    .line 124
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->addTrackToPlaylist(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 125
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 123
    :try_start_1
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method

.method private static declared-synchronized connectToDb(Landroid/content/Context;)Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;
    .locals 3

    const-class v0, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;

    monitor-enter v0

    .line 18
    :try_start_0
    const-class v1, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    :try_start_1
    new-instance v2, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;

    invoke-direct {v2, p0}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;-><init>(Landroid/content/Context;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 20
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static deletePlaylist(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-static {p0}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->connectToDb(Landroid/content/Context;)Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;

    move-result-object p0

    .line 61
    :try_start_0
    invoke-virtual {p0, p1}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->deletePlaylistWithTracks(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 62
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 60
    :try_start_1
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method

.method public static drop(Landroid/content/Context;)V
    .locals 1

    const-string v0, "vt_lite_cache_playlists.db"

    .line 147
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    return-void
.end method

.method public static generatePhotoJSON(Lcom/vk/dto/music/Playlist;)Lorg/json/JSONObject;
    .locals 4

    .line 30
    invoke-static {p0}, Lru/vtosters/lite/utils/music/PlaylistUtils;->getThumb(Lcom/vk/dto/music/Playlist;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 32
    invoke-virtual {p0}, Lcom/vk/dto/music/Playlist;->v1()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    const-string v1, "height"

    const/16 v2, 0x12c

    .line 34
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "width"

    .line 35
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "photo_600"

    const/16 v3, 0x258

    .line 37
    invoke-static {v0, p0, v3, v1}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->addPhotoSizeToJSON(Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "photo_34"

    const/16 v3, 0x22

    .line 38
    invoke-static {v0, p0, v3, v1}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->addPhotoSizeToJSON(Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "photo_1200"

    const/16 v3, 0x4b0

    .line 39
    invoke-static {v0, p0, v3, v1}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->addPhotoSizeToJSON(Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "photo_68"

    const/16 v3, 0x44

    .line 40
    invoke-static {v0, p0, v3, v1}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->addPhotoSizeToJSON(Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "photo_135"

    const/16 v3, 0x87

    .line 41
    invoke-static {v0, p0, v3, v1}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->addPhotoSizeToJSON(Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "photo_300"

    .line 42
    invoke-static {v0, p0, v2, v1}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->addPhotoSizeToJSON(Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "photo_270"

    const/16 v2, 0x10e

    .line 43
    invoke-static {v0, p0, v2, v1}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->addPhotoSizeToJSON(Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAllPlaylistIds(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-static {p0}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->connectToDb(Landroid/content/Context;)Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;

    move-result-object p0

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->getAllPlaylistIds()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 87
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_1

    .line 85
    :try_start_1
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method public static getAllPlaylists(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/vk/dto/music/Playlist;",
            ">;"
        }
    .end annotation

    .line 107
    invoke-static {p0}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->connectToDb(Landroid/content/Context;)Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;

    move-result-object p0

    .line 108
    :try_start_0
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->getAllPlaylists()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 109
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_1

    .line 107
    :try_start_1
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method public static getPlaylistById(Landroid/content/Context;Ljava/lang/String;)Lcom/vk/dto/music/Playlist;
    .locals 2

    .line 113
    invoke-static {p0}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->connectToDb(Landroid/content/Context;)Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;

    move-result-object p0

    :try_start_0
    const-string v0, "_"

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 115
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 116
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 118
    invoke-virtual {p0, v0, p1}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->getPlaylistById(II)Lcom/vk/dto/music/Playlist;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 119
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 113
    :try_start_1
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method

.method public static getPlaylistsCount(Landroid/content/Context;)J
    .locals 2

    .line 101
    invoke-static {p0}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->connectToDb(Landroid/content/Context;)Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;

    move-result-object p0

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->getPlaylistsCount()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 103
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->close()V

    :cond_0
    return-wide v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_1

    .line 101
    :try_start_1
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method public static getTracksCountInPlaylist(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2

    .line 66
    invoke-static {p0}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->connectToDb(Landroid/content/Context;)Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;

    move-result-object p0

    .line 67
    :try_start_0
    invoke-virtual {p0, p1}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->getTracksCountInPlaylist(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 68
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->close()V

    :cond_0
    return-wide v0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 66
    :try_start_1
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method

.method public static getTracksInPlaylist(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/vk/dto/music/MusicTrack;",
            ">;"
        }
    .end annotation

    .line 135
    invoke-static {p0}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->connectToDb(Landroid/content/Context;)Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;

    move-result-object p0

    .line 136
    :try_start_0
    invoke-virtual {p0, p1}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->getTracksInPlaylist(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 137
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 135
    :try_start_1
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method

.method public static isCachedPlaylist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 91
    invoke-static {p0}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->connectToDb(Landroid/content/Context;)Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;

    move-result-object p0

    :try_start_0
    const-string v0, "_"

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 93
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 94
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 96
    invoke-virtual {p0, v0, p1}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->isCachedPlaylist(II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 97
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->close()V

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 91
    :try_start_1
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method

.method public static isPlaylistEmpty(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 141
    invoke-static {p0}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->connectToDb(Landroid/content/Context;)Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;

    move-result-object p0

    .line 142
    :try_start_0
    invoke-virtual {p0, p1}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->isPlaylistEmpty(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 143
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->close()V

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 141
    :try_start_1
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method

.method public static isPlaylistsDbEmpty(Landroid/content/Context;)Z
    .locals 1

    .line 72
    invoke-static {p0}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->connectToDb(Landroid/content/Context;)Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;

    move-result-object p0

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->isPlaylistsDbEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 74
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->close()V

    :cond_0
    return v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_1

    .line 72
    :try_start_1
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method public static removeAllPlaylists(Landroid/content/Context;)V
    .locals 2

    .line 78
    invoke-static {p0}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->getAllPlaylistIds(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 80
    invoke-static {p0, v1}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->deletePlaylist(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static removeTrackFromPlaylist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 129
    invoke-static {p0}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->connectToDb(Landroid/content/Context;)Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;

    move-result-object p0

    .line 130
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->removeTrackFromPlaylist(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 131
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 129
    :try_start_1
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method
