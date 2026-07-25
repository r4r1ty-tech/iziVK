.class public Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CategorizedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/lite/ui/adapters/CategorizedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategorizedViewHolder"
.end annotation


# instance fields
.field private final mCategoryTitle:Landroid/widget/TextView;

.field private final mCategoryTitleContainer:Landroid/widget/LinearLayout;

.field private final mIcon:Landroid/widget/ImageView;

.field private final mMovingItemContainer:Landroid/widget/LinearLayout;

.field private final mName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 235
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a02cf

    .line 237
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;->mMovingItemContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0d86

    .line 238
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;->mCategoryTitleContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0541

    .line 240
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0a08de

    .line 241
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;->mName:Landroid/widget/TextView;

    const v0, 0x7f0a0d80

    .line 243
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;->mCategoryTitle:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public bindCategory(Z)V
    .locals 1

    .line 264
    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;->mCategoryTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const p1, 0x7f121735

    goto :goto_0

    :cond_0
    const p1, 0x7f121793

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 265
    iget-object p1, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;->mCategoryTitleContainer:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 266
    iget-object p1, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;->mMovingItemContainer:Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public bindMovingItem(II)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 248
    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 250
    :cond_0
    iget-object p1, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;->mIcon:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    :goto_0
    iget-object p1, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 252
    iget-object p1, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;->mMovingItemContainer:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 253
    iget-object p1, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;->mCategoryTitleContainer:Landroid/widget/LinearLayout;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public bindMovingItem(Ljava/lang/String;)V
    .locals 2

    .line 257
    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;->mIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object p1, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;->mMovingItemContainer:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 260
    iget-object p1, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;->mCategoryTitleContainer:Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
