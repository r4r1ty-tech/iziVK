.class public final Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk;
.super Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;
.source "LibraryChunk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk$Entry;
    }
.end annotation


# instance fields
.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final entryCount:I


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;-><init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V

    .line 44
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk;->entries:Ljava/util/List;

    .line 48
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk;->entryCount:I

    return-void
.end method

.method private enumerateEntries(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk$Entry;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk;->entryCount:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk;->offset:I

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk;->getHeaderSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 60
    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk;->entryCount:I

    mul-int/lit16 v2, v2, 0x104

    add-int/2addr v2, v1

    :goto_0
    if-ge v1, v2, :cond_0

    .line 63
    invoke-static {p1, v1}, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk$Entry;->create(Ljava/nio/ByteBuffer;I)Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk$Entry;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit16 v1, v1, 0x104

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected getType()Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;
    .locals 1

    .line 71
    sget-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->TABLE_LIBRARY:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    return-object v0
.end method

.method protected init(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->init(Ljava/nio/ByteBuffer;)V

    .line 54
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk;->entries:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk;->enumerateEntries(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method protected writeHeader(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->writeHeader(Ljava/nio/ByteBuffer;)V

    .line 77
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected writePayload(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk;->entries:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk$Entry;

    .line 84
    invoke-virtual {v0, p3}, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk$Entry;->toByteArray(Z)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    goto :goto_0

    :cond_0
    return-void
.end method
