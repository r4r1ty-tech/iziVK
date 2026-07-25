.class public final synthetic Lru/vtosters/lite/themes/items/VTLPalette$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lru/vtosters/lite/themes/items/VTLPalette;


# direct methods
.method public synthetic constructor <init>(Lru/vtosters/lite/themes/items/VTLPalette;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/themes/items/VTLPalette$$ExternalSyntheticLambda1;->f$0:Lru/vtosters/lite/themes/items/VTLPalette;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lru/vtosters/lite/themes/items/VTLPalette$$ExternalSyntheticLambda1;->f$0:Lru/vtosters/lite/themes/items/VTLPalette;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lru/vtosters/lite/themes/items/VTLPalette;->lambda$fromJson$1(Lru/vtosters/lite/themes/items/VTLPalette;Lorg/json/JSONObject;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
