.class public Lru/vtosters/lite/ui/dialogs/VTColorPickerBottomSheetDialog;
.super Lru/vtosters/lite/ui/vkui/ModalBottomSheetWrapper;
.source "VTColorPickerBottomSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/vtosters/lite/ui/vkui/ModalBottomSheetWrapper<",
        "Lru/vtosters/lite/ui/dialogs/VTColorPickerBottomSheetDialog;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 17
    invoke-direct {p0, p1}, Lru/vtosters/lite/ui/vkui/ModalBottomSheetWrapper;-><init>(Landroid/app/Activity;)V

    .line 18
    iput-object p1, p0, Lru/vtosters/lite/ui/dialogs/VTColorPickerBottomSheetDialog;->mActivity:Landroid/app/Activity;

    .line 19
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/vtosters/lite/ui/dialogs/VTColorPickerBottomSheetDialog;->mContainer:Landroid/widget/LinearLayout;

    const/4 p1, -0x1

    .line 20
    invoke-static {p1, p1}, Lru/vtosters/lite/utils/LayoutUtils;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 21
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method


# virtual methods
.method public getContainer()Landroid/widget/LinearLayout;
    .locals 1

    .line 37
    iget-object v0, p0, Lru/vtosters/lite/ui/dialogs/VTColorPickerBottomSheetDialog;->mContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public setAdapter(Lru/vtosters/lite/ui/adapters/ColorPickerAdapter;Z)Lru/vtosters/lite/ui/dialogs/VTColorPickerBottomSheetDialog;
    .locals 1

    .line 25
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lru/vtosters/lite/ui/dialogs/VTColorPickerBottomSheetDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x1

    .line 27
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 28
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lru/vtosters/lite/ui/dialogs/VTColorPickerBottomSheetDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 p1, -0x1

    .line 29
    invoke-static {p1, p1}, Lru/vtosters/lite/utils/LayoutUtils;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    .line 30
    iget-object v0, p0, Lru/vtosters/lite/ui/dialogs/VTColorPickerBottomSheetDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    iget-object p1, p0, Lru/vtosters/lite/ui/dialogs/VTColorPickerBottomSheetDialog;->mBuilder:Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;

    iget-object p2, p0, Lru/vtosters/lite/ui/dialogs/VTColorPickerBottomSheetDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;->a(Landroid/view/View;)Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;

    .line 33
    iget-object p1, p0, Lru/vtosters/lite/ui/dialogs/VTColorPickerBottomSheetDialog;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/dialogs/VTColorPickerBottomSheetDialog;->setView(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/vtosters/lite/ui/dialogs/VTColorPickerBottomSheetDialog;

    return-object p1
.end method
