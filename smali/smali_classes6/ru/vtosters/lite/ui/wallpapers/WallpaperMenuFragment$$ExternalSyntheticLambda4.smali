.class public final synthetic Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;

.field public final synthetic f$1:Lru/vtosters/lite/ui/wallpapers/ImageEffects;


# direct methods
.method public synthetic constructor <init>(Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;Lru/vtosters/lite/ui/wallpapers/ImageEffects;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment$$ExternalSyntheticLambda4;->f$0:Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;

    iput-object p2, p0, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment$$ExternalSyntheticLambda4;->f$1:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment$$ExternalSyntheticLambda4;->f$0:Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;

    iget-object v1, p0, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment$$ExternalSyntheticLambda4;->f$1:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    invoke-virtual {v0, v1, p1, p2}, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;->lambda$onCreate$2$ru-vtosters-lite-ui-wallpapers-WallpaperMenuFragment(Lru/vtosters/lite/ui/wallpapers/ImageEffects;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
