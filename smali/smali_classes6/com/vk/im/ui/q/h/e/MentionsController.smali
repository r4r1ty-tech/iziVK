.class public final Lcom/vk/im/ui/q/h/e/MentionsController;
.super Ljava/lang/Object;
.source "MentionsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/im/ui/q/h/e/MentionsController$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/vk/im/ui/views/RichEditText;

.field private e:Z

.field private final i:I

.field private final j:Landroid/view/View;

.field private final k:Lcom/vk/im/ui/q/h/e/MentionsController$b;

.field private mBottomSheetBehavior:Lcom/vk/core/ui/VkBottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vk/core/ui/VkBottomSheetBehavior<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private final mDialogMentionComponent:Lcom/vk/im/ui/components/dialog_mention/DialogMentionComponent;

.field private final mImEngine:Lcom/vk/im/engine/ImEngine;

.field private final mMentionsManager:Lcom/vk/im/ui/utils/j/MentionsManager;

.field private state:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmCoordinatorLayout(Lcom/vk/im/ui/q/h/e/MentionsController;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 0

    iget-object p0, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDialogMentionComponent(Lcom/vk/im/ui/q/h/e/MentionsController;)Lcom/vk/im/ui/components/dialog_mention/DialogMentionComponent;
    .locals 0

    iget-object p0, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->mDialogMentionComponent:Lcom/vk/im/ui/components/dialog_mention/DialogMentionComponent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMentionsManager(Lcom/vk/im/ui/q/h/e/MentionsController;)Lcom/vk/im/ui/utils/j/MentionsManager;
    .locals 0

    iget-object p0, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->mMentionsManager:Lcom/vk/im/ui/utils/j/MentionsManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstate(Lcom/vk/im/ui/q/h/e/MentionsController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->state:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fpute(Lcom/vk/im/ui/q/h/e/MentionsController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->e:Z

    return-void
.end method

.method public constructor <init>(Lcom/vk/im/engine/ImEngine;ILandroid/view/View;Lcom/vk/im/ui/q/h/e/MentionsController$b;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->mImEngine:Lcom/vk/im/engine/ImEngine;

    .line 42
    iput p2, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->i:I

    .line 43
    iput-object p3, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->j:Landroid/view/View;

    .line 44
    iput-object p4, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->k:Lcom/vk/im/ui/q/h/e/MentionsController$b;

    const p2, 0x7f0a0ff4

    .line 45
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/vk/im/ui/views/RichEditText;

    iput-object p2, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->a:Lcom/vk/im/ui/views/RichEditText;

    .line 46
    new-instance p3, Lcom/vk/im/ui/utils/j/MentionsManager;

    new-instance p4, Lcom/vk/im/ui/q/h/e/MentionsController$1;

    invoke-direct {p4, p0}, Lcom/vk/im/ui/q/h/e/MentionsController$1;-><init>(Lcom/vk/im/ui/q/h/e/MentionsController;)V

    invoke-direct {p3, p2, p4}, Lcom/vk/im/ui/utils/j/MentionsManager;-><init>(Lcom/vk/im/ui/views/RichEditText;Lcom/vk/im/ui/utils/j/MentionSuggestionsSupplier;)V

    iput-object p3, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->mMentionsManager:Lcom/vk/im/ui/utils/j/MentionsManager;

    .line 71
    new-instance p2, Lcom/vk/im/ui/components/dialog_mention/DialogMentionComponent;

    invoke-direct {p2, p1}, Lcom/vk/im/ui/components/dialog_mention/DialogMentionComponent;-><init>(Lcom/vk/im/engine/ImEngine;)V

    iput-object p2, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->mDialogMentionComponent:Lcom/vk/im/ui/components/dialog_mention/DialogMentionComponent;

    .line 72
    new-instance p1, Lcom/vk/im/ui/q/h/e/MentionsController$2;

    invoke-direct {p1, p0}, Lcom/vk/im/ui/q/h/e/MentionsController$2;-><init>(Lcom/vk/im/ui/q/h/e/MentionsController;)V

    invoke-virtual {p2, p1}, Lcom/vk/im/ui/components/dialog_mention/DialogMentionComponent;->a(Lcom/vk/im/ui/components/dialog_mention/DialogMentionComponentCallback;)V

    return-void
.end method

.method private h()V
    .locals 4

    .line 94
    iget-boolean v0, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->state:Z

    if-eqz v0, :cond_0

    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->j:Landroid/view/View;

    const v1, 0x7f0a07c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a07c5

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 99
    iget-object v2, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->mDialogMentionComponent:Lcom/vk/im/ui/components/dialog_mention/DialogMentionComponent;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/vk/im/ui/components/dialog_mention/DialogMentionComponent;->a(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v2, 0x7f0a07c4

    .line 100
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v0, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 101
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    check-cast v0, Lcom/vk/core/ui/VkBottomSheetBehavior;

    iput-object v0, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->mBottomSheetBehavior:Lcom/vk/core/ui/VkBottomSheetBehavior;

    .line 102
    new-instance v1, Lcom/vk/im/ui/q/h/e/MentionsController$3;

    invoke-direct {v1, p0}, Lcom/vk/im/ui/q/h/e/MentionsController$3;-><init>(Lcom/vk/im/ui/q/h/e/MentionsController;)V

    invoke-virtual {v0, v1}, Lcom/vk/core/ui/VkBottomSheetBehavior;->a(Lcom/vk/core/ui/VkBottomSheetBehavior$b;)V

    .line 110
    iget-object v0, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->mBottomSheetBehavior:Lcom/vk/core/ui/VkBottomSheetBehavior;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vk/core/ui/VkBottomSheetBehavior;->b(Z)V

    .line 111
    iget-object v0, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->mBottomSheetBehavior:Lcom/vk/core/ui/VkBottomSheetBehavior;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/vk/core/ui/VkBottomSheetBehavior;->g(I)V

    .line 112
    iget-object v0, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->mBottomSheetBehavior:Lcom/vk/core/ui/VkBottomSheetBehavior;

    const/16 v2, 0xa0

    invoke-static {v2}, Lcom/vk/core/util/Screen;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vk/core/ui/VkBottomSheetBehavior;->e(I)V

    .line 113
    iput-boolean v1, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->state:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->mDialogMentionComponent:Lcom/vk/im/ui/components/dialog_mention/DialogMentionComponent;

    invoke-virtual {v0}, Lcom/vk/im/ui/components/dialog_mention/DialogMentionComponent;->g()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->mDialogMentionComponent:Lcom/vk/im/ui/components/dialog_mention/DialogMentionComponent;

    invoke-virtual {v0}, Lcom/vk/im/ui/components/dialog_mention/DialogMentionComponent;->h()V

    return-void
.end method

.method public c()Lcom/vk/im/ui/q/h/e/MentionsController$b;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->k:Lcom/vk/im/ui/q/h/e/MentionsController$b;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->i:I

    return v0
.end method

.method public e()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->mDialogMentionComponent:Lcom/vk/im/ui/components/dialog_mention/DialogMentionComponent;

    invoke-virtual {v0}, Lcom/vk/im/ui/components/dialog_mention/DialogMentionComponent;->q()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->mDialogMentionComponent:Lcom/vk/im/ui/components/dialog_mention/DialogMentionComponent;

    invoke-virtual {v0}, Lcom/vk/im/ui/components/dialog_mention/DialogMentionComponent;->r()V

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->e:Z

    .line 90
    invoke-virtual {p0}, Lcom/vk/im/ui/q/h/e/MentionsController;->j()V

    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->e:Z

    .line 118
    invoke-virtual {p0}, Lcom/vk/im/ui/q/h/e/MentionsController;->j()V

    return-void
.end method

.method public j()V
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->k:Lcom/vk/im/ui/q/h/e/MentionsController$b;

    invoke-interface {v0}, Lcom/vk/im/ui/q/h/e/MentionsController$b;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 123
    iget-object v0, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 124
    invoke-static {v0}, Lcom/vk/core/util/ContextExtKt;->f(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 125
    iget-boolean v1, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->e:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/vk/core/util/Screen;->k(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/vk/core/util/Screen;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 126
    iget-boolean v1, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->state:Z

    if-eqz v1, :cond_6

    .line 127
    :cond_2
    iget-boolean v1, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->state:Z

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/vk/im/ui/q/h/e/MentionsController;->h()V

    .line 128
    :cond_3
    iget-object v1, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setVisibility(I)V

    if-eqz v0, :cond_5

    return-void

    .line 130
    :cond_5
    iget-object v0, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    new-instance v1, Lcom/vk/im/ui/q/h/e/MentionsController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/vk/im/ui/q/h/e/MentionsController$$ExternalSyntheticLambda0;-><init>(Lcom/vk/im/ui/q/h/e/MentionsController;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void
.end method

.method synthetic lambda$j$0$com-vk-im-ui-q-h-e-MentionsController()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/vk/im/ui/q/h/e/MentionsController;->mBottomSheetBehavior:Lcom/vk/core/ui/VkBottomSheetBehavior;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/vk/core/ui/VkBottomSheetBehavior;->b(I)V

    return-void
.end method
