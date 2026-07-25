.class public final Lru/vtosters/lite/music/downloader/ThumbnailTrackDownloader;
.super Ljava/lang/Object;
.source "ThumbnailTrackDownloader.java"

# interfaces
.implements Lru/vtosters/lite/music/interfaces/ITrackDownloader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static downloadThumbnail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-static {p2, p1}, Lru/vtosters/lite/utils/music/MusicCacheStorageUtils;->getTrackThumb(Ljava/lang/String;I)Ljava/io/File;

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
    .locals 5

    .line 22
    invoke-virtual {p1}, Lcom/vk/dto/music/MusicTrack;->J()Lorg/json/JSONObject;

    move-result-object p3

    const-string v0, "album"

    .line 23
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string v0, "thumb"

    .line 25
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    if-nez p3, :cond_1

    return-void

    :cond_1
    const-string v0, "sizes"

    .line 27
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 28
    invoke-static {p1}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->asId(Lcom/vk/dto/music/MusicTrack;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 31
    :try_start_0
    invoke-virtual {p3}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 33
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 34
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v3, v2, p1}, Lru/vtosters/lite/music/downloader/ThumbnailTrackDownloader;->downloadThumbnail(Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    .line 38
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-ge v1, p3, :cond_4

    .line 39
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p3

    const-string v2, "width"

    .line 40
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "src"

    .line 41
    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 42
    invoke-static {p3, v2, p1}, Lru/vtosters/lite/music/downloader/ThumbnailTrackDownloader;->downloadThumbnail(Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 45
    :cond_4
    invoke-interface {p2}, Lru/vtosters/lite/music/interfaces/Callback;->onSuccess()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 47
    :goto_2
    invoke-interface {p2, p1}, Lru/vtosters/lite/music/interfaces/Callback;->onFailure(Ljava/lang/Throwable;)V

    .line 48
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
