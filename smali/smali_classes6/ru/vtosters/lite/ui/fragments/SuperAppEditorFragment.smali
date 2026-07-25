.class public Lru/vtosters/lite/ui/fragments/SuperAppEditorFragment;
.super Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;
.source "SuperAppEditorFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCreateContent$0(Landroid/view/View;)V
    .locals 0

    .line 67
    invoke-static {}, Lru/vtosters/lite/ui/components/SuperAppEditorManager;->getInstance()Lru/vtosters/lite/ui/components/SuperAppEditorManager;

    move-result-object p0

    invoke-virtual {p0}, Lru/vtosters/lite/ui/components/SuperAppEditorManager;->save()V

    .line 68
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->restartApplication()V

    return-void
.end method

.method static synthetic lambda$onCreateContent$1(Landroid/view/View;)V
    .locals 0

    .line 83
    invoke-static {}, Lru/vtosters/lite/ui/components/SuperAppEditorManager;->getInstance()Lru/vtosters/lite/ui/components/SuperAppEditorManager;

    move-result-object p0

    invoke-virtual {p0}, Lru/vtosters/lite/ui/components/SuperAppEditorManager;->reset()V

    .line 84
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->restartApplication()V

    return-void
.end method

.method static synthetic lambda$onCreateContent$2(Lru/vtosters/lite/ui/components/SuperAppEditorManager;Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;I)V
    .locals 1

    .line 93
    invoke-virtual {p0}, Lru/vtosters/lite/ui/components/SuperAppEditorManager;->getSelectedTabs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lru/vtosters/lite/ui/components/SuperAppEditorManager;->getSelectedTabs()Ljava/util/List;

    move-result-object p0

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lru/vtosters/lite/ui/items/SuperAppItem;

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p0}, Lru/vtosters/lite/ui/components/SuperAppEditorManager;->getDisabledTabs()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lru/vtosters/lite/ui/components/SuperAppEditorManager;->getSelectedTabs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p2, p0

    add-int/lit8 p2, p2, -0x2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lru/vtosters/lite/ui/items/SuperAppItem;

    .line 96
    :goto_0
    iget-object p0, p0, Lru/vtosters/lite/ui/items/SuperAppItem;->title:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;->bindMovingItem(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateContent(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const p1, 0x7f121767

    .line 34
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/SuperAppEditorFragment;->setTitle(I)V

    .line 36
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SuperAppEditorFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SuperAppEditorFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 39
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v1, -0x1

    .line 40
    invoke-static {v1, v1}, Lru/vtosters/lite/utils/LayoutUtils;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SuperAppEditorFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f121768

    .line 43
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    const/high16 v3, 0x41800000    # 16.0f

    .line 44
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v3, 0x4

    .line 45
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 46
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTextAttr()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41200000    # 10.0f

    .line 48
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v4

    .line 49
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v5

    .line 50
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v6

    const/4 v7, 0x0

    .line 47
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v4, -0x2

    .line 53
    invoke-static {v1, v4}, Lru/vtosters/lite/utils/LayoutUtils;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {p2, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SuperAppEditorFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v5, 0x41500000    # 13.0f

    .line 57
    invoke-static {v5}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v6

    .line 58
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v8

    .line 59
    invoke-static {v5}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v5

    .line 60
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v9

    .line 56
    invoke-virtual {v2, v6, v8, v5, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 62
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    new-instance v5, Landroid/widget/TextView;

    new-instance v6, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SuperAppEditorFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f1302c7

    invoke-direct {v6, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v6, 0x7f120cb1

    .line 65
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 66
    new-instance v6, Lru/vtosters/lite/ui/fragments/SuperAppEditorFragment$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lru/vtosters/lite/ui/fragments/SuperAppEditorFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    new-instance v6, Lru/vtosters/lite/themes/hooks/TextViewHook;

    invoke-direct {v6}, Lru/vtosters/lite/themes/hooks/TextViewHook;-><init>()V

    invoke-virtual {v6, v5, v7, v7}, Lru/vtosters/lite/themes/hooks/TextViewHook;->inject(Landroid/view/View;IZ)V

    .line 73
    invoke-static {v7, v4}, Lru/vtosters/lite/utils/LayoutUtils;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    const/high16 v8, 0x3f800000    # 1.0f

    .line 74
    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 75
    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    new-instance v5, Landroid/view/View;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SuperAppEditorFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v3

    invoke-direct {v6, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    new-instance v3, Landroid/widget/TextView;

    new-instance v5, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SuperAppEditorFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v5, 0x7f120ca1

    .line 81
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 82
    new-instance v5, Lru/vtosters/lite/ui/fragments/SuperAppEditorFragment$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lru/vtosters/lite/ui/fragments/SuperAppEditorFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-static {v7, v4}, Lru/vtosters/lite/utils/LayoutUtils;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 88
    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 89
    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    invoke-static {}, Lru/vtosters/lite/ui/components/SuperAppEditorManager;->getInstance()Lru/vtosters/lite/ui/components/SuperAppEditorManager;

    move-result-object v2

    .line 92
    new-instance v3, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;

    invoke-virtual {v2}, Lru/vtosters/lite/ui/components/SuperAppEditorManager;->getSelectedTabs()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2}, Lru/vtosters/lite/ui/components/SuperAppEditorManager;->getDisabledTabs()Ljava/util/List;

    move-result-object v5

    new-instance v6, Lru/vtosters/lite/ui/fragments/SuperAppEditorFragment$$ExternalSyntheticLambda2;

    invoke-direct {v6, v2}, Lru/vtosters/lite/ui/fragments/SuperAppEditorFragment$$ExternalSyntheticLambda2;-><init>(Lru/vtosters/lite/ui/components/SuperAppEditorManager;)V

    invoke-direct {v3, v4, v5, v6}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;-><init>(Ljava/util/List;Ljava/util/List;Lru/vtosters/lite/ui/adapters/CategorizedAdapter$IViewHolderBinder;)V

    .line 99
    invoke-virtual {v2}, Lru/vtosters/lite/ui/components/SuperAppEditorManager;->getSelectedTabs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "menu"

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/vtosters/lite/ui/items/SuperAppItem;

    .line 100
    iget-object v7, v5, Lru/vtosters/lite/ui/items/SuperAppItem;->type:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 101
    invoke-virtual {v3, v5}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->addUnmovedItem(Ljava/lang/Object;)V

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {v2}, Lru/vtosters/lite/ui/components/SuperAppEditorManager;->getDisabledTabs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/vtosters/lite/ui/items/SuperAppItem;

    .line 104
    iget-object v5, v4, Lru/vtosters/lite/ui/items/SuperAppItem;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 105
    invoke-virtual {v3, v4}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->addUnmovedItem(Ljava/lang/Object;)V

    goto :goto_1

    .line 107
    :cond_3
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SuperAppEditorFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 108
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SuperAppEditorFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 109
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 110
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 111
    invoke-static {v1, v1}, Lru/vtosters/lite/utils/LayoutUtils;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    const/16 v1, 0x11

    .line 112
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 113
    invoke-virtual {p2, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    new-instance p2, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v0, Lru/vtosters/lite/ui/components/ItemMovingCallback;

    invoke-direct {v0, v3}, Lru/vtosters/lite/ui/components/ItemMovingCallback;-><init>(Lru/vtosters/lite/ui/adapters/CategorizedAdapter;)V

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-object p1
.end method
