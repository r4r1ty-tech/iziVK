.class final Lcom/vk/stickers/details/StickerDetailsAdapter$c;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StickerDetailsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/stickers/details/StickerDetailsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final mAnimPack:Landroid/widget/ImageView;

.field private final mDescription:Landroid/widget/TextView;

.field private final mImageBg:Lcom/vk/imageloader/view/VKImageView;

.field private final mPackAuthor:Landroid/widget/TextView;

.field private final mPackImage:Lcom/vk/imageloader/view/VKImageView;

.field private final mPackSubtitle:Landroid/widget/TextView;

.field private final mPackTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/vk/stickers/details/StickerDetailsAdapter;


# direct methods
.method public constructor <init>(Lcom/vk/stickers/details/StickerDetailsAdapter;Landroid/view/ViewGroup;)V
    .locals 2

    .line 135
    iput-object p1, p0, Lcom/vk/stickers/details/StickerDetailsAdapter$c;->this$0:Lcom/vk/stickers/details/StickerDetailsAdapter;

    .line 136
    invoke-static {}, Lcom/vk/core/ui/themes/VKThemeHelper;->u()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0514

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 137
    iget-object p1, p0, Lcom/vk/stickers/details/StickerDetailsAdapter$c;->itemView:Landroid/view/View;

    const p2, 0x7f0a0950

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/vk/imageloader/view/VKImageView;

    iput-object p1, p0, Lcom/vk/stickers/details/StickerDetailsAdapter$c;->mImageBg:Lcom/vk/imageloader/view/VKImageView;

    .line 138
    iget-object p1, p0, Lcom/vk/stickers/details/StickerDetailsAdapter$c;->itemView:Landroid/view/View;

    const p2, 0x7f0a094f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/vk/imageloader/view/VKImageView;

    iput-object p1, p0, Lcom/vk/stickers/details/StickerDetailsAdapter$c;->mPackImage:Lcom/vk/imageloader/view/VKImageView;

    .line 139
    iget-object p1, p0, Lcom/vk/stickers/details/StickerDetailsAdapter$c;->itemView:Landroid/view/View;

    const p2, 0x7f0a009d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/vk/stickers/details/StickerDetailsAdapter$c;->mAnimPack:Landroid/widget/ImageView;

    .line 140
    iget-object p1, p0, Lcom/vk/stickers/details/StickerDetailsAdapter$c;->itemView:Landroid/view/View;

    const p2, 0x7f0a0954

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/vk/stickers/details/StickerDetailsAdapter$c;->mPackTitle:Landroid/widget/TextView;

    .line 141
    iget-object p1, p0, Lcom/vk/stickers/details/StickerDetailsAdapter$c;->itemView:Landroid/view/View;

    const p2, 0x7f0a094c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/vk/stickers/details/StickerDetailsAdapter$c;->mPackAuthor:Landroid/widget/TextView;

    .line 142
    iget-object p1, p0, Lcom/vk/stickers/details/StickerDetailsAdapter$c;->itemView:Landroid/view/View;

    const p2, 0x7f0a0953

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/vk/stickers/details/StickerDetailsAdapter$c;->mPackSubtitle:Landroid/widget/TextView;

    .line 143
    iget-object p1, p0, Lcom/vk/stickers/details/StickerDetailsAdapter$c;->itemView:Landroid/view/View;

    const p2, 0x7f0a032b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/vk/stickers/details/StickerDetailsAdapter$c;->mDescription:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(Lcom/vk/dto/stickers/StickerStockItem;)V
    .locals 5

    .line 147
    iget-object v0, p0, Lcom/vk/stickers/details/StickerDetailsAdapter$c;->mImageBg:Lcom/vk/imageloader/view/VKImageView;

    invoke-virtual {p1}, Lcom/vk/dto/stickers/StickerStockItem;->R1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/imageloader/view/VKImageView;->a(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/vk/stickers/details/StickerDetailsAdapter$c;->mImageBg:Lcom/vk/imageloader/view/VKImageView;

    invoke-virtual {v0}, Lcom/vk/imageloader/view/VKImageView;->getHierarchy()Lcom/facebook/u/e/DraweeHierarchy;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    invoke-virtual {v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 149
    iget-object v0, p0, Lcom/vk/stickers/details/StickerDetailsAdapter$c;->mImageBg:Lcom/vk/imageloader/view/VKImageView;

    invoke-virtual {v0}, Lcom/vk/imageloader/view/VKImageView;->getHierarchy()Lcom/facebook/u/e/DraweeHierarchy;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->a(I)V

    .line 150
    iget-object v0, p0, Lcom/vk/stickers/details/StickerDetailsAdapter$c;->mImageBg:Lcom/vk/imageloader/view/VKImageView;

    invoke-virtual {v0}, Lcom/vk/imageloader/view/VKImageView;->getHierarchy()Lcom/facebook/u/e/DraweeHierarchy;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, 0x7f04044d

    invoke-static {v4}, Lcom/vk/core/ui/themes/VKThemeHelper;->d(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->e(Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget-object v0, p0, Lcom/vk/stickers/details/StickerDetailsAdapter$c;->mPackImage:Lcom/vk/imageloader/view/VKImageView;

    const/16 v3, 0x44

    invoke-static {v3}, Lcom/vk/core/util/Screen;->a(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/vk/dto/stickers/StickerStockItem;->h(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/vk/imageloader/view/VKImageView;->a(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/vk/stickers/details/StickerDetailsAdapter$c;->mPackImage:Lcom/vk/imageloader/view/VKImageView;

    invoke-virtual {v0}, Lcom/vk/imageloader/view/VKImageView;->getHierarchy()Lcom/facebook/u/e/DraweeHierarchy;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    invoke-virtual {v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 154
    iget-object v0, p0, Lcom/vk/stickers/details/StickerDetailsAdapter$c;->mPackImage:Lcom/vk/imageloader/view/VKImageView;

    invoke-virtual {v0}, Lcom/vk/imageloader/view/VKImageView;->getHierarchy()Lcom/facebook/u/e/DraweeHierarchy;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->a(I)V

    .line 156
    invoke-virtual {p1}, Lcom/vk/dto/stickers/StickerStockItem;->E1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/vk/stickers/details/StickerDetailsAdapter$c;->mAnimPack:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/vk/extensions/ViewExtKt;->r(Landroid/view/View;)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/vk/stickers/details/StickerDetailsAdapter$c;->mAnimPack:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/vk/extensions/ViewExtKt;->p(Landroid/view/View;)V

    .line 162
    :goto_0
    iget-object v0, p0, Lcom/vk/stickers/details/StickerDetailsAdapter$c;->mPackTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/vk/dto/stickers/StickerStockItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/vk/stickers/details/StickerDetailsAdapter$c;->mPackAuthor:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/vk/dto/stickers/StickerStockItem;->v1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/vk/stickers/details/StickerDetailsAdapter$c;->mPackSubtitle:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/vk/extensions/ViewExtKt;->p(Landroid/view/View;)V

    .line 168
    iget-object v0, p0, Lcom/vk/stickers/details/StickerDetailsAdapter$c;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/vk/dto/stickers/StickerStockItem;->C1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
