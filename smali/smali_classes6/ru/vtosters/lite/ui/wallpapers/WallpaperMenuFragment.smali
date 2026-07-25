.class public Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;
.super Lcom/vtosters/lite/general/fragments/MaterialPreferenceToolbarFragment;
.source "WallpaperMenuFragment.java"


# instance fields
.field private mWPPreviewPref:Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/vtosters/lite/general/fragments/MaterialPreferenceToolbarFragment;-><init>()V

    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 25
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 26
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 30
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 31
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method


# virtual methods
.method public T4()I
    .locals 1

    const v0, 0x7f121827

    return v0
.end method

.method synthetic lambda$onCreate$0$ru-vtosters-lite-ui-wallpapers-WallpaperMenuFragment(Landroidx/preference/Preference;)Z
    .locals 2

    .line 57
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.PICK"

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v0, 0x5d0

    invoke-virtual {p0, p1, v0}, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreate$1$ru-vtosters-lite-ui-wallpapers-WallpaperMenuFragment(Landroidx/preference/Preference;)Z
    .locals 0

    .line 74
    invoke-static {}, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->removeWallpaper()V

    .line 75
    invoke-static {}, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->requestUpdateWallpaper()V

    .line 76
    iget-object p1, p0, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;->mWPPreviewPref:Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;

    invoke-virtual {p1}, Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;->redraw()V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreate$2$ru-vtosters-lite-ui-wallpapers-WallpaperMenuFragment(Lru/vtosters/lite/ui/wallpapers/ImageEffects;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 95
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p3, Ljava/lang/String;

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 96
    invoke-virtual {p1}, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->getSummary()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    invoke-static {}, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->requestUpdateWallpaper()V

    .line 98
    iget-object p1, p0, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;->mWPPreviewPref:Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;

    invoke-virtual {p1}, Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;->redraw()V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreate$3$ru-vtosters-lite-ui-wallpapers-WallpaperMenuFragment(Lru/vtosters/lite/ui/wallpapers/ImageEffects;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 110
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-virtual {p1}, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-interface {p2, p1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    invoke-static {}, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->requestUpdateWallpaper()V

    .line 112
    iget-object p1, p0, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;->mWPPreviewPref:Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;

    invoke-virtual {p1}, Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;->redraw()V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreate$4$ru-vtosters-lite-ui-wallpapers-WallpaperMenuFragment(Lru/vtosters/lite/ui/wallpapers/ImageEffects;)V
    .locals 8

    .line 84
    invoke-virtual {p1}, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->isList()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    .line 87
    invoke-virtual {p1}, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "disabled"

    .line 89
    invoke-virtual {p1}, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-virtual {p1}, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->getEntries()[Ljava/lang/String;

    move-result-object v5

    .line 91
    invoke-virtual {p1}, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->getEntryValues()[Ljava/lang/String;

    move-result-object v6

    .line 85
    invoke-static/range {v1 .. v6}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addListPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Landroidx/preference/ListPreference;

    move-result-object v0

    .line 93
    invoke-virtual {p1}, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 94
    new-instance v1, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment$$ExternalSyntheticLambda4;-><init>(Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;Lru/vtosters/lite/ui/wallpapers/ImageEffects;)V

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p1}, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->isSwitch()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    .line 104
    invoke-virtual {p1}, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {p1}, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {p1}, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->getSummary()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment$$ExternalSyntheticLambda5;

    invoke-direct {v7, p0, p1}, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment$$ExternalSyntheticLambda5;-><init>(Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;Lru/vtosters/lite/ui/wallpapers/ImageEffects;)V

    .line 102
    invoke-static/range {v1 .. v7}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addMaterialSwitchPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZLandroidx/preference/Preference$OnPreferenceChangeListener;)Lcom/vtosters/lite/ui/MaterialSwitchPreference;

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreate$5$ru-vtosters-lite-ui-wallpapers-WallpaperMenuFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 126
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 127
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "compresswp"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 128
    invoke-static {}, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->requestUpdateWallpaper()V

    .line 129
    iget-object p1, p0, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;->mWPPreviewPref:Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;

    invoke-virtual {p1}, Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;->redraw()V

    const/4 p1, 0x1

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 136
    invoke-super {p0, p1, p2, p3}, Lcom/vtosters/lite/general/fragments/MaterialPreferenceToolbarFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_1

    .line 138
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    :try_start_0
    invoke-static {}, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->removeWallpaper()V

    .line 143
    invoke-virtual {p0}, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p2

    .line 144
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-static {}, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->getWallpaperFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 146
    invoke-static {p2, p3}, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 148
    invoke-static {}, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->requestUpdateWallpaper()V

    const/16 p2, 0x5d0

    if-ne p1, p2, :cond_1

    .line 151
    iget-object p1, p0, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;->mWPPreviewPref:Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;

    invoke-virtual {p1}, Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;->redraw()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 155
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    invoke-virtual {p0}, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    invoke-static {p2, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 36
    invoke-super {p0, p1}, Lcom/vtosters/lite/general/fragments/MaterialPreferenceToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f150013

    .line 38
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;->addPreferencesFromResource(I)V

    .line 41
    invoke-virtual {p0}, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 42
    invoke-virtual {p0}, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12141d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {p1, v0}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreferenceCategory(Landroidx/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroidx/preference/PreferenceCategory;

    .line 45
    new-instance p1, Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;->mWPPreviewPref:Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, v0}, Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 47
    iget-object p1, p0, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;->mWPPreviewPref:Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;->setIconSpaceReserved(Z)V

    .line 48
    invoke-virtual {p0}, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;->mWPPreviewPref:Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 51
    invoke-virtual {p0}, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "wp_set"

    .line 53
    invoke-virtual {p0}, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f121825

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-virtual {p0}, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f121823

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0806b5

    new-instance v6, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment$$ExternalSyntheticLambda0;-><init>(Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;)V

    .line 50
    invoke-static/range {v1 .. v6}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 68
    invoke-virtual {p0}, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "wp_clear"

    .line 70
    invoke-virtual {p0}, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f121824

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    const v11, 0x7f080412

    new-instance v12, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment$$ExternalSyntheticLambda1;

    invoke-direct {v12, p0}, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment$$ExternalSyntheticLambda1;-><init>(Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;)V

    .line 67
    invoke-static/range {v7 .. v12}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 80
    invoke-virtual {p0}, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0}, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1217e3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreferenceCategory(Landroidx/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroidx/preference/PreferenceCategory;

    .line 82
    invoke-static {}, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->values()[Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    move-result-object p1

    invoke-static {p1}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment$$ExternalSyntheticLambda2;-><init>(Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;)V

    .line 83
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 119
    invoke-virtual {p0}, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "compresswp"

    .line 121
    invoke-virtual {p0}, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f121586

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 122
    invoke-virtual {p0}, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f121585

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-instance v7, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0}, Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment$$ExternalSyntheticLambda3;-><init>(Lru/vtosters/lite/ui/wallpapers/WallpaperMenuFragment;)V

    .line 118
    invoke-static/range {v1 .. v7}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addMaterialSwitchPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZLandroidx/preference/Preference$OnPreferenceChangeListener;)Lcom/vtosters/lite/ui/MaterialSwitchPreference;

    return-void
.end method
