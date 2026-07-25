.class public Lru/vtosters/lite/ui/views/rarepebble/HueSatView;
.super Lru/vtosters/lite/ui/views/rarepebble/SquareView;
.source "HueSatView.java"

# interfaces
.implements Lru/vtosters/lite/ui/views/rarepebble/ColorObserver;


# static fields
.field private static bitmap:Landroid/graphics/Bitmap;


# instance fields
.field private final borderPaint:Landroid/graphics/Paint;

.field private final borderPath:Landroid/graphics/Path;

.field private h:I

.field private observableColor:Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;

.field private final pointer:Landroid/graphics/PointF;

.field private final pointerPaint:Landroid/graphics/Paint;

.field private final pointerPath:Landroid/graphics/Path;

.field private final viewRect:Landroid/graphics/Rect;

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Lru/vtosters/lite/ui/views/rarepebble/SquareView;-><init>(Landroid/content/Context;)V

    .line 13
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->pointer:Landroid/graphics/PointF;

    .line 18
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->viewRect:Landroid/graphics/Rect;

    .line 21
    new-instance p1, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;-><init>(I)V

    iput-object p1, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->observableColor:Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;

    .line 26
    invoke-static {}, Lru/vtosters/lite/ui/views/rarepebble/Resources;->makeLinePaint()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->borderPaint:Landroid/graphics/Paint;

    .line 27
    invoke-static {}, Lru/vtosters/lite/ui/views/rarepebble/Resources;->makeLinePaint()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->pointerPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    .line 28
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    invoke-static {}, Lru/vtosters/lite/ui/views/rarepebble/Resources;->makePointerPath()Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->pointerPath:Landroid/graphics/Path;

    .line 30
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->borderPath:Landroid/graphics/Path;

    .line 31
    sget-object p1, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->bitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 32
    invoke-direct {p0}, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->optimalBitmapSize()I

    move-result p1

    invoke-static {p1}, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->makeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->bitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private clamp(Landroid/graphics/PointF;FFZ)Z
    .locals 6

    .line 160
    iget v0, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->w:I

    int-to-float v0, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 161
    iget v0, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->h:I

    int-to-float v0, v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 162
    iget v0, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->w:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    .line 163
    iget v1, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->h:I

    int-to-float v1, v1

    sub-float/2addr v1, p3

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    .line 164
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 165
    iget v3, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->w:I

    int-to-float v4, v3

    const/4 v5, 0x1

    cmpl-float v4, v2, v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    if-nez p4, :cond_3

    :cond_1
    if-eqz v4, :cond_2

    int-to-float p2, v3

    int-to-float p3, v3

    mul-float v0, v0, p3

    div-float/2addr v0, v2

    sub-float/2addr p2, v0

    int-to-float p3, v3

    int-to-float p4, v3

    mul-float v1, v1, p4

    div-float/2addr v1, v2

    sub-float/2addr p3, v1

    .line 171
    :cond_2
    invoke-virtual {p1, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    :cond_3
    xor-int/lit8 p1, v4, 0x1

    return p1
.end method

.method private static hueForPos(FFF)F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p2, v0

    float-to-double v0, p2

    float-to-double v2, p0

    sub-double v2, v0, v2

    div-double/2addr v2, v0

    float-to-double p0, p1

    sub-double p0, v0, p0

    div-double/2addr p0, v0

    .line 77
    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    const-wide v0, 0x4076800000000000L    # 360.0

    mul-double p0, p0, v0

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    div-double/2addr p0, v0

    double-to-float p0, p0

    return p0
.end method

.method private static makeBitmap(I)Landroid/graphics/Bitmap;
    .locals 12

    mul-int v0, p0, p0

    .line 56
    new-array v0, v0, [I

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 57
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p0, :cond_2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p0, :cond_1

    mul-int v5, v3, p0

    add-int/2addr v5, v4

    int-to-float v6, v4

    int-to-float v7, v3

    int-to-float v8, p0

    .line 61
    invoke-static {v6, v7, v8}, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->satForPos(FFF)F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v10, v8

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v10, v11

    cmpg-float v10, v9, v10

    if-gtz v10, :cond_0

    .line 64
    invoke-static {v6, v7, v8}, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->hueForPos(FFF)F

    move-result v6

    aput v6, v1, v2

    const/4 v6, 0x1

    aput v9, v1, v6

    const/16 v6, 0xff

    .line 66
    invoke-static {v6, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    aput v6, v0, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p0, p0, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static makeBorderPath(Landroid/graphics/Path;IIF)V
    .locals 2

    int-to-float p1, p1

    sub-float/2addr p1, p3

    float-to-int p1, p1

    int-to-float p2, p2

    sub-float/2addr p2, p3

    float-to-int p2, p2

    .line 47
    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    int-to-float v0, p1

    .line 48
    invoke-virtual {p0, v0, p3}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v1, p2

    .line 49
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 50
    invoke-virtual {p0, p3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    mul-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-direct {v0, p3, p3, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p1, 0x43340000    # 180.0f

    const/high16 p2, 0x43870000    # 270.0f

    invoke-virtual {p0, v0, p1, p2}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 52
    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private optimalBitmapSize()I
    .locals 2

    .line 102
    invoke-virtual {p0}, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 103
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/16 v1, 0x80

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private optimisePointerColor()V
    .locals 6

    .line 177
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->pointerPaint:Landroid/graphics/Paint;

    .line 178
    iget-object v1, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->observableColor:Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->getLightnessWithValue(F)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    const/high16 v1, -0x1000000

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 177
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private static satForPos(FFF)F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p2, v0

    float-to-double v0, p2

    float-to-double v2, p0

    sub-double v2, v0, v2

    div-double/2addr v2, v0

    float-to-double p0, p1

    sub-double p0, v0, p0

    div-double/2addr p0, v0

    mul-double v2, v2, v2

    mul-double p0, p0, p0

    add-double/2addr v2, p0

    double-to-float p0, v2

    return p0
.end method

.method private static setPointer(Landroid/graphics/PointF;FFF)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p3, v0

    float-to-double v0, p3

    float-to-double v2, p2

    .line 92
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    const/high16 p2, 0x43b40000    # 360.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double p1, p1, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr p1, v2

    .line 94
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    .line 95
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double v0, v0, p1

    double-to-float p1, v2

    sub-float p1, p3, p1

    double-to-float p2, v0

    sub-float/2addr p3, p2

    .line 96
    invoke-virtual {p0, p1, p3}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method private update()V
    .locals 5

    .line 151
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->observableColor:Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;

    iget-object v1, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->pointer:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->pointer:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->w:I

    int-to-float v3, v3

    .line 152
    invoke-static {v1, v2, v3}, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->hueForPos(FFF)F

    move-result v1

    iget-object v2, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->pointer:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->pointer:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->w:I

    int-to-float v4, v4

    .line 153
    invoke-static {v2, v3, v4}, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->satForPos(FFF)F

    move-result v2

    .line 151
    invoke-virtual {v0, v1, v2, p0}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->updateHueSat(FFLru/vtosters/lite/ui/views/rarepebble/ColorObserver;)V

    .line 155
    invoke-direct {p0}, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->optimisePointerColor()V

    .line 156
    invoke-virtual {p0}, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->invalidate()V

    return-void
.end method


# virtual methods
.method public observeColor(Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->observableColor:Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;

    .line 108
    invoke-virtual {p1, p0}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->addObserver(Lru/vtosters/lite/ui/views/rarepebble/ColorObserver;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 184
    invoke-super {p0, p1}, Lru/vtosters/lite/ui/views/rarepebble/SquareView;->onDraw(Landroid/graphics/Canvas;)V

    .line 186
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 188
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->borderPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 189
    sget-object v0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 190
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->pointer:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->pointer:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 191
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->pointerPath:Landroid/graphics/Path;

    iget-object v1, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->pointerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 193
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 195
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->borderPath:Landroid/graphics/Path;

    iget-object v1, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 120
    iput p1, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->w:I

    .line 121
    iput p2, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->h:I

    .line 122
    iget-object p3, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->viewRect:Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 124
    iget-object p3, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p3

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    .line 125
    iget-object p4, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->borderPath:Landroid/graphics/Path;

    invoke-static {p4, p1, p2, p3}, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->makeBorderPath(Landroid/graphics/Path;IIF)V

    .line 128
    iget-object p1, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->observableColor:Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;

    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->updateColor(Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 147
    invoke-super {p0, p1}, Lru/vtosters/lite/ui/views/rarepebble/SquareView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 141
    :cond_0
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->pointer:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, p1, v3}, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->clamp(Landroid/graphics/PointF;FFZ)Z

    .line 142
    invoke-direct {p0}, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->update()V

    .line 143
    invoke-virtual {p0}, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v1

    .line 136
    :cond_1
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->pointer:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, v2, p1, v1}, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->clamp(Landroid/graphics/PointF;FFZ)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 137
    invoke-direct {p0}, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->update()V

    :cond_2
    return p1
.end method

.method public updateColor(Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;)V
    .locals 3

    .line 113
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->pointer:Landroid/graphics/PointF;

    invoke-virtual {p1}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->getHue()F

    move-result v1

    invoke-virtual {p1}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->getSat()F

    move-result p1

    iget v2, p0, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->w:I

    int-to-float v2, v2

    invoke-static {v0, v1, p1, v2}, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->setPointer(Landroid/graphics/PointF;FFF)V

    .line 114
    invoke-direct {p0}, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->optimisePointerColor()V

    .line 115
    invoke-virtual {p0}, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->invalidate()V

    return-void
.end method
