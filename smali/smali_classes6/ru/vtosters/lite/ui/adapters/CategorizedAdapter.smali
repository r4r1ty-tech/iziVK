.class public Lru/vtosters/lite/ui/adapters/CategorizedAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CategorizedAdapter.java"

# interfaces
.implements Lru/vtosters/lite/ui/components/IItemMovingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/vtosters/lite/ui/adapters/CategorizedAdapter$IViewHolderBinder;,
        Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;",
        ">;",
        "Lru/vtosters/lite/ui/components/IItemMovingListener;"
    }
.end annotation


# static fields
.field public static final CATEGORY_TITLE:I = -0x2

.field public static final DISABLED_STATE:I = -0x2

.field public static final MOVING_ITEM:I = -0x1

.field public static final SELECTED_STATE:I = -0x1


# instance fields
.field private final mBinder:Lru/vtosters/lite/ui/adapters/CategorizedAdapter$IViewHolderBinder;

.field private final mDisabledItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mExceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mMaxSelectedItems:I

.field private mMinSelectedItems:I

.field private final mSelectedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mUnmovedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lru/vtosters/lite/ui/adapters/CategorizedAdapter$IViewHolderBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;",
            "Lru/vtosters/lite/ui/adapters/CategorizedAdapter$IViewHolderBinder;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mExceptions:Ljava/util/List;

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mMinSelectedItems:I

    .line 44
    iput v0, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mMaxSelectedItems:I

    .line 47
    iput-object p1, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mSelectedItems:Ljava/util/List;

    .line 48
    iput-object p2, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mDisabledItems:Ljava/util/List;

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mUnmovedItems:Ljava/util/List;

    .line 50
    iput-object p3, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mBinder:Lru/vtosters/lite/ui/adapters/CategorizedAdapter$IViewHolderBinder;

    return-void
.end method

.method private newCategoryTitle()Landroid/view/View;
    .locals 7

    .line 130
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0d86

    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 132
    invoke-static {v1, v2}, Lru/vtosters/lite/utils/LayoutUtils;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x4

    .line 133
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    new-instance v1, Landroid/widget/TextView;

    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0d80

    .line 136
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setId(I)V

    const/high16 v3, 0x41500000    # 13.0f

    .line 137
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v4, 0x41800000    # 16.0f

    .line 139
    invoke-static {v4}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v5

    .line 140
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v6

    .line 141
    invoke-static {v4}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v4

    .line 142
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v3

    .line 138
    invoke-virtual {v1, v5, v6, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v3, 0x1

    .line 144
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 145
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTextAttr()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    invoke-static {v2, v2}, Lru/vtosters/lite/utils/LayoutUtils;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private newMovingItem()Landroid/view/View;
    .locals 6

    .line 95
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a02cf

    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    const/16 v1, 0x10

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v1, 0x0

    .line 98
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v1, 0x41400000    # 12.0f

    .line 100
    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v2

    .line 101
    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v3

    .line 102
    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v4

    .line 103
    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v1

    .line 99
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/high16 v1, 0x42400000    # 48.0f

    .line 105
    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v1

    const/4 v2, -0x1

    invoke-static {v2, v1}, Lru/vtosters/lite/utils/LayoutUtils;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x4

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 108
    new-instance v1, Landroid/widget/ImageView;

    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0541

    .line 109
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 110
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 111
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x41c00000    # 24.0f

    .line 112
    invoke-static {v4}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v5

    .line 113
    invoke-static {v4}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 111
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    new-instance v1, Landroid/widget/TextView;

    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a08de

    .line 117
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setId(I)V

    const/high16 v3, 0x41800000    # 16.0f

    .line 118
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 119
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 120
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTextAttr()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, -0x2

    .line 121
    invoke-static {v2, v4}, Lru/vtosters/lite/utils/LayoutUtils;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    .line 122
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 123
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method


# virtual methods
.method public addUnmovedItem(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mUnmovedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 161
    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mSelectedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mDisabledItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    if-eqz p1, :cond_1

    .line 69
    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mSelectedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x2

    :goto_1
    return p1
.end method

.method public getTabType(I)I
    .locals 1

    .line 73
    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mSelectedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    :goto_0
    return p1
.end method

.method public isUnmovedItem(I)Z
    .locals 4

    .line 77
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mUnmovedItems:Ljava/util/List;

    .line 79
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->getTabType(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v1, :cond_0

    .line 80
    iget-object v1, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mSelectedItems:Ljava/util/List;

    sub-int/2addr p1, v3

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 81
    :cond_0
    iget-object v1, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mDisabledItems:Ljava/util/List;

    iget-object v2, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mSelectedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, -0x2

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 78
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 25
    check-cast p1, Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;

    invoke-virtual {p0, p1, p2}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->onBindViewHolder(Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;I)V
    .locals 2

    .line 153
    invoke-virtual {p0, p2}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mBinder:Lru/vtosters/lite/ui/adapters/CategorizedAdapter$IViewHolderBinder;

    invoke-interface {v0, p1, p2}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter$IViewHolderBinder;->bind(Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;I)V

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 156
    :goto_0
    invoke-virtual {p1, p2}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;->bindCategory(Z)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;
    .locals 3

    .line 87
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-direct {p0}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->newCategoryTitle()Landroid/view/View;

    move-result-object p2

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lru/vtosters/lite/utils/LayoutUtils;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    invoke-direct {p0}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->newMovingItem()Landroid/view/View;

    move-result-object p2

    invoke-static {v0, v1}, Lru/vtosters/lite/utils/LayoutUtils;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    invoke-static {v0, v1}, Lru/vtosters/lite/utils/LayoutUtils;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    new-instance p2, Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;

    invoke-direct {p2, p1}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter$CategorizedViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onItemDismiss(I)V
    .locals 4

    .line 166
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 168
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->getTabType(I)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mDisabledItems:Ljava/util/List;

    iget-object v1, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mSelectedItems:Ljava/util/List;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mSelectedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mSelectedItems:Ljava/util/List;

    iget-object v1, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mDisabledItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x2

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v0, 0x1

    .line 175
    :goto_0
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->notifyItemRemoved(I)V

    .line 176
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->notifyItemInserted(I)V

    :cond_1
    return-void
.end method

.method public onItemMove(II)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p2, :cond_b

    .line 182
    invoke-virtual {p0, p2}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->isUnmovedItem(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 184
    :cond_0
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->getTabType(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x1

    if-eq v1, v3, :cond_8

    if-eq v1, v2, :cond_1

    goto/16 :goto_1

    .line 186
    :cond_1
    invoke-virtual {p0, p2}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->getTabType(I)I

    move-result v1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mSelectedItems:Ljava/util/List;

    .line 187
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v5, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mMinSelectedItems:I

    if-ne v1, v5, :cond_2

    return v0

    .line 189
    :cond_2
    invoke-virtual {p0, p2}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->getItemViewType(I)I

    move-result v1

    if-ne v1, v3, :cond_7

    .line 190
    iget-object v1, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mExceptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 193
    iget-object v1, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mExceptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 194
    iget-object v7, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mSelectedItems:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ne v6, v2, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v6, v6, 0x1

    if-ne v6, p1, :cond_4

    const/4 v3, 0x1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    if-ne v5, v4, :cond_6

    return v0

    .line 201
    :cond_6
    iget-object v1, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mDisabledItems:Ljava/util/List;

    iget-object v2, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mSelectedItems:Ljava/util/List;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 202
    :cond_7
    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mSelectedItems:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    goto :goto_1

    .line 205
    :cond_8
    invoke-virtual {p0, p2}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->getTabType(I)I

    move-result v1

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mSelectedItems:Ljava/util/List;

    .line 206
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mMaxSelectedItems:I

    if-ne v1, v2, :cond_9

    return v0

    .line 208
    :cond_9
    invoke-virtual {p0, p2}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->getItemViewType(I)I

    move-result v0

    if-ne v0, v3, :cond_a

    .line 209
    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mSelectedItems:Ljava/util/List;

    iget-object v1, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mDisabledItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 211
    :cond_a
    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mDisabledItems:Ljava/util/List;

    iget-object v1, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mSelectedItems:Ljava/util/List;

    .line 213
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x2

    iget-object v2, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mSelectedItems:Ljava/util/List;

    .line 214
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int v2, p2, v2

    add-int/lit8 v2, v2, -0x2

    .line 211
    invoke-static {v0, v1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 218
    :goto_1
    invoke-virtual {p0, p1, p2}, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->notifyItemMoved(II)V

    return v4

    :cond_b
    :goto_2
    return v0
.end method

.method public final varargs setExceptions([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 55
    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mExceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 56
    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mExceptions:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setMinAndMaxCounts(II)V
    .locals 0

    .line 60
    iput p1, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mMinSelectedItems:I

    .line 61
    iput p2, p0, Lru/vtosters/lite/ui/adapters/CategorizedAdapter;->mMaxSelectedItems:I

    return-void
.end method
