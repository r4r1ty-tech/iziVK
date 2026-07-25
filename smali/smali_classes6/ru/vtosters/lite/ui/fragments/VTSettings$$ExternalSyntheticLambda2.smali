.class public final synthetic Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lru/vtosters/lite/ui/fragments/VTSettings;

.field public final synthetic f$1:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lru/vtosters/lite/ui/fragments/VTSettings;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda2;->f$0:Lru/vtosters/lite/ui/fragments/VTSettings;

    iput-object p2, p0, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda2;->f$1:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda2;->f$0:Lru/vtosters/lite/ui/fragments/VTSettings;

    iget-object v1, p0, Lru/vtosters/lite/ui/fragments/VTSettings$$ExternalSyntheticLambda2;->f$1:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Lru/vtosters/lite/ui/fragments/VTSettings;->lambda$onCreate$2$ru-vtosters-lite-ui-fragments-VTSettings(Landroidx/preference/Preference;)V

    return-void
.end method
