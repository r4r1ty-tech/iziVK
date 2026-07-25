.class public final Lru/vtosters/lite/music/downloader/Mp3Downloader;
.super Ljava/lang/Object;
.source "Mp3Downloader.java"

# interfaces
.implements Lru/vtosters/lite/music/interfaces/ITrackDownloader;


# instance fields
.field private final outputFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lru/vtosters/lite/music/downloader/Mp3Downloader;->outputFile:Ljava/io/File;

    return-void
.end method

.method private static getMergedTs(Ljava/lang/String;Ljava/util/List;Lru/vtosters/lite/music/interfaces/Callback;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/f$a;",
            ">;",
            "Lru/vtosters/lite/music/interfaces/Callback;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 81
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "AES/CBC/PKCS7Padding"

    .line 82
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 85
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/hls/playlist/f$a;

    .line 86
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/google/android/exoplayer2/source/hls/playlist/f$a;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lru/vtosters/lite/utils/IOUtils;->openStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Lru/vtosters/lite/utils/IOUtils;->readFully(Ljava/io/InputStream;)[B

    move-result-object v6

    .line 87
    iget-object v7, v5, Lcom/google/android/exoplayer2/source/hls/playlist/f$a;->g:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 88
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v8, v5, Lcom/google/android/exoplayer2/source/hls/playlist/f$a;->g:Ljava/lang/String;

    invoke-static {v8}, Lru/vtosters/lite/utils/IOUtils;->openStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8}, Lru/vtosters/lite/utils/IOUtils;->readFully(Ljava/io/InputStream;)[B

    move-result-object v8

    const-string v9, "AES"

    invoke-direct {v7, v8, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 89
    iget-object v5, v5, Lcom/google/android/exoplayer2/source/hls/playlist/f$a;->h:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 91
    array-length v8, v5

    const/16 v9, 0x10

    if-eq v8, v9, :cond_0

    new-array v5, v9, [B

    .line 92
    :cond_0
    new-instance v8, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v8, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v5, 0x2

    .line 93
    invoke-virtual {v3, v5, v7, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 94
    invoke-virtual {v3, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 98
    :cond_1
    array-length v5, v1

    array-length v7, v6

    add-int v8, v5, v7

    .line 99
    invoke-static {v1, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 100
    invoke-static {v6, v0, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    int-to-float v5, v4

    const/high16 v6, 0x42a00000    # 80.0f

    mul-float v5, v5, v6

    int-to-float v6, v2

    div-float/2addr v5, v6

    .line 103
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/lit8 v5, v5, 0xa

    invoke-interface {p2, v5}, Lru/vtosters/lite/music/interfaces/Callback;->onProgress(I)V

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method static getTitle(Lcom/vk/dto/music/MusicTrack;)Ljava/lang/String;
    .locals 3

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vk/dto/music/MusicTrack;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/dto/music/MusicTrack;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vk/dto/music/MusicTrack;->g:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public download(Lcom/vk/dto/music/MusicTrack;Lru/vtosters/lite/music/interfaces/Callback;Lcom/vk/dto/music/Playlist;)V
    .locals 4

    .line 40
    iget-object p3, p1, Lcom/vk/dto/music/MusicTrack;->D:Ljava/lang/String;

    .line 42
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 48
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "master.m3u8?siren=1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/lite/utils/IOUtils;->readAllLines(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\n"

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 54
    invoke-interface {p2, p1}, Lru/vtosters/lite/music/interfaces/Callback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    .line 59
    :cond_0
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/playlist/h;

    invoke-static {p3}, Lcom/google/android/exoplayer2/source/hls/playlist/e;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/hls/playlist/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/hls/playlist/h;-><init>(Lcom/google/android/exoplayer2/source/hls/playlist/e;)V

    const-string v1, "/"

    .line 60
    invoke-virtual {p3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 63
    :try_start_1
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p3}, Lru/vtosters/lite/utils/IOUtils;->openStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p3

    invoke-virtual {v0, v3, p3}, Lcom/google/android/exoplayer2/source/hls/playlist/h;->a(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/hls/playlist/g;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/source/hls/playlist/f;

    iget-object p3, p3, Lcom/google/android/exoplayer2/source/hls/playlist/f;->o:Ljava/util/List;

    .line 65
    invoke-static {v1, p3, p2}, Lru/vtosters/lite/music/downloader/Mp3Downloader;->getMergedTs(Ljava/lang/String;Ljava/util/List;Lru/vtosters/lite/music/interfaces/Callback;)[B

    move-result-object p3

    .line 66
    iget-object v0, p0, Lru/vtosters/lite/music/downloader/Mp3Downloader;->outputFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lru/vtosters/lite/music/converter/ts/MpegDemuxer;->convert([BLjava/lang/String;)V

    const-string p3, "setMetaData"

    .line 68
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p3, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 69
    iget-object p3, p0, Lru/vtosters/lite/music/downloader/Mp3Downloader;->outputFile:Ljava/io/File;

    invoke-static {p3, p1}, Lru/vtosters/lite/music/downloader/ID3Tagger;->tag(Ljava/io/File;Lcom/vk/dto/music/MusicTrack;)V

    .line 72
    :cond_1
    invoke-interface {p2}, Lru/vtosters/lite/music/interfaces/Callback;->onSuccess()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 74
    :goto_1
    invoke-interface {p2, p1}, Lru/vtosters/lite/music/interfaces/Callback;->onFailure(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    .line 43
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "link error: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vk/dto/music/MusicTrack;->y1()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", title: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lru/vtosters/lite/music/downloader/Mp3Downloader;->getTitle(Lcom/vk/dto/music/MusicTrack;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Mp3Downloader"

    .line 44
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
