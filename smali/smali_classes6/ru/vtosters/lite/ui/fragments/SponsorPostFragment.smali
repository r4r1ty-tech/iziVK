.class public Lru/vtosters/lite/ui/fragments/SponsorPostFragment;
.super Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;
.source "SponsorPostFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCreate$0(Landroidx/preference/Preference;)Z
    .locals 0

    .line 67
    invoke-static {}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->dropNumBlockedPosts()V

    .line 68
    invoke-static {}, Lru/vtosters/sponsorpost/utils/PostsPreferences;->dropNumBlockedPosts()V

    const-string p0, "\u0421\u0442\u0430\u0442\u0438\u0441\u0442\u0438\u043a\u0430 \u0441\u0431\u0440\u043e\u0448\u0435\u043d\u0430"

    .line 69
    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$onCreate$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 94
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lru/vtosters/sponsorpost/utils/PostsPreferences;->setEnabled(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$onCreate$14(Landroidx/preference/Preference;)Z
    .locals 0

    .line 284
    invoke-static {}, Lru/vtosters/sponsorpost/internal/VotesPreferences;->remUserToken()V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$onCreate$2(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 107
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lru/vtosters/sponsorpost/utils/PostsPreferences;->setEnabledMarking(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$onCreate$3(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 120
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lru/vtosters/sponsorpost/internal/VotesPreferences;->setEnabled(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$onCreate$4()V
    .locals 1

    .line 134
    invoke-static {}, Lru/vtosters/sponsorpost/utils/Updates;->updatePosts()V

    const-string v0, "\u041e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u043e"

    .line 135
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onCreate$7(Lru/vtosters/sponsorpost/data/Filter;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 196
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 197
    invoke-static {p0}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->saveFilter(Lru/vtosters/sponsorpost/data/Filter;)V

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p0}, Lru/vtosters/sponsorpost/data/Filter;->getId()I

    move-result p0

    invoke-static {p0}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->deleteFilter(I)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$onCreate$8(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 225
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->setEnabledMarking(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$onCreate$9()V
    .locals 1

    .line 239
    invoke-static {}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->forceUpdateFilters()V

    const-string v0, "\u041e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u043e"

    .line 240
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public T4()I
    .locals 1

    const v0, 0x7f1217de

    return v0
.end method

.method synthetic lambda$onCreate$10$ru-vtosters-lite-ui-fragments-SponsorPostFragment(Landroidx/preference/Preference;)Z
    .locals 1

    .line 238
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lru/vtosters/lite/ui/fragments/SponsorPostFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$11$ru-vtosters-lite-ui-fragments-SponsorPostFragment(Landroidx/preference/Preference;)Z
    .locals 2

    .line 254
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "https://t.me/vtosterschat/3559732"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$12$ru-vtosters-lite-ui-fragments-SponsorPostFragment(Landroidx/preference/Preference;)Z
    .locals 2

    .line 266
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "https://github.com/vtosters/adlists"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$13$ru-vtosters-lite-ui-fragments-SponsorPostFragment()V
    .locals 14

    .line 156
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "Sponsor Post \u0424\u0438\u043b\u044c\u0442\u0440\u044b"

    invoke-static {v0, v1}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreferenceCategory(Landroidx/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroidx/preference/PreferenceCategory;

    .line 159
    invoke-static {}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->getAllDownloadedFilters()Ljava/util/List;

    move-result-object v0

    .line 161
    invoke-static {}, Lru/vtosters/lite/utils/NetworkUtils;->isNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lru/vtosters/lite/utils/NetworkUtils;->isInternetSlow()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 164
    invoke-static {v1}, Lru/vtosters/sponsorpost/services/FilterService;->getFilters(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v1, v0

    .line 167
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 169
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, ""

    const-string v5, "\u0423 \u0432\u0430\u0441 \u043d\u0435 \u0441\u043a\u0430\u0447\u0430\u043d\u044b \u0444\u0438\u043b\u044c\u0442\u0440\u044b"

    const-string v6, "\u041f\u043e\u0434\u043a\u043b\u044e\u0447\u0438\u0442\u0435\u0441\u044c \u043a \u0438\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443 \u0438 \u043f\u043e\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u0432\u043e\u0439\u0442\u0438 \u0435\u0449\u0451 \u0440\u0430\u0437"

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 168
    invoke-static/range {v3 .. v8}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    goto/16 :goto_3

    .line 177
    :cond_2
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->serverFeaturesDisable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 179
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, ""

    const-string v5, "\u041e\u0442\u043a\u043b\u044e\u0447\u0435\u043d\u044b \u0432\u043d\u0435\u0448\u043d\u0438\u0435 \u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0435\u043d\u0438\u044f"

    const-string v6, "\u0424\u0438\u043b\u044c\u0442\u0440\u044b \u0431\u0443\u0434\u0443\u0442 \u043e\u0431\u043d\u043e\u0432\u043b\u044f\u0442\u044c\u0441\u044f \u0442\u043e\u043b\u044c\u043a\u043e \u043f\u0440\u0438 \u0437\u0430\u0445\u043e\u0434\u0435 \u0432 \u044d\u0442\u043e\u0442 \u0440\u0430\u0437\u0434\u0435\u043b, \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u0435\u0441\u043a\u0438\u0435 \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u044f \u0441\u043f\u0438\u0441\u043a\u043e\u0432 \u0444\u0438\u043b\u044c\u0442\u0440\u043e\u0432 \u0438 \u0441\u0430\u043c\u0438\u0445 \u0444\u0438\u043b\u044c\u0442\u0440\u043e\u0432 \u043d\u0430 \u0437\u0430\u043f\u0443\u0441\u043a\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u043e\u0442\u043a\u043b\u044e\u0447\u0435\u043d\u044b"

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 178
    invoke-static/range {v3 .. v8}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 187
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/vtosters/sponsorpost/data/Filter;

    .line 189
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, ""

    .line 191
    invoke-virtual {v2}, Lru/vtosters/sponsorpost/data/Filter;->getTitle()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    invoke-virtual {v2}, Lru/vtosters/sponsorpost/data/Filter;->getSummary()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n\n\u0412\u0435\u0440\u0441\u0438\u044f \u0444\u0438\u043b\u044c\u0442\u0440\u0430: v"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lru/vtosters/sponsorpost/data/Filter;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 194
    invoke-virtual {v2}, Lru/vtosters/sponsorpost/data/Filter;->getId()I

    move-result v8

    invoke-static {v8}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->getSavedKeyValue(I)Z

    move-result v8

    new-instance v9, Lru/vtosters/lite/ui/fragments/SponsorPostFragment$$ExternalSyntheticLambda13;

    invoke-direct {v9, v2}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment$$ExternalSyntheticLambda13;-><init>(Lru/vtosters/sponsorpost/data/Filter;)V

    .line 188
    invoke-static/range {v3 .. v9}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addMaterialSwitchPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZLandroidx/preference/Preference$OnPreferenceChangeListener;)Lcom/vtosters/lite/ui/MaterialSwitchPreference;

    goto :goto_2

    .line 206
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 208
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, ""

    const-string v3, "\u041a\u043e\u043b\u0438\u0447\u0435\u0441\u0442\u0432\u043e \u043f\u0440\u0430\u0432\u0438\u043b"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "\u0418\u0441\u043f\u043e\u043b\u044c\u0437\u0443\u0435\u0442\u0441\u044f "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->getFiltersLists()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " \u043f\u0440\u0430\u0432\u0438\u043b \u0434\u043b\u044f \u0444\u0438\u043b\u044c\u0442\u0440\u0430\u0446\u0438\u0438 \u043b\u0435\u043d\u0442\u044b"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 207
    invoke-static/range {v1 .. v6}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 218
    :cond_5
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, ""

    const-string v9, "\u041d\u0435 \u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u043f\u043e\u0441\u0442\u044b"

    const-string v10, "\u041f\u043e\u043c\u0435\u0447\u0430\u0442\u044c \u043f\u043e\u0441\u0442\u044b \u0437\u0430\u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u043d\u043d\u044b\u0435 \u0444\u0438\u043b\u044c\u0442\u0440\u0430\u043c\u0438"

    const/4 v11, 0x0

    .line 223
    invoke-static {}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->isEnabledMarking()Z

    move-result v12

    new-instance v13, Lru/vtosters/lite/ui/fragments/SponsorPostFragment$$ExternalSyntheticLambda14;

    invoke-direct {v13}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment$$ExternalSyntheticLambda14;-><init>()V

    .line 217
    invoke-static/range {v7 .. v13}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addMaterialSwitchPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZLandroidx/preference/Preference$OnPreferenceChangeListener;)Lcom/vtosters/lite/ui/MaterialSwitchPreference;

    .line 230
    invoke-static {}, Lru/vtosters/lite/utils/NetworkUtils;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 232
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, ""

    const-string v3, "\u041e\u0431\u043d\u043e\u0432\u0438\u0442\u044c \u0441\u043f\u0438\u0441\u043a\u0438 \u0444\u0438\u043b\u044c\u0442\u0440\u043e\u0432"

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lru/vtosters/lite/ui/fragments/SponsorPostFragment$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment$$ExternalSyntheticLambda1;-><init>(Lru/vtosters/lite/ui/fragments/SponsorPostFragment;)V

    .line 231
    invoke-static/range {v1 .. v6}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 248
    :cond_6
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, ""

    const-string v9, "\u0422\u0435\u043b\u0435\u0433\u0440\u0430\u043c \u0447\u0430\u0442"

    const-string v10, "\u041f\u043e\u043c\u043e\u0433\u0438\u0442\u0435 \u0443\u043b\u0443\u0447\u0448\u0438\u0442\u044c \u043a\u0430\u0447\u0435\u0441\u0442\u0432\u043e \u0444\u0438\u043b\u044c\u0442\u0440\u043e\u0432 \u043e\u0431\u0441\u0443\u0434\u0438\u0432 \u0440\u0430\u0431\u043e\u0442\u0443 \u0432 \u043d\u0430\u0448\u0435\u043c \u0442\u0435\u043b\u0435\u0433\u0440\u0430\u043c \u0447\u0430\u0442\u0435\n\n\u0414\u043b\u044f \u043f\u0435\u0440\u0435\u0445\u043e\u0434\u0430 \u0432 \u0447\u0430\u0442 \u0432\u0430\u043c \u043d\u0435\u043e\u0431\u0445\u043e\u0434\u0438\u043c\u0430 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u044f\u044f \u0432\u0435\u0440\u0441\u0438\u044f Telegram"

    const/4 v11, 0x0

    new-instance v12, Lru/vtosters/lite/ui/fragments/SponsorPostFragment$$ExternalSyntheticLambda2;

    invoke-direct {v12, p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment$$ExternalSyntheticLambda2;-><init>(Lru/vtosters/lite/ui/fragments/SponsorPostFragment;)V

    .line 247
    invoke-static/range {v7 .. v12}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 260
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, ""

    const-string v2, "\u0418\u0441\u0445\u043e\u0434\u043d\u0438\u043a\u0438 \u0444\u0438\u043b\u044c\u0442\u0440\u043e\u0432"

    const-string v3, "\u041f\u043e\u0441\u043c\u043e\u0442\u0440\u0435\u0442\u044c \u0438\u0441\u0445\u043e\u0434\u043d\u0438\u043a\u0438 \u0444\u0438\u043b\u044c\u0442\u0440\u043e\u0432 \u0438 \u0438\u0445 \u0441\u043e\u0434\u0435\u0440\u0436\u0438\u043c\u043e\u0435\n\n\u0415\u0441\u043b\u0438 \u0432\u044b \u0445\u043e\u0442\u0438\u0442\u0435 \u043f\u043e\u043c\u043e\u0447\u044c - \u0432\u044b \u043c\u043e\u0436\u0435\u0442\u0435 \u043f\u0440\u0435\u0434\u043b\u043e\u0436\u0438\u0442\u044c \u0441\u0432\u043e\u0438 \u0438\u0434\u0435\u0438 \u0434\u043b\u044f \u0444\u0438\u043b\u044c\u0442\u0440\u043e\u0432 \u0442\u0443\u0442!"

    const/4 v4, 0x0

    new-instance v5, Lru/vtosters/lite/ui/fragments/SponsorPostFragment$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment$$ExternalSyntheticLambda3;-><init>(Lru/vtosters/lite/ui/fragments/SponsorPostFragment;)V

    .line 259
    invoke-static/range {v0 .. v5}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 271
    invoke-static {}, Lru/vtosters/sponsorpost/utils/Updates;->updateFilters()V

    :goto_3
    return-void
.end method

.method synthetic lambda$onCreate$5$ru-vtosters-lite-ui-fragments-SponsorPostFragment(Landroidx/preference/Preference;)Z
    .locals 1

    .line 133
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lru/vtosters/lite/ui/fragments/SponsorPostFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$6$ru-vtosters-lite-ui-fragments-SponsorPostFragment(Landroidx/preference/Preference;)Z
    .locals 2

    .line 149
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "https://t.me/vtosterschat/3559729"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15

    move-object v0, p0

    .line 25
    invoke-super/range {p0 .. p1}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f150013

    .line 26
    invoke-virtual {p0, v1}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment;->addPreferencesFromResource(I)V

    .line 28
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getBackgroundContent()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 29
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getBackgroundContent()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 32
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, ""

    const-string v5, "\u0427\u0442\u043e \u0442\u0430\u043a\u043e\u0435 SponsorPost?"

    const-string v6, "\u0424\u0443\u043d\u043a\u0446\u0438\u044f SponsorPost \u043f\u0440\u0435\u0434\u043d\u0430\u0437\u043d\u0430\u0447\u0435\u043d\u0430 \u0434\u043b\u044f \u043f\u043e\u043b\u0443\u0447\u0435\u043d\u0438\u044f \u0440\u0435\u043a\u043b\u0430\u043c\u043d\u044b\u0445 \u0441\u043f\u0438\u0441\u043a\u043e\u0432 \u043f\u043e\u0441\u0442\u043e\u0432 \u0441 \u0441\u0435\u0440\u0432\u0435\u0440\u0430 \u0438 \u0430\u043a\u0442\u0443\u0430\u043b\u044c\u043d\u044b\u0445 \u0441\u043f\u0438\u0441\u043a\u043e\u0432 \u0441\u043b\u043e\u0432 \u0438 \u0432\u044b\u0440\u0430\u0436\u0435\u043d\u0438\u0439 \u0434\u043b\u044f \u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u043a\u0438 \u0440\u0435\u043a\u043b\u0430\u043c\u043d\u044b\u0445 \u043f\u043e\u0441\u0442\u043e\u0432 \u0432\u043e \u0412\u041a\u043e\u043d\u0442\u0430\u043a\u0442\u0435, \u043a\u043e\u0442\u043e\u0440\u044b\u0435 \u043d\u0435 \u043e\u0442\u043c\u0435\u0447\u0435\u043d\u044b \u043a\u0430\u043a \u0440\u0435\u043a\u043b\u0430\u043c\u043d\u044b\u0435.\n\n\u042d\u0442\u0438 \u0444\u0438\u043b\u044c\u0442\u0440\u044b \u0438 \u043f\u043e\u0441\u0442\u044b \u0441\u043e\u0431\u0438\u0440\u0430\u044e\u0442\u0441\u044f \u043b\u044e\u0434\u044c\u043c\u0438, \u0447\u0442\u043e \u043f\u043e\u0437\u0432\u043e\u043b\u044f\u0435\u0442 \u044d\u0444\u0444\u0435\u043a\u0442\u0438\u0432\u043d\u043e \u0438 \u0441\u0432\u043e\u0435\u0432\u0440\u0435\u043c\u0435\u043d\u043d\u043e \u0432\u044b\u044f\u0432\u043b\u044f\u0442\u044c \u0438 \u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u043d\u0435\u0436\u0435\u043b\u0430\u0442\u0435\u043b\u044c\u043d\u044b\u0439 \u043a\u043e\u043d\u0442\u0435\u043d\u0442 \u0432 \u043b\u0435\u043d\u0442\u0435 \u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u0435\u043b\u0435\u0439. \ud83d\udeab\ud83d\udcdd"

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 31
    invoke-static/range {v3 .. v8}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 40
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "\u0421\u0442\u0430\u0442\u0438\u0441\u0442\u0438\u043a\u0430 \u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u043e\u043a"

    invoke-static {v1, v2}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreferenceCategory(Landroidx/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroidx/preference/PreferenceCategory;

    .line 43
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, ""

    const-string v5, "SponsorPost"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u0417\u0430\u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u043d\u043e \u043f\u043e\u0441\u0442\u043e\u0432: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lru/vtosters/sponsorpost/utils/PostsPreferences;->getNumBlockedPosts()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 42
    invoke-static/range {v3 .. v8}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 52
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, ""

    const-string v11, "SponsorPost \u0444\u0438\u043b\u044c\u0442\u0440\u044b"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->getNumBlockedPosts()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 51
    invoke-static/range {v9 .. v14}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 61
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, ""

    const-string v3, "\u0421\u0431\u0440\u043e\u0441 \u0441\u0442\u0430\u0442\u0438\u0441\u0442\u0438\u043a\u0438"

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lru/vtosters/lite/ui/fragments/SponsorPostFragment$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment$$ExternalSyntheticLambda0;-><init>()V

    .line 60
    invoke-static/range {v1 .. v6}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 74
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "Sponsor Post"

    invoke-static {v1, v2}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreferenceCategory(Landroidx/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroidx/preference/PreferenceCategory;

    .line 76
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->serverFeaturesDisable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, ""

    const-string v4, "\u0424\u0438\u043b\u044c\u0442\u0440 \u043f\u043e\u0441\u0442\u043e\u0432 \u043e\u0442\u043a\u043b\u044e\u0447\u0435\u043d"

    const-string v5, "\u0424\u0443\u043d\u043a\u0446\u0438\u044f \u043e\u0442\u043a\u043b\u044e\u0447\u0435\u043d\u0430 \u0432 \u0441\u0432\u044f\u0437\u0438 \u0441 \u0442\u0435\u043c \u0447\u0442\u043e \u0432\u044b \u043e\u0442\u043a\u043b\u044e\u0447\u0438\u043b\u0438 \u0441\u0442\u043e\u0440\u043e\u043d\u043d\u0438\u0435 \u043f\u043e\u0434\u043a\u043b\u044e\u0447\u0435\u043d\u0438\u044f \u043a \u0441\u0435\u0440\u0432\u0435\u0440\u0430\u043c"

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 77
    invoke-static/range {v2 .. v7}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    goto/16 :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, ""

    const-string v10, "\u0424\u0438\u043b\u044c\u0442\u0440 \u043f\u043e\u0441\u0442\u043e\u0432"

    const-string v11, "\u041f\u043e\u043b\u0443\u0447\u0430\u0442\u044c \u0441\u043f\u0438\u0441\u043a\u0438 \u0440\u0435\u043a\u043b\u0430\u043c\u043d\u044b\u0445 \u043f\u043e\u0441\u0442\u043e\u0432 \u0432 \u0433\u0440\u0443\u043f\u043f\u0430\u0445 \u0438 \u043b\u0435\u043d\u0442\u0435, \u043a\u043e\u0442\u043e\u0440\u044b\u0435 \u043d\u0435 \u0431\u043b\u043e\u043a\u0438\u0440\u0443\u044e\u0442\u0441\u044f \u0440\u0435\u043a\u043b\u0430\u043c\u043d\u044b\u043c\u0438 \u0444\u0438\u043b\u044c\u0442\u0440\u0430\u043c\u0438\n\n\u0420\u0435\u043a\u043e\u043c\u0435\u043d\u0434\u0443\u0435\u0442\u0441\u044f \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u044c \u0441\u043e\u0432\u043c\u0435\u0441\u0442\u043d\u043e \u0441\u043e \u0421\u0442\u0430\u043d\u0434\u0430\u0440\u0442\u043d\u044b\u043c \u0444\u0438\u043b\u044c\u0442\u0440\u043e\u043c"

    const/4 v12, 0x0

    .line 92
    invoke-static {}, Lru/vtosters/sponsorpost/utils/PostsPreferences;->isEnabled()Z

    move-result v13

    new-instance v14, Lru/vtosters/lite/ui/fragments/SponsorPostFragment$$ExternalSyntheticLambda6;

    invoke-direct {v14}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment$$ExternalSyntheticLambda6;-><init>()V

    .line 86
    invoke-static/range {v8 .. v14}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addMaterialSwitchPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZLandroidx/preference/Preference$OnPreferenceChangeListener;)Lcom/vtosters/lite/ui/MaterialSwitchPreference;

    .line 100
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, ""

    const-string v3, "\u041d\u0435 \u0441\u043a\u0440\u044b\u0432\u0430\u0442\u044c \u043f\u043e\u0441\u0442\u044b"

    const-string v4, "\u041f\u043e\u043c\u0435\u0447\u0430\u0442\u044c \u043f\u043e\u0441\u0442\u044b \u0440\u0435\u043a\u043b\u0430\u043c\u043d\u043e\u0439 \u043f\u043e\u043c\u0435\u0442\u043a\u043e\u0439, \u043d\u043e \u043d\u0435 \u0441\u043a\u0440\u044b\u0432\u0430\u0442\u044c \u0438\u0445 \u043f\u043e\u043b\u043d\u043e\u0441\u0442\u044c\u044e"

    const/4 v5, 0x0

    .line 105
    invoke-static {}, Lru/vtosters/sponsorpost/utils/PostsPreferences;->isEnabledMarking()Z

    move-result v6

    new-instance v7, Lru/vtosters/lite/ui/fragments/SponsorPostFragment$$ExternalSyntheticLambda7;

    invoke-direct {v7}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment$$ExternalSyntheticLambda7;-><init>()V

    .line 99
    invoke-static/range {v1 .. v7}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addMaterialSwitchPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZLandroidx/preference/Preference$OnPreferenceChangeListener;)Lcom/vtosters/lite/ui/MaterialSwitchPreference;

    move-result-object v1

    .line 110
    invoke-static {}, Lru/vtosters/sponsorpost/utils/PostsPreferences;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vtosters/lite/ui/MaterialSwitchPreference;->setEnabled(Z)V

    .line 113
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, ""

    const-string v5, "\u041f\u0440\u0435\u0434\u0432\u0430\u0440\u0438\u0442\u0435\u043b\u044c\u043d\u044b\u0435 \u0441\u043f\u0438\u0441\u043a\u0438"

    const-string v6, "\u041f\u043e\u043b\u0443\u0447\u0430\u0442\u044c \u0434\u043e\u043f\u043e\u043b\u043d\u0438\u0442\u0435\u043b\u044c\u043d\u043e \u0431\u043e\u043b\u0435\u0435 \u0441\u0432\u0435\u0436\u0438\u0435 \u0441\u043f\u0438\u0441\u043a\u0438 \u043a\u043e\u0442\u043e\u0440\u044b\u0435 \u0435\u0449\u0451 \u043d\u0435 \u043f\u043e\u043f\u0430\u043b\u0438 \u0432 \u043e\u0441\u043d\u043e\u0432\u043d\u043e\u0439 \u0441\u043f\u0438\u0441\u043e\u043a. \u041d\u0443\u0436\u043d\u043e \u0434\u043b\u044f \u0430\u043a\u0442\u0438\u0432\u043d\u043e\u0433\u043e \u0433\u043e\u043b\u043e\u0441\u043e\u0432\u0430\u043d\u0438\u044f \u0434\u043b\u044f \u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u043a\u0438 \u043f\u043e\u0441\u0442\u043e\u0432. \u0412\u043e\u0437\u043c\u043e\u0436\u043d\u043e \u043c\u043d\u043e\u0433\u043e \u043e\u0448\u0438\u0431\u043e\u043a!"

    const/4 v7, 0x0

    .line 118
    invoke-static {}, Lru/vtosters/sponsorpost/internal/VotesPreferences;->isEnabled()Z

    move-result v8

    new-instance v9, Lru/vtosters/lite/ui/fragments/SponsorPostFragment$$ExternalSyntheticLambda8;

    invoke-direct {v9}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment$$ExternalSyntheticLambda8;-><init>()V

    .line 112
    invoke-static/range {v3 .. v9}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addMaterialSwitchPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZLandroidx/preference/Preference$OnPreferenceChangeListener;)Lcom/vtosters/lite/ui/MaterialSwitchPreference;

    move-result-object v1

    .line 123
    invoke-static {}, Lru/vtosters/sponsorpost/utils/PostsPreferences;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vtosters/lite/ui/MaterialSwitchPreference;->setEnabled(Z)V

    .line 125
    invoke-static {}, Lru/vtosters/lite/utils/NetworkUtils;->isNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, ""

    const-string v4, "\u041e\u0431\u043d\u043e\u0432\u0438\u0442\u044c \u0441\u043f\u0438\u0441\u043a\u0438 \u043f\u043e\u0441\u0442\u043e\u0432"

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lru/vtosters/lite/ui/fragments/SponsorPostFragment$$ExternalSyntheticLambda9;

    invoke-direct {v7, p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment$$ExternalSyntheticLambda9;-><init>(Lru/vtosters/lite/ui/fragments/SponsorPostFragment;)V

    .line 126
    invoke-static/range {v2 .. v7}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 143
    :cond_1
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, ""

    const-string v10, "\u0422\u0435\u043b\u0435\u0433\u0440\u0430\u043c \u0447\u0430\u0442"

    const-string v11, "\u041f\u043e\u043c\u043e\u0433\u0438\u0442\u0435 \u0443\u043b\u0443\u0447\u0448\u0438\u0442\u044c \u043a\u0430\u0447\u0435\u0441\u0442\u0432\u043e \u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u043a\u0438 \u043f\u043e\u0441\u0442\u043e\u0432 \u0432 \u043d\u0430\u0448\u0435\u043c \u0442\u0435\u043b\u0435\u0433\u0440\u0430\u043c \u0447\u0430\u0442\u0435\n\n\u0414\u043b\u044f \u043f\u0435\u0440\u0435\u0445\u043e\u0434\u0430 \u0432 \u0447\u0430\u0442 \u0432\u0430\u043c \u043d\u0435\u043e\u0431\u0445\u043e\u0434\u0438\u043c\u0430 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u044f\u044f \u0432\u0435\u0440\u0441\u0438\u044f Telegram"

    const/4 v12, 0x0

    new-instance v13, Lru/vtosters/lite/ui/fragments/SponsorPostFragment$$ExternalSyntheticLambda10;

    invoke-direct {v13, p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment$$ExternalSyntheticLambda10;-><init>(Lru/vtosters/lite/ui/fragments/SponsorPostFragment;)V

    .line 142
    invoke-static/range {v8 .. v13}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 155
    :goto_0
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lru/vtosters/lite/ui/fragments/SponsorPostFragment$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment$$ExternalSyntheticLambda11;-><init>(Lru/vtosters/lite/ui/fragments/SponsorPostFragment;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 276
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->dev()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 278
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, ""

    const-string v4, "\u0421\u0431\u0440\u043e\u0441\u0438\u0442\u044c \u0442\u043e\u043a\u0435\u043d \u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u0435\u043b\u044f"

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lru/vtosters/lite/ui/fragments/SponsorPostFragment$$ExternalSyntheticLambda12;

    invoke-direct {v7}, Lru/vtosters/lite/ui/fragments/SponsorPostFragment$$ExternalSyntheticLambda12;-><init>()V

    .line 277
    invoke-static/range {v2 .. v7}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    :cond_2
    return-void
.end method
