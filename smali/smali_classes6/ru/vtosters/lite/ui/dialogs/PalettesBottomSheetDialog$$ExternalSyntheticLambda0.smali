.class public final synthetic Lru/vtosters/lite/ui/dialogs/PalettesBottomSheetDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$OnColorSelectListener;


# instance fields
.field public final synthetic f$0:Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$OnColorSelectListener;

.field public final synthetic f$1:Lru/vtosters/lite/ui/dialogs/VTColorPickerBottomSheetDialog;


# direct methods
.method public synthetic constructor <init>(Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$OnColorSelectListener;Lru/vtosters/lite/ui/dialogs/VTColorPickerBottomSheetDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/ui/dialogs/PalettesBottomSheetDialog$$ExternalSyntheticLambda0;->f$0:Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$OnColorSelectListener;

    iput-object p2, p0, Lru/vtosters/lite/ui/dialogs/PalettesBottomSheetDialog$$ExternalSyntheticLambda0;->f$1:Lru/vtosters/lite/ui/dialogs/VTColorPickerBottomSheetDialog;

    return-void
.end method


# virtual methods
.method public final onColorSelected(Lru/vtosters/lite/ui/adapters/ColorPickerAdapter;Lru/vtosters/lite/themes/items/VTLColor;)V
    .locals 2

    iget-object v0, p0, Lru/vtosters/lite/ui/dialogs/PalettesBottomSheetDialog$$ExternalSyntheticLambda0;->f$0:Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$OnColorSelectListener;

    iget-object v1, p0, Lru/vtosters/lite/ui/dialogs/PalettesBottomSheetDialog$$ExternalSyntheticLambda0;->f$1:Lru/vtosters/lite/ui/dialogs/VTColorPickerBottomSheetDialog;

    invoke-static {v0, v1, p1, p2}, Lru/vtosters/lite/ui/dialogs/PalettesBottomSheetDialog;->lambda$create$0(Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$OnColorSelectListener;Lru/vtosters/lite/ui/dialogs/VTColorPickerBottomSheetDialog;Lru/vtosters/lite/ui/adapters/ColorPickerAdapter;Lru/vtosters/lite/themes/items/VTLColor;)V

    return-void
.end method
