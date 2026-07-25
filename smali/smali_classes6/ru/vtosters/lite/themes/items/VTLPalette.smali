.class public Lru/vtosters/lite/themes/items/VTLPalette;
.super Ljava/lang/Object;
.source "VTLPalette.java"


# instance fields
.field public author:Ljava/lang/String;

.field public colors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/vtosters/lite/themes/items/VTLColor;",
            ">;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/vtosters/lite/themes/items/VTLPalette;->colors:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lru/vtosters/lite/themes/items/VTLColor;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iput-object p1, p0, Lru/vtosters/lite/themes/items/VTLPalette;->id:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lru/vtosters/lite/themes/items/VTLPalette;->name:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lru/vtosters/lite/themes/items/VTLPalette;->author:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lru/vtosters/lite/themes/items/VTLPalette;->colors:Ljava/util/List;

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lru/vtosters/lite/themes/items/VTLPalette;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 30
    new-instance v0, Lru/vtosters/lite/themes/items/VTLPalette;

    invoke-direct {v0}, Lru/vtosters/lite/themes/items/VTLPalette;-><init>()V

    const-string v1, "palette_id"

    .line 31
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/vtosters/lite/themes/items/VTLPalette;->setId(Ljava/lang/String;)Lru/vtosters/lite/themes/items/VTLPalette;

    move-result-object v0

    const-string v1, "name"

    .line 32
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/vtosters/lite/themes/items/VTLPalette;->setName(Ljava/lang/String;)Lru/vtosters/lite/themes/items/VTLPalette;

    move-result-object v0

    const-string v1, "author"

    .line 33
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/vtosters/lite/themes/items/VTLPalette;->setAuthor(Ljava/lang/String;)Lru/vtosters/lite/themes/items/VTLPalette;

    move-result-object v0

    const-string v1, "palette"

    .line 34
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    .line 35
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-static {v1, v2}, Lj$/util/stream/IntStream$-CC;->range(II)Lj$/util/stream/IntStream;

    move-result-object v1

    .line 36
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lru/vtosters/lite/themes/items/VTLPalette$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lru/vtosters/lite/themes/items/VTLPalette$$ExternalSyntheticLambda0;-><init>(Lorg/json/JSONArray;)V

    invoke-interface {v1, v2}, Lj$/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lru/vtosters/lite/themes/items/VTLPalette$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lru/vtosters/lite/themes/items/VTLPalette$$ExternalSyntheticLambda1;-><init>(Lru/vtosters/lite/themes/items/VTLPalette;)V

    .line 37
    invoke-interface {p0, v1}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method static synthetic lambda$fromJson$0(Lru/vtosters/lite/themes/items/VTLPalette;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "index"

    .line 49
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "color"

    .line 50
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "#"

    .line 51
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 52
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lru/vtosters/lite/themes/items/VTLPalette;->setColor(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$fromJson$1(Lru/vtosters/lite/themes/items/VTLPalette;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "name"

    .line 38
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "colors"

    .line 39
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    .line 46
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-static {v1, v2}, Lj$/util/stream/IntStream$-CC;->range(II)Lj$/util/stream/IntStream;

    move-result-object v1

    .line 47
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lru/vtosters/lite/themes/items/VTLPalette$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lru/vtosters/lite/themes/items/VTLPalette$$ExternalSyntheticLambda0;-><init>(Lorg/json/JSONArray;)V

    invoke-interface {v1, v2}, Lj$/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lru/vtosters/lite/themes/items/VTLPalette$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lru/vtosters/lite/themes/items/VTLPalette$$ExternalSyntheticLambda2;-><init>(Lru/vtosters/lite/themes/items/VTLPalette;Ljava/lang/String;)V

    .line 48
    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 44
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    const-string v1, "color"

    .line 55
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "#"

    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    :cond_1
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lru/vtosters/lite/themes/items/VTLPalette;->setColor(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$getColor$2(Ljava/lang/String;Lru/vtosters/lite/themes/items/VTLColor;)Z
    .locals 0

    .line 99
    iget-object p1, p1, Lru/vtosters/lite/themes/items/VTLColor;->resName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getColor$3(Lru/vtosters/lite/themes/items/VTLColor;)Ljava/lang/Integer;
    .locals 0

    .line 100
    iget p0, p0, Lru/vtosters/lite/themes/items/VTLColor;->color:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static valuesOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lru/vtosters/lite/themes/items/VTLPalette;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lru/vtosters/lite/themes/items/VTLColor;",
            ">;)",
            "Lru/vtosters/lite/themes/items/VTLPalette;"
        }
    .end annotation

    .line 66
    new-instance v0, Lru/vtosters/lite/themes/items/VTLPalette;

    invoke-direct {v0}, Lru/vtosters/lite/themes/items/VTLPalette;-><init>()V

    .line 67
    invoke-virtual {v0, p0}, Lru/vtosters/lite/themes/items/VTLPalette;->setId(Ljava/lang/String;)Lru/vtosters/lite/themes/items/VTLPalette;

    move-result-object p0

    .line 68
    invoke-virtual {p0, p1}, Lru/vtosters/lite/themes/items/VTLPalette;->setName(Ljava/lang/String;)Lru/vtosters/lite/themes/items/VTLPalette;

    move-result-object p0

    .line 69
    invoke-virtual {p0, p2}, Lru/vtosters/lite/themes/items/VTLPalette;->setAuthor(Ljava/lang/String;)Lru/vtosters/lite/themes/items/VTLPalette;

    move-result-object p0

    .line 70
    invoke-virtual {p0, p3}, Lru/vtosters/lite/themes/items/VTLPalette;->setColors(Ljava/util/List;)Lru/vtosters/lite/themes/items/VTLPalette;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getColor(Ljava/lang/String;)I
    .locals 2

    .line 98
    iget-object v0, p0, Lru/vtosters/lite/themes/items/VTLPalette;->colors:Ljava/util/List;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/themes/items/VTLPalette$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lru/vtosters/lite/themes/items/VTLPalette$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lru/vtosters/lite/themes/items/VTLPalette$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lru/vtosters/lite/themes/items/VTLPalette$$ExternalSyntheticLambda4;-><init>()V

    .line 100
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 101
    invoke-interface {p1}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p1

    const/4 v0, -0x1

    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public setAuthor(Ljava/lang/String;)Lru/vtosters/lite/themes/items/VTLPalette;
    .locals 0

    .line 84
    iput-object p1, p0, Lru/vtosters/lite/themes/items/VTLPalette;->author:Ljava/lang/String;

    return-object p0
.end method

.method public setColor(Ljava/lang/String;I)V
    .locals 3

    .line 94
    iget-object v0, p0, Lru/vtosters/lite/themes/items/VTLPalette;->colors:Ljava/util/List;

    new-instance v1, Lru/vtosters/lite/themes/items/VTLColor;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Lru/vtosters/lite/themes/items/VTLColor;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setColors(Ljava/util/List;)Lru/vtosters/lite/themes/items/VTLPalette;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/vtosters/lite/themes/items/VTLColor;",
            ">;)",
            "Lru/vtosters/lite/themes/items/VTLPalette;"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lru/vtosters/lite/themes/items/VTLPalette;->colors:Ljava/util/List;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lru/vtosters/lite/themes/items/VTLPalette;
    .locals 0

    .line 74
    iput-object p1, p0, Lru/vtosters/lite/themes/items/VTLPalette;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lru/vtosters/lite/themes/items/VTLPalette;
    .locals 0

    .line 79
    iput-object p1, p0, Lru/vtosters/lite/themes/items/VTLPalette;->name:Ljava/lang/String;

    return-object p0
.end method
