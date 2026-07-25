.class public final synthetic Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;


# direct methods
.method public synthetic constructor <init>(Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment$$ExternalSyntheticLambda2;->f$0:Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment$$ExternalSyntheticLambda2;->f$0:Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;

    check-cast p1, Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    invoke-virtual {v0, p1}, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;->lambda$onCreate$4$ru-vtosters-lite-ui-wallpapers-WallpaperMenuFragment(Lru/vtosters/lite/ui/wallpapers/ImageEffects;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
