.class public Lru/vtosters/lite/music/downloader/ID3Tagger;
.super Ljava/lang/Object;
.source "ID3Tagger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static tag(Ljava/io/File;Lcom/vk/dto/music/MusicTrack;)V
    .locals 6

    const-string v0, "ID3Tagger"

    .line 24
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".mp3"

    const-string v4, "_old.mp3"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "Failed to rename file"

    .line 26
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 30
    :cond_0
    new-instance v2, Lcom/mpatric/mp3agic/Mp3File;

    invoke-direct {v2, v1}, Lcom/mpatric/mp3agic/Mp3File;-><init>(Ljava/io/File;)V

    .line 31
    invoke-virtual {v2}, Lcom/mpatric/mp3agic/Mp3File;->hasId3v2Tag()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 32
    new-instance v3, Lcom/mpatric/mp3agic/ID3v23Tag;

    invoke-direct {v3}, Lcom/mpatric/mp3agic/ID3v23Tag;-><init>()V

    .line 34
    iget-object v4, p1, Lcom/vk/dto/music/MusicTrack;->L:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/vk/dto/music/MusicTrack;->I:Lcom/vk/dto/music/AlbumLink;

    if-nez v4, :cond_1

    goto :goto_0

    .line 37
    :cond_1
    iget-object v4, p1, Lcom/vk/dto/music/MusicTrack;->L:Ljava/util/List;

    invoke-static {v4}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lru/vtosters/lite/music/downloader/ID3Tagger$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lru/vtosters/lite/music/downloader/ID3Tagger$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->metadataSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lj$/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Lj$/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 38
    invoke-virtual {v3, v4}, Lcom/mpatric/mp3agic/ID3v23Tag;->setArtist(Ljava/lang/String;)V

    .line 39
    iget-object v4, p1, Lcom/vk/dto/music/MusicTrack;->I:Lcom/vk/dto/music/AlbumLink;

    invoke-virtual {v4}, Lcom/vk/dto/music/AlbumLink;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mpatric/mp3agic/ID3v23Tag;->setAlbum(Ljava/lang/String;)V

    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    iget-object v4, p1, Lcom/vk/dto/music/MusicTrack;->C:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mpatric/mp3agic/ID3v23Tag;->setArtist(Ljava/lang/String;)V

    .line 42
    :goto_1
    invoke-static {p1}, Lru/vtosters/lite/music/downloader/Mp3Downloader;->getTitle(Lcom/vk/dto/music/MusicTrack;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/mpatric/mp3agic/ID3v23Tag;->setTitle(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v2, v3}, Lcom/mpatric/mp3agic/Mp3File;->setId3v2Tag(Lcom/mpatric/mp3agic/ID3v2;)V

    .line 45
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/mpatric/mp3agic/Mp3File;->save(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "Failed to delete file"

    .line 48
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/mpatric/mp3agic/UnsupportedTagException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/mpatric/mp3agic/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/mpatric/mp3agic/NotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    :goto_2
    const-string p1, "Failed to tag file"

    .line 53
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_3
    return-void
.end method
