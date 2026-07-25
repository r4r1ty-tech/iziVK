.class public Lcom/mpatric/mp3agic/Mp3File;
.super Lcom/mpatric/mp3agic/FileWrapper;
.source "Mp3File.java"


# static fields
.field private static final DEFAULT_BUFFER_LENGTH:I = 0x10000

.field private static final MINIMUM_BUFFER_LENGTH:I = 0x28

.field private static final XING_MARKER_OFFSET_1:I = 0xd

.field private static final XING_MARKER_OFFSET_2:I = 0x15

.field private static final XING_MARKER_OFFSET_3:I = 0x24


# instance fields
.field private bitrate:D

.field private bitrates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/mpatric/mp3agic/MutableInteger;",
            ">;"
        }
    .end annotation
.end field

.field protected bufferLength:I

.field private channelMode:Ljava/lang/String;

.field private copyright:Z

.field private customTag:[B

.field private emphasis:Ljava/lang/String;

.field private endOffset:I

.field private frameCount:I

.field private id3v1Tag:Lcom/mpatric/mp3agic/ID3v1;

.field private id3v2Tag:Lcom/mpatric/mp3agic/ID3v2;

.field private layer:Ljava/lang/String;

.field private modeExtension:Ljava/lang/String;

.field private original:Z

.field private sampleRate:I

.field private scanFile:Z

.field private startOffset:I

.field private version:Ljava/lang/String;

.field private xingBitrate:I

.field private xingOffset:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/mpatric/mp3agic/FileWrapper;-><init>()V

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/mpatric/mp3agic/Mp3File;->xingOffset:I

    .line 22
    iput v0, p0, Lcom/mpatric/mp3agic/Mp3File;->startOffset:I

    .line 23
    iput v0, p0, Lcom/mpatric/mp3agic/Mp3File;->endOffset:I

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/mpatric/mp3agic/Mp3File;->frameCount:I

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mpatric/mp3agic/Mp3File;->bitrates:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/mpatric/mp3agic/Mp3File;->bitrate:D

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mpatric/mp3agic/UnsupportedTagException;,
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    const/high16 v0, 0x10000

    const/4 v1, 0x1

    .line 62
    invoke-direct {p0, p1, v0, v1}, Lcom/mpatric/mp3agic/Mp3File;-><init>(Ljava/io/File;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mpatric/mp3agic/UnsupportedTagException;,
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 66
    invoke-direct {p0, p1, p2, v0}, Lcom/mpatric/mp3agic/Mp3File;-><init>(Ljava/io/File;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mpatric/mp3agic/UnsupportedTagException;,
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1}, Lcom/mpatric/mp3agic/FileWrapper;-><init>(Ljava/io/File;)V

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/mpatric/mp3agic/Mp3File;->xingOffset:I

    .line 22
    iput p1, p0, Lcom/mpatric/mp3agic/Mp3File;->startOffset:I

    .line 23
    iput p1, p0, Lcom/mpatric/mp3agic/Mp3File;->endOffset:I

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/mpatric/mp3agic/Mp3File;->frameCount:I

    .line 25
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mpatric/mp3agic/Mp3File;->bitrates:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/mpatric/mp3agic/Mp3File;->bitrate:D

    .line 71
    invoke-direct {p0, p2, p3}, Lcom/mpatric/mp3agic/Mp3File;->init(IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mpatric/mp3agic/UnsupportedTagException;,
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    const/high16 v0, 0x10000

    const/4 v1, 0x1

    .line 45
    invoke-direct {p0, p1, v0, v1}, Lcom/mpatric/mp3agic/Mp3File;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mpatric/mp3agic/UnsupportedTagException;,
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/mpatric/mp3agic/Mp3File;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mpatric/mp3agic/UnsupportedTagException;,
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1}, Lcom/mpatric/mp3agic/FileWrapper;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/mpatric/mp3agic/Mp3File;->xingOffset:I

    .line 22
    iput p1, p0, Lcom/mpatric/mp3agic/Mp3File;->startOffset:I

    .line 23
    iput p1, p0, Lcom/mpatric/mp3agic/Mp3File;->endOffset:I

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/mpatric/mp3agic/Mp3File;->frameCount:I

    .line 25
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mpatric/mp3agic/Mp3File;->bitrates:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/mpatric/mp3agic/Mp3File;->bitrate:D

    .line 58
    invoke-direct {p0, p2, p3}, Lcom/mpatric/mp3agic/Mp3File;->init(IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mpatric/mp3agic/UnsupportedTagException;,
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    const/high16 v0, 0x10000

    .line 53
    invoke-direct {p0, p1, v0, p2}, Lcom/mpatric/mp3agic/Mp3File;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mpatric/mp3agic/UnsupportedTagException;,
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    const/high16 v0, 0x10000

    const/4 v1, 0x1

    .line 75
    invoke-direct {p0, p1, v0, v1}, Lcom/mpatric/mp3agic/Mp3File;-><init>(Ljava/nio/file/Path;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mpatric/mp3agic/UnsupportedTagException;,
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 79
    invoke-direct {p0, p1, p2, v0}, Lcom/mpatric/mp3agic/Mp3File;-><init>(Ljava/nio/file/Path;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mpatric/mp3agic/UnsupportedTagException;,
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1}, Lcom/mpatric/mp3agic/FileWrapper;-><init>(Ljava/nio/file/Path;)V

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/mpatric/mp3agic/Mp3File;->xingOffset:I

    .line 22
    iput p1, p0, Lcom/mpatric/mp3agic/Mp3File;->startOffset:I

    .line 23
    iput p1, p0, Lcom/mpatric/mp3agic/Mp3File;->endOffset:I

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/mpatric/mp3agic/Mp3File;->frameCount:I

    .line 25
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mpatric/mp3agic/Mp3File;->bitrates:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/mpatric/mp3agic/Mp3File;->bitrate:D

    .line 84
    invoke-direct {p0, p2, p3}, Lcom/mpatric/mp3agic/Mp3File;->init(IZ)V

    return-void
.end method

.method private addBitrate(I)V
    .locals 5

    .line 261
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 262
    iget-object v1, p0, Lcom/mpatric/mp3agic/Mp3File;->bitrates:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mpatric/mp3agic/MutableInteger;

    if-eqz v1, :cond_0

    .line 264
    invoke-virtual {v1}, Lcom/mpatric/mp3agic/MutableInteger;->increment()V

    goto :goto_0

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/mpatric/mp3agic/Mp3File;->bitrates:Ljava/util/Map;

    new-instance v2, Lcom/mpatric/mp3agic/MutableInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/mpatric/mp3agic/MutableInteger;-><init>(I)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :goto_0
    iget-wide v0, p0, Lcom/mpatric/mp3agic/Mp3File;->bitrate:D

    iget v2, p0, Lcom/mpatric/mp3agic/Mp3File;->frameCount:I

    add-int/lit8 v3, v2, -0x1

    int-to-double v3, v3

    mul-double v0, v0, v3

    int-to-double v3, p1

    add-double/2addr v0, v3

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/mpatric/mp3agic/Mp3File;->bitrate:D

    return-void
.end method

.method private init(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mpatric/mp3agic/UnsupportedTagException;,
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    const/16 v0, 0x29

    if-lt p1, v0, :cond_4

    .line 90
    iput p1, p0, Lcom/mpatric/mp3agic/Mp3File;->bufferLength:I

    .line 91
    iput-boolean p2, p0, Lcom/mpatric/mp3agic/Mp3File;->scanFile:Z

    .line 93
    iget-object p1, p0, Lcom/mpatric/mp3agic/Mp3File;->path:Ljava/nio/file/Path;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    const/4 v1, 0x0

    sget-object v2, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p1

    .line 94
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mpatric/mp3agic/Mp3File;->initId3v1Tag(Ljava/nio/channels/SeekableByteChannel;)V

    .line 95
    invoke-direct {p0, p1}, Lcom/mpatric/mp3agic/Mp3File;->scanFile(Ljava/nio/channels/SeekableByteChannel;)V

    .line 96
    iget v0, p0, Lcom/mpatric/mp3agic/Mp3File;->startOffset:I

    if-ltz v0, :cond_2

    .line 99
    invoke-direct {p0, p1}, Lcom/mpatric/mp3agic/Mp3File;->initId3v2Tag(Ljava/nio/channels/SeekableByteChannel;)V

    if-eqz p2, :cond_0

    .line 101
    invoke-direct {p0, p1}, Lcom/mpatric/mp3agic/Mp3File;->initCustomTag(Ljava/nio/channels/SeekableByteChannel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz p1, :cond_1

    .line 103
    invoke-interface {p1}, Ljava/nio/channels/SeekableByteChannel;->close()V

    :cond_1
    return-void

    .line 97
    :cond_2
    :try_start_1
    new-instance p2, Lcom/mpatric/mp3agic/InvalidDataException;

    const-string v0, "No mpegs frames found"

    invoke-direct {p2, v0}, Lcom/mpatric/mp3agic/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p2

    .line 93
    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_3

    .line 103
    :try_start_3
    invoke-interface {p1}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v0

    .line 88
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Buffer too small"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initCustomTag(Ljava/nio/channels/SeekableByteChannel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    invoke-virtual {p0}, Lcom/mpatric/mp3agic/Mp3File;->getLength()J

    move-result-wide v0

    iget v2, p0, Lcom/mpatric/mp3agic/Mp3File;->endOffset:I

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    sub-long/2addr v0, v2

    long-to-int v1, v0

    .line 306
    invoke-virtual {p0}, Lcom/mpatric/mp3agic/Mp3File;->hasId3v1Tag()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, -0x80

    :cond_0
    if-gtz v1, :cond_1

    const/4 p1, 0x0

    .line 308
    iput-object p1, p0, Lcom/mpatric/mp3agic/Mp3File;->customTag:[B

    goto :goto_0

    .line 310
    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 311
    iget v2, p0, Lcom/mpatric/mp3agic/Mp3File;->endOffset:I

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-interface {p1, v2, v3}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 312
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 313
    invoke-interface {p1, v0}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 314
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/mpatric/mp3agic/Mp3File;->customTag:[B

    if-lt p1, v1, :cond_2

    :goto_0
    return-void

    .line 315
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Not enough bytes read"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initId3v1Tag(Ljava/nio/channels/SeekableByteChannel;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    .line 272
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 273
    invoke-virtual {p0}, Lcom/mpatric/mp3agic/Mp3File;->getLength()J

    move-result-wide v2

    const-wide/16 v4, 0x80

    sub-long/2addr v2, v4

    invoke-interface {p1, v2, v3}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 274
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 275
    invoke-interface {p1, v1}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-lt p1, v0, :cond_0

    .line 278
    :try_start_0
    new-instance p1, Lcom/mpatric/mp3agic/ID3v1Tag;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mpatric/mp3agic/ID3v1Tag;-><init>([B)V

    iput-object p1, p0, Lcom/mpatric/mp3agic/Mp3File;->id3v1Tag:Lcom/mpatric/mp3agic/ID3v1;
    :try_end_0
    .catch Lcom/mpatric/mp3agic/NoSuchTagException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 280
    iput-object p1, p0, Lcom/mpatric/mp3agic/Mp3File;->id3v1Tag:Lcom/mpatric/mp3agic/ID3v1;

    :goto_0
    return-void

    .line 276
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Not enough bytes read"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initId3v2Tag(Ljava/nio/channels/SeekableByteChannel;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mpatric/mp3agic/UnsupportedTagException;,
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .line 285
    iget v0, p0, Lcom/mpatric/mp3agic/Mp3File;->xingOffset:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/mpatric/mp3agic/Mp3File;->startOffset:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/mpatric/mp3agic/Mp3File;->hasXingFrame()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/mpatric/mp3agic/Mp3File;->xingOffset:I

    goto :goto_0

    .line 290
    :cond_1
    iget v0, p0, Lcom/mpatric/mp3agic/Mp3File;->startOffset:I

    .line 291
    :goto_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 292
    invoke-interface {p1, v3, v4}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 293
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 294
    invoke-interface {p1, v2}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-lt p1, v0, :cond_2

    .line 297
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-static {p1}, Lcom/mpatric/mp3agic/ID3v2TagFactory;->createTag([B)Lcom/mpatric/mp3agic/AbstractID3v2Tag;

    move-result-object p1

    iput-object p1, p0, Lcom/mpatric/mp3agic/Mp3File;->id3v2Tag:Lcom/mpatric/mp3agic/ID3v2;
    :try_end_0
    .catch Lcom/mpatric/mp3agic/NoSuchTagException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 299
    :catch_0
    iput-object v1, p0, Lcom/mpatric/mp3agic/Mp3File;->id3v2Tag:Lcom/mpatric/mp3agic/ID3v2;

    goto :goto_2

    .line 295
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Not enough bytes read"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 286
    :cond_3
    :goto_1
    iput-object v1, p0, Lcom/mpatric/mp3agic/Mp3File;->id3v2Tag:Lcom/mpatric/mp3agic/ID3v2;

    :goto_2
    return-void
.end method

.method private isXingFrame([BI)Z
    .locals 7

    .line 231
    array-length v0, p1

    add-int/lit8 v1, p2, 0xd

    add-int/lit8 v2, v1, 0x3

    if-lt v0, v2, :cond_5

    const/4 v0, 0x4

    .line 232
    invoke-static {p1, v1, v0}, Lcom/mpatric/mp3agic/BufferTools;->byteBufferToStringIgnoringEncodingIssues([BII)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Xing"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    return v4

    .line 234
    :cond_0
    invoke-static {p1, v1, v0}, Lcom/mpatric/mp3agic/BufferTools;->byteBufferToStringIgnoringEncodingIssues([BII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Info"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v4

    .line 236
    :cond_1
    array-length v1, p1

    add-int/lit8 v5, p2, 0x15

    add-int/lit8 v6, v5, 0x3

    if-lt v1, v6, :cond_5

    .line 237
    invoke-static {p1, v5, v0}, Lcom/mpatric/mp3agic/BufferTools;->byteBufferToStringIgnoringEncodingIssues([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v4

    .line 239
    :cond_2
    invoke-static {p1, v5, v0}, Lcom/mpatric/mp3agic/BufferTools;->byteBufferToStringIgnoringEncodingIssues([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v4

    .line 241
    :cond_3
    array-length v1, p1

    add-int/lit8 p2, p2, 0x24

    add-int/lit8 v5, p2, 0x3

    if-lt v1, v5, :cond_5

    .line 242
    invoke-static {p1, p2, v0}, Lcom/mpatric/mp3agic/BufferTools;->byteBufferToStringIgnoringEncodingIssues([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v4

    .line 244
    :cond_4
    invoke-static {p1, p2, v0}, Lcom/mpatric/mp3agic/BufferTools;->byteBufferToStringIgnoringEncodingIssues([BII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v4

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method private maxEndOffset()I
    .locals 2

    .line 225
    invoke-virtual {p0}, Lcom/mpatric/mp3agic/Mp3File;->getLength()J

    move-result-wide v0

    long-to-int v1, v0

    .line 226
    invoke-virtual {p0}, Lcom/mpatric/mp3agic/Mp3File;->hasId3v1Tag()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, -0x80

    :cond_0
    return v1
.end method

.method private sanityCheckFrame(Lcom/mpatric/mp3agic/MpegFrame;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .line 253
    iget v0, p0, Lcom/mpatric/mp3agic/Mp3File;->sampleRate:I

    invoke-virtual {p1}, Lcom/mpatric/mp3agic/MpegFrame;->getSampleRate()I

    move-result v1

    const-string v2, "Inconsistent frame header"

    if-ne v0, v1, :cond_3

    .line 254
    iget-object v0, p0, Lcom/mpatric/mp3agic/Mp3File;->layer:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mpatric/mp3agic/MpegFrame;->getLayer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/mpatric/mp3agic/Mp3File;->version:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mpatric/mp3agic/MpegFrame;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {p1}, Lcom/mpatric/mp3agic/MpegFrame;->getLengthInBytes()I

    move-result p1

    add-int/2addr p2, p1

    int-to-long p1, p2

    invoke-virtual {p0}, Lcom/mpatric/mp3agic/Mp3File;->getLength()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-void

    .line 257
    :cond_0
    new-instance p1, Lcom/mpatric/mp3agic/InvalidDataException;

    const-string p2, "Frame would extend beyond end of file"

    invoke-direct {p1, p2}, Lcom/mpatric/mp3agic/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 255
    :cond_1
    new-instance p1, Lcom/mpatric/mp3agic/InvalidDataException;

    invoke-direct {p1, v2}, Lcom/mpatric/mp3agic/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 254
    :cond_2
    new-instance p1, Lcom/mpatric/mp3agic/InvalidDataException;

    invoke-direct {p1, v2}, Lcom/mpatric/mp3agic/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 253
    :cond_3
    new-instance p1, Lcom/mpatric/mp3agic/InvalidDataException;

    invoke-direct {p1, v2}, Lcom/mpatric/mp3agic/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private saveMpegFrames(Ljava/nio/channels/SeekableByteChannel;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 470
    iget v0, p0, Lcom/mpatric/mp3agic/Mp3File;->xingOffset:I

    if-gez v0, :cond_0

    .line 471
    iget v0, p0, Lcom/mpatric/mp3agic/Mp3File;->startOffset:I

    :cond_0
    if-gez v0, :cond_1

    return-void

    .line 473
    :cond_1
    iget v1, p0, Lcom/mpatric/mp3agic/Mp3File;->endOffset:I

    if-ge v1, v0, :cond_2

    return-void

    .line 474
    :cond_2
    iget-object v1, p0, Lcom/mpatric/mp3agic/Mp3File;->path:Ljava/nio/file/Path;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/nio/file/OpenOption;

    const/4 v4, 0x0

    sget-object v5, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v1

    .line 475
    iget v3, p0, Lcom/mpatric/mp3agic/Mp3File;->bufferLength:I

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    int-to-long v4, v0

    .line 477
    :try_start_0
    invoke-interface {v1, v4, v5}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 479
    :goto_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 480
    invoke-interface {v1, v3}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 481
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    add-int v5, v0, v4

    .line 482
    iget v6, p0, Lcom/mpatric/mp3agic/Mp3File;->endOffset:I

    if-gt v5, v6, :cond_3

    .line 483
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 484
    invoke-interface {p1, v3}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move v0, v5

    goto :goto_0

    :cond_3
    sub-int/2addr v6, v0

    add-int/2addr v6, v2

    .line 487
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 488
    invoke-interface {p1, v3}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    invoke-interface {v1}, Ljava/nio/channels/SeekableByteChannel;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v1}, Ljava/nio/channels/SeekableByteChannel;->close()V

    throw p1
.end method

.method private scanBlock([BIII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    :goto_0
    add-int/lit8 v0, p2, -0x28

    if-ge p4, v0, :cond_0

    .line 209
    new-instance v0, Lcom/mpatric/mp3agic/MpegFrame;

    aget-byte v1, p1, p4

    add-int/lit8 v2, p4, 0x1

    aget-byte v2, p1, v2

    add-int/lit8 v3, p4, 0x2

    aget-byte v3, p1, v3

    add-int/lit8 v4, p4, 0x3

    aget-byte v4, p1, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mpatric/mp3agic/MpegFrame;-><init>(BBBB)V

    add-int v1, p3, p4

    .line 210
    invoke-direct {p0, v0, v1}, Lcom/mpatric/mp3agic/Mp3File;->sanityCheckFrame(Lcom/mpatric/mp3agic/MpegFrame;I)V

    .line 211
    invoke-virtual {v0}, Lcom/mpatric/mp3agic/MpegFrame;->getLengthInBytes()I

    move-result v2

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    .line 212
    invoke-direct {p0}, Lcom/mpatric/mp3agic/Mp3File;->maxEndOffset()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 213
    invoke-virtual {v0}, Lcom/mpatric/mp3agic/MpegFrame;->getLengthInBytes()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/mpatric/mp3agic/Mp3File;->endOffset:I

    .line 214
    iget v1, p0, Lcom/mpatric/mp3agic/Mp3File;->frameCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mpatric/mp3agic/Mp3File;->frameCount:I

    .line 215
    invoke-virtual {v0}, Lcom/mpatric/mp3agic/MpegFrame;->getBitrate()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mpatric/mp3agic/Mp3File;->addBitrate(I)V

    .line 216
    invoke-virtual {v0}, Lcom/mpatric/mp3agic/MpegFrame;->getLengthInBytes()I

    move-result v0

    add-int/2addr p4, v0

    goto :goto_0

    :cond_0
    return p4
.end method

.method private scanBlockForStart([BIII)I
    .locals 6

    :goto_0
    add-int/lit8 v0, p2, -0x28

    if-ge p4, v0, :cond_2

    .line 175
    aget-byte v0, p1, p4

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, p4, 0x1

    aget-byte v1, p1, v0

    const/16 v2, -0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 177
    :try_start_0
    new-instance v1, Lcom/mpatric/mp3agic/MpegFrame;

    aget-byte v2, p1, p4

    aget-byte v3, p1, v0

    add-int/lit8 v4, p4, 0x2

    aget-byte v4, p1, v4

    add-int/lit8 v5, p4, 0x3

    aget-byte v5, p1, v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mpatric/mp3agic/MpegFrame;-><init>(BBBB)V

    .line 178
    iget v2, p0, Lcom/mpatric/mp3agic/Mp3File;->xingOffset:I

    if-gez v2, :cond_0

    invoke-direct {p0, p1, p4}, Lcom/mpatric/mp3agic/Mp3File;->isXingFrame([BI)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int v2, p3, p4

    .line 179
    iput v2, p0, Lcom/mpatric/mp3agic/Mp3File;->xingOffset:I

    .line 180
    invoke-virtual {v1}, Lcom/mpatric/mp3agic/MpegFrame;->getBitrate()I

    move-result v2

    iput v2, p0, Lcom/mpatric/mp3agic/Mp3File;->xingBitrate:I

    .line 181
    invoke-virtual {v1}, Lcom/mpatric/mp3agic/MpegFrame;->getLengthInBytes()I

    move-result v0

    add-int/2addr p4, v0

    goto :goto_0

    :cond_0
    add-int v2, p3, p4

    .line 183
    iput v2, p0, Lcom/mpatric/mp3agic/Mp3File;->startOffset:I

    .line 184
    invoke-virtual {v1}, Lcom/mpatric/mp3agic/MpegFrame;->getChannelMode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mpatric/mp3agic/Mp3File;->channelMode:Ljava/lang/String;

    .line 185
    invoke-virtual {v1}, Lcom/mpatric/mp3agic/MpegFrame;->getEmphasis()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mpatric/mp3agic/Mp3File;->emphasis:Ljava/lang/String;

    .line 186
    invoke-virtual {v1}, Lcom/mpatric/mp3agic/MpegFrame;->getLayer()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mpatric/mp3agic/Mp3File;->layer:Ljava/lang/String;

    .line 187
    invoke-virtual {v1}, Lcom/mpatric/mp3agic/MpegFrame;->getModeExtension()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mpatric/mp3agic/Mp3File;->modeExtension:Ljava/lang/String;

    .line 188
    invoke-virtual {v1}, Lcom/mpatric/mp3agic/MpegFrame;->getSampleRate()I

    move-result v2

    iput v2, p0, Lcom/mpatric/mp3agic/Mp3File;->sampleRate:I

    .line 189
    invoke-virtual {v1}, Lcom/mpatric/mp3agic/MpegFrame;->getVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mpatric/mp3agic/Mp3File;->version:Ljava/lang/String;

    .line 190
    invoke-virtual {v1}, Lcom/mpatric/mp3agic/MpegFrame;->isCopyright()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mpatric/mp3agic/Mp3File;->copyright:Z

    .line 191
    invoke-virtual {v1}, Lcom/mpatric/mp3agic/MpegFrame;->isOriginal()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mpatric/mp3agic/Mp3File;->original:Z

    .line 192
    iget v2, p0, Lcom/mpatric/mp3agic/Mp3File;->frameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mpatric/mp3agic/Mp3File;->frameCount:I

    .line 193
    invoke-virtual {v1}, Lcom/mpatric/mp3agic/MpegFrame;->getBitrate()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mpatric/mp3agic/Mp3File;->addBitrate(I)V

    .line 194
    invoke-virtual {v1}, Lcom/mpatric/mp3agic/MpegFrame;->getLengthInBytes()I

    move-result p1
    :try_end_0
    .catch Lcom/mpatric/mp3agic/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p4, p1

    return p4

    :catch_0
    nop

    move p4, v0

    goto/16 :goto_0

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_0

    :cond_2
    return p4
.end method

.method private scanFile(Ljava/nio/channels/SeekableByteChannel;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mpatric/mp3agic/InvalidDataException;
        }
    .end annotation

    .line 128
    iget v0, p0, Lcom/mpatric/mp3agic/Mp3File;->bufferLength:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 129
    invoke-virtual {p0, p1}, Lcom/mpatric/mp3agic/Mp3File;->preScanFile(Ljava/nio/channels/SeekableByteChannel;)I

    move-result v1

    int-to-long v2, v1

    .line 130
    invoke-interface {p1, v2, v3}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    const/4 v4, 0x0

    :cond_0
    :goto_1
    if-nez v4, :cond_5

    .line 134
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 135
    invoke-interface {p1, v0}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 136
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    .line 137
    iget v7, p0, Lcom/mpatric/mp3agic/Mp3File;->bufferLength:I

    if-ge v5, v7, :cond_1

    const/4 v4, 0x1

    :cond_1
    const/16 v7, 0x28

    if-lt v5, v7, :cond_0

    .line 142
    :try_start_0
    iget v7, p0, Lcom/mpatric/mp3agic/Mp3File;->startOffset:I

    if-gez v7, :cond_3

    .line 143
    invoke-direct {p0, v6, v5, v1, v2}, Lcom/mpatric/mp3agic/Mp3File;->scanBlockForStart([BIII)I

    move-result v7

    .line 144
    iget v8, p0, Lcom/mpatric/mp3agic/Mp3File;->startOffset:I

    if-ltz v8, :cond_2

    iget-boolean v3, p0, Lcom/mpatric/mp3agic/Mp3File;->scanFile:Z

    if-nez v3, :cond_2

    return-void

    :cond_2
    move v3, v8

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    .line 149
    :goto_2
    invoke-direct {p0, v6, v5, v1, v7}, Lcom/mpatric/mp3agic/Mp3File;->scanBlock([BIII)I

    move-result v5

    add-int/2addr v1, v5

    int-to-long v5, v1

    .line 151
    invoke-interface {p1, v5, v6}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;
    :try_end_0
    .catch Lcom/mpatric/mp3agic/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 154
    iget v4, p0, Lcom/mpatric/mp3agic/Mp3File;->frameCount:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_5

    const/4 v4, -0x1

    .line 155
    iput v4, p0, Lcom/mpatric/mp3agic/Mp3File;->startOffset:I

    .line 156
    iput v4, p0, Lcom/mpatric/mp3agic/Mp3File;->xingOffset:I

    .line 157
    iput v2, p0, Lcom/mpatric/mp3agic/Mp3File;->frameCount:I

    .line 158
    iget-object v4, p0, Lcom/mpatric/mp3agic/Mp3File;->bitrates:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    add-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_4

    int-to-long v5, v4

    .line 163
    invoke-interface {p1, v5, v6}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    move v1, v4

    goto :goto_0

    .line 162
    :cond_4
    new-instance p1, Lcom/mpatric/mp3agic/InvalidDataException;

    const-string v0, "Valid start of mpeg frames not found"

    invoke-direct {p1, v0, v1}, Lcom/mpatric/mp3agic/InvalidDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    return-void
.end method


# virtual methods
.method public getBitrate()I
    .locals 4

    .line 345
    iget-wide v0, p0, Lcom/mpatric/mp3agic/Mp3File;->bitrate:D

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getBitrates()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/mpatric/mp3agic/MutableInteger;",
            ">;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/mpatric/mp3agic/Mp3File;->bitrates:Ljava/util/Map;

    return-object v0
.end method

.method public getChannelMode()Ljava/lang/String;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/mpatric/mp3agic/Mp3File;->channelMode:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomTag()[B
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/mpatric/mp3agic/Mp3File;->customTag:[B

    return-object v0
.end method

.method public getEmphasis()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/mpatric/mp3agic/Mp3File;->emphasis:Ljava/lang/String;

    return-object v0
.end method

.method public getEndOffset()I
    .locals 1

    .line 328
    iget v0, p0, Lcom/mpatric/mp3agic/Mp3File;->endOffset:I

    return v0
.end method

.method public getFrameCount()I
    .locals 1

    .line 320
    iget v0, p0, Lcom/mpatric/mp3agic/Mp3File;->frameCount:I

    return v0
.end method

.method public getId3v1Tag()Lcom/mpatric/mp3agic/ID3v1;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/mpatric/mp3agic/Mp3File;->id3v1Tag:Lcom/mpatric/mp3agic/ID3v1;

    return-object v0
.end method

.method public getId3v2Tag()Lcom/mpatric/mp3agic/ID3v2;
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/mpatric/mp3agic/Mp3File;->id3v2Tag:Lcom/mpatric/mp3agic/ID3v2;

    return-object v0
.end method

.method public getLayer()Ljava/lang/String;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/mpatric/mp3agic/Mp3File;->layer:Ljava/lang/String;

    return-object v0
.end method

.method public getLengthInMilliseconds()J
    .locals 4

    .line 332
    iget v0, p0, Lcom/mpatric/mp3agic/Mp3File;->endOffset:I

    iget v1, p0, Lcom/mpatric/mp3agic/Mp3File;->startOffset:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    int-to-double v0, v0

    .line 333
    iget-wide v2, p0, Lcom/mpatric/mp3agic/Mp3File;->bitrate:D

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public getLengthInSeconds()J
    .locals 4

    .line 337
    invoke-virtual {p0}, Lcom/mpatric/mp3agic/Mp3File;->getLengthInMilliseconds()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getModeExtension()Ljava/lang/String;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/mpatric/mp3agic/Mp3File;->modeExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 377
    iget v0, p0, Lcom/mpatric/mp3agic/Mp3File;->sampleRate:I

    return v0
.end method

.method public getStartOffset()I
    .locals 1

    .line 324
    iget v0, p0, Lcom/mpatric/mp3agic/Mp3File;->startOffset:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/mpatric/mp3agic/Mp3File;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getXingBitrate()I
    .locals 1

    .line 393
    iget v0, p0, Lcom/mpatric/mp3agic/Mp3File;->xingBitrate:I

    return v0
.end method

.method public getXingOffset()I
    .locals 1

    .line 389
    iget v0, p0, Lcom/mpatric/mp3agic/Mp3File;->xingOffset:I

    return v0
.end method

.method public hasCustomTag()Z
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/mpatric/mp3agic/Mp3File;->customTag:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasId3v1Tag()Z
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/mpatric/mp3agic/Mp3File;->id3v1Tag:Lcom/mpatric/mp3agic/ID3v1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasId3v2Tag()Z
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/mpatric/mp3agic/Mp3File;->id3v2Tag:Lcom/mpatric/mp3agic/ID3v2;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasXingFrame()Z
    .locals 1

    .line 385
    iget v0, p0, Lcom/mpatric/mp3agic/Mp3File;->xingOffset:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCopyright()Z
    .locals 1

    .line 357
    iget-boolean v0, p0, Lcom/mpatric/mp3agic/Mp3File;->copyright:Z

    return v0
.end method

.method public isOriginal()Z
    .locals 1

    .line 373
    iget-boolean v0, p0, Lcom/mpatric/mp3agic/Mp3File;->original:Z

    return v0
.end method

.method public isVbr()Z
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/mpatric/mp3agic/Mp3File;->bitrates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected preScanFile(Ljava/nio/channels/SeekableByteChannel;)I
    .locals 5

    const/16 v0, 0xa

    .line 107
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 109
    :try_start_0
    invoke-interface {p1, v2, v3}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 110
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 111
    invoke-interface {p1, v1}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v0, :cond_0

    .line 114
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 115
    invoke-static {p1}, Lcom/mpatric/mp3agic/ID3v2TagFactory;->sanityCheckTag([B)V

    const/4 v1, 0x6

    .line 116
    aget-byte v1, p1, v1

    const/4 v2, 0x7

    aget-byte v2, p1, v2

    const/16 v3, 0x8

    aget-byte v3, p1, v3

    const/16 v4, 0x9

    aget-byte p1, p1, v4

    invoke-static {v1, v2, v3, p1}, Lcom/mpatric/mp3agic/BufferTools;->unpackSynchsafeInteger(BBBB)I

    move-result p1
    :try_end_1
    .catch Lcom/mpatric/mp3agic/NoSuchTagException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/mpatric/mp3agic/UnsupportedTagException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr p1, v0

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeCustomTag()V
    .locals 1

    const/4 v0, 0x0

    .line 441
    iput-object v0, p0, Lcom/mpatric/mp3agic/Mp3File;->customTag:[B

    return-void
.end method

.method public removeId3v1Tag()V
    .locals 1

    const/4 v0, 0x0

    .line 409
    iput-object v0, p0, Lcom/mpatric/mp3agic/Mp3File;->id3v1Tag:Lcom/mpatric/mp3agic/ID3v1;

    return-void
.end method

.method public removeId3v2Tag()V
    .locals 1

    const/4 v0, 0x0

    .line 425
    iput-object v0, p0, Lcom/mpatric/mp3agic/Mp3File;->id3v2Tag:Lcom/mpatric/mp3agic/ID3v2;

    return-void
.end method

.method public save(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mpatric/mp3agic/NotSupportedException;
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/mpatric/mp3agic/Mp3File;->path:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/nio/file/Path;->compareTo(Ljava/nio/file/Path;)I

    move-result v0

    if-eqz v0, :cond_5

    new-array v0, v1, [Ljava/lang/String;

    .line 448
    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    sget-object v0, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    sget-object v2, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    sget-object v3, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    invoke-static {v0, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    new-array v1, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p1, v0, v1}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p1

    .line 449
    :try_start_0
    invoke-virtual {p0}, Lcom/mpatric/mp3agic/Mp3File;->hasId3v2Tag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/mpatric/mp3agic/Mp3File;->id3v2Tag:Lcom/mpatric/mp3agic/ID3v2;

    invoke-interface {v0}, Lcom/mpatric/mp3agic/ID3v2;->toBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 451
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 452
    invoke-interface {p1, v0}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 454
    :cond_0
    invoke-direct {p0, p1}, Lcom/mpatric/mp3agic/Mp3File;->saveMpegFrames(Ljava/nio/channels/SeekableByteChannel;)V

    .line 455
    invoke-virtual {p0}, Lcom/mpatric/mp3agic/Mp3File;->hasCustomTag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/mpatric/mp3agic/Mp3File;->customTag:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 457
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 458
    invoke-interface {p1, v0}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 460
    :cond_1
    invoke-virtual {p0}, Lcom/mpatric/mp3agic/Mp3File;->hasId3v1Tag()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 461
    iget-object v0, p0, Lcom/mpatric/mp3agic/Mp3File;->id3v1Tag:Lcom/mpatric/mp3agic/ID3v1;

    invoke-interface {v0}, Lcom/mpatric/mp3agic/ID3v1;->toBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 463
    invoke-interface {p1, v0}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 465
    :cond_2
    invoke-interface {p1}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    .line 466
    invoke-interface {p1}, Ljava/nio/channels/SeekableByteChannel;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 448
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_4

    .line 466
    :try_start_2
    invoke-interface {p1}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v1

    .line 446
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Save filename same as source filename"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCustomTag([B)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/mpatric/mp3agic/Mp3File;->customTag:[B

    return-void
.end method

.method public setId3v1Tag(Lcom/mpatric/mp3agic/ID3v1;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/mpatric/mp3agic/Mp3File;->id3v1Tag:Lcom/mpatric/mp3agic/ID3v1;

    return-void
.end method

.method public setId3v2Tag(Lcom/mpatric/mp3agic/ID3v2;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/mpatric/mp3agic/Mp3File;->id3v2Tag:Lcom/mpatric/mp3agic/ID3v2;

    return-void
.end method
