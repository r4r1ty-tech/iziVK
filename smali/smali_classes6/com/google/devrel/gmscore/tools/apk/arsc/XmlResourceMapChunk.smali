.class public Lcom/google/devrel/gmscore/tools/apk/arsc/XmlResourceMapChunk;
.super Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;
.source "XmlResourceMapChunk.java"


# static fields
.field private static final RESOURCE_SIZE:I = 0x4


# instance fields
.field private final resources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;-><init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlResourceMapChunk;->resources:Ljava/util/List;

    return-void
.end method

.method private enumerateResources(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlResourceMapChunk;->getOriginalChunkSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlResourceMapChunk;->getHeaderSize()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlResourceMapChunk;->offset:I

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlResourceMapChunk;->getHeaderSize()I

    move-result v3

    add-int/2addr v2, v3

    .line 60
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 61
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 64
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    return-object v1
.end method


# virtual methods
.method public getResourceId(I)Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceIdentifier;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlResourceMapChunk;->resources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceIdentifier;->create(I)Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceIdentifier;

    move-result-object p1

    return-object p1
.end method

.method protected getType()Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;
    .locals 1

    .line 80
    sget-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->XML_RESOURCE_MAP:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    return-object v0
.end method

.method protected init(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->init(Ljava/nio/ByteBuffer;)V

    .line 53
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlResourceMapChunk;->resources:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlResourceMapChunk;->enumerateResources(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method protected writePayload(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->writePayload(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;Z)V

    .line 87
    iget-object p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlResourceMapChunk;->resources:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 88
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-interface {p1, p3}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
