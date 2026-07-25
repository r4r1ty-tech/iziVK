.class public Lru/vtosters/hooks/music/injectors/ShuffleInjector;
.super Ljava/lang/Object;
.source "ShuffleInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getShuffledList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vk/dto/music/MusicTrack;",
            ">;"
        }
    .end annotation

    .line 21
    invoke-static {}, Lru/vtosters/lite/music/cache/helpers/TracklistHelper;->getMyCachedMusicTracks()Ljava/util/List;

    move-result-object v0

    .line 22
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    return-object v0
.end method

.method public static shuffleTracks(Lcom/vk/music/model/IpcPlayerModelImpl;)V
    .locals 1

    .line 13
    invoke-static {}, Lru/vtosters/hooks/music/injectors/ShuffleInjector;->getShuffledList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vk/music/model/IpcPlayerModelImpl;->a(Ljava/util/List;)V

    return-void
.end method

.method public static shuffleTracks(Lcom/vk/music/model/PlayerModelImpl;)V
    .locals 1

    .line 17
    invoke-static {}, Lru/vtosters/hooks/music/injectors/ShuffleInjector;->getShuffledList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vk/music/model/PlayerModelImpl;->a(Ljava/util/List;)V

    return-void
.end method
