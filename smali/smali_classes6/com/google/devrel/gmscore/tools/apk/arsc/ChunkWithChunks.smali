.class public abstract Lcom/google/devrel/gmscore/tools/apk/arsc/ChunkWithChunks;
.super Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;
.source "ChunkWithChunks.java"


# instance fields
.field private final chunks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;-><init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V

    .line 32
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ChunkWithChunks;->chunks:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getChunks()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ChunkWithChunks;->chunks:Ljava/util/Map;

    return-object v0
.end method

.method protected init(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 40
    invoke-super {p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->init(Ljava/nio/ByteBuffer;)V

    .line 41
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ChunkWithChunks;->chunks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 42
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ChunkWithChunks;->offset:I

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/ChunkWithChunks;->getHeaderSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 44
    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ChunkWithChunks;->offset:I

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/ChunkWithChunks;->getOriginalChunkSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 45
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 46
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    if-ge v0, v1, :cond_0

    .line 49
    invoke-static {p1, p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->newInstance(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;

    move-result-object v3

    .line 50
    iget-object v4, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ChunkWithChunks;->chunks:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->getOriginalChunkSize()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method protected writePayload(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/ChunkWithChunks;->getChunks()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;

    .line 70
    invoke-virtual {v0, p3}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->toByteArray(Z)[B

    move-result-object v0

    .line 71
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    .line 72
    array-length v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/ChunkWithChunks;->writePad(Ljava/io/DataOutput;I)I

    goto :goto_0

    :cond_0
    return-void
.end method
