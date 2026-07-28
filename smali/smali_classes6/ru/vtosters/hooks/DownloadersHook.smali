.class public Lru/vtosters/hooks/DownloadersHook;
.super Ljava/lang/Object;
.source "DownloadersHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static injectActionVideo(Ljava/util/ArrayList;Lcom/vk/dto/common/VideoFile;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/vk/core/dialogs/bottomsheet/MenuBottomSheetAction;",
            ">;",
            "Lcom/vk/dto/common/VideoFile;",
            ")V"
        }
    .end annotation

    .line 27
    iget-boolean v0, p1, Lcom/vk/dto/common/VideoFile;->U:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/vk/dto/common/VideoFile;->I1()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x4

    new-array v0, p1, [I

    .line 28
    sget v1, Lru/vtosters/lite/downloaders/VideoDownloader;->DOWNLOAD_ID:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const v1, 0x7f08043b

    const/4 v3, 0x1

    aput v1, v0, v3

    const v1, 0x7f12032e

    const/4 v4, 0x2

    aput v1, v0, v4

    const/4 v1, 0x3

    const/16 v5, 0x9

    aput v5, v0, v1

    invoke-static {p0, v0}, Lru/vtosters/lite/downloaders/VideoDownloader;->addAction(Ljava/util/List;[I)V

    new-array p1, p1, [I

    .line 29
    sget v0, Lru/vtosters/lite/downloaders/VideoDownloader;->OPEN_EXTERNAL_LINK_ID:I

    aput v0, p1, v2

    const v0, 0x7f080523

    aput v0, p1, v3

    const v0, 0x7f121689

    aput v0, p1, v4

    aput v5, p1, v1

    invoke-static {p0, p1}, Lru/vtosters/lite/downloaders/VideoDownloader;->addAction(Ljava/util/List;[I)V

    :cond_0
    return-void
.end method

.method public static injectCacheAudio(Lcom/vk/dto/music/MusicTrack;)V
    .locals 0

    .line 38
    invoke-static {p0}, Lru/vtosters/lite/downloaders/AudioDownloader;->cacheTrack(Lcom/vk/dto/music/MusicTrack;)V

    return-void
.end method


.method public static onClickVideo(ILcom/vk/dto/common/VideoFile;Landroid/content/Context;)Z
    .locals 2

    .line 17
    sget v0, Lru/vtosters/lite/downloaders/VideoDownloader;->DOWNLOAD_ID:I

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    .line 18
    invoke-static {p1, p2}, Lru/vtosters/lite/downloaders/VideoDownloader;->downloadVideo(Lcom/vk/dto/common/VideoFile;Landroid/content/Context;)V

    return v1

    .line 20
    :cond_0
    sget v0, Lru/vtosters/lite/downloaders/VideoDownloader;->OPEN_EXTERNAL_LINK_ID:I

    if-ne p0, v0, :cond_1

    .line 21
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lru/vtosters/lite/utils/ExternalLinkParser;->parseVideoFile(Lcom/vk/dto/common/VideoFile;Landroid/content/Context;Ljava/lang/Boolean;)Z

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
