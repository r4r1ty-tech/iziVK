.class public Lru/vtosters/lite/ui/adapters/MessagesPreviewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MessagesPreviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/vtosters/lite/ui/adapters/MessagesPreviewAdapter$MessagePreviewViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lru/vtosters/lite/ui/adapters/MessagesPreviewAdapter$MessagePreviewViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMessages:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    iput-object p1, p0, Lru/vtosters/lite/ui/adapters/MessagesPreviewAdapter;->mMessages:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 77
    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/MessagesPreviewAdapter;->mMessages:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 29
    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const p1, 0x800003

    goto :goto_0

    :cond_0
    const p1, 0x800005

    :goto_0
    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 20
    check-cast p1, Lru/vtosters/lite/ui/adapters/MessagesPreviewAdapter$MessagePreviewViewHolder;

    invoke-virtual {p0, p1, p2}, Lru/vtosters/lite/ui/adapters/MessagesPreviewAdapter;->onBindViewHolder(Lru/vtosters/lite/ui/adapters/MessagesPreviewAdapter$MessagePreviewViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lru/vtosters/lite/ui/adapters/MessagesPreviewAdapter$MessagePreviewViewHolder;I)V
    .locals 1

    .line 72
    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/MessagesPreviewAdapter;->mMessages:[Ljava/lang/String;

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lru/vtosters/lite/ui/adapters/MessagesPreviewAdapter$MessagePreviewViewHolder;->bind(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lru/vtosters/lite/ui/adapters/MessagesPreviewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/vtosters/lite/ui/adapters/MessagesPreviewAdapter$MessagePreviewViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/vtosters/lite/ui/adapters/MessagesPreviewAdapter$MessagePreviewViewHolder;
    .locals 9

    .line 35
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0656

    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vk/core/widget/BubbleFluidLayout;

    const/high16 v3, 0x40800000    # 4.0f

    .line 40
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v4

    invoke-virtual {v1, v2, v4, v2, v2}, Lcom/vk/core/widget/BubbleFluidLayout;->setPadding(IIII)V

    .line 41
    invoke-virtual {v1, p2}, Lcom/vk/core/widget/BubbleFluidLayout;->setGravity(I)V

    const v4, 0x7f0a014b

    .line 43
    invoke-virtual {v1, v4}, Lcom/vk/core/widget/BubbleFluidLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0a0151

    .line 44
    invoke-virtual {v1, v4}, Lcom/vk/core/widget/BubbleFluidLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0a0f11

    .line 45
    invoke-virtual {v1, v4}, Lcom/vk/core/widget/BubbleFluidLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0a0c84

    .line 46
    invoke-virtual {v1, v4}, Lcom/vk/core/widget/BubbleFluidLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0a0c87

    .line 47
    invoke-virtual {v1, v4}, Lcom/vk/core/widget/BubbleFluidLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0a01e1

    .line 49
    invoke-virtual {v1, v4}, Lcom/vk/core/widget/BubbleFluidLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;

    const/high16 v6, 0x41200000    # 10.0f

    .line 50
    invoke-static {v6}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->setContentPaddingLeft(I)V

    .line 51
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->setContentPaddingTop(I)V

    .line 52
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->setContentPaddingRight(I)V

    const/4 v3, 0x0

    .line 53
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->setContentPaddingBottom(I)V

    const v3, 0x800005

    if-ne p2, v3, :cond_1

    .line 55
    invoke-static {v2, v2}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleStyle;->b(ZZ)Lcom/vk/im/ui/views/msg/bubble/MsgBubbleStyle;

    move-result-object v3

    sget-object v6, Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;->FULL:Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isDarkTheme()Z

    move-result v7

    if-eqz v7, :cond_0

    const v7, 0x7f040280

    invoke-static {v7}, Lru/vtosters/hooks/other/ThemesUtils;->getColorFromAttr(I)I

    move-result v7

    goto :goto_0

    :cond_0
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v7

    const v8, 0x3f428f5c    # 0.76f

    invoke-static {v7, v8}, Lru/vtosters/hooks/other/ThemesUtils;->lighten(IF)I

    move-result v7

    :goto_0
    invoke-virtual {v5, v3, v6, v7}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->a(Lcom/vk/im/ui/views/msg/bubble/MsgBubbleStyle;Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;I)V

    goto :goto_1

    .line 57
    :cond_1
    invoke-static {v2, v2}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleStyle;->b(ZZ)Lcom/vk/im/ui/views/msg/bubble/MsgBubbleStyle;

    move-result-object v3

    sget-object v6, Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;->FULL:Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;

    const v7, 0x7f04027c

    invoke-static {v7}, Lru/vtosters/hooks/other/ThemesUtils;->getColorFromAttr(I)I

    move-result v7

    invoke-virtual {v5, v3, v6, v7}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->a(Lcom/vk/im/ui/views/msg/bubble/MsgBubbleStyle;Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;I)V

    .line 59
    :goto_1
    invoke-virtual {v1, p2}, Lcom/vk/core/widget/BubbleFluidLayout;->setLayoutDirection(I)V

    const p2, 0x7f0d0687

    .line 61
    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0850

    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    .line 64
    invoke-virtual {v1, v4}, Lcom/vk/core/widget/BubbleFluidLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;

    .line 65
    invoke-virtual {p2, p1}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->setContentView(Landroid/view/View;)V

    .line 67
    new-instance p1, Lru/vtosters/lite/ui/adapters/MessagesPreviewAdapter$MessagePreviewViewHolder;

    invoke-direct {p1, v1}, Lru/vtosters/lite/ui/adapters/MessagesPreviewAdapter$MessagePreviewViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
