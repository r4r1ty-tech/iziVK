.class public final synthetic Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$OnColorSelectListener;


# instance fields
.field public final synthetic f$0:Lru/vtosters/lite/ui/fragments/ThemesFragment;


# direct methods
.method public synthetic constructor <init>(Lru/vtosters/lite/ui/fragments/ThemesFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda0;->f$0:Lru/vtosters/lite/ui/fragments/ThemesFragment;

    return-void
.end method


# virtual methods
.method public final onColorSelected(Lru/vtosters/lite/ui/adapters/ColorPickerAdapter;Lru/vtosters/lite/themes/items/VTLColor;)V
    .locals 1

    iget-object v0, p0, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda0;->f$0:Lru/vtosters/lite/ui/fragments/ThemesFragment;

    invoke-virtual {v0, p1, p2}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->lambda$showPalettesDialog$16$ru-vtosters-lite-ui-fragments-ThemesFragment(Lru/vtosters/lite/ui/adapters/ColorPickerAdapter;Lru/vtosters/lite/themes/items/VTLColor;)V

    return-void
.end method
