.class public Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;
.super Ljava/lang/Object;
.source "ObservableColor.java"


# instance fields
.field private alpha:I

.field private final hsv:[F

.field private final observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/vtosters/lite/ui/views/rarepebble/ColorObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 11
    fill-array-data v0, :array_0

    iput-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->hsv:[F

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->observers:Ljava/util/List;

    .line 16
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 17
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->alpha:I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private notifyOtherObservers(Lru/vtosters/lite/ui/views/rarepebble/ColorObserver;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/vtosters/lite/ui/views/rarepebble/ColorObserver;

    if-eq v1, p1, :cond_0

    .line 93
    invoke-interface {v1, p0}, Lru/vtosters/lite/ui/views/rarepebble/ColorObserver;->updateColor(Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addObserver(Lru/vtosters/lite/ui/views/rarepebble/ColorObserver;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 43
    iget v0, p0, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->alpha:I

    return v0
.end method

.method public getColor()I
    .locals 2

    .line 27
    iget v0, p0, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->alpha:I

    iget-object v1, p0, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->hsv:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method

.method public getHsv([F)V
    .locals 3

    .line 21
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->hsv:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    aput v2, p1, v1

    const/4 v1, 0x1

    .line 22
    aget v2, v0, v1

    aput v2, p1, v1

    const/4 v1, 0x2

    .line 23
    aget v0, v0, v1

    aput v0, p1, v1

    return-void
.end method

.method public getHue()F
    .locals 2

    .line 31
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->hsv:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getLightness()F
    .locals 2

    .line 47
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->hsv:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->getLightnessWithValue(F)F

    move-result v0

    return v0
.end method

.method public getLightnessWithValue(F)F
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 51
    iget-object v1, p0, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->hsv:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v0, v2

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 52
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    .line 53
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e59b3d0    # 0.2126f

    mul-float v0, v0, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f371759    # 0.7152f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    const v1, 0x3d93dd98    # 0.0722f

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    const/high16 p1, 0x437f0000    # 255.0f

    div-float/2addr v0, p1

    return v0
.end method

.method public getSat()F
    .locals 2

    .line 35
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->hsv:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getValue()F
    .locals 2

    .line 39
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->hsv:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public updateAlpha(ILru/vtosters/lite/ui/views/rarepebble/ColorObserver;)V
    .locals 0

    .line 72
    iput p1, p0, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->alpha:I

    .line 73
    invoke-direct {p0, p2}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->notifyOtherObservers(Lru/vtosters/lite/ui/views/rarepebble/ColorObserver;)V

    return-void
.end method

.method public updateColor(IFFFLru/vtosters/lite/ui/views/rarepebble/ColorObserver;)V
    .locals 1

    .line 83
    iput p1, p0, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->alpha:I

    .line 84
    iget-object p1, p0, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->hsv:[F

    const/4 v0, 0x0

    aput p2, p1, v0

    const/4 p2, 0x1

    .line 85
    aput p3, p1, p2

    const/4 p2, 0x2

    .line 86
    aput p4, p1, p2

    .line 87
    invoke-direct {p0, p5}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->notifyOtherObservers(Lru/vtosters/lite/ui/views/rarepebble/ColorObserver;)V

    return-void
.end method

.method public updateColor(ILru/vtosters/lite/ui/views/rarepebble/ColorObserver;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->hsv:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 78
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->alpha:I

    .line 79
    invoke-direct {p0, p2}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->notifyOtherObservers(Lru/vtosters/lite/ui/views/rarepebble/ColorObserver;)V

    return-void
.end method

.method public updateHueSat(FFLru/vtosters/lite/ui/views/rarepebble/ColorObserver;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->hsv:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 62
    aput p2, v0, p1

    .line 63
    invoke-direct {p0, p3}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->notifyOtherObservers(Lru/vtosters/lite/ui/views/rarepebble/ColorObserver;)V

    return-void
.end method

.method public updateValue(FLru/vtosters/lite/ui/views/rarepebble/ColorObserver;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->hsv:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 68
    invoke-direct {p0, p2}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->notifyOtherObservers(Lru/vtosters/lite/ui/views/rarepebble/ColorObserver;)V

    return-void
.end method
