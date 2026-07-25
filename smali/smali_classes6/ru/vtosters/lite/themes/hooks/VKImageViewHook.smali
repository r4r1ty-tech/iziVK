.class public Lru/vtosters/lite/themes/hooks/VKImageViewHook;
.super Ljava/lang/Object;
.source "VKImageViewHook.java"

# interfaces
.implements Lru/vtosters/lite/themes/hooks/BaseHook;


# static fields
.field private static final paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lru/vtosters/lite/themes/hooks/VKImageViewHook;->paint:Landroid/graphics/Paint;

    .line 15
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inject(Landroid/view/View;IZ)V
    .locals 0

    .line 20
    instance-of p2, p1, Lcom/vk/imageloader/view/VKImageView;

    if-eqz p2, :cond_0

    .line 21
    check-cast p1, Lcom/vk/imageloader/view/VKImageView;

    .line 22
    invoke-virtual {p1}, Lcom/vk/imageloader/view/VKImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/vk/imageloader/view/VKImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-static {p2}, Lru/vtosters/lite/themes/utils/RecolorUtils;->recolorCSL(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/vk/imageloader/view/VKImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 24
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result p2

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, p3}, Lcom/vk/imageloader/view/VKImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
