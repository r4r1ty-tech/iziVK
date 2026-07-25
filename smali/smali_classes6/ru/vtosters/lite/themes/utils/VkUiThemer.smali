.class public Lru/vtosters/lite/themes/utils/VkUiThemer;
.super Ljava/lang/Object;
.source "VkUiThemer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static autoThemeVkuiButtons(Landroid/widget/TextView;)V
    .locals 5

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    return-void

    .line 13
    :cond_0
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isDarkTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 17
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    if-nez v0, :cond_2

    return-void

    .line 19
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 21
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 23
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 24
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 25
    instance-of v2, v0, Landroid/graphics/drawable/RippleDrawable;

    if-nez v2, :cond_4

    return-void

    .line 27
    :cond_4
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v2, 0x0

    .line 28
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->getNumberOfLayers()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 29
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/RippleDrawable;->getId(I)I

    move-result v3

    const v4, 0x102002e

    if-ne v3, v4, :cond_5

    goto :goto_1

    .line 31
    :cond_5
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 33
    instance-of v4, v3, Landroid/graphics/drawable/GradientDrawable;

    if-nez v4, :cond_6

    goto :goto_1

    .line 37
    :cond_6
    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    .line 38
    invoke-virtual {v3}, Landroid/graphics/drawable/GradientDrawable;->getShape()I

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_1

    .line 42
    :cond_7
    invoke-virtual {v3}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    .line 47
    invoke-virtual {v3}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-static {v4}, Lru/vtosters/lite/themes/ColorReferences;->isAccentedColor(Landroid/content/res/ColorStateList;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 49
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setTint(I)V

    :cond_8
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_9
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    aget-object p0, p0, v1

    .line 54
    instance-of v0, p0, Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_a

    return-void

    .line 55
    :cond_a
    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    .line 56
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getShape()I

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 60
    :cond_b
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    .line 65
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/lite/themes/ColorReferences;->isAccentedColor(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 67
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setTint(I)V

    .line 70
    :cond_c
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/lite/themes/ColorReferences;->isMutedAccentedColor(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 72
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getMutedAccentColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setTint(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 77
    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    :cond_d
    :goto_2
    return-void
.end method
