.class public Lru/vtosters/lite/ui/views/rarepebble/SwatchView;
.super Lru/vtosters/lite/ui/views/rarepebble/SquareView;
.source "SwatchView.java"

# interfaces
.implements Lru/vtosters/lite/ui/views/rarepebble/ColorObserver;


# instance fields
.field private final borderPaint:Landroid/graphics/Paint;

.field private final borderPath:Landroid/graphics/Path;

.field private final checkerPaint:Landroid/graphics/Paint;

.field private final newFillPaint:Landroid/graphics/Paint;

.field private final newFillPath:Landroid/graphics/Path;

.field private final oldFillPaint:Landroid/graphics/Paint;

.field private final oldFillPath:Landroid/graphics/Path;

.field private final radialMarginPx:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Lru/vtosters/lite/ui/views/rarepebble/SquareView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41800000    # 16.0f

    .line 23
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->radialMarginPx:F

    .line 25
    invoke-static {}, Lru/vtosters/lite/ui/views/rarepebble/Resources;->makeLinePaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->borderPaint:Landroid/graphics/Paint;

    .line 26
    invoke-static {p1}, Lru/vtosters/lite/ui/views/rarepebble/Resources;->makeCheckerPaint(Landroid/content/Context;)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->checkerPaint:Landroid/graphics/Paint;

    .line 27
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->oldFillPaint:Landroid/graphics/Paint;

    .line 28
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->newFillPaint:Landroid/graphics/Paint;

    .line 30
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->borderPath:Landroid/graphics/Path;

    .line 31
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->oldFillPath:Landroid/graphics/Path;

    .line 32
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->newFillPath:Landroid/graphics/Path;

    return-void
.end method

.method private static beginBorder(Landroid/graphics/Path;FFFF)V
    .locals 6

    .line 36
    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    .line 37
    invoke-virtual {p0, p1, p1}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v3, p3, p1

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p1

    move v5, p4

    .line 38
    invoke-static/range {v0 .. v5}, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->cornerArc(Landroid/graphics/Path;FFFFF)V

    return-void
.end method

.method private static cornerArc(Landroid/graphics/Path;FFFFF)V
    .locals 2

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    neg-float v1, p3

    invoke-direct {v0, v1, v1, p3, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 49
    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 50
    invoke-virtual {p0, v0, p4, p5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    return-void
.end method

.method private static endBorder(Landroid/graphics/Path;FFFF)V
    .locals 6

    sub-float v3, p3, p1

    const/high16 p3, 0x42b40000    # 90.0f

    sub-float v4, p3, p4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p4

    .line 42
    invoke-static/range {v0 .. v5}, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->cornerArc(Landroid/graphics/Path;FFFFF)V

    .line 43
    invoke-virtual {p0, p1, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 44
    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private static mainArc(Landroid/graphics/Path;FFFF)V
    .locals 2

    add-float/2addr p2, p1

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    neg-float v1, p2

    invoke-direct {v0, v1, v1, p2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 56
    invoke-virtual {v0, p1, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 57
    invoke-virtual {p0, v0, p3, p4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    return-void
.end method


# virtual methods
.method observeColor(Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;)V
    .locals 0

    .line 66
    invoke-virtual {p1, p0}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->addObserver(Lru/vtosters/lite/ui/views/rarepebble/ColorObserver;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 116
    invoke-super {p0, p1}, Lru/vtosters/lite/ui/views/rarepebble/SquareView;->onDraw(Landroid/graphics/Canvas;)V

    .line 117
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->borderPath:Landroid/graphics/Path;

    iget-object v1, p0, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->checkerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 118
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->oldFillPath:Landroid/graphics/Path;

    iget-object v1, p0, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->oldFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 119
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->newFillPath:Landroid/graphics/Path;

    iget-object v1, p0, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->newFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 120
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->borderPath:Landroid/graphics/Path;

    iget-object v1, p0, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6

    .line 79
    iget-object p3, p0, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p3

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    .line 80
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    .line 84
    iget p2, p0, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->radialMarginPx:F

    mul-float v0, p2, p4

    add-float/2addr v0, p1

    mul-float v0, v0, v0

    mul-float v1, p1, p1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    .line 86
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v1, p1, v0

    float-to-double v2, v0

    float-to-double v4, p1

    .line 90
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v0, v2

    const/high16 v2, 0x43870000    # 270.0f

    sub-float/2addr v2, v0

    const/high16 v3, 0x42340000    # 45.0f

    sub-float v3, v0, v3

    const/high16 v4, 0x42b40000    # 90.0f

    sub-float/2addr v4, v0

    .line 98
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->borderPath:Landroid/graphics/Path;

    invoke-static {v0, p3, v1, p2, v4}, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->beginBorder(Landroid/graphics/Path;FFFF)V

    .line 99
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->borderPath:Landroid/graphics/Path;

    mul-float p4, p4, v3

    invoke-static {v0, p1, p2, v2, p4}, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->mainArc(Landroid/graphics/Path;FFFF)V

    .line 100
    iget-object p4, p0, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->borderPath:Landroid/graphics/Path;

    invoke-static {p4, p3, v1, p2, v4}, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->endBorder(Landroid/graphics/Path;FFFF)V

    .line 103
    iget-object p4, p0, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->oldFillPath:Landroid/graphics/Path;

    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    .line 104
    iget-object p4, p0, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->oldFillPath:Landroid/graphics/Path;

    invoke-virtual {p4, p3, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 105
    iget-object p4, p0, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->oldFillPath:Landroid/graphics/Path;

    const/high16 v0, 0x43610000    # 225.0f

    invoke-static {p4, p1, p2, v0, v3}, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->mainArc(Landroid/graphics/Path;FFFF)V

    .line 106
    iget-object p4, p0, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->oldFillPath:Landroid/graphics/Path;

    invoke-static {p4, p3, v1, p2, v4}, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->endBorder(Landroid/graphics/Path;FFFF)V

    .line 109
    iget-object p4, p0, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->newFillPath:Landroid/graphics/Path;

    invoke-static {p4, p3, v1, p2, v4}, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->beginBorder(Landroid/graphics/Path;FFFF)V

    .line 110
    iget-object p4, p0, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->newFillPath:Landroid/graphics/Path;

    invoke-static {p4, p1, p2, v2, v3}, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->mainArc(Landroid/graphics/Path;FFFF)V

    .line 111
    iget-object p1, p0, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->newFillPath:Landroid/graphics/Path;

    invoke-virtual {p1, p3, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 112
    iget-object p1, p0, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->newFillPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method setOriginalColor(I)V
    .locals 1

    .line 61
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->oldFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    invoke-virtual {p0}, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->invalidate()V

    return-void
.end method

.method public updateColor(Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->newFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->getColor()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    invoke-virtual {p0}, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->invalidate()V

    return-void
.end method
