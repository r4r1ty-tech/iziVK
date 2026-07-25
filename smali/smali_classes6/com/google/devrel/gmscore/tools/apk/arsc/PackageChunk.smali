.class public final Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;
.super Lcom/google/devrel/gmscore/tools/apk/arsc/ChunkWithChunks;
.source "PackageChunk.java"


# static fields
.field private static final KEY_OFFSET_OFFSET:I = 0x114

.field private static final TYPE_OFFSET_OFFSET:I = 0x10c


# instance fields
.field private id:I

.field private final keyStringsOffset:I

.field private final lastPublicKey:I

.field private final lastPublicType:I

.field private libraryChunk:Lj$/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/Optional<",
            "Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk;",
            ">;"
        }
    .end annotation
.end field

.field private packageName:Ljava/lang/String;

.field private final typeIdOffset:I

.field private final typeSpecs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/devrel/gmscore/tools/apk/arsc/TypeSpecChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final typeStringsOffset:I

.field private final types:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap<",
            "Ljava/lang/Integer;",
            "Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/google/devrel/gmscore/tools/apk/arsc/ChunkWithChunks;-><init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V

    .line 69
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->typeSpecs:Ljava/util/Map;

    .line 73
    invoke-static {}, Lcom/google/common/collect/ArrayListMultimap;->create()Lcom/google/common/collect/ArrayListMultimap;

    move-result-object p2

    iput-object p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->types:Lcom/google/common/collect/Multimap;

    .line 85
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p2

    iput-object p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->libraryChunk:Lj$/util/Optional;

    .line 89
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->id:I

    .line 90
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageUtils;->readPackageName(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->packageName:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->typeStringsOffset:I

    .line 92
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->lastPublicType:I

    .line 93
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->keyStringsOffset:I

    .line 94
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->lastPublicKey:I

    .line 95
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->typeIdOffset:I

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->id:I

    return v0
.end method

.method public getKeyStringPool()Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;
    .locals 3

    .line 139
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->getChunks()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->keyStringsOffset:I

    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->offset:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;

    .line 140
    instance-of v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;

    const-string v2, "Key string pool not found."

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 141
    check-cast v0, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method protected getType()Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;
    .locals 1

    .line 236
    sget-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->TABLE_PACKAGE:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    return-object v0
.end method

.method public getTypeChunks()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->types:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getTypeChunks(I)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection<",
            "Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->types:Lcom/google/common/collect/Multimap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getTypeChunks(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk;",
            ">;"
        }
    .end annotation

    .line 193
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->getTypeStringPool()Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;

    .line 194
    invoke-virtual {v0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->getTypeChunks(I)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getTypeSpecChunk(I)Lcom/google/devrel/gmscore/tools/apk/arsc/TypeSpecChunk;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->typeSpecs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeSpecChunk;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeSpecChunk;

    return-object p1
.end method

.method public getTypeSpecChunk(Ljava/lang/String;)Lcom/google/devrel/gmscore/tools/apk/arsc/TypeSpecChunk;
    .locals 1

    .line 216
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->getTypeStringPool()Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;

    .line 217
    invoke-virtual {v0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->getTypeSpecChunk(I)Lcom/google/devrel/gmscore/tools/apk/arsc/TypeSpecChunk;

    move-result-object p1

    return-object p1
.end method

.method public getTypeSpecChunks()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/devrel/gmscore/tools/apk/arsc/TypeSpecChunk;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->typeSpecs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getTypeString(I)Ljava/lang/String;
    .locals 5

    .line 151
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->getTypeStringPool()Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;

    move-result-object v0

    const-string v1, "Package has no type pool."

    .line 152
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-virtual {v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;->getStyleCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No type for id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    sub-int/2addr p1, v2

    .line 154
    invoke-virtual {v0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTypeStringPool()Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;
    .locals 3

    .line 162
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->getChunks()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->typeStringsOffset:I

    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->offset:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;

    .line 163
    instance-of v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;

    const-string v2, "Type string pool not found."

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 164
    check-cast v0, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;

    return-object v0
.end method

.method protected init(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 100
    invoke-super {p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/ChunkWithChunks;->init(Ljava/nio/ByteBuffer;)V

    .line 101
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->getChunks()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;

    .line 102
    instance-of v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk;

    if-eqz v1, :cond_0

    .line 103
    check-cast v0, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk;

    .line 104
    iget-object v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->types:Lcom/google/common/collect/Multimap;

    invoke-virtual {v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    :cond_0
    instance-of v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeSpecChunk;

    if-eqz v1, :cond_1

    .line 106
    check-cast v0, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeSpecChunk;

    .line 107
    iget-object v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->typeSpecs:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeSpecChunk;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 108
    :cond_1
    instance-of v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk;

    if-eqz v1, :cond_3

    .line 109
    iget-object v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->libraryChunk:Lj$/util/Optional;

    invoke-virtual {v1}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_2

    .line 113
    check-cast v0, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk;

    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->libraryChunk:Lj$/util/Optional;

    goto :goto_0

    .line 110
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple library chunks present in package chunk."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_3
    instance-of v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;

    if-eqz v1, :cond_4

    goto :goto_0

    .line 115
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "PackageChunk contains an unexpected chunk: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->id:I

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->packageName:Ljava/lang/String;

    return-void
.end method

.method protected writeHeader(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 241
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->id:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 242
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->packageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageUtils;->writePackageName(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 243
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 244
    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->lastPublicType:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 245
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 246
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->lastPublicKey:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 247
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->typeIdOffset:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected writePayload(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->typeStringsOffset:I

    .line 254
    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->keyStringsOffset:I

    .line 256
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->getChunks()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;

    .line 257
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->getTypeStringPool()Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->getHeaderSize()I

    move-result v0

    add-int/2addr v3, v0

    move v0, v3

    goto :goto_1

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->getKeyStringPool()Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 260
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->getHeaderSize()I

    move-result v1

    add-int/2addr v3, v1

    move v1, v3

    .line 262
    :cond_1
    :goto_1
    invoke-virtual {v4, p3}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->toByteArray(Z)[B

    move-result-object v3

    .line 263
    invoke-interface {p1, v3}, Ljava/io/DataOutput;->write([B)V

    .line 264
    array-length v3, v3

    invoke-virtual {p0, p1, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->writePad(Ljava/io/DataOutput;I)I

    move-result v3

    goto :goto_0

    :cond_2
    const/16 p1, 0x10c

    .line 266
    invoke-virtual {p2, p1, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const/16 p1, 0x114

    .line 267
    invoke-virtual {p2, p1, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void
.end method
