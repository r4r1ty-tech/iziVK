.class public Lcom/vk/api/audio/AudioGetLyrics;
.super Lcom/vk/api/base/ApiRequest;
.source "AudioGetLyrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/api/audio/AudioGetLyrics$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vk/api/base/ApiRequest<",
        "Lcom/vk/api/audio/AudioGetLyrics$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final musicTrack:Lcom/vk/dto/music/MusicTrack;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/vk/dto/music/MusicTrack;)V
    .locals 0

    const-string p1, "audio.getLyrics"

    .line 19
    invoke-direct {p0, p1}, Lcom/vk/api/base/ApiRequest;-><init>(Ljava/lang/String;)V

    const-string p1, "audio_id"

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/vk/api/audio/AudioGetLyrics;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/base/ApiRequest;

    .line 21
    iput-object p3, p0, Lcom/vk/api/audio/AudioGetLyrics;->musicTrack:Lcom/vk/dto/music/MusicTrack;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/vk/api/audio/AudioGetLyrics$a;
    .locals 12

    const-string v0, "line"

    const-string v1, "No text found"

    const-string v2, "text"

    const-string v3, "timestamps"

    const-string v4, "vk"

    .line 26
    new-instance v5, Lcom/vk/api/audio/AudioGetLyrics$a;

    invoke-direct {v5}, Lcom/vk/api/audio/AudioGetLyrics$a;-><init>()V

    const/4 v6, 0x0

    .line 28
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "useGenius"

    invoke-static {v8, v7}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->serverFeaturesDisable()Z

    move-result v7

    if-nez v7, :cond_0

    .line 29
    iget-object p1, p0, Lcom/vk/api/audio/AudioGetLyrics;->musicTrack:Lcom/vk/dto/music/MusicTrack;

    invoke-static {p1}, Lru/vtosters/lite/music/Genius;->getTextMusic(Lcom/vk/dto/music/MusicTrack;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lcom/vk/api/audio/AudioGetLyrics$a;->a:Ljava/lang/String;

    return-object v5

    :cond_0
    const/4 v7, 0x2

    const/4 v8, 0x1

    .line 34
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string v10, "response"

    .line 35
    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v10, "lyrics"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 37
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, "\n"

    if-eqz v10, :cond_4

    .line 38
    :try_start_1
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 40
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 41
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 43
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 44
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v3, "interlude"

    .line 47
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "\u266a"

    .line 48
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_3
    invoke-static {v11, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lcom/vk/api/audio/AudioGetLyrics$a;->a:Ljava/lang/String;

    goto :goto_2

    .line 53
    :cond_4
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 54
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 56
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 57
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 60
    :cond_5
    invoke-static {v11, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lcom/vk/api/audio/AudioGetLyrics$a;->a:Ljava/lang/String;

    goto :goto_2

    :cond_6
    new-array p1, v7, [Ljava/lang/Object;

    aput-object v4, p1, v6

    aput-object v1, p1, v8

    .line 62
    invoke-static {p1}, Lcom/vk/log/L;->e([Ljava/lang/Object;)V

    .line 63
    iput-object v1, v5, Lcom/vk/api/audio/AudioGetLyrics$a;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    return-object v5

    :catch_0
    move-exception p1

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v4, v0, v6

    aput-object p1, v0, v8

    .line 68
    invoke-static {v0}, Lcom/vk/log/L;->e([Ljava/lang/Object;)V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed_to_get_text"

    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "error"

    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lcom/vk/api/audio/AudioGetLyrics$a;->a:Ljava/lang/String;

    return-object v5
.end method

.method public bridge synthetic a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1}, Lcom/vk/api/audio/AudioGetLyrics;->a(Lorg/json/JSONObject;)Lcom/vk/api/audio/AudioGetLyrics$a;

    move-result-object p1

    return-object p1
.end method
