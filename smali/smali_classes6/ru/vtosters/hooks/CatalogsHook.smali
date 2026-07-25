.class public Lru/vtosters/hooks/CatalogsHook;
.super Ljava/lang/Object;
.source "CatalogsHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static injectCatalogGetAudio(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 10
    :try_start_0
    invoke-static {p0}, Lru/vtosters/hooks/music/injectors/CatalogJsonInjector;->music(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public static injectCatalogGetAudioArtist(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 18
    :try_start_0
    invoke-static {p0}, Lru/vtosters/hooks/music/injectors/CatalogJsonInjector;->fixArtists(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public static injectCatalogGetSection(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 25
    invoke-static {p0}, Lru/vtosters/hooks/music/injectors/CatalogJsonInjector;->injectIntoCatalogs(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
