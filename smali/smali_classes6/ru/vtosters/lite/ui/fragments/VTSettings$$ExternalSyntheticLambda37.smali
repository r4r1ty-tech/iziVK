.class public final synthetic Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda37;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/preference/Preference;

.field public final synthetic f$1:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda37;->f$0:Landroidx/preference/Preference;

    iput-object p2, p0, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda37;->f$1:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda37;->f$0:Landroidx/preference/Preference;

    iget-object v1, p0, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda37;->f$1:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lru/vtosters/lite/ui/fragments/VTSettings;->lambda$onCreate$1(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
