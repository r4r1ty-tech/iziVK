.class public Lru/vtosters/lite/ui/fragments/IconsFragment;
.super Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;
.source "IconsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;-><init>()V

    return-void
.end method

.method public static callSelectDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    .line 24
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "appname"

    const-string v2, "vt"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "selectedicon"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    new-instance v1, Landroid/widget/RadioGroup;

    invoke-direct {v1, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v3, Landroid/widget/RadioButton;

    new-instance v4, Landroidx/appcompat/view/ContextThemeWrapper;

    const v5, 0x7f1303e6

    invoke-direct {v4, p0, v5}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v4}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v4, Landroid/widget/RadioButton;

    new-instance v6, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v6, p0, v5}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v4, v6}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v6, Landroid/widget/RadioButton;

    new-instance v7, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v7, p0, v5}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v6, v7}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-static {v3}, Lru/vtosters/hooks/SwitchHook;->setCompoundButton(Landroid/widget/CompoundButton;)V

    .line 34
    invoke-static {v4}, Lru/vtosters/hooks/SwitchHook;->setCompoundButton(Landroid/widget/CompoundButton;)V

    .line 35
    invoke-static {v6}, Lru/vtosters/hooks/SwitchHook;->setCompoundButton(Landroid/widget/CompoundButton;)V

    .line 37
    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 38
    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 39
    invoke-virtual {v1, v6}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    const/high16 v5, 0x41600000    # 14.0f

    .line 41
    invoke-static {v5}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v7}, Landroid/widget/RadioButton;->setTextSize(IF)V

    .line 42
    invoke-static {v5}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4, v8, v7}, Landroid/widget/RadioButton;->setTextSize(IF)V

    .line 43
    invoke-static {v5}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v6, v8, v5}, Landroid/widget/RadioButton;->setTextSize(IF)V

    const/high16 v5, 0x41900000    # 18.0f

    .line 45
    invoke-static {v5}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v7

    const/high16 v9, 0x41400000    # 12.0f

    invoke-static {v9}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v9

    invoke-static {v5}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v5

    invoke-virtual {v1, v7, v9, v5, v8}, Landroid/widget/RadioGroup;->setPadding(IIII)V

    const-string v5, "VTLite"

    .line 47
    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTextAttr()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setTextColor(I)V

    const-string v5, "VK"

    .line 50
    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTextAttr()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setTextColor(I)V

    const v5, 0x7f12151e

    .line 53
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTextAttr()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/RadioButton;->setTextColor(I)V

    const-string v5, "vkontakte"

    .line 56
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    const-string v5, "standard"

    .line 57
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v8, 0x1

    :cond_1
    invoke-virtual {v3, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 60
    new-instance v0, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121520

    .line 61
    invoke-virtual {v0, p0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(I)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p0

    .line 62
    invoke-virtual {p0, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p0

    new-instance v0, Lru/vtosters/lite/ui/fragments/IconsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, v3, p1, v4, v6}, Lru/vtosters/lite/ui/fragments/IconsFragment$$ExternalSyntheticLambda1;-><init>(Landroid/widget/RadioButton;Ljava/lang/String;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    const p1, 0x7f1217c8

    .line 63
    invoke-virtual {p0, p1, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lru/vtosters/lite/ui/fragments/IconsFragment$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lru/vtosters/lite/ui/fragments/IconsFragment$$ExternalSyntheticLambda2;-><init>()V

    const v0, 0x7f12018a

    .line 81
    invoke-virtual {p0, v0, p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p0

    .line 83
    invoke-virtual {p0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method static synthetic lambda$callSelectDialog$0(Landroid/widget/RadioButton;Ljava/lang/String;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 64
    invoke-virtual {p0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p0

    const-string p4, "selectedicon"

    const-string p5, "appname"

    if-eqz p0, :cond_0

    .line 65
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p2, "vt"

    invoke-interface {p0, p5, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 66
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 68
    invoke-static {p1, p2}, Lru/vtosters/lite/ui/components/IconManager;->switchComponent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 70
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p2, "standard"

    invoke-interface {p0, p5, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 73
    invoke-static {p1, p2}, Lru/vtosters/lite/ui/components/IconManager;->switchComponent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 75
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p2, "vkontakte"

    invoke-interface {p0, p5, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    invoke-static {p1, p2}, Lru/vtosters/lite/ui/components/IconManager;->switchComponent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic lambda$callSelectDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 82
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$2$ru-vtosters-lite-ui-fragments-IconsFragment(Ljava/lang/String;Landroidx/preference/Preference;)Z
    .locals 0

    .line 118
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/IconsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lru/vtosters/lite/ui/fragments/IconsFragment;->callSelectDialog(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 89
    invoke-super {p0, p1}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f150013

    .line 91
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/IconsFragment;->addPreferencesFromResource(I)V

    .line 93
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/IconsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/IconsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121674

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreferenceCategory(Landroidx/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroidx/preference/PreferenceCategory;

    const/4 p1, 0x0

    .line 95
    :goto_0
    invoke-static {}, Lru/vtosters/lite/ui/components/IconManager;->icons()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 96
    invoke-static {}, Lru/vtosters/lite/ui/components/IconManager;->icons()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lru/vtosters/lite/ui/components/IconManager;->iconsValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 98
    :cond_0
    invoke-static {}, Lru/vtosters/lite/ui/components/IconManager;->icons()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 99
    invoke-static {}, Lru/vtosters/lite/ui/components/IconManager;->iconsValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const-string v0, "vt"

    .line 103
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0f0046

    goto :goto_1

    :cond_1
    const-string v0, "standard"

    .line 105
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0f0002

    goto :goto_1

    .line 108
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ic_launcher_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mipmap"

    invoke-static {v0, v1}, Lru/vtosters/lite/utils/AndroidUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 111
    :goto_1
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/IconsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v0, v4}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    .line 114
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/IconsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08038f

    invoke-static {v0, v1, v4}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    move-object v5, v0

    .line 117
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/IconsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v4, ""

    new-instance v6, Lru/vtosters/lite/ui/fragments/IconsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v2}, Lru/vtosters/lite/ui/fragments/IconsFragment$$ExternalSyntheticLambda0;-><init>(Lru/vtosters/lite/ui/fragments/IconsFragment;Ljava/lang/String;)V

    invoke-static/range {v1 .. v6}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_4
    :goto_2
    return-void
.end method
