.class public Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;
.super Lcom/vtosters/lite/general/fragments/MaterialPreferenceToolbarFragment;
.source "TrackedMaterialPreferenceToolbarFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/vtosters/lite/general/fragments/MaterialPreferenceToolbarFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 10
    invoke-super {p0, p1}, Lcom/vtosters/lite/general/fragments/MaterialPreferenceToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/utils/AnalyticsHelper;->trackSettingsFragment(Ljava/lang/Class;)V

    return-void
.end method
