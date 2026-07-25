.class Lru/vtosters/lite/ui/views/rarepebble/SquareView;
.super Landroid/view/View;
.source "SquareView.java"


# static fields
.field private static final MIN_SIZE_DIP:I = 0xc8


# instance fields
.field private final minSizePx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x43480000    # 200.0f

    .line 15
    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lru/vtosters/lite/ui/views/rarepebble/SquareView;->minSizePx:I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 21
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 22
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 23
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 24
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-nez p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 33
    :goto_0
    iget p1, p0, Lru/vtosters/lite/ui/views/rarepebble/SquareView;->minSizePx:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 34
    invoke-virtual {p0, p1, p1}, Lru/vtosters/lite/ui/views/rarepebble/SquareView;->setMeasuredDimension(II)V

    return-void
.end method
