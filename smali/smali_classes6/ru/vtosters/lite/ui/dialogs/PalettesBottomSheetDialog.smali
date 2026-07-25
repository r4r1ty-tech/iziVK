.class public Lru/vtosters/lite/ui/dialogs/PalettesBottomSheetDialog;
.super Ljava/lang/Object;
.source "PalettesBottomSheetDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "palettes_copy_color"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/app/Activity;Lru/vtosters/lite/themes/items/VTLPalette;Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$OnColorSelectListener;)V
    .locals 3

    .line 12
    new-instance v0, Lru/vtosters/lite/ui/dialogs/VTColorPickerBottomSheetDialog;

    invoke-direct {v0, p0}, Lru/vtosters/lite/ui/dialogs/VTColorPickerBottomSheetDialog;-><init>(Landroid/app/Activity;)V

    .line 13
    new-instance p0, Lru/vtosters/lite/ui/adapters/ColorPickerAdapter;

    iget-object v1, p1, Lru/vtosters/lite/themes/items/VTLPalette;->colors:Ljava/util/List;

    new-instance v2, Lru/vtosters/lite/ui/dialogs/PalettesBottomSheetDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, v0}, Lru/vtosters/lite/ui/dialogs/PalettesBottomSheetDialog$$ExternalSyntheticLambda0;-><init>(Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$OnColorSelectListener;Lru/vtosters/lite/ui/dialogs/VTColorPickerBottomSheetDialog;)V

    invoke-direct {p0, v1, v2}, Lru/vtosters/lite/ui/adapters/ColorPickerAdapter;-><init>(Ljava/util/List;Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$OnColorSelectListener;)V

    .line 17
    iget-object p1, p1, Lru/vtosters/lite/themes/items/VTLPalette;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lru/vtosters/lite/ui/dialogs/VTColorPickerBottomSheetDialog;->setTitle(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/vtosters/lite/ui/dialogs/VTColorPickerBottomSheetDialog;

    const/4 p2, 0x1

    .line 18
    invoke-virtual {p1, p0, p2}, Lru/vtosters/lite/ui/dialogs/VTColorPickerBottomSheetDialog;->setAdapter(Lru/vtosters/lite/ui/adapters/ColorPickerAdapter;Z)Lru/vtosters/lite/ui/dialogs/VTColorPickerBottomSheetDialog;

    move-result-object p0

    const-string p1, "palettes_copy_color"

    .line 19
    invoke-virtual {p0, p1, p2}, Lru/vtosters/lite/ui/dialogs/VTColorPickerBottomSheetDialog;->show(Ljava/lang/String;Z)Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet;

    return-void
.end method

.method static synthetic lambda$create$0(Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$OnColorSelectListener;Lru/vtosters/lite/ui/dialogs/VTColorPickerBottomSheetDialog;Lru/vtosters/lite/ui/adapters/ColorPickerAdapter;Lru/vtosters/lite/themes/items/VTLColor;)V
    .locals 0

    .line 14
    invoke-interface {p0, p2, p3}, Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$OnColorSelectListener;->onColorSelected(Lru/vtosters/lite/ui/adapters/ColorPickerAdapter;Lru/vtosters/lite/themes/items/VTLColor;)V

    .line 15
    invoke-virtual {p1}, Lru/vtosters/lite/ui/dialogs/VTColorPickerBottomSheetDialog;->dismiss()V

    return-void
.end method
