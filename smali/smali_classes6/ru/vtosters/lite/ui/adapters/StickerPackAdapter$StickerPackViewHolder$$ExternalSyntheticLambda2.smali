.class public final synthetic Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;

.field public final synthetic f$1:Lcom/aefyr/tsg/g2/TelegramStickersPack;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;Lcom/aefyr/tsg/g2/TelegramStickersPack;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder$$ExternalSyntheticLambda2;->f$0:Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;

    iput-object p2, p0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder$$ExternalSyntheticLambda2;->f$1:Lcom/aefyr/tsg/g2/TelegramStickersPack;

    iput p3, p0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder$$ExternalSyntheticLambda2;->f$0:Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;

    iget-object v1, p0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder$$ExternalSyntheticLambda2;->f$1:Lcom/aefyr/tsg/g2/TelegramStickersPack;

    iget v2, p0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder$$ExternalSyntheticLambda2;->f$2:I

    invoke-virtual {v0, v1, v2, p1}, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;->lambda$bind$1$ru-vtosters-lite-ui-adapters-StickerPackAdapter$StickerPackViewHolder(Lcom/aefyr/tsg/g2/TelegramStickersPack;ILandroid/view/View;)V

    return-void
.end method
