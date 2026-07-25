.class public Lru/vtosters/lite/music/downloader/ThumbnailPlaylistDownloader;
.super Ljava/lang/Object;
.source "ThumbnailPlaylistDownloader.java"

# interfaces
.implements Lru/vtosters/lite/music/interfaces/ITrackDownloader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static downloadThumbnailPlaylist(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-static {p2, p1}, Lru/vtosters/lite/utils/music/MusicCacheStorageUtils;->getPlaylistThumb(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/lite/utils/IOUtils;->readFully(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p1, p0}, Lru/vtosters/lite/utils/IOUtils;->writeToFile(Ljava/io/File;[B)V

    return-void
.end method


# virtual methods
.method public download(Lcom/vk/dto/music/MusicTrack;Lru/vtosters/lite/music/interfaces/Callback;Lcom/vk/dto/music/Playlist;)V
    .locals 7

    .line 23
    invoke-static {p3}, Lru/vtosters/lite/utils/music/PlaylistUtils;->getThumb(Lcom/vk/dto/music/Playlist;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    .line 26
    new-instance p1, Ljava/io/IOException;

    const-string p3, "No thumbnail found"

    invoke-direct {p1, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lru/vtosters/lite/music/interfaces/Callback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    :try_start_0
    const-string v0, "600"

    const-string v1, "1200"

    const-string v2, "68"

    const-string v3, "135"

    const-string v4, "300"

    const-string v5, "270"

    .line 31
    invoke-static/range {v0 .. v5}, Lru/vtosters/hooks/NewsfeedHook$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "sizes"

    .line 32
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 33
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 34
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 35
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "width"

    .line 36
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_3

    const-string v4, "src"

    .line 37
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const-string v4, "Playlist"

    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downloading thumb "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p3}, Lcom/vk/dto/music/Playlist;->v1()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lru/vtosters/lite/music/downloader/ThumbnailPlaylistDownloader;->downloadThumbnailPlaylist(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    :cond_4
    invoke-interface {p2}, Lru/vtosters/lite/music/interfaces/Callback;->onSuccess()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 49
    :goto_2
    invoke-interface {p2, p1}, Lru/vtosters/lite/music/interfaces/Callback;->onFailure(Ljava/lang/Throwable;)V

    .line 50
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
