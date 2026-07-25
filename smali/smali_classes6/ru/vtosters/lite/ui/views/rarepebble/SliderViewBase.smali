.class public abstract Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;
.super Landroid/view/View;
.source "SliderViewBase.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final borderPaint:Landroid/graphics/Paint;

.field private final borderPath:Landroid/graphics/Path;

.field private final checkerPaint:Landroid/graphics/Paint;

.field private currentPos:F

.field private h:I

.field private final pointerPaint:Landroid/graphics/Paint;

.field private final pointerPath:Landroid/graphics/Path;

.field private final viewRect:Landroid/graphics/Rect;

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->viewRect:Landroid/graphics/Rect;

    .line 22
    invoke-static {p1}, Lru/vtosters/lite/ui/views/rarepebble/Resources;->makeCheckerPaint(Landroid/content/Context;)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->checkerPaint:Landroid/graphics/Paint;

    .line 23
    invoke-static {}, Lru/vtosters/lite/ui/views/rarepebble/Resources;->makeLinePaint()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->borderPaint:Landroid/graphics/Paint;

    .line 24
    invoke-static {}, Lru/vtosters/lite/ui/views/rarepebble/Resources;->makeLinePaint()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->pointerPaint:Landroid/graphics/Paint;

    .line 25
    invoke-static {}, Lru/vtosters/lite/ui/views/rarepebble/Resources;->makePointerPath()Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->pointerPath:Landroid/graphics/Path;

    .line 26
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->borderPath:Landroid/graphics/Path;

    return-void
.end method

.method private isWide()Z
    .locals 2

    .line 93
    iget v0, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->w:I

    iget v1, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->h:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private optimisePointerColor()V
    .locals 2

    .line 102
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->pointerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->currentPos:F

    invoke-virtual {p0, v1}, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->getPointerColor(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private valueForTouchPos(FF)F
    .locals 2

    .line 97
    invoke-direct {p0}, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->isWide()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget p2, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->w:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    goto :goto_0

    :cond_0
    iget p1, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->h:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    sub-float p1, v1, p2

    :goto_0
    const/4 p2, 0x0

    .line 98
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method


# virtual methods
.method protected abstract getPointerColor(F)I
.end method

.method protected abstract makeBitmap(II)Landroid/graphics/Bitmap;
.end method

.method protected abstract notifyListener(F)V
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 77
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 78
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->borderPath:Landroid/graphics/Path;

    iget-object v1, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->checkerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 79
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->viewRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 80
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->borderPath:Landroid/graphics/Path;

    iget-object v1, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 83
    invoke-direct {p0}, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->isWide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget v0, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->w:I

    int-to-float v0, v0

    iget v1, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->currentPos:F

    mul-float v0, v0, v1

    iget v1, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->h:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 86
    :cond_0
    iget v0, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->w:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->h:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->currentPos:F

    sub-float/2addr v2, v3

    mul-float v1, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 88
    :goto_0
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->pointerPath:Landroid/graphics/Path;

    iget-object v1, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->pointerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 37
    iput p1, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->w:I

    .line 38
    iput p2, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->h:I

    .line 39
    iget-object p3, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->viewRect:Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 40
    iget-object p3, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p3

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    .line 41
    iget-object p4, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->borderPath:Landroid/graphics/Path;

    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    .line 42
    iget-object p4, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->borderPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    int-to-float p1, p1

    sub-float/2addr p1, p3

    int-to-float p2, p2

    sub-float/2addr p2, p3

    invoke-direct {v0, p3, p3, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object p1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p4, v0, p1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 43
    invoke-virtual {p0}, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->updateBitmap()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 72
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->valueForTouchPos(FF)F

    move-result p1

    iput p1, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->currentPos:F

    .line 65
    invoke-direct {p0}, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->optimisePointerColor()V

    .line 66
    iget p1, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->currentPos:F

    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->notifyListener(F)V

    .line 67
    invoke-virtual {p0}, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->invalidate()V

    .line 68
    invoke-virtual {p0}, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v0
.end method

.method protected setPos(F)V
    .locals 0

    .line 47
    iput p1, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->currentPos:F

    .line 48
    invoke-direct {p0}, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->optimisePointerColor()V

    return-void
.end method

.method protected updateBitmap()V
    .locals 2

    .line 52
    iget v0, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->w:I

    if-lez v0, :cond_0

    iget v1, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->h:I

    if-lez v1, :cond_0

    .line 53
    invoke-virtual {p0, v0, v1}, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->makeBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->bitmap:Landroid/graphics/Bitmap;

    .line 54
    invoke-direct {p0}, Lru/vtosters/lite/ui/views/rarepebble/SliderViewBase;->optimisePointerColor()V

    :cond_0
    return-void
.end method
