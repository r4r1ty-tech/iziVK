.class public Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$ColorPickerViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ColorPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/lite/ui/adapters/ColorPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorPickerViewHolder"
.end annotation


# instance fields
.field private final mColorName:Landroid/widget/TextView;

.field private final mColorPreview:Lcom/vk/stories/view/StoryCircleImageView;

.field private final mColorPreviewBorder:Landroid/widget/FrameLayout;

.field private final mColorValue:Landroid/widget/TextView;

.field private final mContainer:Landroid/view/View;

.field final synthetic this$0:Lru/vtosters/lite/ui/adapters/ColorPickerAdapter;


# direct methods
.method public constructor <init>(Lru/vtosters/lite/ui/adapters/ColorPickerAdapter;Landroid/view/View;)V
    .locals 1

    .line 60
    iput-object p1, p0, Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$ColorPickerViewHolder;->this$0:Lru/vtosters/lite/ui/adapters/ColorPickerAdapter;

    .line 61
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 63
    iput-object p2, p0, Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$ColorPickerViewHolder;->mContainer:Landroid/view/View;

    const-string p1, "color_preview_border"

    const-string v0, "id"

    .line 64
    invoke-static {p1, v0}, Lru/vtosters/lite/utils/AndroidUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$ColorPickerViewHolder;->mColorPreviewBorder:Landroid/widget/FrameLayout;

    const-string p1, "color_preview"

    .line 65
    invoke-static {p1, v0}, Lru/vtosters/lite/utils/AndroidUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/vk/stories/view/StoryCircleImageView;

    iput-object p1, p0, Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$ColorPickerViewHolder;->mColorPreview:Lcom/vk/stories/view/StoryCircleImageView;

    const-string p1, "color_name"

    .line 66
    invoke-static {p1, v0}, Lru/vtosters/lite/utils/AndroidUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$ColorPickerViewHolder;->mColorName:Landroid/widget/TextView;

    const-string p1, "color_value"

    .line 67
    invoke-static {p1, v0}, Lru/vtosters/lite/utils/AndroidUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$ColorPickerViewHolder;->mColorValue:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public bind(Lru/vtosters/lite/themes/items/VTLColor;)V
    .locals 5

    .line 71
    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$ColorPickerViewHolder;->mContainer:Landroid/view/View;

    new-instance v1, Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$ColorPickerViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$ColorPickerViewHolder$$ExternalSyntheticLambda0;-><init>(Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$ColorPickerViewHolder;Lru/vtosters/lite/themes/items/VTLColor;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$ColorPickerViewHolder;->mColorPreviewBorder:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/vk/core/drawable/BorderDrawable;

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isDarkTheme()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    const/high16 v2, -0x1000000

    :goto_0
    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lcom/vk/core/util/Screen;->c(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lcom/vk/core/util/Screen;->c(F)F

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/vk/core/drawable/BorderDrawable;-><init>(IFF)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$ColorPickerViewHolder;->mColorPreview:Lcom/vk/stories/view/StoryCircleImageView;

    iget v1, p1, Lru/vtosters/lite/themes/items/VTLColor;->color:I

    invoke-virtual {v0, v1}, Lcom/vk/stories/view/StoryCircleImageView;->setPlaceholderColor(I)V

    .line 74
    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$ColorPickerViewHolder;->mColorName:Landroid/widget/TextView;

    iget-object v1, p1, Lru/vtosters/lite/themes/items/VTLColor;->resName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$ColorPickerViewHolder;->mColorValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lru/vtosters/lite/themes/items/VTLColor;->color:I

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$bind$0$ru-vtosters-lite-ui-adapters-ColorPickerAdapter$ColorPickerViewHolder(Lru/vtosters/lite/themes/items/VTLColor;Landroid/view/View;)V
    .locals 1

    .line 71
    iget-object p2, p0, Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$ColorPickerViewHolder;->this$0:Lru/vtosters/lite/ui/adapters/ColorPickerAdapter;

    invoke-static {p2}, Lru/vtosters/lite/ui/adapters/ColorPickerAdapter;->-$$Nest$fgetmSelectListener(Lru/vtosters/lite/ui/adapters/ColorPickerAdapter;)Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$OnColorSelectListener;

    move-result-object p2

    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$ColorPickerViewHolder;->this$0:Lru/vtosters/lite/ui/adapters/ColorPickerAdapter;

    invoke-interface {p2, v0, p1}, Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$OnColorSelectListener;->onColorSelected(Lru/vtosters/lite/ui/adapters/ColorPickerAdapter;Lru/vtosters/lite/themes/items/VTLColor;)V

    return-void
.end method
