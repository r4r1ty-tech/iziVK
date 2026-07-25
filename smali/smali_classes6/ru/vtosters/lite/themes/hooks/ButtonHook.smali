.class public Lru/vtosters/lite/themes/hooks/ButtonHook;
.super Ljava/lang/Object;
.source "ButtonHook.java"

# interfaces
.implements Lru/vtosters/lite/themes/hooks/BaseHook;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inject(Landroid/view/View;IZ)V
    .locals 0

    .line 12
    instance-of p2, p1, Landroid/widget/Button;

    if-eqz p2, :cond_3

    .line 13
    move-object p2, p1

    check-cast p2, Landroid/widget/Button;

    .line 14
    invoke-virtual {p2}, Landroid/widget/Button;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/widget/Button;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-static {p3}, Lru/vtosters/lite/themes/ColorReferences;->isMutedAccentedColor(Landroid/content/res/ColorStateList;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 15
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getMutedAccentColor()I

    move-result p3

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 18
    :cond_0
    invoke-virtual {p2}, Landroid/widget/Button;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/widget/Button;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-static {p3}, Lru/vtosters/lite/themes/ColorReferences;->isAccentedColor(Landroid/content/res/ColorStateList;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 19
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result p3

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 22
    :cond_1
    invoke-static {p2}, Lru/vtosters/lite/themes/hooks/TextViewHook;->isPositiveButton(Landroid/view/View;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-static {p1}, Lru/vtosters/lite/themes/hooks/TextViewHook;->isVkUiButton(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 23
    :cond_2
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_3
    return-void
.end method
