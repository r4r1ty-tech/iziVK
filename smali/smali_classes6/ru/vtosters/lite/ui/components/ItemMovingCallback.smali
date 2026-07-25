.class public Lru/vtosters/lite/ui/components/ItemMovingCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "ItemMovingCallback.java"


# instance fields
.field private final mAdapter:Lru/vtosters/lite/ui/adapters/CategorizedAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lru/vtosters/lite/ui/adapters/CategorizedAdapter<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lru/vtosters/lite/ui/adapters/CategorizedAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/vtosters/lite/ui/adapters/CategorizedAdapter<",
            "*>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 13
    iput-object p1, p0, Lru/vtosters/lite/ui/components/ItemMovingCallback;->mAdapter:Lru/vtosters/lite/ui/adapters/CategorizedAdapter;

    return-void
.end method


# virtual methods
.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 3

    .line 29
    iget-object p1, p0, Lru/vtosters/lite/ui/components/ItemMovingCallback;->mAdapter:Lru/vtosters/lite/ui/adapters/CategorizedAdapter;

    .line 28
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lru/vtosters/lite/ui/components/ItemMovingCallback;->mAdapter:Lru/vtosters/lite/ui/adapters/CategorizedAdapter;

    .line 29
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {p1, v2}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->isUnmovedItem(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    iget-object v2, p0, Lru/vtosters/lite/ui/components/ItemMovingCallback;->mAdapter:Lru/vtosters/lite/ui/adapters/CategorizedAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {v2, p2}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->getItemViewType(I)I

    move-result p2

    if-ne p2, v1, :cond_1

    const/16 v0, 0xc

    .line 35
    :cond_1
    invoke-static {p1, v0}, Lru/vtosters/lite/ui/components/ItemMovingCallback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 45
    iget-object p1, p0, Lru/vtosters/lite/ui/components/ItemMovingCallback;->mAdapter:Lru/vtosters/lite/ui/adapters/CategorizedAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->onItemMove(II)Z

    move-result p1

    return p1
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 40
    iget-object p2, p0, Lru/vtosters/lite/ui/components/ItemMovingCallback;->mAdapter:Lru/vtosters/lite/ui/adapters/CategorizedAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p2, p1}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->onItemDismiss(I)V

    return-void
.end method
