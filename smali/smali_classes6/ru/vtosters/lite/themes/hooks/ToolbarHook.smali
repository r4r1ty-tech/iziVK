.class public Lru/vtosters/lite/themes/hooks/ToolbarHook;
.super Ljava/lang/Object;
.source "ToolbarHook.java"

# interfaces
.implements Lru/vtosters/lite/themes/hooks/BaseHook;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inject(Landroid/view/View;IZ)V
    .locals 3

    .line 14
    instance-of p2, p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz p2, :cond_3

    .line 15
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMilkshake()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isDarkTheme()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getHeaderText()I

    move-result p2

    .line 16
    :goto_0
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/4 p3, 0x0

    .line 17
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    if-ge p3, v0, :cond_3

    .line 18
    invoke-interface {p1, p3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 19
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 21
    instance-of v2, v1, Lcom/vk/core/drawable/RecoloredDrawable;

    if-eqz v2, :cond_1

    .line 22
    move-object v2, v1

    check-cast v2, Lcom/vk/core/drawable/RecoloredDrawable;

    invoke-virtual {v2, p2}, Lcom/vk/core/drawable/RecoloredDrawable;->a(I)V

    goto :goto_2

    .line 24
    :cond_1
    new-instance v2, Lcom/vk/core/drawable/RecoloredDrawable;

    invoke-direct {v2, v1, p2}, Lcom/vk/core/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    move-object v1, v2

    .line 26
    :goto_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
