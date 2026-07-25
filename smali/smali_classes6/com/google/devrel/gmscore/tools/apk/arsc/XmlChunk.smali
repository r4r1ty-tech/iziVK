.class public final Lcom/google/devrel/gmscore/tools/apk/arsc/XmlChunk;
.super Lcom/google/devrel/gmscore/tools/apk/arsc/ChunkWithChunks;
.source "XmlChunk.java"


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/devrel/gmscore/tools/apk/arsc/ChunkWithChunks;-><init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V

    return-void
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .locals 3

    .line 44
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlChunk;->getChunks()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;

    .line 45
    instance-of v2, v1, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;

    if-eqz v2, :cond_0

    .line 46
    check-cast v1, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;

    invoke-virtual {v1, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "XmlChunk did not contain a string pool."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getType()Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;
    .locals 1

    .line 37
    sget-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->XML:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    return-object v0
.end method
