.class public Lru/vtosters/sponsorpost/utils/Updates;
.super Ljava/lang/Object;
.source "Updates.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findLocalFilterById(Ljava/util/List;I)Lru/vtosters/sponsorpost/data/Filter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/vtosters/sponsorpost/data/Filter;",
            ">;I)",
            "Lru/vtosters/sponsorpost/data/Filter;"
        }
    .end annotation

    .line 55
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/vtosters/sponsorpost/data/Filter;

    .line 56
    invoke-virtual {v0}, Lru/vtosters/sponsorpost/data/Filter;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static updateFilters()V
    .locals 7

    .line 20
    invoke-static {}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->getAllFilterIds()Ljava/util/List;

    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lru/vtosters/lite/utils/NetworkUtils;->isNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 26
    :cond_0
    invoke-static {v0}, Lru/vtosters/sponsorpost/services/FilterService;->getFilters(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 27
    invoke-static {}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->getAllDownloadedFilters()Ljava/util/List;

    move-result-object v1

    .line 29
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 30
    invoke-static {}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->clearAllCachedLists()V

    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/vtosters/sponsorpost/data/Filter;

    .line 33
    invoke-virtual {v2}, Lru/vtosters/sponsorpost/data/Filter;->getId()I

    move-result v3

    invoke-static {v1, v3}, Lru/vtosters/sponsorpost/utils/Updates;->findLocalFilterById(Ljava/util/List;I)Lru/vtosters/sponsorpost/data/Filter;

    move-result-object v3

    const-string v4, "Updates"

    if-nez v3, :cond_1

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "local filter is not exist, adding new: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lru/vtosters/sponsorpost/data/Filter;->getId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {v2}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->saveFilter(Lru/vtosters/sponsorpost/data/Filter;)V

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v2}, Lru/vtosters/sponsorpost/data/Filter;->getVersion()Ljava/lang/String;

    move-result-object v5

    .line 39
    invoke-virtual {v3}, Lru/vtosters/sponsorpost/data/Filter;->getVersion()Ljava/lang/String;

    move-result-object v6

    .line 40
    invoke-static {v5, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "saved local filter: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lru/vtosters/sponsorpost/data/Filter;->getId()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {v3}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->saveFilter(Lru/vtosters/sponsorpost/data/Filter;)V

    goto :goto_0

    .line 44
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "saved remote filter: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lru/vtosters/sponsorpost/data/Filter;->getId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {v2}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->saveFilter(Lru/vtosters/sponsorpost/data/Filter;)V

    goto :goto_0

    .line 50
    :cond_3
    invoke-static {}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->updateFilters()V

    :cond_4
    :goto_1
    return-void
.end method

.method public static updatePosts()V
    .locals 5

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 65
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 67
    invoke-static {}, Lru/vtosters/sponsorpost/utils/PostsPreferences;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lru/vtosters/lite/utils/NetworkUtils;->isNetworkConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 68
    invoke-static {}, Lru/vtosters/sponsorpost/internal/VotesPreferences;->isEnabled()Z

    move-result v2

    const-wide/16 v3, 0x3e8

    if-eqz v2, :cond_1

    .line 69
    div-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/sponsorpost/internal/VotesService;->getPosts(Ljava/lang/Long;)Ljava/util/Map;

    move-result-object v0

    .line 70
    invoke-static {}, Lru/vtosters/sponsorpost/internal/VotesService;->getOwnerIds()Ljava/util/Map;

    move-result-object v1

    .line 72
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const-string v3, "vote"

    const-string v4, "prod"

    if-nez v2, :cond_0

    .line 73
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lru/vtosters/sponsorpost/utils/PostsPreferences;->savePostsStr(Ljava/util/List;)V

    .line 74
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lru/vtosters/sponsorpost/internal/VotesPreferences;->savePosts(Ljava/util/List;)V

    .line 77
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 78
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lru/vtosters/sponsorpost/utils/PostsPreferences;->saveGroupsIds(Ljava/util/List;)V

    .line 79
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lru/vtosters/sponsorpost/internal/VotesPreferences;->saveGroupsIds(Ljava/util/List;)V

    goto :goto_0

    .line 82
    :cond_1
    div-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/sponsorpost/services/PostService;->getAllPostsIds(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 83
    invoke-static {}, Lru/vtosters/sponsorpost/services/PostService;->getOwnerIds()Ljava/util/List;

    move-result-object v1

    .line 85
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 86
    invoke-static {v0}, Lru/vtosters/sponsorpost/utils/PostsPreferences;->savePostsStr(Ljava/util/List;)V

    .line 89
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 90
    invoke-static {v1}, Lru/vtosters/sponsorpost/utils/PostsPreferences;->saveGroupsIds(Ljava/util/List;)V

    :cond_3
    :goto_0
    return-void
.end method
