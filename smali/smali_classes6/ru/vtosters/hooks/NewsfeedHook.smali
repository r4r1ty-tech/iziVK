.class public Lru/vtosters/hooks/NewsfeedHook;
.super Ljava/lang/Object;
.source "NewsfeedHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adsParams(Ljava/util/HashSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ads_app_slider"

    const-string v1, "ads_site_slider"

    const-string v2, "ads_app"

    const-string v3, "ads_site"

    const-string v4, "ads_post"

    const-string v5, "ads_app_video"

    const-string v6, "ads_post_pretty_cards"

    const-string v7, "ads_post_snippet_video"

    .line 87
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->ads()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ads_disabled"

    .line 91
    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 94
    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {p0, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static feedParams()[Ljava/lang/String;
    .locals 7

    const-string v0, "post"

    const-string v1, "photo"

    const-string v2, "photo_tag"

    const-string v3, "friends_recomm"

    const-string v4, "app_widget"

    const-string v5, "promo_button"

    const-string v6, "authors_rec"

    .line 64
    invoke-static/range {v0 .. v6}, Lru/vtosters/hooks/NewsfeedHook$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 66
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 68
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 69
    invoke-static {v2}, Lru/vtosters/hooks/NewsfeedHook;->isDisabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 70
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 74
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getUpdateNewsfeed(Z)J
    .locals 4

    .line 28
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->vkme()Z

    move-result v0

    const-wide v1, 0x7fffffffffffffffL

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    const-string v0, "newsupdate"

    .line 31
    invoke-static {v0}, Lru/vtosters/hooks/other/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v3, "no_update"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v1, "imd_update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 34
    invoke-static {}, Lcom/vk/core/preference/Preference;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz p0, :cond_1

    const-string p0, "refresh_timeout_top"

    goto :goto_0

    :cond_1
    const-string p0, "refresh_timeout_recent"

    :goto_0
    const-wide/32 v1, 0x927c0

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x2710

    :cond_3
    :goto_1
    return-wide v1
.end method

.method public static hideElement(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 2

    const/4 v0, 0x1

    .line 57
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "whatsnew"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-object p0
.end method

.method private static isDisabled(Ljava/lang/String;)Z
    .locals 3

    .line 78
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "app_widget"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "authors_rec"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "promo_button"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "friends_recomm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 81
    :pswitch_0
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->authorsrecomm()Z

    move-result v1

    goto :goto_1

    .line 80
    :pswitch_1
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->ads()Z

    move-result v1

    goto :goto_1

    .line 79
    :pswitch_2
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->friendsrecomm()Z

    move-result v1

    :goto_1
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x10f61da9 -> :sswitch_3
        0x127fdc62 -> :sswitch_2
        0x2b929419 -> :sswitch_1
        0x52bf6622 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isNetworkRoaming(Landroid/telephony/TelephonyManager;)Z
    .locals 1

    .line 161
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->disableForceTrafficSaver()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPowerSaveMode()Z
    .locals 2

    .line 150
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v0, 0x0

    return v0
.end method

.method public static isRoaming(Landroid/net/NetworkInfo;)Z
    .locals 1

    .line 157
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->disableForceTrafficSaver()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$takeOwnerIdPostIdSponsorPost$1(JJ)V
    .locals 1

    .line 128
    invoke-static {}, Lru/vtosters/sponsorpost/internal/VotesPreferences;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {p0, p1, p2, p3}, Lru/vtosters/sponsorpost/internal/VotesService;->isPostAd(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-static {p0, p1, p2, p3}, Lru/vtosters/sponsorpost/internal/VotesPreferences;->saveAdPostInfo(JJ)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lru/vtosters/sponsorpost/services/PostService;->isPostAd(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    invoke-static {p0, p1, p2, p3}, Lru/vtosters/sponsorpost/utils/PostsPreferences;->saveAdPostInfo(JJ)V

    .line 140
    invoke-static {}, Lru/vtosters/sponsorpost/utils/PostsPreferences;->isEnabledMarking()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "\u042d\u0442\u043e\u0442 \u043f\u043e\u0441\u0442 \u043f\u043e\u043c\u0435\u0447\u0435\u043d \u043a\u0430\u043a \u0440\u0435\u043a\u043b\u0430\u043c\u043d\u044b\u0439"

    .line 141
    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$takeOwnerIdSponsorPost$0(I)V
    .locals 4

    int-to-long v0, p0

    .line 104
    invoke-static {v0, v1}, Lru/vtosters/sponsorpost/utils/PostsPreferences;->isGroupAd(J)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v0, v1}, Lru/vtosters/sponsorpost/internal/VotesPreferences;->isGroupAd(J)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 105
    :cond_0
    invoke-static {}, Lru/vtosters/sponsorpost/internal/VotesPreferences;->isEnabled()Z

    move-result p0

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_1

    .line 106
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v2}, Lru/vtosters/sponsorpost/internal/VotesService;->getPostIdsByOwnerId(Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/Map;

    move-result-object p0

    const-string v2, "vote"

    .line 107
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lru/vtosters/sponsorpost/internal/VotesPreferences;->saveGroupSpecifiedPosts(Ljava/util/List;Ljava/lang/Long;)V

    const-string v2, "prod"

    .line 108
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Lru/vtosters/sponsorpost/utils/PostsPreferences;->saveGroupSpecifiedPosts(Ljava/util/List;Ljava/lang/Long;)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v2}, Lru/vtosters/sponsorpost/services/PostService;->getPostIdsByOwnerId(Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p0

    .line 111
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Lru/vtosters/sponsorpost/utils/PostsPreferences;->saveGroupSpecifiedPosts(Ljava/util/List;Ljava/lang/Long;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static samsungFixAdd(Landroidx/recyclerview/widget/RecyclerView;Lcom/vk/discover/DiscoverItemDecorator;)Z
    .locals 1

    .line 48
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static samsungFixRem(Landroidx/recyclerview/widget/RecyclerView;Lcom/vk/discover/DiscoverItemDecorator;)Z
    .locals 1

    .line 39
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static takeOwnerIdPostIdSponsorPost([Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    .line 119
    aget-object v1, p0, v0

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 120
    aget-object p0, p0, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 122
    invoke-static {v3, v4, v0, v1}, Lru/vtosters/sponsorpost/utils/PostsPreferences;->isPostAd(JJ)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {v3, v4, v0, v1}, Lru/vtosters/sponsorpost/internal/VotesPreferences;->isPostAd(JJ)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {}, Lru/vtosters/lite/utils/NetworkUtils;->isNetworkConnected()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lru/vtosters/sponsorpost/utils/PostsPreferences;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->serverFeaturesDisable()Z

    move-result p0

    if-nez p0, :cond_1

    .line 127
    invoke-static {}, Lru/vtosters/lite/concurrent/VTExecutors;->getIoScheduler()Lio/reactivex/Scheduler;

    move-result-object p0

    new-instance v2, Lru/vtosters/hooks/NewsfeedHook$$ExternalSyntheticLambda2;

    invoke-direct {v2, v3, v4, v0, v1}, Lru/vtosters/hooks/NewsfeedHook$$ExternalSyntheticLambda2;-><init>(JJ)V

    invoke-virtual {p0, v2}, Lio/reactivex/Scheduler;->a(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_1
    :goto_0
    return-void
.end method

.method public static takeOwnerIdSponsorPost(I)V
    .locals 2

    .line 102
    invoke-static {}, Lru/vtosters/lite/utils/NetworkUtils;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lru/vtosters/sponsorpost/utils/PostsPreferences;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->serverFeaturesDisable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Lru/vtosters/lite/concurrent/VTExecutors;->getIoScheduler()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, Lru/vtosters/hooks/NewsfeedHook$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lru/vtosters/hooks/NewsfeedHook$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->a(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method
