.class public Lru/vtosters/lite/ui/fragments/DockBarEditorFragment;
.super Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;
.source "DockBarEditorFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCreateContent$0(Lru/vtosters/lite/ui/components/DockBarEditorManager;Landroid/view/View;)V
    .locals 0

    .line 54
    invoke-virtual {p0}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->save()V

    .line 55
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->restartApplication()V

    return-void
.end method

.method static synthetic lambda$onCreateContent$1(Landroid/view/View;)V
    .locals 0

    .line 70
    invoke-static {}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->getInstance()Lru/vtosters/lite/ui/components/DockBarEditorManager;

    move-result-object p0

    invoke-virtual {p0}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->reset()V

    .line 71
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->restartApplication()V

    return-void
.end method

.method static synthetic lambda$onCreateContent$2(Lru/vtosters/lite/ui/components/DockBarEditorManager;Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;I)V
    .locals 1

    .line 79
    invoke-virtual {p0}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->getSelectedTabs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->getSelectedTabs()Ljava/util/List;

    move-result-object p0

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lru/vtosters/lite/ui/items/DockBarTab;

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->getDisabledTabs()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->getSelectedTabs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p2, p0

    add-int/lit8 p2, p2, -0x2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lru/vtosters/lite/ui/items/DockBarTab;

    .line 82
    :goto_0
    iget p2, p0, Lru/vtosters/lite/ui/items/DockBarTab;->iconID:I

    iget p0, p0, Lru/vtosters/lite/ui/items/DockBarTab;->titleID:I

    invoke-virtual {p1, p2, p0}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;->bindMovingItem(II)V

    return-void
.end method


# virtual methods
.method public onCreateContent(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    const p1, 0x7f121607

    .line 32
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/DockBarEditorFragment;->setTitle(I)V

    .line 34
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DockBarEditorFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DockBarEditorFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 37
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v1, -0x1

    .line 38
    invoke-static {v1, v1}, Lru/vtosters/lite/utils/LayoutUtils;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DockBarEditorFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x41500000    # 13.0f

    .line 42
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    .line 43
    invoke-static {v5}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v6

    .line 44
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v3

    .line 45
    invoke-static {v5}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v7

    .line 41
    invoke-virtual {v2, v4, v6, v3, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v3, -0x2

    .line 47
    invoke-static {v1, v3}, Lru/vtosters/lite/utils/LayoutUtils;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    invoke-static {}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->getInstance()Lru/vtosters/lite/ui/components/DockBarEditorManager;

    move-result-object v4

    .line 51
    new-instance v6, Landroid/widget/TextView;

    new-instance v7, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DockBarEditorFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f1302c7

    invoke-direct {v7, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DockBarEditorFragment;->requireContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f120cb1

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    new-instance v7, Lru/vtosters/lite/ui/fragments/DockBarEditorFragment$$ExternalSyntheticLambda0;

    invoke-direct {v7, v4}, Lru/vtosters/lite/ui/fragments/DockBarEditorFragment$$ExternalSyntheticLambda0;-><init>(Lru/vtosters/lite/ui/components/DockBarEditorManager;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    new-instance v7, Lru/vtosters/lite/themes/hooks/TextViewHook;

    invoke-direct {v7}, Lru/vtosters/lite/themes/hooks/TextViewHook;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8, v8}, Lru/vtosters/lite/themes/hooks/TextViewHook;->inject(Landroid/view/View;IZ)V

    .line 60
    invoke-static {v8, v3}, Lru/vtosters/lite/utils/LayoutUtils;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    const/high16 v10, 0x3f800000    # 1.0f

    .line 61
    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 62
    invoke-virtual {v2, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    new-instance v6, Landroid/view/View;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DockBarEditorFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-static {v5}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v5

    invoke-static {v5, v8}, Lru/vtosters/lite/utils/LayoutUtils;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-instance v5, Landroid/widget/TextView;

    new-instance v6, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DockBarEditorFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DockBarEditorFragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f120ca1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    new-instance v6, Lru/vtosters/lite/ui/fragments/DockBarEditorFragment$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lru/vtosters/lite/ui/fragments/DockBarEditorFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-static {v8, v3}, Lru/vtosters/lite/utils/LayoutUtils;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 75
    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 76
    invoke-virtual {v2, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    new-instance v2, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;

    invoke-virtual {v4}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->getSelectedTabs()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->getDisabledTabs()Ljava/util/List;

    move-result-object v5

    new-instance v6, Lru/vtosters/lite/ui/fragments/DockBarEditorFragment$$ExternalSyntheticLambda2;

    invoke-direct {v6, v4}, Lru/vtosters/lite/ui/fragments/DockBarEditorFragment$$ExternalSyntheticLambda2;-><init>(Lru/vtosters/lite/ui/components/DockBarEditorManager;)V

    invoke-direct {v2, v3, v5, v6}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;-><init>(Ljava/util/List;Ljava/util/List;Lru/vtosters/lite/ui/adapters/CategorizedAdapter$IViewHolderBinder;)V

    const/4 v3, 0x3

    const/16 v4, 0x9

    .line 84
    invoke-virtual {v2, v3, v4}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->setMinAndMaxCounts(II)V

    const/4 v3, 0x2

    new-array v3, v3, [Lru/vtosters/lite/ui/items/DockBarTab;

    const-string v4, "tab_profile"

    .line 86
    invoke-static {v4}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->getTabByTag(Ljava/lang/String;)Lru/vtosters/lite/ui/items/DockBarTab;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, ""

    .line 87
    invoke-static {v4}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->getTabByTag(Ljava/lang/String;)Lru/vtosters/lite/ui/items/DockBarTab;

    move-result-object v4

    aput-object v4, v3, v0

    .line 85
    invoke-virtual {v2, v3}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->setExceptions([Ljava/lang/Object;)V

    .line 89
    new-instance v3, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DockBarEditorFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 90
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/DockBarEditorFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 91
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 92
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 93
    invoke-static {v1, v1}, Lru/vtosters/lite/utils/LayoutUtils;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    const/16 v1, 0x11

    .line 94
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 95
    invoke-virtual {p2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    new-instance p2, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v0, Lru/vtosters/lite/ui/components/ItemMovingCallback;

    invoke-direct {v0, v2}, Lru/vtosters/lite/ui/components/ItemMovingCallback;-><init>(Lru/vtosters/lite/ui/adapters/CategorizedAdapter;)V

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-object p1
.end method
