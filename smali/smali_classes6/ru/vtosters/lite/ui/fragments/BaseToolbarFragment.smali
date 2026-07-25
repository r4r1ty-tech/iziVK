.class public abstract Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;
.super Lcom/vk/core/fragments/FragmentImpl;
.source "BaseToolbarFragment.java"


# instance fields
.field private mContentLayout:Landroid/widget/FrameLayout;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/vk/core/fragments/FragmentImpl;-><init>()V

    return-void
.end method

.method private initToolbar()V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;->setNavigationIconEnabled(Z)V

    .line 73
    iget-object v0, p0, Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;->onCreateMenu(Landroid/view/Menu;)V

    return-void
.end method


# virtual methods
.method public getToolbar()Landroidx/appcompat/widget/Toolbar;
    .locals 1

    .line 66
    iget-object v0, p0, Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method synthetic lambda$setNavigationIconEnabled$0$ru-vtosters-lite-ui-fragments-BaseToolbarFragment(Landroid/view/View;)V
    .locals 0

    .line 43
    invoke-static {p0}, Lcom/vtosters/lite/m0/ToolbarHelper;->b(Lcom/vk/core/fragments/FragmentImpl;)V

    return-void
.end method

.method public abstract onCreateContent(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method protected onCreateMenu(Landroid/view/Menu;)V
    .locals 3

    .line 26
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 27
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 28
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lru/vtosters/lite/ui/fragments/BaseToolbarFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lru/vtosters/lite/ui/fragments/BaseToolbarFragment$$ExternalSyntheticLambda0;-><init>(Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 53
    invoke-super {p0, p1, p2, p3}, Lcom/vk/core/fragments/FragmentImpl;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x7f0d0046

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;->mRootView:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0d9d

    .line 56
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    iput-object p2, p0, Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 57
    iget-object p2, p0, Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;->mRootView:Landroid/widget/FrameLayout;

    const v0, 0x7f0a00b2

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;->mContentLayout:Landroid/widget/FrameLayout;

    .line 59
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;->initToolbar()V

    .line 60
    iget-object p2, p0, Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;->mContentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p3}, Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;->onCreateContent(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p3, -0x1

    invoke-static {p3, p3}, Lru/vtosters/lite/utils/LayoutUtils;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object p1, p0, Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;->mRootView:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method public setNavigationIconEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 41
    iget-object p1, p0, Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f080376

    invoke-static {p1, v0}, Lcom/vtosters/lite/ViewUtils;->a(Landroidx/appcompat/widget/Toolbar;I)V

    .line 42
    iget-object p1, p0, Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v0, Lru/vtosters/lite/ui/fragments/BaseToolbarFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lru/vtosters/lite/ui/fragments/BaseToolbarFragment$$ExternalSyntheticLambda1;-><init>(Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 46
    :cond_0
    iget-object p1, p0, Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p0, p1}, Lcom/vtosters/lite/m0/ToolbarHelper;->a(Lcom/vk/core/fragments/FragmentImpl;Landroidx/appcompat/widget/Toolbar;)V

    :goto_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 36
    iget-object v0, p0, Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
