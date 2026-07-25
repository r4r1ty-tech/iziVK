.class public Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartTextHolder;
.super Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;
.source "MsgPartTextHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase<",
        "Lcom/vk/im/engine/models/attaches/Attach;",
        ">;"
    }
.end annotation


# instance fields
.field private mContainer:Landroid/widget/FrameLayout;

.field private mTextPart:Lcom/vk/im/ui/views/msg/MsgPartTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0d0687

    const/4 v1, 0x0

    .line 21
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/vk/im/ui/views/msg/MsgPartTextView;

    iput-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartTextHolder;->mTextPart:Lcom/vk/im/ui/views/msg/MsgPartTextView;

    .line 22
    new-instance p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartTextHolder$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartTextHolder$$ExternalSyntheticLambda0;-><init>(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartTextHolder;)V

    invoke-virtual {p1, p2}, Lcom/vk/im/ui/views/msg/MsgPartTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartTextHolder;->mTextPart:Lcom/vk/im/ui/views/msg/MsgPartTextView;

    new-instance p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartTextHolder$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartTextHolder$$ExternalSyntheticLambda1;-><init>(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartTextHolder;)V

    invoke-virtual {p1, p2}, Lcom/vk/im/ui/views/msg/MsgPartTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 30
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartTextHolder;->mTextPart:Lcom/vk/im/ui/views/msg/MsgPartTextView;

    return-object p1
.end method

.method protected b(Lcom/vk/im/engine/models/dialogs/BubbleColors;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartTextHolder;->mTextPart:Lcom/vk/im/ui/views/msg/MsgPartTextView;

    iget v1, p1, Lcom/vk/im/engine/models/dialogs/BubbleColors;->h:I

    invoke-virtual {v0, v1}, Lcom/vk/im/ui/views/msg/MsgPartTextView;->setTimeTextColor(I)V

    .line 36
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartTextHolder;->mTextPart:Lcom/vk/im/ui/views/msg/MsgPartTextView;

    iget v1, p1, Lcom/vk/im/engine/models/dialogs/BubbleColors;->d:I

    invoke-virtual {v0, v1}, Lcom/vk/im/ui/views/msg/MsgPartTextView;->setLinkTextColor(I)V

    .line 37
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartTextHolder;->mTextPart:Lcom/vk/im/ui/views/msg/MsgPartTextView;

    iget p1, p1, Lcom/vk/im/engine/models/dialogs/BubbleColors;->f:I

    invoke-virtual {v0, p1}, Lcom/vk/im/ui/views/msg/MsgPartTextView;->setTextColor(I)V

    return-void
.end method

.method protected b(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartTextHolder;->mTextPart:Lcom/vk/im/ui/views/msg/MsgPartTextView;

    iget-object v1, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->F:Lcom/vk/im/ui/views/span/OnSpanClickListener;

    invoke-virtual {v0, v1}, Lcom/vk/im/ui/views/msg/MsgPartTextView;->setOnSpanClickListener(Lcom/vk/im/ui/views/span/OnSpanClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartTextHolder;->mTextPart:Lcom/vk/im/ui/views/msg/MsgPartTextView;

    iget-object v1, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->G:Lcom/vk/im/ui/views/span/OnSpanLongPressListener;

    invoke-virtual {v0, v1}, Lcom/vk/im/ui/views/msg/MsgPartTextView;->setOnSpanLongPressListener(Lcom/vk/im/ui/views/span/OnSpanLongPressListener;)V

    .line 44
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartTextHolder;->mTextPart:Lcom/vk/im/ui/views/msg/MsgPartTextView;

    iget-object v1, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/vk/im/ui/views/msg/MsgPartTextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartTextHolder;->mTextPart:Lcom/vk/im/ui/views/msg/MsgPartTextView;

    iget-boolean v1, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->isSelected:Z

    invoke-virtual {v0, v1}, Lcom/vk/im/ui/views/msg/MsgPartTextView;->setTextIsSelectable(Z)V

    .line 46
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartTextHolder;->mTextPart:Lcom/vk/im/ui/views/msg/MsgPartTextView;

    invoke-virtual {p0, p1, v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartTextHolder;->a(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;Lcom/vk/im/ui/views/msg/WithTime;)V

    return-void
.end method

.method synthetic lambda$b$0$com-vk-im-ui-components-viewcontrollers-msg_list-adapter-msgparts-MsgPartTextHolder(Landroid/view/View;)V
    .locals 1

    .line 23
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartTextHolder;->f:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgListAdapterCallback;

    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartTextHolder;->g:Lcom/vk/im/engine/models/messages/Msg;

    invoke-virtual {v0}, Lcom/vk/im/engine/models/messages/Msg;->getLocalId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgListAdapterCallback;->a(I)V

    return-void
.end method

.method synthetic lambda$b$1$com-vk-im-ui-components-viewcontrollers-msg_list-adapter-msgparts-MsgPartTextHolder(Landroid/view/View;)Z
    .locals 1

    .line 26
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartTextHolder;->mTextPart:Lcom/vk/im/ui/views/msg/MsgPartTextView;

    invoke-virtual {p1}, Lcom/vk/im/ui/views/msg/MsgPartTextView;->isTextSelectable()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartTextHolder;->f:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgListAdapterCallback;

    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartTextHolder;->g:Lcom/vk/im/engine/models/messages/Msg;

    invoke-virtual {v0}, Lcom/vk/im/engine/models/messages/Msg;->getLocalId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgListAdapterCallback;->b(I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
