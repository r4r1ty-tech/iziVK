.class public Lru/vtosters/lite/ui/fragments/ActivityFragment;
.super Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;
.source "ActivityFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public T4()I
    .locals 1

    const v0, 0x7f1217d3

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 13
    invoke-super {p0, p1}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f150015

    .line 14
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/ActivityFragment;->addPreferencesFromResource(I)V

    const-string p1, "setoffline"

    .line 15
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/ActivityFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->offline()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string p1, "onlinefixcategory"

    .line 16
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/ActivityFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->serverFeaturesDisable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    const-string v0, "setoffline"

    .line 21
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/ActivityFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->offline()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 22
    invoke-super {p0, p1}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
