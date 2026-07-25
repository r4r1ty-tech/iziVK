.class public Lru/vtosters/lite/music/cache/delegate/MusicCacheDbDelegate;
.super Ljava/lang/Object;
.source "MusicCacheDbDelegate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 12

    .line 26
    invoke-static {p0}, Lru/vtosters/lite/music/cache/delegate/MusicCacheDbDelegate;->connectToDb(Landroid/content/Context;)Lru/vtosters/lite/music/cache/db/MusicCacheDb;

    move-result-object v11

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    .line 27
    :try_start_0
    invoke-virtual/range {v1 .. v10}, Lru/vtosters/lite/music/cache/db/MusicCacheDb;->addTrack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_0

    .line 37
    invoke-virtual {v11}, Lru/vtosters/lite/music/cache/db/MusicCacheDb;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v11, :cond_1

    .line 26
    :try_start_1
    invoke-virtual {v11}, Lru/vtosters/lite/music/cache/db/MusicCacheDb;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method private static connectToDb(Landroid/content/Context;)Lru/vtosters/lite/music/cache/db/MusicCacheDb;
    .locals 1

    .line 13
    new-instance v0, Lru/vtosters/lite/music/cache/db/MusicCacheDb;

    invoke-direct {v0, p0}, Lru/vtosters/lite/music/cache/db/MusicCacheDb;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static drop(Landroid/content/Context;)V
    .locals 1

    const-string v0, "vt_lite_cache.db"

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    return-void
.end method

.method public static getTrackById(Landroid/content/Context;Ljava/lang/String;)Lcom/vk/dto/music/MusicTrack;
    .locals 0

    .line 47
    invoke-static {p0}, Lru/vtosters/lite/music/cache/delegate/MusicCacheDbDelegate;->connectToDb(Landroid/content/Context;)Lru/vtosters/lite/music/cache/db/MusicCacheDb;

    move-result-object p0

    .line 48
    :try_start_0
    invoke-virtual {p0, p1}, Lru/vtosters/lite/music/cache/db/MusicCacheDb;->getTrackById(Ljava/lang/String;)Lcom/vk/dto/music/MusicTrack;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 49
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/MusicCacheDb;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 47
    :try_start_1
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/MusicCacheDb;->close()V
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

.method public static getTracksCount(Landroid/content/Context;)J
    .locals 2

    .line 53
    invoke-static {p0}, Lru/vtosters/lite/music/cache/delegate/MusicCacheDbDelegate;->connectToDb(Landroid/content/Context;)Lru/vtosters/lite/music/cache/db/MusicCacheDb;

    move-result-object p0

    .line 54
    :try_start_0
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/MusicCacheDb;->getTracksCount()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 55
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/MusicCacheDb;->close()V

    :cond_0
    return-wide v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_1

    .line 53
    :try_start_1
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/MusicCacheDb;->close()V
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

.method public static isCachedTrack(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 65
    invoke-static {p0}, Lru/vtosters/lite/music/cache/delegate/MusicCacheDbDelegate;->connectToDb(Landroid/content/Context;)Lru/vtosters/lite/music/cache/db/MusicCacheDb;

    move-result-object p0

    .line 66
    :try_start_0
    invoke-virtual {p0, p1}, Lru/vtosters/lite/music/cache/db/MusicCacheDb;->isCachedTrack(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 67
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/MusicCacheDb;->close()V

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 65
    :try_start_1
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/MusicCacheDb;->close()V
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

.method public static isEmpty(Landroid/content/Context;)Z
    .locals 1

    .line 59
    invoke-static {p0}, Lru/vtosters/lite/music/cache/delegate/MusicCacheDbDelegate;->connectToDb(Landroid/content/Context;)Lru/vtosters/lite/music/cache/db/MusicCacheDb;

    move-result-object p0

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/MusicCacheDb;->isDatabaseEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 61
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/MusicCacheDb;->close()V

    :cond_0
    return v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_1

    .line 59
    :try_start_1
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/MusicCacheDb;->close()V
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

.method public static removeTrack(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-static {p0}, Lru/vtosters/lite/music/cache/delegate/MusicCacheDbDelegate;->connectToDb(Landroid/content/Context;)Lru/vtosters/lite/music/cache/db/MusicCacheDb;

    move-result-object p0

    .line 42
    :try_start_0
    invoke-virtual {p0, p1}, Lru/vtosters/lite/music/cache/db/MusicCacheDb;->deleteTrack(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 43
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/MusicCacheDb;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 41
    :try_start_1
    invoke-virtual {p0}, Lru/vtosters/lite/music/cache/db/MusicCacheDb;->close()V
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
