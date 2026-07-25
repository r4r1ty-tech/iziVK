.class public Lcom/vk/im/ui/views/avatars/StoryBorderView;
.super Landroid/view/View;
.source "StoryBorderView.java"


# instance fields
.field private B:Z

.field private final a:Landroid/graphics/Paint;

.field private f15747b:Landroid/graphics/LinearGradient;

.field private f15748c:I

.field private f15749d:I

.field private f15750e:I

.field private f15751f:I

.field private final g:I

.field private final h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 26
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/vk/im/ui/views/avatars/StoryBorderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 30
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/vk/im/ui/views/avatars/StoryBorderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x1

    .line 40
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    iput-object p3, p0, Lcom/vk/im/ui/views/avatars/StoryBorderView;->a:Landroid/graphics/Paint;

    .line 43
    sget-object p3, Lcom/vk/im/ui/o;->StoryBorderView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 44
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/vk/im/ui/views/avatars/StoryBorderView;->setBorderColor(I)V

    const/4 p3, 0x2

    .line 45
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/vk/im/ui/views/avatars/StoryBorderView;->g:I

    .line 46
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/vk/im/ui/views/avatars/StoryBorderView;->h:I

    const/4 p3, 0x3

    .line 47
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/vk/im/ui/views/avatars/StoryBorderView;->setBorderWidth(I)V

    .line 48
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 34
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/vk/im/ui/views/avatars/StoryBorderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/vk/im/ui/views/avatars/StoryBorderView;->f15749d:I

    return v0
.end method

.method public getBorderGradientEndColor()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/vk/im/ui/views/avatars/StoryBorderView;->h:I

    return v0
.end method

.method public getBorderGradientStartColor()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/vk/im/ui/views/avatars/StoryBorderView;->g:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/vk/im/ui/views/avatars/StoryBorderView;->f15750e:I

    return v0
.end method

.method public getPadding()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/vk/im/ui/views/avatars/StoryBorderView;->f15751f:I

    return v0
.end method

.method public getViewSize()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/vk/im/ui/views/avatars/StoryBorderView;->f15748c:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 104
    invoke-virtual {p0}, Lcom/vk/im/ui/views/avatars/StoryBorderView;->getPaddingLeft()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/vk/im/ui/views/avatars/StoryBorderView;->getPaddingTop()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/vk/im/ui/views/avatars/StoryBorderView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/vk/im/ui/views/avatars/StoryBorderView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/vk/im/ui/views/avatars/StoryBorderView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/vk/im/ui/views/avatars/StoryBorderView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/vk/im/ui/views/avatars/StoryBorderView;->a:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 109
    iget p1, p0, Lcom/vk/im/ui/views/avatars/StoryBorderView;->f15748c:I

    .line 110
    invoke-virtual {p0, p1, p1}, Lcom/vk/im/ui/views/avatars/StoryBorderView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 56
    iget v0, p0, Lcom/vk/im/ui/views/avatars/StoryBorderView;->f15749d:I

    if-eq v0, p1, :cond_0

    .line 57
    iput p1, p0, Lcom/vk/im/ui/views/avatars/StoryBorderView;->f15749d:I

    .line 58
    iget-object v0, p0, Lcom/vk/im/ui/views/avatars/StoryBorderView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    invoke-virtual {p0}, Lcom/vk/im/ui/views/avatars/StoryBorderView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 76
    iget v0, p0, Lcom/vk/im/ui/views/avatars/StoryBorderView;->f15750e:I

    if-eq v0, p1, :cond_0

    .line 77
    iput p1, p0, Lcom/vk/im/ui/views/avatars/StoryBorderView;->f15750e:I

    .line 78
    iget-object v0, p0, Lcom/vk/im/ui/views/avatars/StoryBorderView;->a:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 79
    invoke-virtual {p0}, Lcom/vk/im/ui/views/avatars/StoryBorderView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 9

    .line 115
    invoke-super {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 117
    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/vk/im/ui/views/avatars/StoryBorderView;->f15748c:I

    .line 118
    new-instance p1, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v1, p0, Lcom/vk/im/ui/views/avatars/StoryBorderView;->f15748c:I

    int-to-float v5, v1

    iget v6, p0, Lcom/vk/im/ui/views/avatars/StoryBorderView;->g:I

    iget v7, p0, Lcom/vk/im/ui/views/avatars/StoryBorderView;->h:I

    sget-object v8, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/vk/im/ui/views/avatars/StoryBorderView;->f15747b:Landroid/graphics/LinearGradient;

    .line 119
    iget p1, p0, Lcom/vk/im/ui/views/avatars/StoryBorderView;->f15748c:I

    if-lez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    return-void

    .line 125
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only exact size supported, specify avatar sizes in layout params"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLive(Z)V
    .locals 2

    .line 129
    iget-boolean v0, p0, Lcom/vk/im/ui/views/avatars/StoryBorderView;->B:Z

    if-eq v0, p1, :cond_2

    .line 130
    iget-object v0, p0, Lcom/vk/im/ui/views/avatars/StoryBorderView;->a:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/vk/im/ui/views/avatars/StoryBorderView;->f15747b:Landroid/graphics/LinearGradient;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 131
    iget-object v0, p0, Lcom/vk/im/ui/views/avatars/StoryBorderView;->a:Landroid/graphics/Paint;

    if-eqz p1, :cond_1

    const/4 v1, -0x1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/vk/im/ui/views/avatars/StoryBorderView;->f15749d:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    iput-boolean p1, p0, Lcom/vk/im/ui/views/avatars/StoryBorderView;->B:Z

    .line 133
    invoke-virtual {p0}, Lcom/vk/im/ui/views/avatars/StoryBorderView;->invalidate()V

    :cond_2
    return-void
.end method

.method public setPadding(I)V
    .locals 1

    .line 88
    iget v0, p0, Lcom/vk/im/ui/views/avatars/StoryBorderView;->f15751f:I

    if-eq v0, p1, :cond_0

    .line 89
    iput p1, p0, Lcom/vk/im/ui/views/avatars/StoryBorderView;->f15751f:I

    .line 90
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/vk/im/ui/views/avatars/StoryBorderView;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public setViewSize(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/vk/im/ui/views/avatars/StoryBorderView;->f15748c:I

    return-void
.end method
