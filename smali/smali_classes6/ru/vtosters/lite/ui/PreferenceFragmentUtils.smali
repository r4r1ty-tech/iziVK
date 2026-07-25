.class public Lru/vtosters/lite/ui/PreferenceFragmentUtils;
.super Ljava/lang/Object;
.source "PreferenceFragmentUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/vtosters/lite/ui/PreferenceFragmentUtils$onPreferenceTextValueChangeListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addEditTextPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;ILru/vtosters/lite/ui/PreferenceFragmentUtils$onPreferenceTextValueChangeListener;)Landroidx/preference/Preference;
    .locals 1

    if-lez p2, :cond_0

    .line 290
    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 292
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addEditTextPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Lru/vtosters/lite/ui/PreferenceFragmentUtils$onPreferenceTextValueChangeListener;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method public static addEditTextPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Lru/vtosters/lite/ui/PreferenceFragmentUtils$onPreferenceTextValueChangeListener;)Landroidx/preference/Preference;
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 301
    new-instance v5, Lru/vtosters/lite/ui/PreferenceFragmentUtils$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, p1, p2, p3}, Lru/vtosters/lite/ui/PreferenceFragmentUtils$$ExternalSyntheticLambda0;-><init>(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Lru/vtosters/lite/ui/PreferenceFragmentUtils$onPreferenceTextValueChangeListener;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method public static addListPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;III[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroidx/preference/Preference$OnPreferenceChangeListener;)Landroidx/preference/ListPreference;
    .locals 11

    move v0, p3

    move v1, p4

    move/from16 v2, p5

    if-lez v1, :cond_0

    .line 57
    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v3, v1}, Lru/vtosters/lite/utils/ImageUtils;->setTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v6, v1

    const-string v1, ""

    if-lez v0, :cond_1

    .line 60
    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v1

    :goto_1
    if-lez v2, :cond_2

    .line 63
    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_2

    :cond_2
    move-object v7, v1

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 65
    invoke-static/range {v2 .. v10}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addListPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroidx/preference/Preference$OnPreferenceChangeListener;)Landroidx/preference/ListPreference;

    move-result-object v0

    return-object v0
.end method

.method public static addListPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Landroidx/preference/ListPreference;
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    move-object v7, p5

    .line 30
    invoke-static/range {v0 .. v8}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addListPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;III[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroidx/preference/Preference$OnPreferenceChangeListener;)Landroidx/preference/ListPreference;

    move-result-object p0

    return-object p0
.end method

.method public static addListPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroidx/preference/Preference$OnPreferenceChangeListener;)Landroidx/preference/ListPreference;
    .locals 10

    move v0, p4

    if-lez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v1, v0}, Lru/vtosters/lite/utils/ImageUtils;->setTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 83
    invoke-static/range {v1 .. v9}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addListPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroidx/preference/Preference$OnPreferenceChangeListener;)Landroidx/preference/ListPreference;

    move-result-object v0

    return-object v0
.end method

.method public static addListPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroidx/preference/Preference$OnPreferenceChangeListener;)Landroidx/preference/ListPreference;
    .locals 2

    .line 97
    new-instance v0, Landroidx/preference/ListPreference;

    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {v0, p6}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {v0, p7}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {v0, p5}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {v0, p3}, Landroidx/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v0, p3}, Landroidx/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, p2}, Landroidx/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 105
    invoke-virtual {v0, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, p8}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    if-eqz p4, :cond_0

    .line 109
    invoke-virtual {v0, p4}, Landroidx/preference/ListPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 111
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-object v0
.end method

.method public static addListPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Landroidx/preference/ListPreference;
    .locals 9

    const/4 v4, 0x0

    const-string v5, ""

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move-object v7, p5

    .line 41
    invoke-static/range {v0 .. v8}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addListPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroidx/preference/Preference$OnPreferenceChangeListener;)Landroidx/preference/ListPreference;

    move-result-object p0

    return-object p0
.end method

.method public static addMaterialSwitchPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;IIIZLandroidx/preference/Preference$OnPreferenceChangeListener;)Lcom/vtosters/lite/ui/MaterialSwitchPreference;
    .locals 7

    if-lez p4, :cond_0

    .line 137
    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-static {v0, p4}, Lru/vtosters/lite/utils/ImageUtils;->setTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    move-object v4, p4

    const-string p4, ""

    if-lez p2, :cond_1

    .line 140
    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    goto :goto_1

    :cond_1
    move-object v2, p4

    :goto_1
    if-lez p3, :cond_2

    .line 143
    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    move-object v3, p2

    goto :goto_2

    :cond_2
    move-object v3, p4

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move v5, p5

    move-object v6, p6

    .line 145
    invoke-static/range {v0 .. v6}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addMaterialSwitchPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZLandroidx/preference/Preference$OnPreferenceChangeListener;)Lcom/vtosters/lite/ui/MaterialSwitchPreference;

    move-result-object p0

    return-object p0
.end method

.method public static addMaterialSwitchPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZLandroidx/preference/Preference$OnPreferenceChangeListener;)Lcom/vtosters/lite/ui/MaterialSwitchPreference;
    .locals 7

    if-lez p4, :cond_0

    .line 159
    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-static {v0, p4}, Lru/vtosters/lite/utils/ImageUtils;->setTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    move-object v6, p6

    .line 161
    invoke-static/range {v0 .. v6}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addMaterialSwitchPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZLandroidx/preference/Preference$OnPreferenceChangeListener;)Lcom/vtosters/lite/ui/MaterialSwitchPreference;

    move-result-object p0

    return-object p0
.end method

.method public static addMaterialSwitchPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZLandroidx/preference/Preference$OnPreferenceChangeListener;)Lcom/vtosters/lite/ui/MaterialSwitchPreference;
    .locals 2

    .line 173
    new-instance v0, Lcom/vtosters/lite/ui/MaterialSwitchPreference;

    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vtosters/lite/ui/MaterialSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 174
    invoke-virtual {v0, p2}, Lcom/vtosters/lite/ui/MaterialSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 175
    invoke-virtual {v0, p3}, Lcom/vtosters/lite/ui/MaterialSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {v0, p1}, Lcom/vtosters/lite/ui/MaterialSwitchPreference;->setKey(Ljava/lang/String;)V

    .line 177
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/vtosters/lite/ui/MaterialSwitchPreference;->setDefaultValue(Ljava/lang/Object;)V

    if-eqz p4, :cond_0

    .line 180
    invoke-virtual {v0, p4}, Lcom/vtosters/lite/ui/MaterialSwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 181
    :cond_0
    invoke-virtual {v0, p6}, Lcom/vtosters/lite/ui/MaterialSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 183
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-object v0
.end method

.method public static addMaterialSwitchPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/vtosters/lite/ui/MaterialSwitchPreference;
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 123
    invoke-static/range {v0 .. v6}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addMaterialSwitchPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZLandroidx/preference/Preference$OnPreferenceChangeListener;)Lcom/vtosters/lite/ui/MaterialSwitchPreference;

    move-result-object p0

    return-object p0
.end method

.method public static addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;II)Landroidx/preference/Preference;
    .locals 7

    const-string v0, ""

    if-lez p2, :cond_0

    .line 195
    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    move-object v3, p2

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    if-lez p3, :cond_1

    .line 198
    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 200
    invoke-static/range {v1 .. v6}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method public static addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;IIILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;
    .locals 6

    if-lez p4, :cond_0

    .line 221
    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-static {v0, p4}, Lru/vtosters/lite/utils/ImageUtils;->setTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    move-object v4, p4

    const-string p4, ""

    if-lez p2, :cond_1

    .line 224
    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    goto :goto_1

    :cond_1
    move-object v2, p4

    :goto_1
    if-lez p3, :cond_2

    .line 227
    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    move-object v3, p2

    goto :goto_2

    :cond_2
    move-object v3, p4

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    .line 229
    invoke-static/range {v0 .. v5}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method public static addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 209
    invoke-static/range {v0 .. v5}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method public static addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;
    .locals 6

    if-lez p4, :cond_0

    .line 241
    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-static {v0, p4}, Lru/vtosters/lite/utils/ImageUtils;->setTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 243
    invoke-static/range {v0 .. v5}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method public static addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;
    .locals 2

    .line 254
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 255
    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 256
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 257
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 260
    invoke-virtual {v0, p4}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 261
    :cond_0
    invoke-virtual {v0, p5}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 263
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-object v0
.end method

.method public static addPreferenceCategory(Landroidx/preference/PreferenceScreen;I)Landroidx/preference/PreferenceCategory;
    .locals 1

    if-lez p1, :cond_0

    .line 270
    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 272
    :goto_0
    invoke-static {p0, p1}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreferenceCategory(Landroidx/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroidx/preference/PreferenceCategory;

    move-result-object p0

    return-object p0
.end method

.method public static addPreferenceCategory(Landroidx/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroidx/preference/PreferenceCategory;
    .locals 3

    .line 276
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 277
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 278
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-object v0
.end method

.method static synthetic lambda$addEditTextPreference$0(Lru/vtosters/lite/ui/PreferenceFragmentUtils$onPreferenceTextValueChangeListener;Landroidx/preference/Preference;Landroid/widget/EditText;Landroidx/preference/PreferenceScreen;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 322
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p0, p1, p5}, Lru/vtosters/lite/ui/PreferenceFragmentUtils$onPreferenceTextValueChangeListener;->onChanged(Landroidx/preference/Preference;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 326
    :cond_0
    invoke-virtual {p3}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 327
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 328
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 329
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic lambda$addEditTextPreference$1(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Lru/vtosters/lite/ui/PreferenceFragmentUtils$onPreferenceTextValueChangeListener;Landroidx/preference/Preference;)Z
    .locals 9

    .line 302
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 304
    new-instance v5, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 305
    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 306
    invoke-virtual {v5, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 307
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTextAttr()I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 308
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getSTextAttr()I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 310
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccenedColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 312
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 313
    invoke-virtual {v5}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 314
    invoke-virtual {v5}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x41a00000    # 20.0f

    .line 315
    invoke-static {v2}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v3

    invoke-static {v2}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v2

    const/4 v8, 0x0

    invoke-virtual {v1, v3, v8, v2, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 316
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    new-instance v1, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 319
    invoke-virtual {v1, p2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p2

    .line 320
    invoke-virtual {p2, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lru/vtosters/lite/ui/PreferenceFragmentUtils$$ExternalSyntheticLambda1;

    move-object v2, v0

    move-object v3, p3

    move-object v4, p4

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lru/vtosters/lite/ui/PreferenceFragmentUtils$$ExternalSyntheticLambda1;-><init>(Lru/vtosters/lite/ui/PreferenceFragmentUtils$onPreferenceTextValueChangeListener;Landroidx/preference/Preference;Landroid/widget/EditText;Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V

    const-string p0, "OK"

    .line 321
    invoke-virtual {p2, p0, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p0

    .line 331
    invoke-virtual {p0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return v8
.end method
