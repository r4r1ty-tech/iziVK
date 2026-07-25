.class public Lru/vtosters/hooks/PollHook;
.super Ljava/lang/Object;
.source "PollHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Lcom/vk/polls/ui/views/PollOptionView;)V
    .locals 4

    const/4 v0, 0x0

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "pollresults"

    invoke-static {v2, v1}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/vk/polls/ui/views/PollOptionView;->c:Landroid/widget/TextView;

    .line 17
    sget-object v2, Lcom/vk/dto/polls/PollOption;->e:Lcom/vk/dto/polls/PollOption$b;

    iget-object v3, p0, Lcom/vk/polls/ui/views/PollOptionView;->g:Lcom/vk/dto/polls/PollOption;

    invoke-virtual {v3}, Lcom/vk/dto/polls/PollOption;->t1()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vk/dto/polls/PollOption$b;->a(F)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object p0, p0, Lcom/vk/polls/ui/views/PollOptionView;->f:Lcom/vk/dto/polls/Poll;

    invoke-virtual {p0}, Lcom/vk/dto/polls/Poll;->Q1()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 22
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 24
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    add-int/lit8 v0, v0, 0x40

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_1
    return-void
.end method
