.class public Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;
.super Landroid/widget/FrameLayout;
.source "BottomNavigationItemView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuView$ItemView;


# instance fields
.field private final mActionIcon:Landroid/widget/ImageView;

.field private mColorStateList:Landroid/content/res/ColorStateList;

.field private final mCounter:Landroid/widget/TextView;

.field private final mCounterContainer:Landroid/view/View;

.field private final mDot:Landroid/view/View;

.field private final mIcon:Landroid/widget/ImageView;

.field private mIconsModeEnabled:Z

.field private mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

.field private mItemPos:I

.field private final mLargeLabel:Landroid/widget/TextView;

.field private final mMargin:I

.field private mShiftingModeEnabled:Z

.field private final mSmallLabel:Landroid/widget/TextView;

.field private final mSmallScale:F

.field private mStaticModeEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 59
    iput p2, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mItemPos:I

    .line 61
    invoke-virtual {p0}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0700b5

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mMargin:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 62
    iput p2, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mSmallScale:F

    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d016f

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f08029e

    .line 66
    invoke-virtual {p0, p1}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->setBackgroundResource(I)V

    const p1, 0x7f0a0541

    .line 67
    invoke-virtual {p0, p1}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    .line 68
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/high16 v0, 0x41e00000    # 28.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->a(F)I

    move-result v1

    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 69
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->a(F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const p1, 0x7f0a0c41

    .line 71
    invoke-virtual {p0, p1}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    .line 72
    invoke-virtual {p0}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lru/vtosters/hooks/other/ThemesUtils;->getCSTDock(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const p1, 0x7f0a0644

    .line 74
    invoke-virtual {p0, p1}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    .line 75
    invoke-virtual {p0}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lru/vtosters/hooks/other/ThemesUtils;->getCSTDock(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 77
    invoke-virtual {p0}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d03c9

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0a02e6

    .line 78
    invoke-virtual {p0, p1}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mCounterContainer:Landroid/view/View;

    const p1, 0x7f0a02e5

    .line 79
    invoke-virtual {p0, p1}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mCounter:Landroid/widget/TextView;

    const p1, 0x7f0a0376

    .line 80
    invoke-virtual {p0, p1}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mDot:Landroid/view/View;

    .line 82
    invoke-virtual {p0}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d03c8

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0a004c

    .line 83
    invoke-virtual {p0, p1}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mActionIcon:Landroid/widget/ImageView;

    const p2, 0x7f040565

    .line 84
    sget-object p3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, p2, p3}, Lcom/vk/core/ui/themes/VKThemeHelper;->a(Landroid/widget/ImageView;ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mActionIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mActionIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getItemPosition()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mItemPos:I

    return v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 111
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->setCheckable(Z)V

    .line 112
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->setChecked(Z)V

    .line 113
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->setEnabled(Z)V

    .line 114
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 115
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->setId(I)V

    .line 117
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 3

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 122
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 123
    iget-object v1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 124
    invoke-static {p1, v0}, Landroid/widget/FrameLayout;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 132
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 133
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mCounterContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    .line 134
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mCounterContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    const/high16 p2, 0x40800000    # 4.0f

    .line 135
    invoke-static {p2}, Lme/grishka/appkit/utils/V;->a(F)I

    move-result p3

    add-int/2addr p1, p3

    .line 136
    invoke-virtual {p0}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->getMeasuredWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    iget-object p4, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mCounterContainer:Landroid/view/View;

    .line 137
    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    sub-int/2addr p3, p4

    .line 138
    invoke-static {p2}, Lme/grishka/appkit/utils/V;->a(F)I

    move-result p2

    sub-int/2addr p3, p2

    const/4 p2, 0x0

    .line 136
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p1, p2

    .line 139
    iget-object p2, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mCounterContainer:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p3

    add-int/2addr p3, p1

    iget-object p4, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mCounterContainer:Landroid/view/View;

    .line 140
    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    iget-object p5, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mCounterContainer:Landroid/view/View;

    .line 141
    invoke-virtual {p5}, Landroid/view/View;->getRight()I

    move-result p5

    add-int/2addr p5, p1

    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mCounterContainer:Landroid/view/View;

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    .line 139
    invoke-virtual {p2, p3, p4, p5, p1}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0

    .line 153
    invoke-virtual {p0}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->refreshDrawableState()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 8

    .line 158
    iget-object v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    .line 160
    iget-object v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setPivotX(Landroid/view/View;F)V

    .line 161
    iget-object v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setPivotY(Landroid/view/View;F)V

    .line 162
    iget-object v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setPivotX(Landroid/view/View;F)V

    .line 163
    iget-object v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setPivotY(Landroid/view/View;F)V

    .line 165
    iget-boolean v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mIconsModeEnabled:Z

    const/high16 v1, 0x40b00000    # 5.5f

    const/high16 v3, 0x3fc00000    # 1.5f

    const/4 v4, 0x0

    const/16 v5, 0x11

    if-eqz v0, :cond_0

    .line 166
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 167
    iput v5, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 168
    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 169
    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 170
    iget-object v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mCounterContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 173
    iput v5, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 174
    iget v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mMargin:I

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->a(F)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 175
    iget v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mMargin:I

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->a(F)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 176
    iget-object v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mCounterContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mCounterContainer:Landroid/view/View;

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->a(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 179
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 182
    :cond_0
    iget-boolean v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mShiftingModeEnabled:Z

    const/4 v6, 0x4

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 184
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x31

    .line 185
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 186
    iget v2, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mMargin:I

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 187
    iget-object v2, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mCounterContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 190
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 191
    iget v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mMargin:I

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->a(F)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 192
    iget v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mMargin:I

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->a(F)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 194
    iget-object v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mCounterContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mCounterContainer:Landroid/view/View;

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->a(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 197
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-static {p1, v7}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 199
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-static {p1, v7}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    goto :goto_0

    .line 201
    :cond_1
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 202
    iput v5, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 203
    iget v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mMargin:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 204
    iget-object v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mCounterContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 207
    iput v5, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 208
    iget v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mMargin:I

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->a(F)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 209
    iget v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mMargin:I

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->a(F)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 210
    iget-object v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mCounterContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mCounterContainer:Landroid/view/View;

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->a(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 213
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 215
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 217
    :goto_0
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mStaticModeEnabled:Z

    if-nez v3, :cond_3

    if-eqz p1, :cond_3

    iget v3, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mSmallScale:F

    goto :goto_1

    :cond_3
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 222
    iget-object v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mStaticModeEnabled:Z

    if-nez v3, :cond_4

    if-eqz p1, :cond_4

    iget v7, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mSmallScale:F

    :cond_4
    invoke-static {v0, v7}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 223
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 224
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 228
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->vkme()Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0xb

    goto :goto_2

    :cond_5
    const/16 p1, 0xa

    .line 234
    :goto_2
    iget-object v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-virtual {v0, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 235
    iget-object v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 237
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 241
    iput v5, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 242
    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/high16 v0, 0x40c00000    # 6.0f

    .line 243
    invoke-static {v0}, Lme/grishka/appkit/utils/V;->a(F)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 244
    iget-object v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mCounterContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 247
    iput v5, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 248
    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/high16 v0, 0x41000000    # 8.0f

    .line 249
    invoke-static {v0}, Lme/grishka/appkit/utils/V;->a(F)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 250
    iget-object v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mCounterContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mCounterContainer:Landroid/view/View;

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->a(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 255
    :goto_3
    invoke-virtual {p0}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->refreshDrawableState()V

    return-void
.end method

.method public setCounterText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mCounter:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 261
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mCounterContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 262
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 263
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mCounterContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mCounter:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mDot:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 267
    :cond_1
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mCounterContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mCounter:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mDot:Landroid/view/View;

    iget v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mItemPos:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 275
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 276
    iget-object v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 277
    iget-object v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 278
    iget-object v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mColorStateList:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 286
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 288
    :cond_0
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 289
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 298
    iget-object p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz p1, :cond_0

    .line 300
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setIconsMode(Z)V
    .locals 0

    .line 306
    iput-boolean p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mIconsModeEnabled:Z

    return-void
.end method

.method public setItemBackground(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemPosition(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mItemPos:I

    return-void
.end method

.method public setShiftingMode(Z)V
    .locals 0

    .line 318
    iput-boolean p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mShiftingModeEnabled:Z

    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0

    return-void
.end method

.method public setStaticMode(Z)V
    .locals 0

    .line 310
    iput-boolean p1, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mStaticModeEnabled:Z

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 327
    iget-object v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v0, p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showsIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
