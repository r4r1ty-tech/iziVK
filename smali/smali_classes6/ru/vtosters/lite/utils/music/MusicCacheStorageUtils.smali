.class public Lru/vtosters/lite/utils/music/MusicCacheStorageUtils;
.super Ljava/lang/Object;
.source "MusicCacheStorageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    .line 48
    invoke-static {}, Lru/vtosters/lite/utils/music/MusicCacheStorageUtils;->getCacheStorageDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/lite/utils/IOUtils;->deleteRecursive(Ljava/io/File;)V

    return-void
.end method

.method public static getCacheStorageDir()Ljava/io/File;
    .locals 2

    .line 10
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vt_tracks"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPlaylistThumb(Ljava/lang/String;I)Ljava/io/File;
    .locals 3

    .line 36
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lru/vtosters/lite/utils/music/MusicCacheStorageUtils;->getThumbDirById(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "thumb_playlist_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".png"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getThumbDirById(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 26
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lru/vtosters/lite/utils/music/MusicCacheStorageUtils;->getTrackDirById(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v1, "thumbs"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method

.method public static getTrackDirById(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 15
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lru/vtosters/lite/utils/music/MusicCacheStorageUtils;->getCacheStorageDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method

.method public static getTrackFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 21
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lru/vtosters/lite/utils/music/MusicCacheStorageUtils;->getTrackDirById(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v1, "track.mp3"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getTrackThumb(Ljava/lang/String;I)Ljava/io/File;
    .locals 3

    .line 32
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lru/vtosters/lite/utils/music/MusicCacheStorageUtils;->getThumbDirById(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "thumb_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".png"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static removePlaylistThumb(Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-static {p0}, Lru/vtosters/lite/utils/music/MusicCacheStorageUtils;->getThumbDirById(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/lite/utils/IOUtils;->deleteRecursive(Ljava/io/File;)V

    return-void
.end method

.method public static removeTrackDirById(Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-static {p0}, Lru/vtosters/lite/utils/music/MusicCacheStorageUtils;->getTrackDirById(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/lite/utils/IOUtils;->deleteRecursive(Ljava/io/File;)V

    return-void
.end method
