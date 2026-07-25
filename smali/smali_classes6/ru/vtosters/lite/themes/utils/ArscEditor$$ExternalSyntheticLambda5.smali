.class public final synthetic Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>([II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda5;->f$0:[I

    iput p2, p0, Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda5;->f$0:[I

    iget v1, p0, Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda5;->f$1:I

    check-cast p1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-static {v0, v1, p1}, Lru/vtosters/lite/themes/utils/ArscEditor;->lambda$changeColors$9([IILjava/util/AbstractMap$SimpleEntry;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
