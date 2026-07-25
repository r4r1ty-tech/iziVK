.class public Lru/vtosters/lite/ui/vkui/VBListBuilder;
.super Ljava/lang/Object;
.source "VBListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/vtosters/lite/ui/vkui/VBListBuilder$VBListItem;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildListOf(Landroid/content/Context;Ljava/util/List;)Landroid/view/ViewGroup;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lru/vtosters/lite/ui/vkui/VBListBuilder$VBListItem;",
            ">;)",
            "Landroid/view/ViewGroup;"
        }
    .end annotation

    .line 16
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v2, 0x41000000    # 8.0f

    .line 18
    invoke-static {v2}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v3

    invoke-static {v2}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/vtosters/lite/ui/vkui/VBListBuilder$VBListItem;

    .line 21
    new-instance v4, Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v6}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-static {v2}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v6

    invoke-static {v2}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v7

    invoke-virtual {v4, v5, v6, v5, v7}, Landroid/widget/CheckBox;->setPadding(IIII)V

    const/high16 v6, 0x41600000    # 14.0f

    .line 24
    invoke-virtual {v4, v1, v6}, Landroid/widget/CheckBox;->setTextSize(IF)V

    .line 25
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTextAttr()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 27
    iget-boolean v6, v3, Lru/vtosters/lite/ui/vkui/VBListBuilder$VBListItem;->checked:Z

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 28
    iget-object v6, v3, Lru/vtosters/lite/ui/vkui/VBListBuilder$VBListItem;->title:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 30
    new-instance v6, Lru/vtosters/lite/ui/vkui/VBListBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v6, v3}, Lru/vtosters/lite/ui/vkui/VBListBuilder$$ExternalSyntheticLambda0;-><init>(Lru/vtosters/lite/ui/vkui/VBListBuilder$VBListItem;)V

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 34
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic lambda$buildListOf$0(Lru/vtosters/lite/ui/vkui/VBListBuilder$VBListItem;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 31
    iput-boolean p2, p0, Lru/vtosters/lite/ui/vkui/VBListBuilder$VBListItem;->checked:Z

    return-void
.end method
