.class public Lru/vtosters/lite/ui/views/rarepebble/AlphaView;
.super Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;
.source "AlphaView.java"

# interfaces
.implements Lru/vtosters/lite/ui/views/rarepebble/ColorObserver;


# instance fields
.field private observableColor:Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1}, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;-><init>(Landroid/content/Context;)V

    .line 8
    new-instance p1, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;-><init>(I)V

    iput-object p1, p0, Lru/vtosters/lite/ui/views/rarepebble/AlphaView;->observableColor:Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;

    return-void
.end method


# virtual methods
.method protected getPointerColor(F)I
    .locals 2

    .line 33
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/AlphaView;->observableColor:Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;

    invoke-virtual {v0}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->getLightness()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    mul-float p1, p1, v0

    add-float/2addr p1, v1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/high16 p1, -0x1000000

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method protected makeBitmap(II)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p1, p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 41
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 42
    iget-object v4, p0, Lru/vtosters/lite/ui/views/rarepebble/AlphaView;->observableColor:Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;

    invoke-virtual {v4}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->getColor()I

    move-result v4

    .line 43
    new-array v5, v3, [I

    :goto_1
    if-ge v0, v3, :cond_2

    int-to-float v6, v0

    int-to-float v7, v3

    div-float/2addr v6, v7

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    :goto_2
    const v7, 0xffffff

    and-int/2addr v7, v4

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float v6, v6, v8

    float-to-int v6, v6

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v6, v7

    .line 46
    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 p1, 0x1

    :goto_3
    if-eqz v2, :cond_4

    const/4 p2, 0x1

    .line 50
    :cond_4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected notifyListener(F)V
    .locals 2

    .line 28
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/AlphaView;->observableColor:Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1, p0}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->updateAlpha(ILru/vtosters/lite/ui/views/rarepebble/ColorObserver;)V

    return-void
.end method

.method public observeColor(Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lru/vtosters/lite/ui/views/rarepebble/AlphaView;->observableColor:Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;

    .line 16
    invoke-virtual {p1, p0}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->addObserver(Lru/vtosters/lite/ui/views/rarepebble/ColorObserver;)V

    return-void
.end method

.method public updateColor(Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;)V
    .locals 1

    .line 21
    invoke-virtual {p1}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->getAlpha()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/views/rarepebble/AlphaView;->setPos(F)V

    .line 22
    invoke-virtual {p0}, Lru/vtosters/lite/ui/views/rarepebble/AlphaView;->updateBitmap()V

    .line 23
    invoke-virtual {p0}, Lru/vtosters/lite/ui/views/rarepebble/AlphaView;->invalidate()V

    return-void
.end method
