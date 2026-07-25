.class public Lru/vtosters/lite/themes/utils/ArscEditor;
.super Ljava/lang/Object;
.source "ArscEditor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeColors(Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceFile;[II)V
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceFile;->getChunks()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda1;-><init>()V

    .line 14
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda2;-><init>()V

    .line 15
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda3;-><init>()V

    .line 16
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda4;-><init>()V

    .line 17
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2}, Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda5;-><init>([II)V

    .line 19
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static isColorResourceValue(Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;)Z
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;->type:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    sget-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->INT_COLOR_ARGB8:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;->type:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    sget-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->INT_COLOR_RGB8:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;->type:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    sget-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->INT_COLOR_ARGB4:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;->type:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    sget-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->INT_COLOR_RGB4:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$changeColors$0(Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)Z
    .locals 0

    .line 14
    instance-of p0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceTableChunk;

    return p0
.end method

.method static synthetic lambda$changeColors$1(Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceTableChunk;
    .locals 0

    .line 15
    check-cast p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceTableChunk;

    return-object p0
.end method

.method static synthetic lambda$changeColors$2(Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceTableChunk;)Lj$/util/stream/Stream;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/ResourceTableChunk;->getPackages()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$changeColors$3(Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk;)Ljava/util/AbstractMap$SimpleEntry;
    .locals 1

    .line 18
    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v0, p0, p1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$changeColors$4(Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;)Lj$/util/stream/Stream;
    .locals 2

    const-string v0, "color"

    .line 17
    invoke-virtual {p0, v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->getTypeChunks(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda0;-><init>(Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;)V

    .line 18
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$changeColors$5(Ljava/util/Map$Entry;)Z
    .locals 0

    .line 20
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk$Entry;

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk$Entry;->isComplex()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$changeColors$6(Ljava/util/Map$Entry;)Z
    .locals 0

    .line 21
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk$Entry;

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk$Entry;->value()Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/lite/themes/utils/ArscEditor;->isColorResourceValue(Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$changeColors$7(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$changeColors$8(Ljava/util/AbstractMap$SimpleEntry;[IILjava/util/Map$Entry;)V
    .locals 2

    .line 23
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk$Entry;

    invoke-virtual {v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk$Entry;->value()Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;

    move-result-object v0

    .line 24
    invoke-virtual {p0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;

    invoke-virtual {v1}, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->getId()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    invoke-virtual {p0}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk;

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk;->getId()I

    move-result p0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v1

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    or-int/2addr p0, p3

    .line 25
    invoke-static {p1}, Lj$/util/DesugarArrays;->stream([I)Lj$/util/stream/IntStream;

    move-result-object p1

    new-instance p3, Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0}, Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-interface {p1, p3}, Lj$/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 27
    iput p2, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;->data:I

    :cond_0
    return-void
.end method

.method static synthetic lambda$changeColors$9([IILjava/util/AbstractMap$SimpleEntry;)V
    .locals 2

    .line 19
    invoke-virtual {p2}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk;

    invoke-virtual {v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk;->getEntries()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda7;-><init>()V

    .line 20
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda8;-><init>()V

    .line 21
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda9;

    invoke-direct {v1, p2, p0, p1}, Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda9;-><init>(Ljava/util/AbstractMap$SimpleEntry;[II)V

    .line 22
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
