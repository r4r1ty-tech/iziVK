.class public Lru/vtosters/lite/ui/fragments/FeedFragment;
.super Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;
.source "FeedFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;-><init>()V

    return-void
.end method

.method private count(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ", "

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f121629

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 93
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f12162b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private countSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 114
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", "

    if-eqz p1, :cond_0

    .line 118
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    const/4 v1, 0x1

    if-lt p1, v1, :cond_2

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 128
    :cond_1
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f121629

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 126
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f12162b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$prefs$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 40
    sget-object p0, Lcom/vk/newsfeed/controllers/NewsfeedController;->e:Lcom/vk/newsfeed/controllers/NewsfeedController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vk/newsfeed/controllers/NewsfeedController;->a(I)V

    .line 41
    sget-object p0, Lcom/vk/newsfeed/controllers/NewsfeedController;->e:Lcom/vk/newsfeed/controllers/NewsfeedController;

    const-string v0, "top"

    invoke-static {p1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vk/newsfeed/controllers/NewsfeedController;->a(Ljava/lang/Boolean;)V

    .line 42
    sget-object p0, Lcom/vk/newsfeed/controllers/NewsfeedController;->e:Lcom/vk/newsfeed/controllers/NewsfeedController;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/vk/newsfeed/controllers/NewsfeedController;->b(Z)V

    return p1
.end method

.method static synthetic lambda$prefs$6(Landroidx/preference/Preference;)Z
    .locals 0

    .line 76
    invoke-static {}, Lru/vtosters/lite/ui/components/NewsfeedListManager;->resetHideItems()V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$remdialog$8(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 109
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private prefs()V
    .locals 8

    const-string v0, "sponsorpost"

    .line 28
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/ui/fragments/FeedFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lru/vtosters/lite/ui/fragments/FeedFragment$$ExternalSyntheticLambda2;-><init>(Lru/vtosters/lite/ui/fragments/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "spamfilters"

    .line 33
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-static {v0}, Lru/vtosters/hooks/other/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->count(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "sourcenamefilter"

    .line 34
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-static {v0}, Lru/vtosters/hooks/other/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->count(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "linkfilter"

    .line 35
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-static {v0}, Lru/vtosters/hooks/other/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->count(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "newsfeed_order"

    .line 37
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/vtosters/lite/ui/SummaryListPreference;

    .line 38
    sget-object v1, Lcom/vk/newsfeed/controllers/NewsfeedController;->e:Lcom/vk/newsfeed/controllers/NewsfeedController;

    invoke-virtual {v1}, Lcom/vk/newsfeed/controllers/NewsfeedController;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "top"

    goto :goto_0

    :cond_0
    const-string v1, "recent"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/vtosters/lite/ui/SummaryListPreference;->setValue(Ljava/lang/String;)V

    .line 39
    new-instance v1, Lru/vtosters/lite/ui/fragments/FeedFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lru/vtosters/lite/ui/fragments/FeedFragment$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vtosters/lite/ui/SummaryListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "whitelisted_ad_groups"

    .line 46
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->countSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v1, "whitelisted_filters_groups"

    .line 47
    invoke-virtual {p0, v1}, Lru/vtosters/lite/ui/fragments/FeedFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v1}, Lru/vtosters/lite/ui/fragments/FeedFragment;->countSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v2, "whitelisted_stories_ad"

    .line 48
    invoke-virtual {p0, v2}, Lru/vtosters/lite/ui/fragments/FeedFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-direct {p0, v2}, Lru/vtosters/lite/ui/fragments/FeedFragment;->countSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p0, v2}, Lru/vtosters/lite/ui/fragments/FeedFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    new-instance v3, Lru/vtosters/lite/ui/fragments/FeedFragment$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lru/vtosters/lite/ui/fragments/FeedFragment$$ExternalSyntheticLambda4;-><init>(Lru/vtosters/lite/ui/fragments/FeedFragment;)V

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 55
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v2, Lru/vtosters/lite/ui/fragments/FeedFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lru/vtosters/lite/ui/fragments/FeedFragment$$ExternalSyntheticLambda5;-><init>(Lru/vtosters/lite/ui/fragments/FeedFragment;)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 60
    invoke-virtual {p0, v1}, Lru/vtosters/lite/ui/fragments/FeedFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/ui/fragments/FeedFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lru/vtosters/lite/ui/fragments/FeedFragment$$ExternalSyntheticLambda6;-><init>(Lru/vtosters/lite/ui/fragments/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "newsfeedlistmanager"

    .line 65
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    new-instance v2, Lru/vtosters/lite/ui/fragments/FeedFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lru/vtosters/lite/ui/fragments/FeedFragment$$ExternalSyntheticLambda7;-><init>(Lru/vtosters/lite/ui/fragments/FeedFragment;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 70
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "news_feed_selected_items"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    .line 72
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f12162a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_1

    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v1, "newsfeedlistmanager_reset"

    .line 75
    invoke-virtual {p0, v1}, Lru/vtosters/lite/ui/fragments/FeedFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    new-instance v3, Lru/vtosters/lite/ui/fragments/FeedFragment$$ExternalSyntheticLambda8;

    invoke-direct {v3}, Lru/vtosters/lite/ui/fragments/FeedFragment$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v2, "unlockCustomLists"

    .line 80
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    .line 82
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 83
    invoke-virtual {p0, v1}, Lru/vtosters/lite/ui/fragments/FeedFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v0, "feedcache"

    .line 85
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const-string v1, "newsupdate"

    invoke-static {v1}, Lru/vtosters/hooks/other/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "no_update"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private remdialog(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .line 100
    new-instance v0, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-direct {v0, p2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f12182f

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p2

    .line 102
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1215fa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p2

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p2, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setCancelable(Z)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p2

    .line 104
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1214f3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/ui/fragments/FeedFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lru/vtosters/lite/ui/fragments/FeedFragment$$ExternalSyntheticLambda0;-><init>(Lru/vtosters/lite/ui/fragments/FeedFragment;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    .line 108
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f12018a

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lru/vtosters/lite/ui/fragments/FeedFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lru/vtosters/lite/ui/fragments/FeedFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, p2, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public T4()I
    .locals 1

    const v0, 0x7f1217de

    return v0
.end method

.method synthetic lambda$prefs$0$ru-vtosters-lite-ui-fragments-FeedFragment(Landroidx/preference/Preference;)Z
    .locals 1

    .line 29
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lru/vtosters/lite/ui/fragments/SponsorPostFragment;

    invoke-static {p1, v0}, Lru/vtosters/lite/utils/NavigatorUtils;->switchFragment(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$prefs$2$ru-vtosters-lite-ui-fragments-FeedFragment(Landroidx/preference/Preference;)Z
    .locals 1

    const-string p1, "whitelisted_stories_ad"

    .line 51
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->remdialog(Ljava/lang/String;Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$prefs$3$ru-vtosters-lite-ui-fragments-FeedFragment(Landroidx/preference/Preference;)Z
    .locals 1

    const-string p1, "whitelisted_ad_groups"

    .line 56
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->remdialog(Ljava/lang/String;Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$prefs$4$ru-vtosters-lite-ui-fragments-FeedFragment(Landroidx/preference/Preference;)Z
    .locals 1

    const-string p1, "whitelisted_filters_groups"

    .line 61
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->remdialog(Ljava/lang/String;Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$prefs$5$ru-vtosters-lite-ui-fragments-FeedFragment(Landroidx/preference/Preference;)Z
    .locals 0

    .line 66
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/ui/components/NewsfeedListManager;->callEditorPopup(Landroid/app/Activity;)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$remdialog$7$ru-vtosters-lite-ui-fragments-FeedFragment(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 105
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 106
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f121617

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f150016

    .line 23
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/FeedFragment;->addPreferencesFromResource(I)V

    .line 24
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/FeedFragment;->prefs()V

    return-void
.end method
