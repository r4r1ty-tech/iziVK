.class public Lru/vtosters/hooks/WallpapersHooks;
.super Ljava/lang/Object;
.source "WallpapersHooks.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setBg(Landroid/view/View;)V
    .locals 1

    .line 13
    invoke-static {}, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->hasWallpapers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    check-cast p0, Landroid/widget/ImageView;

    invoke-static {}, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->getWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f040260

    .line 16
    invoke-static {v0}, Lru/vtosters/hooks/other/ThemesUtils;->getColorFromAttr(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method
