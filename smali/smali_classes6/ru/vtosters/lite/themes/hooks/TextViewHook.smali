.class public Lru/vtosters/lite/themes/hooks/TextViewHook;
.super Ljava/lang/Object;
.source "TextViewHook.java"

# interfaces
.implements Lru/vtosters/lite/themes/hooks/BaseHook;


# static fields
.field private static final TAG:Ljava/lang/String; = "TextViewHook"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static eligibleForStartTinting(Lcom/vk/core/view/TintTextView;)Z
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/vk/core/view/TintTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/lite/themes/ColorReferences;->isAccentedColor(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/vk/core/view/TintTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static eligibleForStartTintingMuted(Lcom/vk/core/view/TintTextView;)Z
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/vk/core/view/TintTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/lite/themes/ColorReferences;->isMutedAccentedColor(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/vk/core/view/TintTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getMutedAccentColor()I

    move-result v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static eligibleForTinting(I)Z
    .locals 1

    .line 32
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isDarkTheme()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0a00fb

    if-eq p0, v0, :cond_0

    const v0, 0x7f0a0a4a

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPositiveButton(Landroid/view/View;)Z
    .locals 2

    .line 36
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isDarkTheme()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0a3e

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    const v0, 0x7f0a0a3f

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVkUiButton(Landroid/view/View;)Z
    .locals 2

    .line 40
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isDarkTheme()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a03b0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    const v0, 0x7f0a01e4

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public inject(Landroid/view/View;IZ)V
    .locals 2

    .line 46
    instance-of p3, p1, Landroid/widget/TextView;

    if-eqz p3, :cond_12

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMonetTheme()Z

    move-result p3

    if-eqz p3, :cond_12

    .line 47
    move-object p3, p1

    check-cast p3, Landroid/widget/TextView;

    .line 49
    invoke-virtual {p3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-static {v0}, Lru/vtosters/lite/themes/ColorReferences;->isAccentedColor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    :cond_0
    invoke-virtual {p3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-static {v0}, Lru/vtosters/lite/themes/ColorReferences;->isMutedAccentedColor(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getMutedAccentColor()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    invoke-virtual {p3}, Landroid/widget/TextView;->getCompoundDrawableTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 58
    invoke-virtual {p3}, Landroid/widget/TextView;->getCompoundDrawableTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/lite/themes/ColorReferences;->isAccentedColor(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 62
    :cond_2
    invoke-virtual {p3}, Landroid/widget/TextView;->getCompoundDrawableTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/lite/themes/ColorReferences;->isMutedAccentedColor(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getMutedAccentColor()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 67
    :cond_3
    invoke-virtual {p3}, Landroid/widget/TextView;->getLinkTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Landroid/widget/TextView;->getLinkTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/lite/themes/ColorReferences;->isAccentedColor(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 71
    :cond_4
    invoke-virtual {p3}, Landroid/widget/TextView;->getLinkTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p3}, Landroid/widget/TextView;->getLinkTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/lite/themes/ColorReferences;->isMutedAccentedColor(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 72
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getMutedAccentColor()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 75
    :cond_5
    invoke-static {p3}, Lru/vtosters/lite/themes/hooks/TextViewHook;->isPositiveButton(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p3}, Lru/vtosters/lite/themes/hooks/TextViewHook;->isVkUiButton(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 76
    :cond_6
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 79
    :cond_7
    instance-of v0, p1, Lcom/vk/core/view/OverlayTextView;

    if-eqz v0, :cond_9

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020019

    if-ne v0, v1, :cond_8

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/hooks/other/ThemesUtils;->recolorDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 83
    :cond_8
    move-object v0, p1

    check-cast v0, Lcom/vk/core/view/OverlayTextView;

    invoke-virtual {v0}, Lcom/vk/core/view/OverlayTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-static {v1}, Lru/vtosters/lite/themes/ColorReferences;->isAccentedColor(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 84
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vk/core/view/OverlayTextView;->setTextColor(I)V

    .line 88
    :cond_9
    instance-of v0, p1, Lcom/vk/core/view/TintTextView;

    if-eqz v0, :cond_d

    .line 89
    move-object v0, p1

    check-cast v0, Lcom/vk/core/view/TintTextView;

    invoke-static {v0}, Lru/vtosters/lite/themes/hooks/TextViewHook;->eligibleForStartTinting(Lcom/vk/core/view/TintTextView;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 90
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vk/core/view/TintTextView;->setDrawableStartTint(I)V

    .line 93
    :cond_a
    invoke-static {v0}, Lru/vtosters/lite/themes/hooks/TextViewHook;->eligibleForStartTintingMuted(Lcom/vk/core/view/TintTextView;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 94
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getMutedAccentColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vk/core/view/TintTextView;->setDrawableStartTint(I)V

    .line 97
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Lru/vtosters/lite/themes/hooks/TextViewHook;->eligibleForTinting(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 98
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vk/core/view/TintTextView;->setDrawableTint(I)V

    .line 101
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Lru/vtosters/lite/themes/hooks/TextViewHook;->eligibleForTinting(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 102
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vk/core/view/TintTextView;->setDrawableStartTint(I)V

    .line 106
    :cond_d
    instance-of v0, p1, Lcom/vk/core/view/links/LinkedTextView;

    if-eqz v0, :cond_e

    .line 107
    move-object v0, p1

    check-cast v0, Lcom/vk/core/view/links/LinkedTextView;

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vk/core/view/links/LinkedTextView;->setLinkTextColor(I)V

    .line 110
    :cond_e
    instance-of v0, p1, Landroidx/appcompat/widget/AppCompatCheckedTextView;

    if-eqz v0, :cond_10

    .line 111
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/widget/AppCompatCheckedTextView;

    .line 112
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->getCheckMarkTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v1}, Lru/vtosters/lite/themes/ColorReferences;->isAccentedColor(Landroid/content/res/ColorStateList;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 113
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setCheckMarkTintList(Landroid/content/res/ColorStateList;)V

    .line 116
    :cond_f
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->getCheckMarkTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v1}, Lru/vtosters/lite/themes/ColorReferences;->isMutedAccentedColor(Landroid/content/res/ColorStateList;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 117
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getMutedAccentColor()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->setCheckMarkTintList(Landroid/content/res/ColorStateList;)V

    .line 121
    :cond_10
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_11

    .line 122
    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1}, Lru/vtosters/hooks/other/ThemesUtils;->setCursorColor(Landroid/widget/EditText;)V

    .line 125
    :cond_11
    invoke-static {p3}, Lru/vtosters/hooks/other/ThemesUtils;->colorTextView(Landroid/widget/TextView;)V

    .line 126
    invoke-static {p3}, Lru/vtosters/lite/themes/utils/VkUiThemer;->autoThemeVkuiButtons(Landroid/widget/TextView;)V

    .line 127
    invoke-static {p3}, Lru/vtosters/lite/themes/ThemesHacks;->fixProfileSelector(Landroid/view/View;)V

    .line 128
    invoke-static {p3, p2}, Lru/vtosters/lite/themes/ThemesHacks;->fixThemedFeed(Landroid/widget/TextView;I)V

    :cond_12
    return-void
.end method
