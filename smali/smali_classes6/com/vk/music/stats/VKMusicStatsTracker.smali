.class public final Lcom/vk/music/stats/VKMusicStatsTracker;
.super Ljava/lang/Object;
.source "VKMusicStatsTracker.java"

# interfaces
.implements Lcom/vk/music/stats/MusicStatsTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/music/stats/VKMusicStatsTracker$a;
    }
.end annotation


# static fields
.field private static final c:Lcom/vk/music/stats/VKMusicStatsTracker$a;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Lkotlin/jvm/b/Functions2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/Functions2<",
            "Ljava/lang/String;",
            "Lcom/vtosters/lite/data/Analytics$l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/vk/music/stats/VKMusicStatsTracker$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/music/stats/VKMusicStatsTracker$a;-><init>(Lcom/vk/music/stats/VKMusicStatsTracker$a-IA;)V

    sput-object v0, Lcom/vk/music/stats/VKMusicStatsTracker;->c:Lcom/vk/music/stats/VKMusicStatsTracker$a;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/b/Functions2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/Functions2<",
            "Ljava/lang/String;",
            "Lcom/vtosters/lite/data/Analytics$l;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/vk/music/stats/VKMusicStatsTracker;->b:Lkotlin/jvm/b/Functions2;

    return-void
.end method

.method private a(Lcom/vk/music/stats/i/MusicPlaybackParams;Ljava/lang/String;)Lcom/vtosters/lite/data/Analytics$l;
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/vk/music/stats/VKMusicStatsTracker;->b:Lkotlin/jvm/b/Functions2;

    invoke-interface {v0, p2}, Lkotlin/jvm/b/Functions2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vtosters/lite/data/Analytics$l;

    const-string v1, "audio_id"

    .line 192
    invoke-virtual {p1}, Lcom/vk/music/stats/i/MusicPlaybackParams;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vtosters/lite/data/Analytics$l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vtosters/lite/data/Analytics$l;

    .line 193
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "uuid"

    invoke-virtual {v0, v2, v1}, Lcom/vtosters/lite/data/Analytics$l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vtosters/lite/data/Analytics$l;

    .line 194
    invoke-virtual {p1}, Lcom/vk/music/stats/i/MusicPlaybackParams;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "shuffle"

    invoke-virtual {v0, v2, v1}, Lcom/vtosters/lite/data/Analytics$l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vtosters/lite/data/Analytics$l;

    const-string v1, "reason"

    .line 195
    invoke-direct {p0, p1}, Lcom/vk/music/stats/VKMusicStatsTracker;->e(Lcom/vk/music/stats/i/MusicPlaybackParams;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vtosters/lite/data/Analytics$l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vtosters/lite/data/Analytics$l;

    .line 196
    invoke-virtual {p1}, Lcom/vk/music/stats/i/MusicPlaybackParams;->i()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "start_time"

    invoke-virtual {v0, v2, v1}, Lcom/vtosters/lite/data/Analytics$l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vtosters/lite/data/Analytics$l;

    .line 197
    invoke-virtual {p1}, Lcom/vk/music/stats/i/MusicPlaybackParams;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "playback_started_at"

    invoke-virtual {v0, v2, v1}, Lcom/vtosters/lite/data/Analytics$l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vtosters/lite/data/Analytics$l;

    const-string v1, "track_code"

    .line 198
    invoke-virtual {p1}, Lcom/vk/music/stats/i/MusicPlaybackParams;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vtosters/lite/data/Analytics$l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vtosters/lite/data/Analytics$l;

    const-string v1, "music_start_playback"

    .line 199
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 200
    invoke-virtual {p1}, Lcom/vk/music/stats/i/MusicPlaybackParams;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "duration"

    invoke-virtual {v0, v1, p2}, Lcom/vtosters/lite/data/Analytics$l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vtosters/lite/data/Analytics$l;

    .line 202
    :cond_0
    sget-object p2, Lcom/vk/music/stats/h;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/vk/music/stats/i/MusicPlaybackParams;->b()Lcom/vk/music/player/LoopMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/music/player/LoopMode;->ordinal()I

    move-result v1

    aget p2, p2, v1

    const/4 v1, 0x1

    const-string v2, "repeat"

    if-ne p2, v1, :cond_1

    const-string p2, "one"

    .line 204
    invoke-virtual {v0, v2, p2}, Lcom/vtosters/lite/data/Analytics$l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vtosters/lite/data/Analytics$l;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    const-string p2, "all"

    .line 206
    invoke-virtual {v0, v2, p2}, Lcom/vtosters/lite/data/Analytics$l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vtosters/lite/data/Analytics$l;

    :cond_2
    :goto_0
    const-string p2, "state"

    .line 208
    invoke-virtual {p1}, Lcom/vk/music/stats/i/MusicPlaybackParams;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/vtosters/lite/data/Analytics$l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vtosters/lite/data/Analytics$l;

    .line 209
    invoke-virtual {p1}, Lcom/vk/music/stats/i/MusicPlaybackParams;->h()Lcom/vk/music/common/MusicPlaybackLaunchContext;

    move-result-object p2

    const-string v1, "source"

    .line 210
    invoke-virtual {p2}, Lcom/vk/music/common/MusicPlaybackLaunchContext;->v0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vtosters/lite/data/Analytics$l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vtosters/lite/data/Analytics$l;

    .line 211
    invoke-virtual {p2}, Lcom/vk/music/common/MusicPlaybackLaunchContext;->v1()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "playlist_id"

    .line 212
    invoke-virtual {p2}, Lcom/vk/music/common/MusicPlaybackLaunchContext;->u1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vtosters/lite/data/Analytics$l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vtosters/lite/data/Analytics$l;

    :cond_3
    const/4 v1, 0x4

    .line 214
    invoke-virtual {p2, v1}, Lcom/vk/music/common/MusicPlaybackLaunchContext;->i(I)Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Lcom/vk/music/common/MusicPlaybackLaunchContext;->i(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 215
    :cond_4
    invoke-virtual {p2, v1}, Lcom/vk/music/common/MusicPlaybackLaunchContext;->i(I)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "expanded"

    invoke-virtual {v0, v1, p2}, Lcom/vtosters/lite/data/Analytics$l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vtosters/lite/data/Analytics$l;

    .line 217
    :cond_5
    invoke-virtual {p1}, Lcom/vk/music/stats/i/MusicPlaybackParams;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/vk/core/extensions/StringExt;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "prev_audio_id"

    .line 218
    invoke-virtual {p1}, Lcom/vk/music/stats/i/MusicPlaybackParams;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/vtosters/lite/data/Analytics$l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vtosters/lite/data/Analytics$l;

    .line 220
    :cond_6
    invoke-virtual {p1}, Lcom/vk/music/stats/i/MusicPlaybackParams;->f()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/vk/core/extensions/StringExt;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "prev_playlist_id"

    .line 221
    invoke-virtual {p1}, Lcom/vk/music/stats/i/MusicPlaybackParams;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/vtosters/lite/data/Analytics$l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vtosters/lite/data/Analytics$l;

    :cond_7
    return-object v0
.end method

.method private e(Lcom/vk/music/stats/i/MusicPlaybackParams;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-virtual {p1}, Lcom/vk/music/stats/i/MusicPlaybackParams;->g()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 34
    iget-object p1, p0, Lcom/vk/music/stats/VKMusicStatsTracker;->a:Ljava/lang/String;

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "auto"

    .line 39
    :cond_1
    iput-object p1, p0, Lcom/vk/music/stats/VKMusicStatsTracker;->a:Ljava/lang/String;

    return-object p1
.end method

.method private makeMetricsRequest(Lcom/vk/music/stats/i/MusicPlaybackParams;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 163
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "music_stop_playback"

    .line 165
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "app"

    const-string v3, "state"

    const-string v4, "reason"

    const-string v5, "false"

    const-string v6, "shuffle"

    const-string v7, "start_time"

    const-string v8, "audio_id"

    const-string v9, "e"

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v0, v9, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    invoke-virtual {p1}, Lcom/vk/music/stats/i/MusicPlaybackParams;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v8, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    invoke-virtual {p1}, Lcom/vk/music/stats/i/MusicPlaybackParams;->a()J

    move-result-wide v8

    const-string p2, "duration"

    invoke-virtual {v0, p2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 169
    invoke-virtual {p1}, Lcom/vk/music/stats/i/MusicPlaybackParams;->i()J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 170
    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "new"

    .line 171
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    invoke-virtual {p1}, Lcom/vk/music/stats/i/MusicPlaybackParams;->a()J

    move-result-wide v1

    invoke-virtual {v0, p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {v0, v9, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    invoke-virtual {p1}, Lcom/vk/music/stats/i/MusicPlaybackParams;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v8, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    invoke-virtual {p1}, Lcom/vk/music/stats/i/MusicPlaybackParams;->i()J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 178
    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "auto"

    .line 179
    invoke-virtual {v0, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    invoke-virtual {p1}, Lcom/vk/music/stats/i/MusicPlaybackParams;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/vk/core/extensions/StringExt;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "prev_audio_id"

    .line 183
    invoke-virtual {p1}, Lcom/vk/music/stats/i/MusicPlaybackParams;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 187
    invoke-static {v0, p1}, Lru/vtosters/lite/utils/Metrics;->trackEvents(Lorg/json/JSONObject;Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/vk/music/stats/VKMusicStatsTracker;->b:Lkotlin/jvm/b/Functions2;

    const-string v1, "music_subscription"

    invoke-interface {v0, v1}, Lkotlin/jvm/b/Functions2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vtosters/lite/data/Analytics$l;

    const-string v1, "popup"

    const-string v2, "background_v2"

    .line 241
    invoke-virtual {v0, v1, v2}, Lcom/vtosters/lite/data/Analytics$l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vtosters/lite/data/Analytics$l;

    const-string v1, "action"

    const-string v2, "link"

    .line 242
    invoke-virtual {v0, v1, v2}, Lcom/vtosters/lite/data/Analytics$l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vtosters/lite/data/Analytics$l;

    .line 243
    sget-object v1, Lcom/vk/music/stats/VKMusicStatsTracker;->c:Lcom/vk/music/stats/VKMusicStatsTracker$a;

    invoke-virtual {v1, v0}, Lcom/vk/music/stats/VKMusicStatsTracker$a;->a(Lcom/vtosters/lite/data/Analytics$l;)V

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 102
    invoke-static {p0, p1, p2}, Lcom/vk/music/stats/MusicStatsTracker$a;->a(Lcom/vk/music/stats/MusicStatsTracker;J)V

    return-void
.end method

.method public a(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-static {p0, p1, p2}, Lcom/vk/music/stats/MusicStatsTracker$a;->a(Lcom/vk/music/stats/MusicStatsTracker;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/vk/music/stats/PlayerStateChangedParams;)V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/vk/music/stats/VKMusicStatsTracker;->b:Lkotlin/jvm/b/Functions2;

    const-string v1, "audio_player"

    invoke-interface {v0, v1}, Lkotlin/jvm/b/Functions2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vtosters/lite/data/Analytics$l;

    const-string v1, "state"

    .line 142
    invoke-virtual {p1}, Lcom/vk/music/stats/PlayerStateChangedParams;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vtosters/lite/data/Analytics$l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vtosters/lite/data/Analytics$l;

    const-string v1, "prev_state"

    .line 143
    invoke-virtual {p1}, Lcom/vk/music/stats/PlayerStateChangedParams;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vtosters/lite/data/Analytics$l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vtosters/lite/data/Analytics$l;

    .line 144
    invoke-virtual {p1}, Lcom/vk/music/stats/PlayerStateChangedParams;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "duration"

    invoke-virtual {v0, v1, p1}, Lcom/vtosters/lite/data/Analytics$l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vtosters/lite/data/Analytics$l;

    .line 145
    sget-object p1, Lcom/vk/music/stats/VKMusicStatsTracker;->c:Lcom/vk/music/stats/VKMusicStatsTracker$a;

    invoke-virtual {p1, v0}, Lcom/vk/music/stats/VKMusicStatsTracker$a;->a(Lcom/vtosters/lite/data/Analytics$l;)V

    return-void
.end method

.method public a(Lcom/vk/music/stats/i/MusicPlaybackParams;)V
    .locals 3

    .line 128
    sget-object v0, Lcom/vk/music/stats/VKMusicStatsTracker;->c:Lcom/vk/music/stats/VKMusicStatsTracker$a;

    const-string v1, "music_stop_playback"

    invoke-direct {p0, p1, v1}, Lcom/vk/music/stats/VKMusicStatsTracker;->a(Lcom/vk/music/stats/i/MusicPlaybackParams;Ljava/lang/String;)Lcom/vtosters/lite/data/Analytics$l;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vk/music/stats/VKMusicStatsTracker$a;->a(Lcom/vtosters/lite/data/Analytics$l;)V

    .line 130
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->sendMusicMetrics()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/vk/music/stats/VKMusicStatsTracker;->makeMetricsRequest(Lcom/vk/music/stats/i/MusicPlaybackParams;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 134
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/vk/music/stats/VKMusicStatsTracker;->b:Lkotlin/jvm/b/Functions2;

    const-string v1, "playlist_start"

    invoke-interface {v0, v1}, Lkotlin/jvm/b/Functions2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vtosters/lite/data/Analytics$l;

    const-string v1, "type"

    .line 158
    invoke-virtual {v0, v1, p1}, Lcom/vtosters/lite/data/Analytics$l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vtosters/lite/data/Analytics$l;

    .line 159
    sget-object p1, Lcom/vk/music/stats/VKMusicStatsTracker;->c:Lcom/vk/music/stats/VKMusicStatsTracker$a;

    invoke-virtual {p1, v0}, Lcom/vk/music/stats/VKMusicStatsTracker$a;->a(Lcom/vtosters/lite/data/Analytics$l;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/vk/music/stats/MusicStatsRefer;)V
    .locals 1

    .line 114
    iget-object p2, p0, Lcom/vk/music/stats/VKMusicStatsTracker;->b:Lkotlin/jvm/b/Functions2;

    const-string v0, "music_subscription_show"

    invoke-interface {p2, v0}, Lkotlin/jvm/b/Functions2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vtosters/lite/data/Analytics$l;

    const-string v0, "popup"

    .line 115
    invoke-virtual {p2, v0, p1}, Lcom/vtosters/lite/data/Analytics$l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vtosters/lite/data/Analytics$l;

    .line 116
    sget-object p1, Lcom/vk/music/stats/VKMusicStatsTracker;->c:Lcom/vk/music/stats/VKMusicStatsTracker$a;

    invoke-virtual {p1, p2}, Lcom/vk/music/stats/VKMusicStatsTracker$a;->a(Lcom/vtosters/lite/data/Analytics$l;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "success"

    .line 228
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 229
    iget-object v2, p0, Lcom/vk/music/stats/VKMusicStatsTracker;->b:Lkotlin/jvm/b/Functions2;

    const-string v3, "music_subscription_purchase_result"

    invoke-interface {v2, v3}, Lkotlin/jvm/b/Functions2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vtosters/lite/data/Analytics$l;

    const-string v3, "popup"

    .line 230
    invoke-virtual {v2, v3, p1}, Lcom/vtosters/lite/data/Analytics$l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vtosters/lite/data/Analytics$l;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "fail"

    :goto_0
    const-string p1, "status"

    .line 231
    invoke-virtual {v2, p1, v0}, Lcom/vtosters/lite/data/Analytics$l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vtosters/lite/data/Analytics$l;

    if-nez v1, :cond_1

    const-string p1, "reason"

    .line 233
    invoke-virtual {v2, p1, p2}, Lcom/vtosters/lite/data/Analytics$l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vtosters/lite/data/Analytics$l;

    .line 235
    :cond_1
    sget-object p1, Lcom/vk/music/stats/VKMusicStatsTracker;->c:Lcom/vk/music/stats/VKMusicStatsTracker$a;

    invoke-virtual {p1, v2}, Lcom/vk/music/stats/VKMusicStatsTracker$a;->a(Lcom/vtosters/lite/data/Analytics$l;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 45
    invoke-static {p0, p1}, Lcom/vk/music/stats/MusicStatsTracker$a;->a(Lcom/vk/music/stats/MusicStatsTracker;Z)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/vk/music/stats/VKMusicStatsTracker;->b:Lkotlin/jvm/b/Functions2;

    const-string v1, "music_subscription_push"

    invoke-interface {v0, v1}, Lkotlin/jvm/b/Functions2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vtosters/lite/data/Analytics$l;

    const-string v1, "action"

    const-string v2, "send"

    .line 122
    invoke-virtual {v0, v1, v2}, Lcom/vtosters/lite/data/Analytics$l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vtosters/lite/data/Analytics$l;

    .line 123
    sget-object v1, Lcom/vk/music/stats/VKMusicStatsTracker;->c:Lcom/vk/music/stats/VKMusicStatsTracker$a;

    invoke-virtual {v1, v0}, Lcom/vk/music/stats/VKMusicStatsTracker$a;->a(Lcom/vtosters/lite/data/Analytics$l;)V

    return-void
.end method

.method public b(Lcom/vk/music/stats/i/MusicPlaybackParams;)V
    .locals 3

    .line 50
    sget-object v0, Lcom/vk/music/stats/VKMusicStatsTracker;->c:Lcom/vk/music/stats/VKMusicStatsTracker$a;

    const-string v1, "music_start_playback"

    invoke-direct {p0, p1, v1}, Lcom/vk/music/stats/VKMusicStatsTracker;->a(Lcom/vk/music/stats/i/MusicPlaybackParams;Ljava/lang/String;)Lcom/vtosters/lite/data/Analytics$l;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vk/music/stats/VKMusicStatsTracker$a;->a(Lcom/vtosters/lite/data/Analytics$l;)V

    .line 52
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->sendMusicMetrics()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/vk/music/stats/VKMusicStatsTracker;->makeMetricsRequest(Lcom/vk/music/stats/i/MusicPlaybackParams;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/vk/music/stats/VKMusicStatsTracker;->b:Lkotlin/jvm/b/Functions2;

    const-string v1, "music_subscription_free_displayed"

    invoke-interface {v0, v1}, Lkotlin/jvm/b/Functions2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vtosters/lite/data/Analytics$l;

    const-string v1, "popup"

    .line 151
    invoke-virtual {v0, v1, p1}, Lcom/vtosters/lite/data/Analytics$l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vtosters/lite/data/Analytics$l;

    .line 152
    sget-object p1, Lcom/vk/music/stats/VKMusicStatsTracker;->c:Lcom/vk/music/stats/VKMusicStatsTracker$a;

    invoke-virtual {p1, v0}, Lcom/vk/music/stats/VKMusicStatsTracker$a;->a(Lcom/vtosters/lite/data/Analytics$l;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/vk/music/stats/VKMusicStatsTracker;->b:Lkotlin/jvm/b/Functions2;

    const-string v1, "music_subscription_action"

    invoke-interface {v0, v1}, Lkotlin/jvm/b/Functions2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vtosters/lite/data/Analytics$l;

    const-string v1, "popup"

    .line 83
    invoke-virtual {v0, v1, p1}, Lcom/vtosters/lite/data/Analytics$l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vtosters/lite/data/Analytics$l;

    const-string p1, "action"

    .line 84
    invoke-virtual {v0, p1, p2}, Lcom/vtosters/lite/data/Analytics$l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vtosters/lite/data/Analytics$l;

    .line 85
    sget-object p1, Lcom/vk/music/stats/VKMusicStatsTracker;->c:Lcom/vk/music/stats/VKMusicStatsTracker$a;

    invoke-virtual {p1, v0}, Lcom/vk/music/stats/VKMusicStatsTracker$a;->a(Lcom/vtosters/lite/data/Analytics$l;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/vk/music/stats/VKMusicStatsTracker;->b:Lkotlin/jvm/b/Functions2;

    const-string v1, "music_subscription_push"

    invoke-interface {v0, v1}, Lkotlin/jvm/b/Functions2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vtosters/lite/data/Analytics$l;

    const-string v1, "action"

    const-string v2, "open"

    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/vtosters/lite/data/Analytics$l;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vtosters/lite/data/Analytics$l;

    .line 109
    sget-object v1, Lcom/vk/music/stats/VKMusicStatsTracker;->c:Lcom/vk/music/stats/VKMusicStatsTracker$a;

    invoke-virtual {v1, v0}, Lcom/vk/music/stats/VKMusicStatsTracker$a;->a(Lcom/vtosters/lite/data/Analytics$l;)V

    return-void
.end method

.method public c(Lcom/vk/music/stats/i/MusicPlaybackParams;)V
    .locals 0

    .line 67
    invoke-static {p0, p1}, Lcom/vk/music/stats/MusicStatsTracker$a;->b(Lcom/vk/music/stats/MusicStatsTracker;Lcom/vk/music/stats/i/MusicPlaybackParams;)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 90
    invoke-static {p0, p1}, Lcom/vk/music/stats/MusicStatsTracker$a;->b(Lcom/vk/music/stats/MusicStatsTracker;Z)V

    return-void
.end method

.method public d()V
    .locals 0

    .line 72
    invoke-static {p0}, Lcom/vk/music/stats/MusicStatsTracker$a;->a(Lcom/vk/music/stats/MusicStatsTracker;)V

    return-void
.end method

.method public d(Lcom/vk/music/stats/i/MusicPlaybackParams;)V
    .locals 2

    const-string v0, "pause"

    .line 95
    iget-object v1, p0, Lcom/vk/music/stats/VKMusicStatsTracker;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0, p1}, Lcom/vk/music/stats/VKMusicStatsTracker;->a(Lcom/vk/music/stats/i/MusicPlaybackParams;)V

    :cond_0
    return-void
.end method
