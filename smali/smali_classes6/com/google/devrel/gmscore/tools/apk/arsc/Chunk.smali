.class public abstract Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;
.super Ljava/lang/Object;
.source "Chunk.java"

# interfaces
.implements Lcom/google/devrel/gmscore/tools/apk/arsc/SerializableResource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;
    }
.end annotation


# static fields
.field private static final CHUNK_SIZE_OFFSET:I = 0x4

.field public static final METADATA_SIZE:I = 0x8

.field public static final PAD_BOUNDARY:I = 0x4


# instance fields
.field protected final chunkSize:I

.field protected final headerSize:I

.field protected final offset:I

.field private final parent:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->parent:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;

    .line 70
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    iput p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->offset:I

    .line 71
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p2

    const v0, 0xffff

    and-int/2addr p2, v0

    iput p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->headerSize:I

    .line 72
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->chunkSize:I

    return-void
.end method

.method public static newInstance(Ljava/nio/ByteBuffer;)Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-static {p0, v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->newInstance(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;
    .locals 2

    .line 94
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->fromCode(S)Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    move-result-object v0

    .line 95
    sget-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$1;->$SwitchMap$com$google$devrel$gmscore$tools$apk$arsc$Chunk$Type:[I

    invoke-virtual {v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 136
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/UnknownChunk;

    invoke-direct {v0, p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/UnknownChunk;-><init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V

    goto :goto_0

    .line 133
    :pswitch_0
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk;

    invoke-direct {v0, p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk;-><init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V

    goto :goto_0

    .line 130
    :pswitch_1
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeSpecChunk;

    invoke-direct {v0, p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeSpecChunk;-><init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V

    goto :goto_0

    .line 127
    :pswitch_2
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk;

    invoke-direct {v0, p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk;-><init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V

    goto :goto_0

    .line 124
    :pswitch_3
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;

    invoke-direct {v0, p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;-><init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V

    goto :goto_0

    .line 121
    :pswitch_4
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlResourceMapChunk;

    invoke-direct {v0, p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlResourceMapChunk;-><init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V

    goto :goto_0

    .line 118
    :pswitch_5
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlCdataChunk;

    invoke-direct {v0, p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlCdataChunk;-><init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V

    goto :goto_0

    .line 115
    :pswitch_6
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlEndElementChunk;

    invoke-direct {v0, p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlEndElementChunk;-><init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V

    goto :goto_0

    .line 112
    :pswitch_7
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlStartElementChunk;

    invoke-direct {v0, p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlStartElementChunk;-><init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V

    goto :goto_0

    .line 109
    :pswitch_8
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNamespaceEndChunk;

    invoke-direct {v0, p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNamespaceEndChunk;-><init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V

    goto :goto_0

    .line 106
    :pswitch_9
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNamespaceStartChunk;

    invoke-direct {v0, p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNamespaceStartChunk;-><init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V

    goto :goto_0

    .line 103
    :pswitch_a
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlChunk;

    invoke-direct {v0, p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlChunk;-><init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V

    goto :goto_0

    .line 100
    :pswitch_b
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceTableChunk;

    invoke-direct {v0, p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceTableChunk;-><init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V

    goto :goto_0

    .line 97
    :pswitch_c
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;

    invoke-direct {v0, p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;-><init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V

    .line 138
    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->init(Ljava/nio/ByteBuffer;)V

    .line 139
    invoke-direct {v0, p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->seekToEndOfChunk(Ljava/nio/ByteBuffer;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final seekToEndOfChunk(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 188
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->offset:I

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->chunkSize:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public final getHeaderSize()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->headerSize:I

    return v0
.end method

.method public final getOriginalChunkSize()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->chunkSize:I

    return v0
.end method

.method public getParent()Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->parent:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;

    return-object v0
.end method

.method protected abstract getType()Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;
.end method

.method protected init(Ljava/nio/ByteBuffer;)V
    .locals 0

    return-void
.end method

.method public final toByteArray()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 248
    invoke-virtual {p0, v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->toByteArray(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public final toByteArray(Z)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->getHeaderSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 258
    invoke-virtual {p0, v0, v1}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->writeHeader(Ljava/nio/ByteBuffer;I)V

    .line 259
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 261
    new-instance v2, Lcom/google/common/io/LittleEndianDataOutputStream;

    invoke-direct {v2, v1}, Lcom/google/common/io/LittleEndianDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 262
    :try_start_0
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->writePayload(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    invoke-virtual {v2}, Lcom/google/common/io/LittleEndianDataOutputStream;->close()V

    .line 265
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 266
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->getHeaderSize()I

    move-result v1

    array-length v2, p1

    add-int/2addr v1, v2

    const/4 v2, 0x4

    .line 267
    invoke-virtual {v0, v2, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 270
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 271
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 272
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 273
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 261
    :try_start_1
    invoke-virtual {v2}, Lcom/google/common/io/LittleEndianDataOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method protected writeHeader(Ljava/nio/ByteBuffer;)V
    .locals 0

    return-void
.end method

.method protected final writeHeader(Ljava/nio/ByteBuffer;I)V
    .locals 2

    .line 199
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 200
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->getType()Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->code()S

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 201
    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->headerSize:I

    int-to-short v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 202
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 203
    invoke-virtual {p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->writeHeader(Ljava/nio/ByteBuffer;)V

    .line 204
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    sub-int/2addr p1, v0

    .line 205
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->getHeaderSize()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v0, "Written header is wrong size. Got %s, want %s"

    .line 206
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->getHeaderSize()I

    move-result v1

    .line 205
    invoke-static {p2, v0, p1, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;II)V

    return-void
.end method

.method protected writePad(Ljava/io/DataOutput;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    :goto_0
    rem-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 240
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method protected writePayload(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
