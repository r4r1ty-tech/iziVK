.class public Lru/vtosters/lite/ui/components/StickerTouchHelperCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "StickerTouchHelperCallback.java"


# instance fields
.field private final itemAdapter:Lru/vtosters/lite/ui/components/IItemMovingListener;


# direct methods
.method public constructor <init>(Lru/vtosters/lite/ui/components/IItemMovingListener;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 11
    iput-object p1, p0, Lru/vtosters/lite/ui/components/StickerTouchHelperCallback;->itemAdapter:Lru/vtosters/lite/ui/components/IItemMovingListener;

    return-void
.end method


# virtual methods
.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    const/16 p1, 0xf

    const/16 p2, 0x30

    .line 30
    invoke-static {p1, p2}, Lru/vtosters/lite/ui/components/StickerTouchHelperCallback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 35
    iget-object p1, p0, Lru/vtosters/lite/ui/components/StickerTouchHelperCallback;->itemAdapter:Lru/vtosters/lite/ui/components/IItemMovingListener;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lru/vtosters/lite/ui/components/IItemMovingListener;->onItemMove(II)Z

    const/4 p1, 0x0

    return p1
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
