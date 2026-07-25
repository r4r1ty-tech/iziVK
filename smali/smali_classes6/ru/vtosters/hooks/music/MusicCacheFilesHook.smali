.class public Lru/vtosters/hooks/music/MusicCacheFilesHook;
.super Ljava/lang/Object;
.source "MusicCacheFilesHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTrackFile(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 10
    invoke-static {p0}, Lru/vtosters/lite/utils/music/MusicCacheStorageUtils;->getTrackFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static isTrackExist(Ljava/lang/String;)Z
    .locals 0

    .line 14
    invoke-static {p0}, Lru/vtosters/lite/music/cache/MusicCacheImpl;->isCachedTrack(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
