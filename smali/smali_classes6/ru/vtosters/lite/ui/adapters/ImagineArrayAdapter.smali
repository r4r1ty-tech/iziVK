.class public Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ImagineArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter;->mItems:Ljava/util/List;

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter;->mSelectedIndex:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter;->mSelectedIndex:I

    .line 38
    iput-object p2, p0, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter;->mItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(II)V
    .locals 1

    .line 76
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 77
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 78
    new-instance v0, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;

    invoke-direct {v0, p1, p2}, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter;->mItems:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-super {p0, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public add(ILjava/lang/String;)V
    .locals 1

    .line 62
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 63
    new-instance v0, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;

    invoke-direct {v0, p1, p2}, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter;->mItems:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-super {p0, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public add(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .line 69
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 70
    new-instance v0, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;

    invoke-direct {v0, p1, p2}, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter;->mItems:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-super {p0, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public add(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    .line 56
    new-instance v0, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;

    invoke-direct {v0, p1, p2}, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter;->mItems:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-super {p0, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;

    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter;->add(Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;)V

    return-void
.end method

.method public add(Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 47
    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .line 86
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 88
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v2, 0x40a00000    # 5.0f

    .line 89
    invoke-static {v2}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v3

    invoke-static {v2}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v4

    invoke-virtual {p2, v0, v3, v0, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 90
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-virtual {p0}, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x7f0d04f9

    .line 94
    invoke-virtual {v3, v6, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckedTextView;

    .line 96
    new-instance v3, Landroid/content/res/ColorStateList;

    const/4 v6, 0x2

    new-array v7, v6, [[I

    const/4 v8, 0x1

    new-array v9, v8, [I

    const v10, 0x10100a0

    aput v10, v9, v0

    aput-object v9, v7, v0

    new-array v9, v8, [I

    const v10, -0x10100a0

    aput v10, v9, v0

    aput-object v9, v7, v8

    new-array v6, v6, [I

    .line 98
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v9

    aput v9, v6, v0

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getSTextAttr()I

    move-result v9

    aput v9, v6, v8

    invoke-direct {v3, v7, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 99
    invoke-static {p3, v3}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawableTintList(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 100
    iget v3, p0, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter;->mSelectedIndex:I

    if-ne p1, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p3, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    const/high16 v0, 0x42480000    # 50.0f

    .line 101
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v0

    invoke-static {v0, v5}, Lru/vtosters/lite/utils/LayoutUtils;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    iget-object p3, p0, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter;->mItems:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;

    .line 105
    new-instance p3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 106
    invoke-virtual {p1}, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/high16 v0, 0x420c0000    # 35.0f

    .line 108
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v3

    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v0

    invoke-static {v3, v0}, Lru/vtosters/lite/utils/LayoutUtils;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    const/high16 v3, 0x41200000    # 10.0f

    .line 109
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 110
    invoke-virtual {p2, p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    new-instance p3, Landroid/widget/CheckedTextView;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;)V

    .line 113
    invoke-virtual {p1}, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTextAttr()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    const/high16 p1, 0x41500000    # 13.0f

    .line 116
    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result p1

    .line 117
    invoke-static {v2}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v0

    .line 118
    invoke-static {v2}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v3

    .line 119
    invoke-static {v2}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v2

    .line 115
    invoke-virtual {p3, p1, v0, v3, v2}, Landroid/widget/CheckedTextView;->setPadding(IIII)V

    const/high16 p1, 0x41900000    # 18.0f

    .line 120
    invoke-virtual {p3, p1}, Landroid/widget/CheckedTextView;->setTextSize(F)V

    .line 121
    invoke-virtual {p3, v1}, Landroid/widget/CheckedTextView;->setGravity(I)V

    .line 122
    invoke-static {v5, v4}, Lru/vtosters/lite/utils/LayoutUtils;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    .line 123
    invoke-virtual {p2, p3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method public setSelected(I)V
    .locals 0

    .line 42
    iput p1, p0, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter;->mSelectedIndex:I

    return-void
.end method
