.class public Lru/vtosters/lite/ui/adapters/StickerPackAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StickerPackAdapter.java"

# interfaces
.implements Lru/vtosters/lite/ui/components/IItemMovingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;",
        ">;",
        "Lru/vtosters/lite/ui/components/IItemMovingListener;"
    }
.end annotation


# static fields
.field private static final sService:Lcom/aefyr/tsg/g2/TelegramStickersService;


# direct methods
.method static bridge synthetic -$$Nest$sfgetsService()Lcom/aefyr/tsg/g2/TelegramStickersService;
    .locals 1

    sget-object v0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter;->sService:Lcom/aefyr/tsg/g2/TelegramStickersService;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 42
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->getInstance(Landroid/content/Context;)Lcom/aefyr/tsg/g2/TelegramStickersService;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter;->sService:Lcom/aefyr/tsg/g2/TelegramStickersService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 71
    sget-object v0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter;->sService:Lcom/aefyr/tsg/g2/TelegramStickersService;

    invoke-virtual {v0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->getPacksListReference()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 60
    sget-object v0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter;->sService:Lcom/aefyr/tsg/g2/TelegramStickersService;

    invoke-virtual {v0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->getPacksListReference()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;

    .line 61
    iget p1, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->state:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 41
    check-cast p1, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;

    invoke-virtual {p0, p1, p2}, Lru/vtosters/lite/ui/adapters/StickerPackAdapter;->onBindViewHolder(Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;I)V
    .locals 0

    .line 66
    invoke-virtual {p1, p2}, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;->bind(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lru/vtosters/lite/ui/adapters/StickerPackAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;
    .locals 2

    .line 48
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d06de

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 49
    new-instance p2, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;

    invoke-direct {p2, p0, p1}, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;-><init>(Lru/vtosters/lite/ui/adapters/StickerPackAdapter;Landroid/view/View;)V

    .line 51
    invoke-static {p2}, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;->-$$Nest$fgetmStickerPreview(Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f0808a6

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    invoke-static {p2}, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;->-$$Nest$fgetmUpdateButton(Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0803a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/hooks/other/ThemesUtils;->recolorDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    invoke-static {p2}, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;->-$$Nest$fgetmDeleteButton(Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080412

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/hooks/other/ThemesUtils;->recolorDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method

.method public onItemDismiss(I)V
    .locals 0

    return-void
.end method

.method public onItemMove(II)Z
    .locals 5

    if-ge p1, p2, :cond_0

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_1

    .line 83
    sget-object v1, Lru/vtosters/lite/ui/adapters/StickerPackAdapter;->sService:Lcom/aefyr/tsg/g2/TelegramStickersService;

    invoke-virtual {v1}, Lcom/aefyr/tsg/g2/TelegramStickersService;->getPacksListReference()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aefyr/tsg/g2/TelegramStickersPack;

    invoke-virtual {v1}, Lcom/aefyr/tsg/g2/TelegramStickersService;->getPacksListReference()Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aefyr/tsg/g2/TelegramStickersPack;

    invoke-virtual {v1, v2, v3}, Lcom/aefyr/tsg/g2/TelegramStickersService;->swap(Lcom/aefyr/tsg/g2/TelegramStickersPack;Lcom/aefyr/tsg/g2/TelegramStickersPack;)V

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_1
    if-le v0, p2, :cond_1

    .line 87
    sget-object v1, Lru/vtosters/lite/ui/adapters/StickerPackAdapter;->sService:Lcom/aefyr/tsg/g2/TelegramStickersService;

    invoke-virtual {v1}, Lcom/aefyr/tsg/g2/TelegramStickersService;->getPacksListReference()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aefyr/tsg/g2/TelegramStickersPack;

    invoke-virtual {v1}, Lcom/aefyr/tsg/g2/TelegramStickersService;->getPacksListReference()Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aefyr/tsg/g2/TelegramStickersPack;

    invoke-virtual {v1, v2, v3}, Lcom/aefyr/tsg/g2/TelegramStickersService;->swap(Lcom/aefyr/tsg/g2/TelegramStickersPack;Lcom/aefyr/tsg/g2/TelegramStickersPack;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 90
    :cond_1
    invoke-virtual {p0, p1, p2}, Lru/vtosters/lite/ui/adapters/StickerPackAdapter;->notifyItemMoved(II)V

    const/4 p1, 0x1

    return p1
.end method
