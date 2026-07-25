.class public Lcom/vk/core/drawable/RecoloredDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RecoloredDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private c:I

.field private colorStateList:Landroid/content/res/ColorStateList;

.field private d:I

.field private drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    .line 35
    iput v0, p0, Lcom/vk/core/drawable/RecoloredDrawable;->c:I

    .line 36
    iput v0, p0, Lcom/vk/core/drawable/RecoloredDrawable;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 5

    .line 31
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    new-array v2, v1, [[I

    const/4 v3, 0x0

    new-array v4, v3, [I

    aput-object v4, v2, v3

    new-array v1, v1, [I

    aput p2, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-direct {p0, p1, v0}, Lcom/vk/core/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    .line 18
    iput v0, p0, Lcom/vk/core/drawable/RecoloredDrawable;->c:I

    .line 19
    iput v0, p0, Lcom/vk/core/drawable/RecoloredDrawable;->d:I

    .line 21
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/core/drawable/RecoloredDrawable;->drawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    :goto_0
    iget-object p1, p0, Lcom/vk/core/drawable/RecoloredDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 26
    invoke-static {p2}, Lru/vtosters/lite/themes/utils/RecolorUtils;->themeCSL(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/core/drawable/RecoloredDrawable;->colorStateList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    new-array p1, p1, [I

    .line 27
    invoke-virtual {p0, p1}, Lcom/vk/core/drawable/RecoloredDrawable;->onStateChange([I)Z

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/vk/core/drawable/RecoloredDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public a(I)V
    .locals 5

    .line 40
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    new-array v2, v1, [[I

    const/4 v3, 0x0

    new-array v4, v3, [I

    aput-object v4, v2, v3

    new-array v1, v1, [I

    aput p1, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v0}, Lcom/vk/core/drawable/RecoloredDrawable;->a(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/vk/core/drawable/RecoloredDrawable;->colorStateList:Landroid/content/res/ColorStateList;

    .line 125
    invoke-virtual {p0}, Lcom/vk/core/drawable/RecoloredDrawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vk/core/drawable/RecoloredDrawable;->onStateChange([I)Z

    .line 126
    invoke-virtual {p0}, Lcom/vk/core/drawable/RecoloredDrawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/vk/core/drawable/RecoloredDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/vk/core/drawable/RecoloredDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/vk/core/drawable/RecoloredDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/vk/core/drawable/RecoloredDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 65
    invoke-virtual {p0}, Lcom/vk/core/drawable/RecoloredDrawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/vk/core/drawable/RecoloredDrawable;->colorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 6

    .line 75
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    .line 76
    iget-object v0, p0, Lcom/vk/core/drawable/RecoloredDrawable;->colorStateList:Landroid/content/res/ColorStateList;

    .line 77
    iget-object v1, p0, Lcom/vk/core/drawable/RecoloredDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 78
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-lt v2, v0, :cond_0

    goto :goto_1

    .line 84
    :cond_0
    aget v4, p1, v2

    const v5, 0x10100a1

    if-ne v4, v5, :cond_2

    const/4 v1, 0x1

    .line 91
    :goto_1
    iget-object v0, p0, Lcom/vk/core/drawable/RecoloredDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 92
    iget-object p1, p0, Lcom/vk/core/drawable/RecoloredDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/vk/core/drawable/RecoloredDrawable;->c:I

    goto :goto_2

    :cond_1
    iget v0, p0, Lcom/vk/core/drawable/RecoloredDrawable;->d:I

    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 98
    invoke-virtual {p0, p2, p3, p4}, Lcom/vk/core/drawable/RecoloredDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 103
    iput p1, p0, Lcom/vk/core/drawable/RecoloredDrawable;->c:I

    .line 104
    iput p1, p0, Lcom/vk/core/drawable/RecoloredDrawable;->d:I

    .line 105
    iget-object v0, p0, Lcom/vk/core/drawable/RecoloredDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 111
    iget-object v0, p0, Lcom/vk/core/drawable/RecoloredDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 120
    invoke-virtual {p0, p2}, Lcom/vk/core/drawable/RecoloredDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
