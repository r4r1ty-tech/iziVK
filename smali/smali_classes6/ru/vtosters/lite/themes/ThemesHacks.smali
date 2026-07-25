.class public Lru/vtosters/lite/themes/ThemesHacks;
.super Ljava/lang/Object;
.source "ThemesHacks.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fixDropdown(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 18
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isDarkTheme()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMilkshake()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lru/vtosters/lite/themes/ThemesCore;->isCachedAccents()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 21
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v0

    invoke-static {v0}, Lru/vtosters/hooks/other/ThemesUtils;->halfAlpha(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    return-void
.end method

.method public static fixProfileSelector(Landroid/view/View;)V
    .locals 2

    .line 56
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMilkshake()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0ae9

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a0ae7

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a0ae8

    if-ne v0, v1, :cond_2

    .line 60
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    .line 61
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    aget-object p0, p0, v0

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    .line 62
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    :cond_2
    return-void
.end method

.method public static fixThemedFeed(Landroid/widget/TextView;I)V
    .locals 1

    const v0, 0x7f0d0571

    if-eq p1, v0, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/themes/utils/RecolorUtils;->recolorCSL(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 71
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result p1

    const v0, 0x3e19999a    # 0.15f

    invoke-static {p1, v0}, Lru/vtosters/hooks/other/ThemesUtils;->lighten(IF)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method public static getColors(Landroid/content/Context;I)I
    .locals 2

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    .line 50
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static getHackedColor(Landroid/content/Context;I)I
    .locals 3

    const-string v0, "Requesting color by color "

    .line 26
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMonetTheme()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lru/vtosters/lite/themes/ThemesManager;->canApplyCustomAccent()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const/4 v1, 0x0

    .line 27
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "logColors"

    invoke-static {v2, v1}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    const-string v1, "ThemesCore"

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 34
    :cond_1
    :goto_0
    invoke-static {}, Lru/vtosters/lite/themes/ThemesCore;->isCachedAccents()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p1}, Lru/vtosters/lite/themes/ThemesHacks;->getColors(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Lru/vtosters/lite/themes/ColorReferences;->isAccentedColor(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result p0

    return p0

    .line 38
    :cond_2
    invoke-static {}, Lru/vtosters/lite/themes/ThemesCore;->isCachedAccents()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0, p1}, Lru/vtosters/lite/themes/ThemesHacks;->getColors(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Lru/vtosters/lite/themes/ColorReferences;->isMutedAccentedColor(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 39
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getMutedAccentColor()I

    move-result p0

    return p0

    .line 43
    :cond_3
    invoke-static {p0, p1}, Lru/vtosters/lite/themes/ThemesHacks;->getColors(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method
