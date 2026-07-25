.class final Lcom/vk/stickers/details/StickerDetailsAdapter$d;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StickerDetailsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/stickers/details/StickerDetailsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final mImage:Lcom/vk/stickers/views/VKStickerImageView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2

    .line 111
    new-instance v0, Lcom/vk/stickers/views/VKStickerImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vk/stickers/views/VKStickerImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 112
    iget-object p1, p0, Lcom/vk/stickers/details/StickerDetailsAdapter$d;->itemView:Landroid/view/View;

    check-cast p1, Lcom/vk/stickers/views/VKStickerImageView;

    iput-object p1, p0, Lcom/vk/stickers/details/StickerDetailsAdapter$d;->mImage:Lcom/vk/stickers/views/VKStickerImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 113
    invoke-virtual {p1, v0}, Lcom/vk/stickers/views/VKStickerImageView;->setAspectRatio(F)V

    const/4 v0, 0x1

    .line 114
    invoke-virtual {p1, v0}, Lcom/vk/stickers/views/VKStickerImageView;->setClickable(Z)V

    .line 115
    invoke-virtual {p1}, Lcom/vk/stickers/views/VKStickerImageView;->getHierarchy()Lcom/facebook/u/e/DraweeHierarchy;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    invoke-virtual {v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 116
    invoke-virtual {p1}, Lcom/vk/stickers/views/VKStickerImageView;->getHierarchy()Lcom/facebook/u/e/DraweeHierarchy;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->a(I)V

    .line 117
    invoke-virtual {p1}, Lcom/vk/stickers/views/VKStickerImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120e2e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vk/stickers/views/VKStickerImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/vk/dto/stickers/StickerItem;)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/vk/stickers/details/StickerDetailsAdapter$d;->mImage:Lcom/vk/stickers/views/VKStickerImageView;

    const/16 v1, 0x50

    invoke-static {v1}, Lcom/vk/core/util/Screen;->a(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/vk/dto/stickers/StickerItem;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/stickers/views/VKStickerImageView;->a(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/vk/stickers/details/StickerDetailsAdapter$d;->mImage:Lcom/vk/stickers/views/VKStickerImageView;

    invoke-virtual {p1}, Lcom/vk/dto/stickers/StickerItem;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v1, 0x7f0a0552

    invoke-virtual {v0, v1, p1}, Lcom/vk/stickers/views/VKStickerImageView;->setTag(ILjava/lang/Object;)V

    return-void
.end method
