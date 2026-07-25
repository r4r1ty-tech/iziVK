.class public final Lcom/google/devrel/gmscore/tools/apk/arsc/TypeSpecChunk;
.super Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;
.source "TypeSpecChunk.java"


# instance fields
.field private final id:I

.field private final resources:[I


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V
    .locals 3

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;-><init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V

    .line 44
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    invoke-static {p2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result p2

    iput p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeSpecChunk;->id:I

    .line 45
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 46
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    .line 47
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeSpecChunk;->resources:[I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 50
    iget-object v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeSpecChunk;->resources:[I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getPackageChunk()Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;
    .locals 2

    .line 90
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeSpecChunk;->getParent()Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 91
    instance-of v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;

    if-nez v1, :cond_0

    .line 92
    invoke-virtual {v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->getParent()Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 94
    check-cast v0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeSpecChunk;->id:I

    return v0
.end method

.method public getResourceCount()I
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeSpecChunk;->resources:[I

    array-length v0, v0

    return v0
.end method

.method protected getType()Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;
    .locals 1

    .line 71
    sget-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->TABLE_TYPE_SPEC:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 3

    .line 78
    invoke-direct {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeSpecChunk;->getPackageChunk()Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;

    move-result-object v0

    const-string v1, "%s has no parent package."

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-virtual {v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->getTypeStringPool()Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;

    move-result-object v0

    const-string v1, "%s\'s parent package has no type pool."

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeSpecChunk;->getId()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeHeader(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 99
    invoke-super {p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->writeHeader(Ljava/nio/ByteBuffer;)V

    .line 102
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeSpecChunk;->id:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 103
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeSpecChunk;->resources:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected writePayload(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-object p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeSpecChunk;->resources:[I

    array-length p3, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    aget v1, p2, v0

    .line 110
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
