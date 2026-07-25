.class public final Lcom/vk/stickers/details/StickerDetailsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StickerDetailsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/stickers/details/StickerDetailsAdapter$c;,
        Lcom/vk/stickers/details/StickerDetailsAdapter$d;,
        Lcom/vk/stickers/details/StickerDetailsAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsTelegramPack:Z

.field private final mItem:Lcom/vk/dto/stickers/StickerStockItem;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vk/dto/stickers/StickerItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vk/dto/stickers/StickerStockItem;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/vk/stickers/details/StickerDetailsAdapter;->mIsTelegramPack:Z

    .line 28
    iput-object p1, p0, Lcom/vk/stickers/details/StickerDetailsAdapter;->mItem:Lcom/vk/dto/stickers/StickerStockItem;

    .line 29
    invoke-virtual {p1}, Lcom/vk/dto/stickers/StickerStockItem;->T1()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/stickers/details/StickerDetailsAdapter;->mItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public H(I)I
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/vk/stickers/details/StickerDetailsAdapter;->mIsTelegramPack:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/vk/stickers/details/StickerDetailsAdapter;->j()I

    move-result v0

    sub-int/2addr p1, v0

    :goto_0
    return p1
.end method

.method public I(I)Z
    .locals 1

    .line 74
    invoke-virtual {p0, p1}, Lcom/vk/stickers/details/StickerDetailsAdapter;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/vk/stickers/details/StickerDetailsAdapter;->mIsTelegramPack:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/stickers/details/StickerDetailsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vk/stickers/details/StickerDetailsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 62
    iget-boolean v0, p0, Lcom/vk/stickers/details/StickerDetailsAdapter;->mIsTelegramPack:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/vk/stickers/details/StickerDetailsAdapter;->k()I

    move-result v0

    if-ne p1, v0, :cond_2

    const/4 v1, 0x2

    :cond_2
    return v1
.end method

.method public j()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k()I
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/vk/stickers/details/StickerDetailsAdapter;->l()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public l()I
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/vk/stickers/details/StickerDetailsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/vk/stickers/details/StickerDetailsAdapter;->j()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public m()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vk/dto/stickers/StickerItem;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/vk/stickers/details/StickerDetailsAdapter;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 49
    invoke-virtual {p0, p2}, Lcom/vk/stickers/details/StickerDetailsAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    check-cast p1, Lcom/vk/stickers/details/StickerDetailsAdapter$d;

    iget-object v0, p0, Lcom/vk/stickers/details/StickerDetailsAdapter;->mItems:Ljava/util/List;

    invoke-virtual {p0, p2}, Lcom/vk/stickers/details/StickerDetailsAdapter;->H(I)I

    move-result p2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vk/dto/stickers/StickerItem;

    invoke-virtual {p1, p2}, Lcom/vk/stickers/details/StickerDetailsAdapter$d;->a(Lcom/vk/dto/stickers/StickerItem;)V

    goto :goto_0

    .line 50
    :cond_1
    check-cast p1, Lcom/vk/stickers/details/StickerDetailsAdapter$c;

    iget-object p2, p0, Lcom/vk/stickers/details/StickerDetailsAdapter;->mItem:Lcom/vk/dto/stickers/StickerStockItem;

    invoke-virtual {p1, p2}, Lcom/vk/stickers/details/StickerDetailsAdapter$c;->a(Lcom/vk/dto/stickers/StickerStockItem;)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 42
    new-instance p2, Lcom/vk/stickers/details/StickerDetailsAdapter$b;

    invoke-direct {p2, p1}, Lcom/vk/stickers/details/StickerDetailsAdapter$b;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown viewType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_1
    new-instance p2, Lcom/vk/stickers/details/StickerDetailsAdapter$d;

    invoke-direct {p2, p1}, Lcom/vk/stickers/details/StickerDetailsAdapter$d;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 40
    :cond_2
    new-instance p2, Lcom/vk/stickers/details/StickerDetailsAdapter$c;

    invoke-direct {p2, p0, p1}, Lcom/vk/stickers/details/StickerDetailsAdapter$c;-><init>(Lcom/vk/stickers/details/StickerDetailsAdapter;Landroid/view/ViewGroup;)V

    :goto_0
    return-object p2
.end method

.method public setTelegramPack(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/vk/stickers/details/StickerDetailsAdapter;->mIsTelegramPack:Z

    return-void
.end method

.method public v()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
