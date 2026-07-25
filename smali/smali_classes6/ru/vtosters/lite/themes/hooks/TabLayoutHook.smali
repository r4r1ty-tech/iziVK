.class public Lru/vtosters/lite/themes/hooks/TabLayoutHook;
.super Ljava/lang/Object;
.source "TabLayoutHook.java"

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
    instance-of p2, p1, Lcom/vk/core/view/VKTabLayout;

    if-eqz p2, :cond_0

    .line 13
    check-cast p1, Lcom/vk/core/view/VKTabLayout;

    .line 14
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/vk/core/view/VKTabLayout;->setSelectedTabIndicatorColor(I)V

    .line 15
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/vk/core/view/VKTabLayout;->setTabRippleColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method
