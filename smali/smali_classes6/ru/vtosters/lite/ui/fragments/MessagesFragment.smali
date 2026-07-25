.class public Lru/vtosters/lite/ui/fragments/MessagesFragment;
.super Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;
.source "MessagesFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$prefs$2(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 55
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "translator"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 56
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method private prefs()V
    .locals 4

    const-string v0, "vkme"

    .line 28
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/MessagesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    new-instance v2, Lru/vtosters/lite/ui/fragments/MessagesFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lru/vtosters/lite/ui/fragments/MessagesFragment$$ExternalSyntheticLambda0;-><init>(Lru/vtosters/lite/ui/fragments/MessagesFragment;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "vkme_notifs"

    .line 33
    invoke-virtual {p0, v1}, Lru/vtosters/lite/ui/fragments/MessagesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    new-instance v3, Lru/vtosters/lite/ui/fragments/MessagesFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lru/vtosters/lite/ui/fragments/MessagesFragment$$ExternalSyntheticLambda1;-><init>(Lru/vtosters/lite/ui/fragments/MessagesFragment;)V

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v2, "autotranslate"

    .line 39
    invoke-virtual {p0, v2}, Lru/vtosters/lite/ui/fragments/MessagesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->autoalltranslate()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string v2, "translators"

    .line 41
    invoke-virtual {p0, v2}, Lru/vtosters/lite/ui/fragments/MessagesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->serverFeaturesDisable()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v2, "lang_service"

    .line 43
    invoke-virtual {p0, v2}, Lru/vtosters/lite/ui/fragments/MessagesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    new-instance v3, Lru/vtosters/lite/ui/fragments/MessagesFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lru/vtosters/lite/ui/fragments/MessagesFragment$$ExternalSyntheticLambda2;-><init>(Lru/vtosters/lite/ui/fragments/MessagesFragment;)V

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 63
    invoke-virtual {p0, v1}, Lru/vtosters/lite/ui/fragments/MessagesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->vkme()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 64
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/MessagesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const v1, 0x7f08087f

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 66
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vkmesett"

    .line 67
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/MessagesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    const-string v0, "wallpapers"

    .line 70
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/MessagesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 71
    new-instance v1, Lru/vtosters/lite/ui/fragments/MessagesFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lru/vtosters/lite/ui/fragments/MessagesFragment$$ExternalSyntheticLambda3;-><init>(Lru/vtosters/lite/ui/fragments/MessagesFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method


# virtual methods
.method public T4()I
    .locals 1

    const v0, 0x7f1217ee

    return v0
.end method

.method synthetic lambda$prefs$0$ru-vtosters-lite-ui-fragments-MessagesFragment(Landroidx/preference/Preference;)Z
    .locals 0

    .line 29
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/MessagesFragment;->restart()Z

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$prefs$1$ru-vtosters-lite-ui-fragments-MessagesFragment(Landroidx/preference/Preference;)Z
    .locals 0

    .line 34
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/MessagesFragment;->restart()Z

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$prefs$3$ru-vtosters-lite-ui-fragments-MessagesFragment(Landroidx/preference/Preference;)Z
    .locals 4

    const/4 p1, 0x2

    new-array p1, p1, [Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;

    .line 44
    new-instance v0, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;

    const v1, 0x7f080bd1

    const-string v2, "Yandex Translate"

    invoke-direct {v0, v1, v2}, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    new-instance v0, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;

    const v2, 0x7f080bcc

    const-string v3, "Google Translate"

    invoke-direct {v0, v2, v3}, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x1

    aput-object v0, p1, v2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 50
    new-instance v0, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/MessagesFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, p1}, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 51
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v3, "translator"

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter;->setSelected(I)V

    .line 53
    new-instance p1, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/MessagesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lru/vtosters/lite/ui/fragments/MessagesFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lru/vtosters/lite/ui/fragments/MessagesFragment$$ExternalSyntheticLambda4;-><init>()V

    .line 54
    invoke-virtual {p1, v0, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return v2
.end method

.method synthetic lambda$prefs$4$ru-vtosters-lite-ui-fragments-MessagesFragment(Landroidx/preference/Preference;)Z
    .locals 1

    .line 72
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/MessagesFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;

    invoke-static {p1, v0}, Lru/vtosters/lite/utils/NavigatorUtils;->switchFragment(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f15001a

    .line 22
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/MessagesFragment;->addPreferencesFromResource(I)V

    .line 23
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/MessagesFragment;->prefs()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    const-string v0, "autotranslate"

    .line 79
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/MessagesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->autoalltranslate()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string v0, "vkme_notifs"

    .line 80
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/MessagesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->vkme()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 81
    invoke-super {p0, p1}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public restart()Z
    .locals 1

    .line 85
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->restartApplicationWithTimer()V

    const/4 v0, 0x1

    return v0
.end method
