.class public Lru/vtosters/lite/ui/adapters/MessagesPreviewAdapter$MessagePreviewViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MessagesPreviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/lite/ui/adapters/MessagesPreviewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MessagePreviewViewHolder"
.end annotation


# instance fields
.field private final mMsgTextView:Lcom/vk/im/ui/views/msg/MsgPartTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 84
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0850

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/vk/im/ui/views/msg/MsgPartTextView;

    iput-object p1, p0, Lru/vtosters/lite/ui/adapters/MessagesPreviewAdapter$MessagePreviewViewHolder;->mMsgTextView:Lcom/vk/im/ui/views/msg/MsgPartTextView;

    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/MessagesPreviewAdapter$MessagePreviewViewHolder;->mMsgTextView:Lcom/vk/im/ui/views/msg/MsgPartTextView;

    new-instance v1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/MsgTextBuilder;

    invoke-direct {v1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/MsgTextBuilder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/MsgTextBuilder;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/vk/im/ui/views/msg/MsgPartTextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object p1, p0, Lru/vtosters/lite/ui/adapters/MessagesPreviewAdapter$MessagePreviewViewHolder;->mMsgTextView:Lcom/vk/im/ui/views/msg/MsgPartTextView;

    const-string v0, "12:00"

    invoke-virtual {p1, v0}, Lcom/vk/im/ui/views/msg/MsgPartTextView;->setTimeText(Ljava/lang/CharSequence;)V

    return-void
.end method
