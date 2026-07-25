.class public Lru/vtosters/lite/ui/fragments/ThemesFragment;
.super Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;
.source "ThemesFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;-><init>()V

    return-void
.end method

.method private initPreferences()V
    .locals 6

    const-string v0, "accent_color"

    .line 36
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800b3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lru/vtosters/hooks/other/ThemesUtils;->recolorDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 38
    new-instance v1, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda19;-><init>(Lru/vtosters/lite/ui/fragments/ThemesFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "systememoji"

    .line 43
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f121779

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \ud83d\ude00\ud83d\ude01\ud83e\udd11\ud83e\udd75\ud83d\udc4d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v1, "invalidate_theme_cache"

    .line 45
    invoke-virtual {p0, v1}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 46
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getReservedAccent()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->dev()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    new-instance v2, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda3;-><init>(Lru/vtosters/lite/ui/fragments/ThemesFragment;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    const-string v1, "navbar"

    .line 55
    invoke-virtual {p0, v1}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 56
    new-instance v2, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda4;-><init>(Lru/vtosters/lite/ui/fragments/ThemesFragment;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "milkshake"

    .line 61
    invoke-virtual {p0, v1}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 62
    new-instance v2, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda5;-><init>(Lru/vtosters/lite/ui/fragments/ThemesFragment;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "amoledtheme"

    .line 67
    invoke-virtual {p0, v1}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 68
    new-instance v2, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda6;-><init>(Lru/vtosters/lite/ui/fragments/ThemesFragment;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "monettheme"

    .line 73
    invoke-virtual {p0, v1}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 74
    new-instance v2, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda7;-><init>(Lru/vtosters/lite/ui/fragments/ThemesFragment;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 78
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    const/4 v5, 0x1

    if-lt v2, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v1, "iconmanager"

    .line 80
    invoke-virtual {p0, v1}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 81
    new-instance v2, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda8;-><init>(Lru/vtosters/lite/ui/fragments/ThemesFragment;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "dockbar_tab_titles"

    .line 86
    invoke-virtual {p0, v1}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 87
    new-instance v2, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda9;-><init>(Lru/vtosters/lite/ui/fragments/ThemesFragment;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "dockbar_accent"

    .line 92
    invoke-virtual {p0, v1}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 93
    new-instance v2, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda10;-><init>(Lru/vtosters/lite/ui/fragments/ThemesFragment;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "dockcounter"

    .line 98
    invoke-virtual {p0, v1}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 99
    new-instance v2, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda12;-><init>(Lru/vtosters/lite/ui/fragments/ThemesFragment;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "newsfeed_notif"

    .line 104
    invoke-virtual {p0, v1}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 105
    new-instance v2, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda20;-><init>(Lru/vtosters/lite/ui/fragments/ThemesFragment;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 110
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v1, "accentprefs"

    .line 112
    invoke-virtual {p0, v1}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMonetTheme()Z

    move-result v2

    if-nez v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v2, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v1, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 114
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda1;-><init>(Lru/vtosters/lite/ui/fragments/ThemesFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 119
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "dockbarsett"

    .line 120
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 121
    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    const-string v0, "alteremoji"

    .line 122
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_3
    const-string v0, "useCustomPrefsStyle"

    .line 125
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda2;-><init>(Lru/vtosters/lite/ui/fragments/ThemesFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method


# virtual methods
.method public T4()I
    .locals 1

    const v0, 0x7f121812

    return v0
.end method

.method changeAccent()V
    .locals 3

    const-string v0, "accent_select_type"

    .line 137
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 138
    new-instance v1, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "change_accent_color"

    .line 139
    invoke-static {v2}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda15;-><init>(Lru/vtosters/lite/ui/fragments/ThemesFragment;)V

    .line 140
    invoke-virtual {v1, v0, v2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda16;-><init>(Lru/vtosters/lite/ui/fragments/ThemesFragment;)V

    const v2, 0x7f120ca1

    .line 146
    invoke-virtual {v0, v2, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12018a

    const/4 v2, 0x0

    .line 151
    invoke-virtual {v0, v1, v2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$changeAccent$13$ru-vtosters-lite-ui-fragments-ThemesFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->showPalettesDialog()V

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->showColorPicker()V

    :goto_0
    return-void
.end method

.method synthetic lambda$changeAccent$14$ru-vtosters-lite-ui-fragments-ThemesFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 147
    invoke-static {}, Lru/vtosters/lite/themes/ThemesManager;->deleteModification()V

    const/4 p1, 0x0

    .line 148
    invoke-static {p1, p1}, Lru/vtosters/hooks/other/ThemesUtils;->reserveAccentColor(IZ)V

    .line 149
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->restart()V

    return-void
.end method

.method synthetic lambda$initPreferences$0$ru-vtosters-lite-ui-fragments-ThemesFragment(Landroidx/preference/Preference;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->changeAccent()V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$initPreferences$1$ru-vtosters-lite-ui-fragments-ThemesFragment(Landroidx/preference/Preference;)Z
    .locals 0

    .line 48
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getReservedAccent()I

    move-result p1

    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->setAccentColor(I)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$initPreferences$10$ru-vtosters-lite-ui-fragments-ThemesFragment(Landroidx/preference/Preference;)Z
    .locals 0

    .line 106
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->restart()V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$initPreferences$11$ru-vtosters-lite-ui-fragments-ThemesFragment(Landroidx/preference/Preference;)Z
    .locals 0

    .line 115
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->restart()V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$initPreferences$12$ru-vtosters-lite-ui-fragments-ThemesFragment(Landroidx/preference/Preference;)Z
    .locals 0

    .line 126
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->restart()V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$initPreferences$2$ru-vtosters-lite-ui-fragments-ThemesFragment(Landroidx/preference/Preference;)Z
    .locals 0

    .line 57
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->restart()V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$initPreferences$3$ru-vtosters-lite-ui-fragments-ThemesFragment(Landroidx/preference/Preference;)Z
    .locals 0

    .line 63
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->restart()V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$initPreferences$4$ru-vtosters-lite-ui-fragments-ThemesFragment(Landroidx/preference/Preference;)Z
    .locals 0

    .line 69
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->restart()V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$initPreferences$5$ru-vtosters-lite-ui-fragments-ThemesFragment(Landroidx/preference/Preference;)Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->restart()V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$initPreferences$6$ru-vtosters-lite-ui-fragments-ThemesFragment(Landroidx/preference/Preference;)Z
    .locals 1

    .line 82
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lru/vtosters/lite/ui/fragments/IconsFragment;

    invoke-static {p1, v0}, Lru/vtosters/lite/utils/NavigatorUtils;->switchFragment(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$initPreferences$7$ru-vtosters-lite-ui-fragments-ThemesFragment(Landroidx/preference/Preference;)Z
    .locals 0

    .line 88
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->restart()V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$initPreferences$8$ru-vtosters-lite-ui-fragments-ThemesFragment(Landroidx/preference/Preference;)Z
    .locals 0

    .line 94
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->restart()V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$initPreferences$9$ru-vtosters-lite-ui-fragments-ThemesFragment(Landroidx/preference/Preference;)Z
    .locals 0

    .line 100
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->restart()V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$setAccentColor$18$ru-vtosters-lite-ui-fragments-ThemesFragment(Lb/h/g/k/VKProgressDialog;Ljava/lang/Throwable;)V
    .locals 2

    .line 208
    invoke-virtual {p1}, Lb/h/g/k/VKProgressDialog;->dismiss()V

    .line 209
    new-instance p1, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "error"

    .line 210
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error_applying_accent"

    .line 211
    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    const-string p2, "OK"

    const/4 v0, 0x0

    .line 212
    invoke-virtual {p1, p2, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    .line 213
    invoke-virtual {p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$setAccentColor$19$ru-vtosters-lite-ui-fragments-ThemesFragment(ILb/h/g/k/VKProgressDialog;)V
    .locals 2

    const/4 v0, 0x1

    .line 201
    :try_start_0
    invoke-static {p1, v0}, Lru/vtosters/hooks/other/ThemesUtils;->reserveAccentColor(IZ)V

    .line 202
    invoke-static {p1}, Lru/vtosters/lite/themes/ThemesManager;->generateModApk(I)V

    .line 203
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda11;-><init>(Lru/vtosters/lite/ui/fragments/ThemesFragment;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "ThemesFragment"

    .line 205
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {}, Lru/vtosters/lite/themes/ThemesManager;->deleteModification()V

    .line 207
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p2, p1}, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda13;-><init>(Lru/vtosters/lite/ui/fragments/ThemesFragment;Lb/h/g/k/VKProgressDialog;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$showColorPicker$15$ru-vtosters-lite-ui-fragments-ThemesFragment(Lru/vtosters/lite/ui/views/rarepebble/ColorPickerView;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 169
    invoke-virtual {p1}, Lru/vtosters/lite/ui/views/rarepebble/ColorPickerView;->getColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->setAccentColor(I)V

    return-void
.end method

.method synthetic lambda$showPalettesDialog$16$ru-vtosters-lite-ui-fragments-ThemesFragment(Lru/vtosters/lite/ui/adapters/ColorPickerAdapter;Lru/vtosters/lite/themes/items/VTLColor;)V
    .locals 0

    .line 186
    iget p1, p2, Lru/vtosters/lite/themes/items/VTLColor;->color:I

    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->setAccentColor(I)V

    return-void
.end method

.method synthetic lambda$showPalettesDialog$17$ru-vtosters-lite-ui-fragments-ThemesFragment(Lru/vtosters/lite/themes/palettes/PalettesManager;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 185
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1, p3}, Lru/vtosters/lite/themes/palettes/PalettesManager;->getPalette(I)Lru/vtosters/lite/themes/items/VTLPalette;

    move-result-object p1

    new-instance p3, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda0;-><init>(Lru/vtosters/lite/ui/fragments/ThemesFragment;)V

    invoke-static {p2, p1, p3}, Lru/vtosters/lite/ui/dialogs/PalettesBottomSheetDialog;->create(Landroid/app/Activity;Lru/vtosters/lite/themes/items/VTLPalette;Lru/vtosters/lite/ui/adapters/ColorPickerAdapter$OnColorSelectListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f15001e

    .line 31
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->addPreferencesFromResource(I)V

    .line 32
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->initPreferences()V

    return-void
.end method

.method restart()V
    .locals 0

    .line 220
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->restartApplicationWithTimer()V

    return-void
.end method

.method setAccentColor(I)V
    .locals 3

    .line 194
    new-instance v0, Lb/h/g/k/VKProgressDialog;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/h/g/k/VKProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 195
    invoke-virtual {v0, v1}, Lb/h/g/k/VKProgressDialog;->setCancelable(Z)V

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applying_accent"

    invoke-static {v2}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/h/g/k/VKProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 197
    invoke-virtual {v0}, Lb/h/g/k/VKProgressDialog;->show()V

    .line 199
    invoke-static {}, Lru/vtosters/lite/concurrent/VTExecutors;->getIoExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, p1, v0}, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda18;-><init>(Lru/vtosters/lite/ui/fragments/ThemesFragment;ILb/h/g/k/VKProgressDialog;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method showColorPicker()V
    .locals 5

    .line 156
    new-instance v0, Lru/vtosters/lite/ui/views/rarepebble/ColorPickerView;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lru/vtosters/lite/ui/views/rarepebble/ColorPickerView;-><init>(Landroid/content/Context;)V

    .line 157
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lru/vtosters/lite/ui/views/rarepebble/ColorPickerView;->setColor(I)V

    .line 159
    new-instance v1, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    const-string v2, "select_color"

    .line 160
    invoke-static {v2}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 163
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f12018a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    const/4 v4, -0x2

    .line 161
    invoke-virtual {v1, v4, v2, v3}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 168
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120cd9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda17;

    invoke-direct {v3, p0, v0}, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda17;-><init>(Lru/vtosters/lite/ui/fragments/ThemesFragment;Lru/vtosters/lite/ui/views/rarepebble/ColorPickerView;)V

    const/4 v4, -0x1

    .line 166
    invoke-virtual {v1, v4, v2, v3}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 171
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 172
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 173
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method showPalettesDialog()V
    .locals 5

    .line 177
    invoke-static {}, Lru/vtosters/lite/themes/palettes/PalettesManager;->getInstance()Lru/vtosters/lite/themes/palettes/PalettesManager;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lru/vtosters/lite/themes/palettes/PalettesManager;->getPalettesCount()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    if-lez v1, :cond_1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 181
    invoke-virtual {v0, v3}, Lru/vtosters/lite/themes/palettes/PalettesManager;->getPalette(I)Lru/vtosters/lite/themes/items/VTLPalette;

    move-result-object v4

    iget-object v4, v4, Lru/vtosters/lite/themes/items/VTLPalette;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 182
    :cond_0
    new-instance v1, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "select_palette"

    .line 183
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0, v0}, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda14;-><init>(Lru/vtosters/lite/ui/fragments/ThemesFragment;Lru/vtosters/lite/themes/palettes/PalettesManager;)V

    .line 184
    invoke-virtual {v1, v2, v3}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12018a

    const/4 v2, 0x0

    .line 188
    invoke-virtual {v0, v1, v2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_1
    return-void
.end method
