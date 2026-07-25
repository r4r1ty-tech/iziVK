.class public final Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceTableChunk;
.super Lcom/google/devrel/gmscore/tools/apk/arsc/ChunkWithChunks;
.source "ResourceTableChunk.java"


# instance fields
.field private final packages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;",
            ">;"
        }
    .end annotation
.end field

.field private stringPool:Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/google/devrel/gmscore/tools/apk/arsc/ChunkWithChunks;-><init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V

    .line 42
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceTableChunk;->packages:Ljava/util/Map;

    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    const/4 p2, 0x1

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string p1, "ResourceTableChunk package count was < 1."

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getPackage(Ljava/lang/String;)Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceTableChunk;->packages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;

    return-object p1
.end method

.method public getPackages()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceTableChunk;->packages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getStringPool()Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceTableChunk;->stringPool:Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;

    return-object v0
.end method

.method protected getType()Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;
    .locals 1

    .line 93
    sget-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->TABLE:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    return-object v0
.end method

.method protected init(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 56
    invoke-super {p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/ChunkWithChunks;->init(Ljava/nio/ByteBuffer;)V

    .line 57
    iget-object p1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceTableChunk;->packages:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 58
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceTableChunk;->getChunks()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;

    .line 59
    instance-of v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;

    if-eqz v1, :cond_1

    .line 60
    check-cast v0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;

    .line 61
    iget-object v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceTableChunk;->packages:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 62
    :cond_1
    instance-of v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;

    if-eqz v1, :cond_0

    .line 63
    check-cast v0, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;

    iput-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceTableChunk;->stringPool:Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;

    goto :goto_0

    .line 66
    :cond_2
    iget-object p1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceTableChunk;->stringPool:Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;

    const-string v0, "ResourceTableChunk must have a string pool."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected writeHeader(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/ChunkWithChunks;->writeHeader(Ljava/nio/ByteBuffer;)V

    .line 99
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceTableChunk;->packages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method
