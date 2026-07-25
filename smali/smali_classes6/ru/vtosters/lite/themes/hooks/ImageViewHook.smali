.class public Lru/vtosters/lite/themes/hooks/ImageViewHook;
.super Ljava/lang/Object;
.source "ImageViewHook.java"

# interfaces
.implements Lru/vtosters/lite/themes/hooks/BaseHook;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inject(Landroid/view/View;IZ)V
    .locals 0

    .line 13
    instance-of p2, p1, Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    .line 14
    invoke-static {}, Lru/vtosters/lite/themes/ThemesCore;->isCachedAccents()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 15
    check-cast p1, Landroid/widget/ImageView;

    .line 16
    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-static {p2}, Lru/vtosters/lite/themes/ColorReferences;->isCslNeedToBeThemed(Landroid/content/res/ColorStateList;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 18
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method
