.class public Lru/vtosters/lite/ui/fragments/InterfaceFragment;
.super Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;
.source "InterfaceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$prefs$0(Landroidx/preference/Preference;)Z
    .locals 0

    .line 23
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->restartApplicationWithTimer()V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$prefs$1(Landroidx/preference/Preference;)Z
    .locals 0

    .line 28
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->restartApplicationWithTimer()V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$prefs$2(Landroidx/preference/Preference;)Z
    .locals 0

    .line 33
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->restartApplicationWithTimer()V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$prefs$3(Landroidx/preference/Preference;)Z
    .locals 0

    .line 40
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->restartApplicationWithTimer()V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$prefs$4(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 46
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "dateformat"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 47
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->restartApplicationWithTimer()V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$prefs$6(Landroidx/preference/Preference;)Z
    .locals 0

    .line 73
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->restartApplicationWithTimer()V

    const/4 p0, 0x1

    return p0
.end method

.method private prefs()V
    .locals 6

    const-string v0, "stories"

    .line 22
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/InterfaceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/ui/fragments/InterfaceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lru/vtosters/lite/ui/fragments/InterfaceFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "swipe"

    .line 27
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/InterfaceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    new-instance v2, Lru/vtosters/lite/ui/fragments/InterfaceFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lru/vtosters/lite/ui/fragments/InterfaceFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "is_likes_on_right"

    .line 32
    invoke-virtual {p0, v1}, Lru/vtosters/lite/ui/fragments/InterfaceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    new-instance v2, Lru/vtosters/lite/ui/fragments/InterfaceFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lru/vtosters/lite/ui/fragments/InterfaceFragment$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "superapp"

    .line 37
    invoke-virtual {p0, v1}, Lru/vtosters/lite/ui/fragments/InterfaceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 38
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 39
    new-instance v2, Lru/vtosters/lite/ui/fragments/InterfaceFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lru/vtosters/lite/ui/fragments/InterfaceFragment$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "dateformat"

    .line 45
    invoke-virtual {p0, v1}, Lru/vtosters/lite/ui/fragments/InterfaceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    new-instance v2, Lru/vtosters/lite/ui/fragments/InterfaceFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lru/vtosters/lite/ui/fragments/InterfaceFragment$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "superappeditor"

    .line 51
    invoke-virtual {p0, v1}, Lru/vtosters/lite/ui/fragments/InterfaceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f121618

    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lru/vtosters/lite/ui/components/SuperAppEditorManager;->getInstance()Lru/vtosters/lite/ui/components/SuperAppEditorManager;

    move-result-object v3

    invoke-virtual {v3}, Lru/vtosters/lite/ui/components/SuperAppEditorManager;->getDisabledTabs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 53
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->vkme()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->superapp()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 54
    new-instance v2, Lru/vtosters/lite/ui/fragments/InterfaceFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lru/vtosters/lite/ui/fragments/InterfaceFragment$$ExternalSyntheticLambda5;-><init>(Lru/vtosters/lite/ui/fragments/InterfaceFragment;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 59
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "menusett"

    .line 60
    invoke-virtual {p0, v1}, Lru/vtosters/lite/ui/fragments/InterfaceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 61
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/InterfaceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 64
    :cond_1
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMilkshake()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->superapp()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "miniapps"

    .line 65
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/InterfaceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v0, "showmenu"

    .line 67
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/InterfaceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    const-string v0, "disableForceTabletMode"

    .line 70
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/InterfaceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 71
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->isTablet()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 72
    new-instance v1, Lru/vtosters/lite/ui/fragments/InterfaceFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lru/vtosters/lite/ui/fragments/InterfaceFragment$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "customrounding"

    .line 77
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/InterfaceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    new-instance v2, Lru/vtosters/lite/ui/fragments/InterfaceFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lru/vtosters/lite/ui/fragments/InterfaceFragment$$ExternalSyntheticLambda7;-><init>(Lru/vtosters/lite/ui/fragments/InterfaceFragment;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "friendsblock"

    .line 82
    invoke-virtual {p0, v1}, Lru/vtosters/lite/ui/fragments/InterfaceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 84
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pic_rounding"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    .line 85
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/InterfaceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/InterfaceFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1202da

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 87
    :cond_3
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/InterfaceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/InterfaceFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f121726

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public T4()I
    .locals 1

    const v0, 0x7f1217e7

    return v0
.end method

.method synthetic lambda$prefs$5$ru-vtosters-lite-ui-fragments-InterfaceFragment(Landroidx/preference/Preference;)Z
    .locals 1

    .line 55
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/InterfaceFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lru/vtosters/lite/ui/fragments/SuperAppEditorFragment;

    invoke-static {p1, v0}, Lru/vtosters/lite/utils/NavigatorUtils;->switchFragment(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$prefs$7$ru-vtosters-lite-ui-fragments-InterfaceFragment(Landroidx/preference/Preference;)Z
    .locals 0

    .line 78
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/InterfaceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/ui/dialogs/RoundingSeekbarDialog;->dialog(Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f150018

    .line 17
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/InterfaceFragment;->addPreferencesFromResource(I)V

    .line 18
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/InterfaceFragment;->prefs()V

    return-void
.end method
