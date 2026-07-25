.class public Lru/vtosters/lite/ui/fragments/ProxySettingsFragment;
.super Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;
.source "ProxySettingsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;-><init>()V

    return-void
.end method

.method private initComponents()V
    .locals 3

    .line 25
    sget-object v0, Lcom/vk/core/network/Network;->l:Lcom/vk/core/network/Network;

    invoke-virtual {v0}, Lcom/vk/core/network/Network;->b()Lcom/vk/core/network/proxy/NetworkProxy;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/vk/core/network/proxy/NetworkProxy;->d()Z

    move-result v1

    const-string v2, "vkproxy"

    .line 27
    invoke-virtual {p0, v2}, Lru/vtosters/lite/ui/fragments/ProxySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SwitchPreference;

    .line 28
    invoke-virtual {v2, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 29
    new-instance v1, Lru/vtosters/lite/ui/fragments/ProxyChangeListener;

    invoke-direct {v1, v0, v2}, Lru/vtosters/lite/ui/fragments/ProxyChangeListener;-><init>(Lcom/vk/core/network/proxy/NetworkProxy;Landroidx/preference/SwitchPreference;)V

    invoke-virtual {v2, v1}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method


# virtual methods
.method public T4()I
    .locals 1

    const v0, 0x7f1217fc

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f15001c

    .line 20
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/ProxySettingsFragment;->addPreferencesFromResource(I)V

    .line 21
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/ProxySettingsFragment;->initComponents()V

    return-void
.end method
