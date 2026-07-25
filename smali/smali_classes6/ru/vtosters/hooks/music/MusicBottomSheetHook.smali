.class public Lru/vtosters/hooks/music/MusicBottomSheetHook;
.super Ljava/lang/Object;
.source "MusicBottomSheetHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addToCacheTrackAction()Lcom/vk/music/bottomsheets/a/MusicAction;
    .locals 8

    .line 239
    new-instance v7, Lcom/vk/music/bottomsheets/a/MusicAction;

    const v1, 0x7f0a1008

    .line 241
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f08032f

    const v2, 0x7f08032f

    goto :goto_0

    :cond_0
    const v0, 0x7f080329

    const v2, 0x7f080329

    :goto_0
    const v3, 0x7f121510

    const v4, 0x7f060077

    const v5, 0x7f120880

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/vk/music/bottomsheets/a/MusicAction;-><init>(IIIIIZ)V

    return-object v7
.end method

.method private static addToCacheTrackVkxAction()Lcom/vk/music/bottomsheets/a/MusicAction;
    .locals 8

    .line 261
    new-instance v7, Lcom/vk/music/bottomsheets/a/MusicAction;

    const v1, 0x7f0a1009

    .line 263
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f08032f

    const v2, 0x7f08032f

    goto :goto_0

    :cond_0
    const v0, 0x7f080329

    const v2, 0x7f080329

    :goto_0
    const v3, 0x7f121511

    const v4, 0x7f060077

    const v5, 0x7f120880

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/vk/music/bottomsheets/a/MusicAction;-><init>(IIIIIZ)V

    return-object v7
.end method

.method private static downloadAsMp3Action()Lcom/vk/music/bottomsheets/a/MusicAction;
    .locals 8

    .line 272
    new-instance v7, Lcom/vk/music/bottomsheets/a/MusicAction;

    const v1, 0x7f0a1012

    .line 274
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f08043c

    const v2, 0x7f08043c

    goto :goto_0

    :cond_0
    const v0, 0x7f08043a

    const v2, 0x7f08043a

    :goto_0
    const v3, 0x7f121614

    const v4, 0x7f060077

    const v5, 0x7f120880

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/vk/music/bottomsheets/a/MusicAction;-><init>(IIIIIZ)V

    return-object v7
.end method

.method private static getPlayInVKXAction()Lcom/vk/music/bottomsheets/a/MusicAction;
    .locals 8

    .line 217
    new-instance v7, Lcom/vk/music/bottomsheets/a/MusicAction;

    const v1, 0x7f0a101a

    .line 219
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0805f4

    const v2, 0x7f0805f4

    goto :goto_0

    :cond_0
    const v0, 0x7f0805ed

    const v2, 0x7f0805ed

    :goto_0
    const v3, 0x7f1216ec

    const v4, 0x7f060077

    const v5, 0x7f120880

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/vk/music/bottomsheets/a/MusicAction;-><init>(IIIIIZ)V

    return-object v7
.end method

.method private static getRemoveCacheTrackAction()Lcom/vk/music/bottomsheets/a/MusicAction;
    .locals 8

    .line 228
    new-instance v7, Lcom/vk/music/bottomsheets/a/MusicAction;

    const v1, 0x7f0a101c

    .line 230
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080412

    const v2, 0x7f080412

    goto :goto_0

    :cond_0
    const v0, 0x7f08040e

    const v2, 0x7f08040e

    :goto_0
    const v3, 0x7f121713

    const v4, 0x7f060077

    const v5, 0x7f120880

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/vk/music/bottomsheets/a/MusicAction;-><init>(IIIIIZ)V

    return-object v7
.end method

.method private static getRemoveCacheTrackVkxAction()Lcom/vk/music/bottomsheets/a/MusicAction;
    .locals 8

    .line 250
    new-instance v7, Lcom/vk/music/bottomsheets/a/MusicAction;

    const v1, 0x7f0a101d

    .line 252
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080412

    const v2, 0x7f080412

    goto :goto_0

    :cond_0
    const v0, 0x7f08040e

    const v2, 0x7f08040e

    :goto_0
    const v3, 0x7f121714

    const v4, 0x7f060077

    const v5, 0x7f120880

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/vk/music/bottomsheets/a/MusicAction;-><init>(IIIIIZ)V

    return-object v7
.end method

.method public static hook(Ljava/util/ArrayList;Lcom/vk/dto/music/MusicTrack;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/vk/music/bottomsheets/a/MusicAction;",
            ">;",
            "Lcom/vk/dto/music/MusicTrack;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/vk/music/bottomsheets/a/MusicAction;",
            ">;"
        }
    .end annotation

    .line 24
    invoke-virtual {p1}, Lcom/vk/dto/music/MusicTrack;->F1()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 26
    :cond_0
    invoke-static {p1}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->asId(Lcom/vk/dto/music/MusicTrack;)Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->isVkxInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lru/vtosters/hooks/music/MusicBottomSheetHook;->getPlayInVKXAction()Lcom/vk/music/bottomsheets/a/MusicAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_1
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->isIntegrationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31
    invoke-static {p1}, Lru/vtosters/lite/utils/music/VKXUtils;->isVkxCached(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 32
    invoke-static {}, Lru/vtosters/hooks/music/MusicBottomSheetHook;->getRemoveCacheTrackVkxAction()Lcom/vk/music/bottomsheets/a/MusicAction;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    :cond_2
    invoke-static {}, Lru/vtosters/lite/utils/NetworkUtils;->isNetworkConnected()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 34
    invoke-static {}, Lru/vtosters/hooks/music/MusicBottomSheetHook;->addToCacheTrackVkxAction()Lcom/vk/music/bottomsheets/a/MusicAction;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    :cond_3
    invoke-static {p1}, Lru/vtosters/lite/music/cache/MusicCacheImpl;->isCachedTrack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 38
    invoke-static {}, Lru/vtosters/hooks/music/MusicBottomSheetHook;->getRemoveCacheTrackAction()Lcom/vk/music/bottomsheets/a/MusicAction;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    :cond_4
    invoke-static {}, Lru/vtosters/lite/utils/NetworkUtils;->isNetworkConnected()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 40
    invoke-static {}, Lru/vtosters/hooks/music/MusicBottomSheetHook;->addToCacheTrackAction()Lcom/vk/music/bottomsheets/a/MusicAction;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_5
    :goto_0
    invoke-static {}, Lru/vtosters/lite/utils/NetworkUtils;->isNetworkConnected()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lru/vtosters/hooks/music/MusicBottomSheetHook;->downloadAsMp3Action()Lcom/vk/music/bottomsheets/a/MusicAction;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object p0
.end method

.method public static hook(Ljava/util/ArrayList;Lcom/vk/dto/music/Playlist;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/vk/music/bottomsheets/a/MusicAction;",
            ">;",
            "Lcom/vk/dto/music/Playlist;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/vk/music/bottomsheets/a/MusicAction;",
            ">;"
        }
    .end annotation

    .line 77
    iget-boolean v0, p1, Lcom/vk/dto/music/Playlist;->D:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 79
    :cond_0
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->isVkxInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lru/vtosters/hooks/music/MusicBottomSheetHook;->getPlayInVKXAction()Lcom/vk/music/bottomsheets/a/MusicAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_1
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->isIntegrationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    iget v0, p1, Lcom/vk/dto/music/Playlist;->a:I

    iget p1, p1, Lcom/vk/dto/music/Playlist;->b:I

    invoke-static {v0, p1}, Lru/vtosters/lite/utils/music/VKXUtils;->isVkxCached(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 83
    invoke-static {}, Lru/vtosters/hooks/music/MusicBottomSheetHook;->getRemoveCacheTrackVkxAction()Lcom/vk/music/bottomsheets/a/MusicAction;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_2
    invoke-static {}, Lru/vtosters/lite/utils/NetworkUtils;->isNetworkConnected()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 85
    invoke-static {}, Lru/vtosters/hooks/music/MusicBottomSheetHook;->addToCacheTrackVkxAction()Lcom/vk/music/bottomsheets/a/MusicAction;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_3
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vk/dto/music/Playlist;->v1()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->isCachedPlaylist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 89
    invoke-static {}, Lru/vtosters/hooks/music/MusicBottomSheetHook;->getRemoveCacheTrackAction()Lcom/vk/music/bottomsheets/a/MusicAction;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    :cond_4
    invoke-static {}, Lru/vtosters/lite/utils/NetworkUtils;->isNetworkConnected()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 91
    invoke-static {}, Lru/vtosters/hooks/music/MusicBottomSheetHook;->addToCacheTrackAction()Lcom/vk/music/bottomsheets/a/MusicAction;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_5
    :goto_0
    invoke-static {}, Lru/vtosters/lite/utils/NetworkUtils;->isNetworkConnected()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lru/vtosters/hooks/music/MusicBottomSheetHook;->downloadAsMp3Action()Lcom/vk/music/bottomsheets/a/MusicAction;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object p0
.end method

.method public static hookDownloadBTN(Ljava/util/ArrayList;Lcom/vk/dto/music/MusicTrack;)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/vk/music/bottomsheets/a/MusicAction;",
            ">;",
            "Lcom/vk/dto/music/MusicTrack;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/vk/music/bottomsheets/a/MusicAction;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/vk/dto/music/MusicTrack;->F1()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 53
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/vk/dto/music/MusicTrack;->y1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lru/vtosters/lite/music/cache/MusicCacheImpl;->isCachedTrack(Ljava/lang/String;)Z

    move-result v1

    const v2, 0x7f060156

    const v3, 0x7f060077

    if-eqz v1, :cond_3

    .line 54
    new-instance v1, Lcom/vk/music/bottomsheets/a/MusicAction;

    const v5, 0x7f0a087c

    .line 56
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f080412

    const v6, 0x7f080412

    goto :goto_0

    :cond_1
    const v4, 0x7f08040e

    const v6, 0x7f08040e

    :goto_0
    const v7, 0x7f121713

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/vk/dto/music/MusicTrack;->F1()Z

    move-result v4

    if-eqz v4, :cond_2

    const v8, 0x7f060156

    goto :goto_1

    :cond_2
    const v8, 0x7f060077

    :goto_1
    const v9, 0x7f120880

    const/4 v10, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/vk/music/bottomsheets/a/MusicAction;-><init>(IIIIIZ)V

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 63
    :cond_3
    new-instance v1, Lcom/vk/music/bottomsheets/a/MusicAction;

    const v12, 0x7f0a087c

    .line 65
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f08043c

    const v13, 0x7f08043c

    goto :goto_2

    :cond_4
    const v4, 0x7f08043a

    const v13, 0x7f08043a

    :goto_2
    const v14, 0x7f121510

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/vk/dto/music/MusicTrack;->F1()Z

    move-result v4

    if-eqz v4, :cond_5

    const v15, 0x7f060156

    goto :goto_3

    :cond_5
    const v15, 0x7f060077

    :goto_3
    const v16, 0x7f120880

    const/16 v17, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, Lcom/vk/music/bottomsheets/a/MusicAction;-><init>(IIIIIZ)V

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    return-object v0
.end method

.method public static injectOnClick(ILcom/vk/dto/music/MusicTrack;Lcom/vk/music/common/MusicPlaybackLaunchContext;Lcom/vk/dto/music/Playlist;)Z
    .locals 1

    const v0, 0x7f0a101a

    if-ne p0, v0, :cond_0

    .line 102
    invoke-static {p1, p2, p3}, Lru/vtosters/hooks/music/MusicBottomSheetHook;->tryPlayInVKX(Lcom/vk/dto/music/MusicTrack;Lcom/vk/music/common/MusicPlaybackLaunchContext;Lcom/vk/dto/music/Playlist;)Z

    move-result p0

    return p0

    :cond_0
    const p2, 0x7f0a101d

    const/4 p3, 0x1

    if-ne p0, p2, :cond_1

    .line 105
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->getInstance()Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;

    move-result-object p0

    new-instance p2, Lru/vtosters/hooks/music/MusicBottomSheetHook$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lru/vtosters/hooks/music/MusicBottomSheetHook$$ExternalSyntheticLambda0;-><init>(Lcom/vk/dto/music/MusicTrack;)V

    invoke-virtual {p0, p2}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->runOnService(Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXAction;)Z

    return p3

    :cond_1
    const p2, 0x7f0a1009

    if-ne p0, p2, :cond_2

    .line 114
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->getInstance()Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;

    move-result-object p0

    new-instance p2, Lru/vtosters/hooks/music/MusicBottomSheetHook$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lru/vtosters/hooks/music/MusicBottomSheetHook$$ExternalSyntheticLambda1;-><init>(Lcom/vk/dto/music/MusicTrack;)V

    invoke-virtual {p0, p2}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->runOnService(Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXAction;)Z

    return p3

    :cond_2
    const p2, 0x7f0a101c

    if-ne p0, p2, :cond_3

    .line 125
    invoke-static {p1}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->asId(Lcom/vk/dto/music/MusicTrack;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/lite/music/cache/MusicCacheImpl;->removeTrack(Ljava/lang/String;)V

    const-string p0, "audio_deleted_from_cache"

    .line 126
    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    return p3

    :cond_3
    const p2, 0x7f0a1008

    if-ne p0, p2, :cond_4

    .line 129
    invoke-static {p1}, Lru/vtosters/lite/downloaders/AudioDownloader;->cacheTrack(Lcom/vk/dto/music/MusicTrack;)V

    return p3

    :cond_4
    const p2, 0x7f0a1012

    if-ne p0, p2, :cond_6

    .line 134
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->isIntegrationEnabled()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 135
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->getInstance()Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;

    move-result-object p0

    new-instance p2, Lru/vtosters/hooks/music/MusicBottomSheetHook$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1}, Lru/vtosters/hooks/music/MusicBottomSheetHook$$ExternalSyntheticLambda2;-><init>(Lcom/vk/dto/music/MusicTrack;)V

    invoke-virtual {p0, p2}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->runOnService(Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXAction;)Z

    goto :goto_0

    .line 143
    :cond_5
    invoke-static {p1}, Lru/vtosters/lite/downloaders/AudioDownloader;->downloadAudio(Lcom/vk/dto/music/MusicTrack;)V

    :goto_0
    return p3

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static injectOnClick(ILcom/vk/dto/music/Playlist;)Z
    .locals 2

    const v0, 0x7f0a101a

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    .line 154
    invoke-static {p0, p0, p1}, Lru/vtosters/hooks/music/MusicBottomSheetHook;->tryPlayInVKX(Lcom/vk/dto/music/MusicTrack;Lcom/vk/music/common/MusicPlaybackLaunchContext;Lcom/vk/dto/music/Playlist;)Z

    move-result p0

    return p0

    :cond_0
    const v0, 0x7f0a101c

    const/4 v1, 0x1

    if-ne p0, v0, :cond_1

    .line 158
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcom/vk/dto/music/Playlist;->v1()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->deletePlaylist(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    :cond_1
    const v0, 0x7f0a1008

    if-ne p0, v0, :cond_2

    .line 161
    invoke-static {p1}, Lru/vtosters/lite/downloaders/AudioDownloader;->cachePlaylist(Lcom/vk/dto/music/Playlist;)V

    return v1

    :cond_2
    const v0, 0x7f0a101d

    if-ne p0, v0, :cond_3

    .line 166
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->getInstance()Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;

    move-result-object p0

    new-instance v0, Lru/vtosters/hooks/music/MusicBottomSheetHook$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lru/vtosters/hooks/music/MusicBottomSheetHook$$ExternalSyntheticLambda3;-><init>(Lcom/vk/dto/music/Playlist;)V

    invoke-virtual {p0, v0}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->runOnService(Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXAction;)Z

    return v1

    :cond_3
    const v0, 0x7f0a1009

    if-ne p0, v0, :cond_4

    .line 175
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->getInstance()Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;

    move-result-object p0

    new-instance v0, Lru/vtosters/hooks/music/MusicBottomSheetHook$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lru/vtosters/hooks/music/MusicBottomSheetHook$$ExternalSyntheticLambda4;-><init>(Lcom/vk/dto/music/Playlist;)V

    invoke-virtual {p0, v0}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->runOnService(Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXAction;)Z

    return v1

    :cond_4
    const v0, 0x7f0a1012

    if-ne p0, v0, :cond_6

    .line 186
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->isIntegrationEnabled()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 187
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->getInstance()Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;

    move-result-object p0

    new-instance v0, Lru/vtosters/hooks/music/MusicBottomSheetHook$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lru/vtosters/hooks/music/MusicBottomSheetHook$$ExternalSyntheticLambda5;-><init>(Lcom/vk/dto/music/Playlist;)V

    invoke-virtual {p0, v0}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->runOnService(Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXAction;)Z

    goto :goto_0

    .line 195
    :cond_5
    invoke-static {p1}, Lru/vtosters/lite/downloaders/AudioDownloader;->downloadPlaylist(Lcom/vk/dto/music/Playlist;)V

    :goto_0
    return v1

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$injectOnClick$0(Lcom/vk/dto/music/MusicTrack;Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)V
    .locals 1

    .line 107
    :try_start_0
    iget v0, p0, Lcom/vk/dto/music/MusicTrack;->d:I

    iget p0, p0, Lcom/vk/dto/music/MusicTrack;->e:I

    invoke-interface {p1, v0, p0}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService;->deleteTrackFromCache(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 109
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic lambda$injectOnClick$1(Lcom/vk/dto/music/MusicTrack;Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)V
    .locals 3

    .line 116
    :try_start_0
    iget v0, p0, Lcom/vk/dto/music/MusicTrack;->d:I

    iget v1, p0, Lcom/vk/dto/music/MusicTrack;->e:I

    iget-object v2, p0, Lcom/vk/dto/music/MusicTrack;->J:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/vk/dto/music/MusicTrack;->J:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-interface {p1, v0, v1, p0}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService;->addTrackToCache(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 118
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic lambda$injectOnClick$2(Lcom/vk/dto/music/MusicTrack;Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)V
    .locals 3

    .line 137
    :try_start_0
    iget v0, p0, Lcom/vk/dto/music/MusicTrack;->d:I

    iget v1, p0, Lcom/vk/dto/music/MusicTrack;->e:I

    iget-object v2, p0, Lcom/vk/dto/music/MusicTrack;->J:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/vk/dto/music/MusicTrack;->J:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-interface {p1, v0, v1, p0}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService;->downloadTrack(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 139
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic lambda$injectOnClick$3(Lcom/vk/dto/music/Playlist;Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)V
    .locals 1

    .line 168
    :try_start_0
    iget v0, p0, Lcom/vk/dto/music/Playlist;->a:I

    iget p0, p0, Lcom/vk/dto/music/Playlist;->b:I

    invoke-interface {p1, v0, p0}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService;->deletePlaylistFromCache(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 170
    invoke-virtual {p0}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    :goto_0
    return-void
.end method

.method static synthetic lambda$injectOnClick$4(Lcom/vk/dto/music/Playlist;Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)V
    .locals 3

    .line 177
    :try_start_0
    iget v0, p0, Lcom/vk/dto/music/Playlist;->a:I

    iget v1, p0, Lcom/vk/dto/music/Playlist;->b:I

    iget-object v2, p0, Lcom/vk/dto/music/Playlist;->Q:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/vk/dto/music/Playlist;->Q:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-interface {p1, v0, v1, p0}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService;->addPlaylistToCache(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 179
    invoke-virtual {p0}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    :goto_1
    return-void
.end method

.method static synthetic lambda$injectOnClick$5(Lcom/vk/dto/music/Playlist;Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)V
    .locals 3

    .line 189
    :try_start_0
    iget v0, p0, Lcom/vk/dto/music/Playlist;->a:I

    iget v1, p0, Lcom/vk/dto/music/Playlist;->b:I

    iget-object v2, p0, Lcom/vk/dto/music/Playlist;->Q:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/vk/dto/music/Playlist;->Q:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-interface {p1, v0, v1, p0}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService;->downloadPlaylist(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 191
    invoke-virtual {p0}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    :goto_1
    return-void
.end method

.method static synthetic lambda$tryPlayInVKX$6(Ljava/util/ArrayList;Lcom/vk/dto/music/MusicTrack;Lcom/vk/music/common/MusicPlaybackLaunchContext;Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)V
    .locals 0

    .line 212
    invoke-static {p0, p1, p3, p2}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->lambdaplay(Ljava/util/List;Lcom/vk/dto/music/MusicTrack;Lbruhcollective/itaysonlab/libvkx/ILibVkxService;Lcom/vk/music/common/MusicPlaybackLaunchContext;)V

    return-void
.end method

.method public static tryPlayInVKX(Lcom/vk/dto/music/MusicTrack;Lcom/vk/music/common/MusicPlaybackLaunchContext;Lcom/vk/dto/music/Playlist;)Z
    .locals 1

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 207
    iget-object p2, p2, Lcom/vk/dto/music/Playlist;->R:Ljava/util/List;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :goto_0
    new-instance p2, Lru/vtosters/hooks/music/MusicBottomSheetHook$$ExternalSyntheticLambda6;

    invoke-direct {p2, v0, p0, p1}, Lru/vtosters/hooks/music/MusicBottomSheetHook$$ExternalSyntheticLambda6;-><init>(Ljava/util/ArrayList;Lcom/vk/dto/music/MusicTrack;Lcom/vk/music/common/MusicPlaybackLaunchContext;)V

    .line 213
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->getInstance()Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;

    move-result-object p0

    invoke-virtual {p0, p2}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->runOnService(Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXAction;)Z

    move-result p0

    return p0
.end method
