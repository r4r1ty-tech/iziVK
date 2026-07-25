.class public final synthetic Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/AbstractMap$SimpleEntry;

.field public final synthetic f$1:[I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/AbstractMap$SimpleEntry;[II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda9;->f$0:Ljava/util/AbstractMap$SimpleEntry;

    iput-object p2, p0, Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda9;->f$1:[I

    iput p3, p0, Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda9;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda9;->f$0:Ljava/util/AbstractMap$SimpleEntry;

    iget-object v1, p0, Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda9;->f$1:[I

    iget v2, p0, Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda9;->f$2:I

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, v1, v2, p1}, Lru/vtosters/lite/themes/utils/ArscEditor;->lambda$changeColors$8(Ljava/util/AbstractMap$SimpleEntry;[IILjava/util/Map$Entry;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
