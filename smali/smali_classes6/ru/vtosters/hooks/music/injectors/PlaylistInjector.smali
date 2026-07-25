.class public Lru/vtosters/hooks/music/injectors/PlaylistInjector;
.super Ljava/lang/Object;
.source "PlaylistInjector.java"


# static fields
.field public static final CHANNEL_NAME:Ljava/lang/String; = "VTCH"

.field private static final executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lru/vtosters/hooks/music/injectors/PlaylistInjector;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static eligibleForOfflineCaching()Z
    .locals 1

    .line 35
    invoke-static {}, Lru/vtosters/lite/music/cache/MusicCacheImpl;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static injectDownloadPlaylist(Lcom/vk/dto/music/Playlist;)V
    .locals 0

    .line 31
    invoke-static {p0}, Lru/vtosters/lite/downloaders/AudioDownloader;->cachePlaylist(Lcom/vk/dto/music/Playlist;)V

    return-void
.end method

.method public static injectGetPlaylist(Lcom/vk/api/audio/AudioGetPlaylist;)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/api/audio/AudioGetPlaylist;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/vk/api/audio/AudioGetPlaylist$c;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 40
    :try_start_0
    invoke-static {}, Lru/vtosters/lite/music/cache/MusicCacheImpl;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/vk/api/audio/AudioGetPlaylist;->b()Ljava/util/LinkedHashMap;

    move-result-object p0

    const-string v1, "id"

    .line 46
    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "owner_id"

    .line 47
    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "access_key"

    .line 48
    invoke-virtual {p0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_1

    const-string v5, "cache"

    .line 49
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz p0, :cond_2

    const-string v6, "cacheAlbum"

    .line 50
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    .line 51
    :goto_1
    invoke-static {}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "-1"

    invoke-static {v1, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 53
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    if-nez v5, :cond_4

    if-nez p0, :cond_4

    goto :goto_3

    .line 57
    :cond_4
    new-instance v4, Lru/vtosters/hooks/music/injectors/PlaylistInjector$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1, v2, v3}, Lru/vtosters/hooks/music/injectors/PlaylistInjector$$ExternalSyntheticLambda0;-><init>(ZLjava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v4}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_5
    :goto_3
    return-object v0

    :catch_0
    move-exception p0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    return-object v0
.end method

.method static synthetic lambda$injectGetPlaylist$0(ZLcom/vk/api/audio/AudioGetPlaylist$c;Ljava/lang/String;Ljava/lang/String;Lio/reactivex/ObservableEmitter;Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)V
    .locals 3

    .line 64
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 67
    new-instance p0, Lcom/vk/dto/music/Playlist;

    new-instance v1, Lorg/json/JSONObject;

    invoke-interface {p5, p2, p3}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService;->getPlaylistDefJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/vk/dto/music/Playlist;-><init>(Lorg/json/JSONObject;)V

    iput-object p0, p1, Lcom/vk/api/audio/AudioGetPlaylist$c;->b:Lcom/vk/dto/music/Playlist;

    .line 68
    invoke-interface {p5, p2, p3}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService;->getTracksInPlaylist(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {}, Lru/vtosters/lite/music/cache/helpers/PlaylistHelper;->createCachedPlaylistMetadata()Lcom/vk/dto/music/Playlist;

    move-result-object p0

    iput-object p0, p1, Lcom/vk/api/audio/AudioGetPlaylist$c;->b:Lcom/vk/dto/music/Playlist;

    .line 71
    invoke-interface {p5}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService;->getCache()Ljava/util/List;

    move-result-object p0

    .line 74
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 75
    new-instance p3, Lcom/vk/dto/music/MusicTrack;

    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p3, p5}, Lcom/vk/dto/music/MusicTrack;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 78
    :cond_1
    iput-object v0, p1, Lcom/vk/api/audio/AudioGetPlaylist$c;->c:Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 80
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    .line 81
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, p1, Lcom/vk/api/audio/AudioGetPlaylist$c;->c:Ljava/util/ArrayList;

    .line 83
    :goto_3
    invoke-interface {p4, p1}, Lio/reactivex/ObservableEmitter;->b(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$injectGetPlaylist$1(ZLjava/lang/String;Ljava/lang/String;ZLio/reactivex/ObservableEmitter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    new-instance v2, Lcom/vk/api/audio/AudioGetPlaylist$c;

    invoke-direct {v2}, Lcom/vk/api/audio/AudioGetPlaylist$c;-><init>()V

    .line 60
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->isIntegrationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->getInstance()Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;

    move-result-object p3

    new-instance v6, Lru/vtosters/hooks/music/injectors/PlaylistInjector$$ExternalSyntheticLambda1;

    move-object v0, v6

    move v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lru/vtosters/hooks/music/injectors/PlaylistInjector$$ExternalSyntheticLambda1;-><init>(ZLcom/vk/api/audio/AudioGetPlaylist$c;Ljava/lang/String;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    invoke-virtual {p3, v6}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->runOnService(Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXAction;)Z

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 90
    invoke-static {}, Lru/vtosters/lite/music/cache/helpers/TracklistHelper;->getMyCachedMusicTracks()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    iput-object p0, v2, Lcom/vk/api/audio/AudioGetPlaylist$c;->c:Ljava/util/ArrayList;

    .line 91
    invoke-static {}, Lru/vtosters/lite/music/cache/helpers/PlaylistHelper;->createCachedPlaylistMetadata()Lcom/vk/dto/music/Playlist;

    move-result-object p0

    iput-object p0, v2, Lcom/vk/api/audio/AudioGetPlaylist$c;->b:Lcom/vk/dto/music/Playlist;

    goto :goto_0

    .line 93
    :cond_1
    invoke-static {p2, p1}, Lru/vtosters/lite/music/cache/MusicCacheImpl;->getPlaylistSongs(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    iput-object p0, v2, Lcom/vk/api/audio/AudioGetPlaylist$c;->c:Ljava/util/ArrayList;

    .line 94
    invoke-static {p1, p2}, Lru/vtosters/lite/music/cache/MusicCacheImpl;->getPlaylist(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/dto/music/Playlist;

    move-result-object p0

    iput-object p0, v2, Lcom/vk/api/audio/AudioGetPlaylist$c;->b:Lcom/vk/dto/music/Playlist;

    .line 97
    :goto_0
    invoke-interface {p4, v2}, Lio/reactivex/ObservableEmitter;->b(Ljava/lang/Object;)V

    return-void
.end method
