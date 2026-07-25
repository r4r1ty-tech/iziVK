.class public Lru/vtosters/lite/utils/music/MusicTrackUtils;
.super Ljava/lang/Object;
.source "MusicTrackUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArtists(Lcom/vk/dto/music/MusicTrack;)Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/vk/dto/music/MusicTrack;->L:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vk/dto/music/MusicTrack;->I:Lcom/vk/dto/music/AlbumLink;

    if-nez v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/vk/dto/music/MusicTrack;->L:Ljava/util/List;

    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lru/vtosters/lite/music/downloader/ID3Tagger$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lru/vtosters/lite/music/downloader/ID3Tagger$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    const-string v0, ", "

    invoke-static {v0}, Lj$/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Lj$/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lru/vtosters/lite/utils/music/MusicTrackUtils;->normalizeMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/vk/dto/music/MusicTrack;->C:Ljava/lang/String;

    invoke-static {p0}, Lru/vtosters/lite/utils/music/MusicTrackUtils;->normalizeMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static normalizeMetadata(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "[\\\\/:*?\"<>|]"

    const-string v1, ""

    .line 16
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
