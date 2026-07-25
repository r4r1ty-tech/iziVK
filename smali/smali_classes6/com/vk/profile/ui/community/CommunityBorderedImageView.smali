.class public final Lcom/vk/profile/ui/community/CommunityBorderedImageView;
.super Lcom/vk/stories/view/BorderedCircleImageView;
.source "CommunityBorderedImageView.java"

# interfaces
.implements Lcom/vk/core/ui/themes/Themable;


# instance fields
.field private f0:Z

.field private g0:I

.field private h0:I

.field private i0:Landroid/graphics/PorterDuffColorFilter;

.field private j0:Landroid/graphics/PorterDuffColorFilter;

.field private read:I

.field private unread:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 26
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/vk/profile/ui/community/CommunityBorderedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 30
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/vk/profile/ui/community/CommunityBorderedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/vk/stories/view/BorderedCircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f040022

    .line 39
    invoke-static {p2}, Lcom/vk/core/ui/themes/VKThemeHelper;->d(I)I

    move-result p2

    iput p2, p0, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->g0:I

    const p2, 0x7f0600e2

    .line 40
    invoke-static {p1, p2}, Lcom/vk/core/util/ContextExtKt;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->h0:I

    .line 41
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    iget p2, p0, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->g0:I

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->i0:Landroid/graphics/PorterDuffColorFilter;

    .line 42
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    iget p2, p0, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->h0:I

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->j0:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 34
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/vk/profile/ui/community/CommunityBorderedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public c(II)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->unread:I

    .line 47
    iput p2, p0, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->read:I

    .line 48
    invoke-virtual {p0}, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p2, p0, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->unread:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->T:Landroid/graphics/Bitmap;

    return-void
.end method

.method public getPrimaryColor()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->g0:I

    return v0
.end method

.method public getWasViewedColor()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->h0:I

    return v0
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->f0:Z

    .line 71
    invoke-virtual {p0}, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->l()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Lcom/vk/stories/view/BorderedCircleImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 77
    iget-boolean v0, p0, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->f0:Z

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0, p1}, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->a(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public setPrimaryColor(I)V
    .locals 2

    .line 56
    iput p1, p0, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->g0:I

    .line 57
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->i0:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method public setStoryContainer(Lcom/vk/dto/stories/model/StoriesContainer;)V
    .locals 1

    .line 83
    invoke-virtual {p1}, Lcom/vk/dto/stories/model/StoriesContainer;->L1()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->f0:Z

    .line 85
    invoke-virtual {p0}, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->m()V

    .line 86
    invoke-virtual {p1}, Lcom/vk/dto/stories/model/StoriesContainer;->K1()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->unread:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->T:Landroid/graphics/Bitmap;

    .line 88
    iget-object p1, p0, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->i0:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0, p1}, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->setBorderColorFilter(Landroid/graphics/ColorFilter;)V

    .line 89
    invoke-virtual {p0}, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->b(II)V

    .line 90
    invoke-virtual {p0}, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->invalidate()V

    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->read:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->T:Landroid/graphics/Bitmap;

    .line 94
    iget-object p1, p0, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->j0:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0, p1}, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->setBorderColorFilter(Landroid/graphics/ColorFilter;)V

    .line 95
    invoke-virtual {p0}, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->b(II)V

    .line 96
    invoke-virtual {p0}, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->invalidate()V

    return-void

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->o()V

    return-void
.end method

.method public setWasViewedColor(I)V
    .locals 2

    .line 65
    iput p1, p0, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->h0:I

    .line 66
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/vk/profile/ui/community/CommunityBorderedImageView;->j0:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method public v()V
    .locals 0

    return-void
.end method
