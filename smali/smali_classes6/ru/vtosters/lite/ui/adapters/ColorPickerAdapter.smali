.class public Lru/vtosters/lite/ui/adapters/ColorPickerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ColorPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$OnColorSelectListener;,
        Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$ColorPickerViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$ColorPickerViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/vtosters/lite/themes/items/VTLColor;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectListener:Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$OnColorSelectListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSelectListener(Lru/vtosters/lite/ui/adapters/ColorPickerAdapter;)Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$OnColorSelectListener;
    .locals 0

    iget-object p0, p0, Lru/vtosters/lite/ui/adapters/ColorPickerAdapter;->mSelectListener:Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$OnColorSelectListener;

    return-object p0
.end method

.method public constructor <init>(Ljava/util/List;Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$OnColorSelectListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/vtosters/lite/themes/items/VTLColor;",
            ">;",
            "Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$OnColorSelectListener;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    iput-object p1, p0, Lru/vtosters/lite/ui/adapters/ColorPickerAdapter;->mColors:Ljava/util/List;

    .line 27
    iput-object p2, p0, Lru/vtosters/lite/ui/adapters/ColorPickerAdapter;->mSelectListener:Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$OnColorSelectListener;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 45
    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/ColorPickerAdapter;->mColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 20
    check-cast p1, Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$ColorPickerViewHolder;

    invoke-virtual {p0, p1, p2}, Lru/vtosters/lite/ui/adapters/ColorPickerAdapter;->onBindViewHolder(Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$ColorPickerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$ColorPickerViewHolder;I)V
    .locals 1

    .line 40
    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/ColorPickerAdapter;->mColors:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lru/vtosters/lite/themes/items/VTLColor;

    invoke-virtual {p1, p2}, Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$ColorPickerViewHolder;->bind(Lru/vtosters/lite/themes/items/VTLColor;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lru/vtosters/lite/ui/adapters/ColorPickerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$ColorPickerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$ColorPickerViewHolder;
    .locals 2

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const-string v0, "color_picker_item"

    const-string v1, "layout"

    .line 34
    invoke-static {v0, v1}, Lru/vtosters/lite/utils/AndroidUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 35
    new-instance p2, Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$ColorPickerViewHolder;

    invoke-direct {p2, p0, p1}, Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$ColorPickerViewHolder;-><init>(Lru/vtosters/lite/ui/adapters/ColorPickerAdapter;Landroid/view/View;)V

    return-object p2
.end method
