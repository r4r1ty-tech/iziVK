.class Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "StickersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;


# direct methods
.method constructor <init>(Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$1;->this$0:Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->ACTION_RELOAD:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$1;->this$0:Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;

    iget-object p1, p1, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->mAdapter:Lru/vtosters/lite/ui/adapters/StickerPackAdapter;

    if-nez p1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    :try_start_0
    iget-object p1, p0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$1;->this$0:Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;

    iget-boolean p1, p1, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->movePending:Z

    if-eqz p1, :cond_1

    .line 48
    iget-object p1, p0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$1;->this$0:Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->movePending:Z

    .line 49
    iget-object p1, p0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$1;->this$0:Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;

    iget-object p1, p1, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->mAdapter:Lru/vtosters/lite/ui/adapters/StickerPackAdapter;

    iget-object p2, p0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$1;->this$0:Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;

    iget p2, p2, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->from:I

    iget-object v0, p0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$1;->this$0:Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;

    iget v0, v0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->to:I

    invoke-virtual {p1, p2, v0}, Lru/vtosters/lite/ui/adapters/StickerPackAdapter;->notifyItemMoved(II)V

    .line 50
    iget-object p1, p0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$1;->this$0:Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;

    const/4 p2, -0x1

    iput p2, p1, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->to:I

    iput p2, p1, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->from:I

    goto :goto_0

    .line 51
    :cond_1
    iget-object p1, p0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$1;->this$0:Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;

    iget-object p1, p1, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->mAdapter:Lru/vtosters/lite/ui/adapters/StickerPackAdapter;

    invoke-virtual {p1}, Lru/vtosters/lite/ui/adapters/StickerPackAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
