.class public Lru/vtosters/lite/ui/views/rarepebble/ValueView;
.super Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;
.source "ValueView.java"

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

    iput-object p1, p0, Lru/vtosters/lite/ui/views/rarepebble/ValueView;->observableColor:Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;

    return-void
.end method


# virtual methods
.method protected getPointerColor(F)I
    .locals 1

    .line 33
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/ValueView;->observableColor:Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;

    invoke-virtual {v0}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->getLightness()F

    move-result v0

    mul-float p1, p1, v0

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
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p1, p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 40
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 41
    new-array v4, v3, [I

    const/4 v5, 0x3

    new-array v5, v5, [F

    .line 43
    fill-array-data v5, :array_0

    .line 44
    iget-object v6, p0, Lru/vtosters/lite/ui/views/rarepebble/ValueView;->observableColor:Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;

    invoke-virtual {v6, v5}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->getHsv([F)V

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
    const/4 v7, 0x2

    aput v6, v5, v7

    .line 48
    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    aput v6, v4, v0

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

    .line 52
    :cond_4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method protected notifyListener(F)V
    .locals 1

    .line 28
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/ValueView;->observableColor:Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;

    invoke-virtual {v0, p1, p0}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->updateValue(FLru/vtosters/lite/ui/views/rarepebble/ColorObserver;)V

    return-void
.end method

.method public observeColor(Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lru/vtosters/lite/ui/views/rarepebble/ValueView;->observableColor:Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;

    .line 16
    invoke-virtual {p1, p0}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->addObserver(Lru/vtosters/lite/ui/views/rarepebble/ColorObserver;)V

    return-void
.end method

.method public updateColor(Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;)V
    .locals 0

    .line 21
    iget-object p1, p0, Lru/vtosters/lite/ui/views/rarepebble/ValueView;->observableColor:Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;

    invoke-virtual {p1}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->getValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/views/rarepebble/ValueView;->setPos(F)V

    .line 22
    invoke-virtual {p0}, Lru/vtosters/lite/ui/views/rarepebble/ValueView;->updateBitmap()V

    .line 23
    invoke-virtual {p0}, Lru/vtosters/lite/ui/views/rarepebble/ValueView;->invalidate()V

    return-void
.end method
