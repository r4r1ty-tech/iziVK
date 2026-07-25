.class public Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;
.super Ljava/lang/Object;
.source "NewsFeedFiltersUtils.java"


# static fields
.field private static final CUSTOM_FILTERS:[Ljava/lang/String;

.field private static final EXCLUDED_ITEMS:[Ljava/lang/String;

.field private static final filters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "sourcenamefilter"

    const-string v1, "linkfilter"

    const-string v2, "spamfilters"

    .line 22
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->CUSTOM_FILTERS:[Ljava/lang/String;

    const-string v0, "qazaqstan"

    const-string v1, "podcasts"

    const-string v2, "kpop"

    const-string v3, "foryou"

    .line 23
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->EXCLUDED_ITEMS:[Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->filters:Ljava/util/Set;

    .line 27
    invoke-static {}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->updateFilters()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addSponsorPostMark(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 276
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "marked_as_ads"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sponsorpost"

    .line 277
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public static checkCaption(Lorg/json/JSONObject;)Z
    .locals 5

    const-string v0, "caption"

    .line 86
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->captions()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 89
    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 91
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->postsrecomm()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    :try_start_0
    const-string v0, "type"

    .line 93
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "explorebait"

    const-string v1, "shared"

    const-string v2, "digest"

    const-string v3, "commented"

    const-string v4, "voted"

    .line 94
    invoke-static {v0, v1, v2, v3, v4}, Lru/vtosters/hooks/NewsfeedHook$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "checkCaption"

    const-string v0, "Caption error"

    .line 98
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static checkCopyright(Lorg/json/JSONObject;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "copyright"

    .line 65
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->copyright_post()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 68
    :cond_0
    sget-object v1, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->filters:Ljava/util/Set;

    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils$$ExternalSyntheticLambda4;-><init>()V

    .line 69
    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v1

    .line 70
    invoke-static {}, Lj$/util/stream/Collectors;->toSet()Lj$/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 72
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "name"

    .line 75
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "link"

    .line 76
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 77
    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0, p0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static checkStoriesButtonLinks(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    .line 351
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "storiesGroupsAdBlock"

    invoke-static {v2, v1}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "link"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->isWhitelistedAdStories(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static discoverAdBlock(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 8

    const-string v0, "info"

    const-string v1, "ads"

    const-string v2, "template"

    const-string v3, "NewsfeedAdBlockV2"

    const-string v4, "Removed "

    const/4 v5, 0x1

    .line 148
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    if-nez p0, :cond_0

    return-object v5

    :cond_0
    :try_start_0
    const-string v6, "post"

    .line 151
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 153
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 154
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v2, 0x0

    if-nez v7, :cond_2

    if-nez p0, :cond_2

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "discover"

    .line 161
    invoke-static {v6, p0, v2}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->needToSave(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 157
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_3

    move-object v0, v1

    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " template in discover"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "discover crash: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method public static discoverInject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "items"

    .line 170
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 171
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    .line 175
    :try_start_0
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 176
    invoke-static {v5}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->discoverAdBlock(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 177
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    .line 180
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "discover: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NewsfeedAdBlockV2"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p0
.end method

.method public static feedInject(Lorg/json/JSONArray;Z)Lorg/json/JSONArray;
    .locals 2

    .line 281
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 283
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-static {v0, v1}, Lj$/util/stream/IntStream$-CC;->range(II)Lj$/util/stream/IntStream;

    move-result-object v0

    .line 284
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lru/vtosters/lite/themes/items/VTLPalette$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lru/vtosters/lite/themes/items/VTLPalette$$ExternalSyntheticLambda0;-><init>(Lorg/json/JSONArray;)V

    invoke-interface {v0, v1}, Lj$/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 286
    new-instance v0, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils$$ExternalSyntheticLambda9;-><init>(Z)V

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 293
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 295
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method private static getOwnerId(Lorg/json/JSONObject;)I
    .locals 2

    const-string v0, "owner_id"

    .line 374
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "source_id"

    :goto_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static getPostId(Lorg/json/JSONObject;)I
    .locals 2

    const-string v0, "post_id"

    .line 378
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "id"

    :goto_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static hasMiniAppAds(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 3

    const-string v0, "attachments"

    .line 419
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v0, 0x0

    .line 427
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz p0, :cond_0

    const-string v2, "blockminiapps"

    .line 421
    invoke-static {v2, v1}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 422
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-static {v0, v1}, Lj$/util/stream/IntStream$-CC;->range(II)Lj$/util/stream/IntStream;

    move-result-object v0

    .line 423
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lru/vtosters/lite/themes/items/VTLPalette$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lru/vtosters/lite/themes/items/VTLPalette$$ExternalSyntheticLambda0;-><init>(Lorg/json/JSONArray;)V

    invoke-interface {v0, v1}, Lj$/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils$$ExternalSyntheticLambda6;-><init>()V

    .line 424
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    .line 422
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public static injectFiltersReposts(Lorg/json/JSONObject;)Z
    .locals 3

    const-string v0, "copy_history"

    .line 42
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 44
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {v2, v0}, Lj$/util/stream/IntStream$-CC;->range(II)Lj$/util/stream/IntStream;

    move-result-object v0

    .line 46
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lru/vtosters/lite/themes/items/VTLPalette$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lru/vtosters/lite/themes/items/VTLPalette$$ExternalSyntheticLambda0;-><init>(Lorg/json/JSONArray;)V

    invoke-interface {v0, v1}, Lj$/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils$$ExternalSyntheticLambda8;-><init>()V

    .line 47
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0

    :cond_0
    return v2
.end method

.method public static isAds(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 9

    const/4 v0, 0x0

    .line 355
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->ads()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "html5_ad"

    const-string v3, "ads_easy_promote"

    const-string v4, "ads"

    const-string v5, "carousel"

    .line 357
    invoke-static {v4, v5, v2, v3}, Lru/vtosters/hooks/NewsfeedHook$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const-string v3, "app_slider"

    const-string v5, "tags_suggestions"

    const-string v6, "promo_button"

    const-string v7, "app_widget"

    const-string v8, "app_video"

    .line 358
    invoke-static {v6, v7, v8, v3, v5}, Lru/vtosters/hooks/NewsfeedHook$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 360
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    const-string v7, "feed"

    if-nez v5, :cond_3

    invoke-static {v2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils$$ExternalSyntheticLambda10;

    invoke-direct {v5, p1}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 365
    :cond_1
    invoke-static {v3}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils$$ExternalSyntheticLambda10;

    invoke-direct {v3, p1}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "promo"

    .line 366
    invoke-static {p0, v7, p1, v0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->logRemovedPost(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 367
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1

    .line 361
    :cond_3
    :goto_0
    invoke-static {p0, v7, v4, v0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->logRemovedPost(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 362
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    return-object v1
.end method

.method private static isExcluded(Ljava/lang/String;)Z
    .locals 1

    .line 144
    sget-object v0, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->EXCLUDED_ITEMS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isWhitelistedAd(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 3

    .line 397
    invoke-static {p0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->getOwnerId(Lorg/json/JSONObject;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 399
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "whitelisted_ad_groups"

    .line 401
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 399
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 404
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static isWhitelistedAdStories(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 4

    .line 408
    invoke-static {p0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->getOwnerId(Lorg/json/JSONObject;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 410
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "whitelisted_stories_ad"

    .line 412
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 410
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    .line 415
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "invertFilters"

    invoke-static {v3, v2}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eq v2, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static isWhitelistedFilters(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 5

    .line 382
    invoke-static {p0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->getOwnerId(Lorg/json/JSONObject;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "-189659924"

    .line 384
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-static {}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 388
    :cond_0
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "whitelisted_filters_groups"

    .line 390
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 388
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    const-string v2, "invertFilters"

    const/4 v3, 0x0

    .line 393
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v4}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eq v2, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 385
    :cond_2
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$checkCopyright$1(Ljava/lang/String;)Z
    .locals 0

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$checkCopyright$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 77
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$feedInject$3(ZLorg/json/JSONObject;)Z
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "feed"

    .line 288
    invoke-static {p1, v0, p0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->needToSave(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 290
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$hasMiniAppAds$7(Lorg/json/JSONObject;)Z
    .locals 1

    const-string v0, "type"

    .line 424
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "mini_app"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$injectFiltersReposts$0(Lorg/json/JSONObject;)Z
    .locals 5

    const-string v0, "text"

    .line 48
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "post_type"

    .line 49
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->sponsorFilters(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    const-string v3, "repost"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    const-string v0, "sponsorpost filters"

    .line 51
    invoke-static {p0, v3, v0, v4}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->logRemovedPost(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    .line 53
    :cond_0
    invoke-static {p0, v1}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->isAds(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ads"

    .line 54
    invoke-static {p0, v3, v0, v4}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->logRemovedPost(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_1
    return v4
.end method

.method static synthetic lambda$sponsorFilters$4(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 308
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$sponsorFilters$5(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 310
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->dev()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NewsfeedAdBlockV2"

    .line 311
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Block word: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic lambda$sponsorFiltersBanWord$6(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 323
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static logRemovedPost(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Removed post "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->getPostId(Lorg/json/JSONObject;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", owner: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->getOwnerId(Lorg/json/JSONObject;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Reason: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewsfeedAdBlockV2"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    .line 301
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "\u041f\u043e\u0441\u0442 "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->getOwnerId(Lorg/json/JSONObject;)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->getPostId(Lorg/json/JSONObject;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " \u0437\u0430\u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u043d \u043f\u043e \u043f\u0440\u0438\u0447\u0438\u043d\u0435: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static needToSave(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "type"

    .line 190
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {p0, v0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->isAds(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 196
    :cond_0
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->authorsrecomm()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "authors_rec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "recommended_"

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "audios"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "artists"

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "playlists"

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "groups"

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v0, "authors"

    .line 202
    invoke-static {p0, p1, v0, p2}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->logRemovedPost(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    .line 206
    :cond_2
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->postsrecomm()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "inline_user_rec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "live_recommended"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string v0, "postsrecomm"

    .line 207
    invoke-static {p0, p1, v0, p2}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->logRemovedPost(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    .line 211
    :cond_4
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->friendsrecomm()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "user_rec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "friends_recomm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const-string v0, "friendsrecomm"

    .line 212
    invoke-static {p0, p1, v0, p2}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->logRemovedPost(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    .line 216
    :cond_6
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->adsgroup()Z

    move-result v0

    const-string v1, "sponsorpost"

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    const-string v0, "marked_as_ads"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v3, :cond_7

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {p0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->isWhitelistedAd(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_7

    .line 217
    invoke-static {p0, p1, v0, p2}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->logRemovedPost(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)V

    return p2

    .line 221
    :cond_7
    invoke-static {p0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->getOwnerId(Lorg/json/JSONObject;)I

    move-result v0

    int-to-long v4, v0

    invoke-static {p0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->getPostId(Lorg/json/JSONObject;)I

    move-result v0

    int-to-long v6, v0

    invoke-static {v4, v5, v6, v7}, Lru/vtosters/sponsorpost/utils/PostsPreferences;->isPostAd(JJ)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {p0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->isWhitelistedAd(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    .line 222
    invoke-static {p0, p1, v1, p2}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->logRemovedPost(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 223
    invoke-static {}, Lru/vtosters/sponsorpost/utils/PostsPreferences;->incrementNumBlockedPosts()V

    .line 225
    invoke-static {}, Lru/vtosters/sponsorpost/utils/PostsPreferences;->isEnabledMarking()Z

    move-result p1

    if-nez p1, :cond_9

    if-eqz p2, :cond_8

    goto :goto_0

    :cond_8
    return v2

    .line 226
    :cond_9
    :goto_0
    invoke-static {p0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->addSponsorPostMark(Lorg/json/JSONObject;)V

    return v3

    .line 233
    :cond_a
    invoke-static {p0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->getOwnerId(Lorg/json/JSONObject;)I

    move-result v0

    int-to-long v4, v0

    invoke-static {p0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->getPostId(Lorg/json/JSONObject;)I

    move-result v0

    int-to-long v6, v0

    invoke-static {v4, v5, v6, v7}, Lru/vtosters/sponsorpost/internal/VotesPreferences;->isPostAd(JJ)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->isWhitelistedAd(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "sponsorpost vote base"

    .line 234
    invoke-static {p0, p1, v0, p2}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->logRemovedPost(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 235
    invoke-static {p0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->addSponsorPostMark(Lorg/json/JSONObject;)V

    return v3

    :cond_b
    const-string v0, "text"

    .line 239
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->sponsorFilters(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->isWhitelistedFilters(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "sponsorpost filter"

    .line 240
    invoke-static {p0, p1, v0, p2}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->logRemovedPost(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 241
    invoke-static {}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->incrementNumBlockedPosts()V

    .line 243
    invoke-static {}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->isEnabledMarking()Z

    move-result p1

    if-nez p1, :cond_d

    if-eqz p2, :cond_c

    goto :goto_1

    :cond_c
    return v2

    .line 244
    :cond_d
    :goto_1
    invoke-static {p0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->addSponsorPostMark(Lorg/json/JSONObject;)V

    return v3

    .line 251
    :cond_e
    invoke-static {p0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->checkCopyright(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "copyright filters"

    .line 252
    invoke-static {p0, p1, v0, p2}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->logRemovedPost(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 253
    invoke-static {}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->incrementNumBlockedPosts()V

    return p2

    .line 257
    :cond_f
    invoke-static {p0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->checkCaption(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "caption filters"

    .line 258
    invoke-static {p0, p1, v0, p2}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->logRemovedPost(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)V

    return p2

    .line 262
    :cond_10
    invoke-static {p0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->hasMiniAppAds(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->isWhitelistedFilters(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "miniapps ban"

    .line 263
    invoke-static {p0, p1, v0, p2}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->logRemovedPost(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)V

    return p2

    .line 267
    :cond_11
    invoke-static {p0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->injectFiltersReposts(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->isWhitelistedFilters(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "repost ad"

    .line 268
    invoke-static {p0, p1, v0, p2}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->logRemovedPost(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Z)V

    return p2

    :cond_12
    return v3
.end method

.method private static parseItemsStories(Lorg/json/JSONArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 459
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 460
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->parseStoriesItem(Lorg/json/JSONObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static parseStoriesItem(Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "stories"

    .line 330
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 331
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 335
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 336
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "is_ads"

    .line 338
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "is_promo"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 339
    invoke-static {v4}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->checkStoriesButtonLinks(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 340
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 343
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Fetched stories ad, owner id "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "owner_id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", caption "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "caption"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NewsfeedAdBlockV2"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 347
    :cond_3
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public static resetAdsSettings(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "settings"

    .line 465
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "stories_interval"

    const/4 v1, 0x0

    .line 466
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "authors_interval"

    .line 467
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "time_interval"

    .line 468
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "stories_init"

    .line 469
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "authors_init"

    .line 470
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "time_init"

    .line 471
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-void
.end method

.method public static setNewsfeedLists(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 107
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "news_feed_selected_items"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "news_feed_items_set"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 109
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 v1, 0x0

    .line 115
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 116
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "id"

    .line 122
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "title"

    .line 123
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 125
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v5}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->isExcluded(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 129
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 133
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Added list "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to feed"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "NewsfeedList"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "is_hidden"

    .line 135
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "is_unavailable"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_4
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object p0
.end method

.method public static sponsorFilters(Ljava/lang/String;)Z
    .locals 3

    .line 305
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 306
    sget-object v1, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->filters:Ljava/util/Set;

    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils$$ExternalSyntheticLambda11;-><init>()V

    .line 307
    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils$$ExternalSyntheticLambda12;

    invoke-direct {v2, v0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    .line 309
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 315
    invoke-interface {p0}, Lj$/util/stream/Stream;->findAny()Lj$/util/Optional;

    move-result-object p0

    .line 316
    invoke-virtual {p0}, Lj$/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method public static sponsorFiltersBanWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 320
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 321
    sget-object v0, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->filters:Ljava/util/Set;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils$$ExternalSyntheticLambda11;-><init>()V

    .line 322
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    .line 324
    invoke-interface {p0}, Lj$/util/stream/Stream;->findAny()Lj$/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    .line 325
    invoke-virtual {p0, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static storiesAds(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 2

    .line 431
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->adsstories()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "ads"

    .line 435
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "NewsfeedAdBlockV2"

    if-eqz p1, :cond_1

    .line 438
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->resetAdsSettings(Lorg/json/JSONObject;)V

    const-string p1, "Set stories ads settings at zero values"

    .line 439
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 441
    invoke-virtual {p1}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0

    .line 444
    :cond_1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "Removed stories ads block"

    .line 445
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    :try_start_1
    const-string p1, "items"

    .line 450
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->parseItemsStories(Lorg/json/JSONArray;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 452
    invoke-virtual {p1}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    :goto_1
    return-object p0
.end method

.method public static updateFilters()V
    .locals 5

    .line 31
    sget-object v0, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->filters:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 33
    invoke-static {}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->getFiltersLists()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 35
    sget-object v0, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->CUSTOM_FILTERS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 36
    invoke-static {v3}, Lru/vtosters/hooks/other/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\s*,\\s*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lru/vtosters/hooks/NewsfeedHook$$ExternalSyntheticBackport0;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 37
    sget-object v4, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->filters:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
