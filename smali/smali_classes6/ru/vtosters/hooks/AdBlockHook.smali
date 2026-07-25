.class public Lru/vtosters/hooks/AdBlockHook;
.super Ljava/lang/Object;
.source "AdBlockHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static discoverInject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 10
    invoke-static {p0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->discoverInject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static feedInject(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-static {p0, v0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->feedInject(Lorg/json/JSONArray;Z)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public static storiesads(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 0

    .line 23
    invoke-static {p0, p1}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->storiesAds(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static wallGetById(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 1

    const/4 v0, 0x1

    .line 19
    invoke-static {p0, v0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->feedInject(Lorg/json/JSONArray;Z)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method
