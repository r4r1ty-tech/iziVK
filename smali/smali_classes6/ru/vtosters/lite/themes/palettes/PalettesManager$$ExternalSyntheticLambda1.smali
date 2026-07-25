.class public final synthetic Lru/vtosters/lite/themes/palettes/PalettesManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/res/AssetManager;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/themes/palettes/PalettesManager$$ExternalSyntheticLambda1;->f$0:Landroid/content/res/AssetManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lru/vtosters/lite/themes/palettes/PalettesManager$$ExternalSyntheticLambda1;->f$0:Landroid/content/res/AssetManager;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lru/vtosters/lite/themes/palettes/PalettesManager;->lambda$copyPaletteFromAssets$1(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
