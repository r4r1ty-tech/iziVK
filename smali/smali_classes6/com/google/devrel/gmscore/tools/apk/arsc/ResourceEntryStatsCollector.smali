.class public Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;
.super Ljava/lang/Object;
.source "ResourceEntryStatsCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector$ResourceStatistics;
    }
.end annotation


# static fields
.field private static final OFFSET_SIZE:I = 0x4

.field private static final PACKAGE_CHUNK_OVERHEAD:I = 0x8

.field private static final STYLE_OVERHEAD:I = 0x8


# instance fields
.field private final blamer:Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer;

.field private final resourceTable:Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceTableChunk;

.field private final stats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer$ResourceEntry;",
            "Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector$ResourceStatistics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer;Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceTableChunk;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->stats:Ljava/util/Map;

    .line 63
    iput-object p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->resourceTable:Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceTableChunk;

    .line 64
    iput-object p1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->blamer:Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer;

    return-void
.end method

.method private addSizes(Ljava/util/Collection;III)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer$ResourceEntry;",
            ">;III)V"
        }
    .end annotation

    .line 229
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 230
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer$ResourceEntry;

    .line 232
    iget-object v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->stats:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->stats:Ljava/util/Map;

    new-instance v3, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector$ResourceStatistics;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector$ResourceStatistics;-><init>(Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector$ResourceStatistics-IA;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->stats:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector$ResourceStatistics;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 237
    invoke-static {v1, p3}, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector$ResourceStatistics;->-$$Nest$maddPrivateSize(Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector$ResourceStatistics;I)V

    goto :goto_1

    .line 239
    :cond_1
    invoke-static {v1, p3}, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector$ResourceStatistics;->-$$Nest$maddSharedSize(Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector$ResourceStatistics;I)V

    :goto_1
    if-ne v0, v2, :cond_2

    if-ne p4, v2, :cond_2

    .line 244
    invoke-static {v1, p2}, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector$ResourceStatistics;->-$$Nest$maddPrivateSize(Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector$ResourceStatistics;I)V

    .line 246
    :cond_2
    invoke-static {v1, p3, v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector$ResourceStatistics;->-$$Nest$maddProportionalSize(Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector$ResourceStatistics;II)V

    mul-int v2, v0, p4

    .line 247
    invoke-static {v1, p2, v2}, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector$ResourceStatistics;->-$$Nest$maddProportionalSize(Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector$ResourceStatistics;II)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private computeKeyPoolSizes()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->blamer:Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer;

    invoke-virtual {v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer;->getKeyToBlamedResources()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 112
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;

    invoke-virtual {v2}, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->getKeyStringPool()Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/List;

    invoke-direct {p0, v2, v1}, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->computePoolSizes(Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;[Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private computePackageChunkSizes()V
    .locals 5

    .line 138
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->blamer:Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer;

    invoke-virtual {v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer;->getPackageToBlamedResources()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 139
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;

    invoke-virtual {v2}, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->getHeaderSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    .line 140
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->addSizes(Ljava/util/Collection;III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private computePackageSizes()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->computeTypePoolSizes()V

    .line 96
    invoke-direct {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->computeKeyPoolSizes()V

    .line 97
    invoke-direct {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->computeTypeSpecSizes()V

    .line 98
    invoke-direct {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->computeTypeChunkSizes()V

    .line 99
    invoke-direct {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->computePackageChunkSizes()V

    return-void
.end method

.method private computePoolSizes(Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;[Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;",
            "[",
            "Ljava/util/List<",
            "Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer$ResourceEntry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-virtual {p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;->getHeaderSize()I

    move-result v0

    .line 147
    invoke-virtual {p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;->getStyleCount()I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v0, v0, 0x8

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 155
    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_2

    .line 156
    aget-object v4, p2, v2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 157
    invoke-direct {p0, p1, v2}, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->computeStringAndStyleSize(Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    :cond_2
    :goto_2
    array-length v2, p2

    if-ge v1, v2, :cond_4

    .line 165
    aget-object v2, p2, v1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    .line 168
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->computeStringAndStyleSize(Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;I)I

    move-result v2

    .line 169
    aget-object v4, p2, v1

    invoke-direct {p0, v4, v0, v2, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->addSizes(Ljava/util/Collection;III)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private computeStringAndStyleSize(Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    invoke-direct {p0, p1, p2}, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->computeStringSize(Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;I)I

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->computeStyleSize(Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;I)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method private computeStringPoolSizes()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->resourceTable:Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceTableChunk;

    invoke-virtual {v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceTableChunk;->getStringPool()Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->blamer:Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer;

    invoke-virtual {v1}, Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer;->getStringToBlamedResources()[Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->computePoolSizes(Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;[Ljava/util/List;)V

    return-void
.end method

.method private computeStringSize(Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;I)I
    .locals 0

    .line 200
    invoke-virtual {p1, p2}, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 201
    invoke-virtual {p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;->getStringType()Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString$Type;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString;->encodeString(Ljava/lang/String;Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString$Type;)[B

    move-result-object p1

    array-length p1, p1

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method private computeStyleSize(Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    invoke-virtual {p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;->getStyleCount()I

    move-result v0

    if-lt p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 216
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;->getStyle(I)Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk$StringPoolStyle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk$StringPoolStyle;->toByteArray()[B

    move-result-object p1

    array-length p1, p1

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method private computeTypeChunkSizes()V
    .locals 7

    .line 125
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->blamer:Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer;

    invoke-virtual {v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer;->getTypeEntryToBlamedResources()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 126
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk$Entry;

    .line 127
    invoke-virtual {v2}, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk$Entry;->parent()Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk;

    move-result-object v3

    .line 128
    invoke-virtual {v2}, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk$Entry;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    .line 129
    invoke-virtual {v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk;->getEntries()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    .line 130
    invoke-virtual {v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk;->getTotalEntryCount()I

    move-result v5

    invoke-virtual {v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk;->getEntries()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    sub-int/2addr v5, v6

    .line 131
    invoke-virtual {v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk;->getHeaderSize()I

    move-result v3

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v3, v5

    .line 132
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->addSizes(Ljava/util/Collection;III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private computeTypePoolSizes()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->blamer:Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer;

    invoke-virtual {v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer;->getTypeToBlamedResources()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 105
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;

    invoke-virtual {v2}, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->getTypeStringPool()Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/List;

    invoke-direct {p0, v2, v1}, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->computePoolSizes(Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;[Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private computeTypeSpecSizes()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->blamer:Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer;

    invoke-virtual {v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer;->getTypeToBlamedResources()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 119
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/List;

    invoke-direct {p0, v2, v1}, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->computeTypeSpecSizes(Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;[Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private computeTypeSpecSizes(Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;[Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;",
            "[",
            "Ljava/util/List<",
            "Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer$ResourceEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 175
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 177
    invoke-virtual {p1, v2}, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->getTypeSpecChunk(I)Lcom/google/devrel/gmscore/tools/apk/arsc/TypeSpecChunk;

    move-result-object v3

    .line 179
    aget-object v1, p2, v1

    invoke-virtual {v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeSpecChunk;->getOriginalChunkSize()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v1, v3, v0, v4}, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->addSizes(Ljava/util/Collection;III)V

    move v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public compute()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->stats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v1, "Must only call #compute once."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->blamer:Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer;

    invoke-virtual {v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer;->blame()V

    .line 70
    invoke-direct {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->computeStringPoolSizes()V

    .line 71
    invoke-direct {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->computePackageSizes()V

    return-void
.end method

.method public getStats(Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer$ResourceEntry;)Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector$ResourceStatistics;
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->stats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Must call #compute() first."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->stats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->stats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector$ResourceStatistics;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector$ResourceStatistics;->EMPTY:Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector$ResourceStatistics;

    :goto_0
    return-object p1
.end method

.method public getStats()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer$ResourceEntry;",
            "Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector$ResourceStatistics;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->stats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Must call #compute() first."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceEntryStatsCollector;->stats:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
