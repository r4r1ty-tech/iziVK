.class public final Lcom/google/devrel/gmscore/tools/apk/arsc/UnknownChunk;
.super Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;
.source "UnknownChunk.java"


# instance fields
.field private final header:[B

.field private final payload:[B

.field private final type:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V
    .locals 2

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;-><init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V

    .line 40
    iget p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/UnknownChunk;->offset:I

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p2

    invoke-static {p2}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->fromCode(S)Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    move-result-object p2

    iput-object p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/UnknownChunk;->type:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    .line 41
    iget p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/UnknownChunk;->headerSize:I

    add-int/lit8 p2, p2, -0x8

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/UnknownChunk;->header:[B

    .line 42
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/UnknownChunk;->chunkSize:I

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/UnknownChunk;->headerSize:I

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/UnknownChunk;->payload:[B

    .line 43
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 44
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method protected getType()Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/UnknownChunk;->type:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    return-object v0
.end method

.method protected writeHeader(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/UnknownChunk;->header:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected writePayload(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/UnknownChunk;->payload:[B

    invoke-interface {p1, p2}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method
