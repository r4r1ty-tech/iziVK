.class public Lru/vtosters/sponsorpost/utils/FiltersPreferences;
.super Ljava/lang/Object;
.source "FiltersPreferences.java"


# static fields
.field private static final PREF_KEY_ID:Ljava/lang/String; = "id"

.field private static final PREF_KEY_LINK:Ljava/lang/String; = "link"

.field private static final PREF_KEY_LIST:Ljava/lang/String; = "list"

.field private static final PREF_KEY_SUMMARY:Ljava/lang/String; = "summary"

.field private static final PREF_KEY_TITLE:Ljava/lang/String; = "title"

.field private static final PREF_KEY_VERSION:Ljava/lang/String; = "version"

.field private static final preferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    invoke-static {}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->preferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllCachedLists()V
    .locals 3

    .line 55
    sget-object v0, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 57
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lru/vtosters/sponsorpost/utils/FiltersPreferences$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lru/vtosters/sponsorpost/utils/FiltersPreferences$$ExternalSyntheticLambda7;-><init>()V

    .line 58
    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 59
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lru/vtosters/sponsorpost/utils/FiltersPreferences$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lru/vtosters/sponsorpost/utils/FiltersPreferences$$ExternalSyntheticLambda1;-><init>(Landroid/content/SharedPreferences$Editor;)V

    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 61
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static deleteFilter(I)V
    .locals 3

    .line 135
    sget-object v0, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 137
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lru/vtosters/sponsorpost/utils/FiltersPreferences$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lru/vtosters/sponsorpost/utils/FiltersPreferences$$ExternalSyntheticLambda0;-><init>(I)V

    .line 138
    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 139
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lru/vtosters/sponsorpost/utils/FiltersPreferences$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1}, Lru/vtosters/sponsorpost/utils/FiltersPreferences$$ExternalSyntheticLambda1;-><init>(Landroid/content/SharedPreferences$Editor;)V

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 141
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 143
    invoke-static {}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->updateFilters()V

    return-void
.end method

.method public static downloadFilter(Lru/vtosters/sponsorpost/data/Filter;)V
    .locals 4

    .line 96
    invoke-virtual {p0}, Lru/vtosters/sponsorpost/data/Filter;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/sponsorpost/services/FilterService;->downloadFilter(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 98
    sget-object v1, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "filter:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lru/vtosters/sponsorpost/data/Filter;->getId()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":list"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 100
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static dropNumBlockedPosts()V
    .locals 3

    .line 51
    sget-object v0, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "numBlockedPosts"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static forceUpdateFilters()V
    .locals 3

    .line 65
    sget-object v0, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 67
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lru/vtosters/sponsorpost/utils/FiltersPreferences$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lru/vtosters/sponsorpost/utils/FiltersPreferences$$ExternalSyntheticLambda2;-><init>()V

    .line 68
    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lru/vtosters/sponsorpost/utils/FiltersPreferences$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lru/vtosters/sponsorpost/utils/FiltersPreferences$$ExternalSyntheticLambda3;-><init>(Landroid/content/SharedPreferences$Editor;)V

    .line 69
    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 71
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 73
    invoke-static {}, Lru/vtosters/sponsorpost/utils/Updates;->updateFilters()V

    return-void
.end method

.method public static getAllDownloadedFilters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/vtosters/sponsorpost/data/Filter;",
            ">;"
        }
    .end annotation

    .line 110
    invoke-static {}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->getAllFilterIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lru/vtosters/sponsorpost/utils/FiltersPreferences$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lru/vtosters/sponsorpost/utils/FiltersPreferences$$ExternalSyntheticLambda6;-><init>()V

    .line 111
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 112
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static getAllFilterIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 147
    sget-object v0, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lru/vtosters/sponsorpost/utils/FiltersPreferences$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lru/vtosters/sponsorpost/utils/FiltersPreferences$$ExternalSyntheticLambda4;-><init>()V

    .line 148
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lru/vtosters/sponsorpost/utils/FiltersPreferences$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lru/vtosters/sponsorpost/utils/FiltersPreferences$$ExternalSyntheticLambda5;-><init>()V

    .line 149
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 150
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static getFilter(I)Lru/vtosters/sponsorpost/data/Filter;
    .locals 9

    .line 116
    sget-object v0, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "id"

    invoke-static {p0, v1}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->getPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "title"

    .line 122
    invoke-static {p0, v1}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->getPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "summary"

    .line 123
    invoke-static {p0, v1}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->getPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "version"

    .line 124
    invoke-static {p0, v1}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->getPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "link"

    .line 125
    invoke-static {p0, v1}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->getPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 127
    new-instance p0, Lru/vtosters/sponsorpost/data/Filter;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lru/vtosters/sponsorpost/data/Filter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getFiltersLists()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    invoke-static {}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->getAllFilterIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lru/vtosters/sponsorpost/utils/FiltersPreferences$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lru/vtosters/sponsorpost/utils/FiltersPreferences$$ExternalSyntheticLambda8;-><init>()V

    .line 105
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 106
    invoke-static {}, Lj$/util/stream/Collectors;->toSet()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public static getNumBlockedPosts()I
    .locals 3

    .line 43
    sget-object v0, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "numBlockedPosts"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getPrefKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "filter:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 31
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ru.vtosters.sponsorpost.filters.prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getSavedKeyValue(I)Z
    .locals 0

    .line 77
    invoke-static {p0}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->getFilter(I)Lru/vtosters/sponsorpost/data/Filter;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static incrementNumBlockedPosts()V
    .locals 3

    .line 47
    sget-object v0, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->getNumBlockedPosts()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "numBlockedPosts"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static isEnabledMarking()Z
    .locals 3

    .line 35
    sget-object v0, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "sponsorpost_filters_marking"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$clearAllCachedLists$0(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ":list"

    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$deleteFilter$5(ILjava/lang/String;)Z
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "filter:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$forceUpdateFilters$1(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ":version"

    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$forceUpdateFilters$2(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 1

    const-string v0, "0"

    .line 69
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method static synthetic lambda$getAllFilterIds$6(Ljava/util/Map$Entry;)Z
    .locals 1

    .line 148
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "filter:.*:id"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getAllFilterIds$7(Ljava/util/Map$Entry;)Ljava/lang/Integer;
    .locals 0

    .line 149
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic lambda$getFiltersLists$4(Ljava/lang/Integer;)Lj$/util/stream/Stream;
    .locals 2

    .line 105
    sget-object v0, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->preferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string v1, "list"

    invoke-static {p0, v1}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->getPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$saveFilter$3(Lru/vtosters/sponsorpost/data/Filter;)V
    .locals 0

    .line 90
    invoke-static {p0}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->downloadFilter(Lru/vtosters/sponsorpost/data/Filter;)V

    .line 91
    invoke-static {}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->updateFilters()V

    return-void
.end method

.method public static saveFilter(Lru/vtosters/sponsorpost/data/Filter;)V
    .locals 3

    .line 81
    sget-object v0, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Lru/vtosters/sponsorpost/data/Filter;->getId()I

    move-result v1

    const-string v2, "id"

    invoke-static {v1, v2}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->getPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lru/vtosters/sponsorpost/data/Filter;->getId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-virtual {p0}, Lru/vtosters/sponsorpost/data/Filter;->getId()I

    move-result v1

    const-string v2, "title"

    invoke-static {v1, v2}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->getPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lru/vtosters/sponsorpost/data/Filter;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 84
    invoke-virtual {p0}, Lru/vtosters/sponsorpost/data/Filter;->getId()I

    move-result v1

    const-string v2, "summary"

    invoke-static {v1, v2}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->getPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lru/vtosters/sponsorpost/data/Filter;->getSummary()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-virtual {p0}, Lru/vtosters/sponsorpost/data/Filter;->getId()I

    move-result v1

    const-string v2, "version"

    invoke-static {v1, v2}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->getPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lru/vtosters/sponsorpost/data/Filter;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-virtual {p0}, Lru/vtosters/sponsorpost/data/Filter;->getId()I

    move-result v1

    const-string v2, "link"

    invoke-static {v1, v2}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->getPrefKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lru/vtosters/sponsorpost/data/Filter;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 89
    invoke-static {}, Lru/vtosters/lite/concurrent/VTExecutors;->getSlowTasksScheduler()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, Lru/vtosters/sponsorpost/utils/FiltersPreferences$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lru/vtosters/sponsorpost/utils/FiltersPreferences$$ExternalSyntheticLambda9;-><init>(Lru/vtosters/sponsorpost/data/Filter;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->a(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static setEnabledMarking(Z)V
    .locals 2

    .line 39
    sget-object v0, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sponsorpost_filters_marking"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
