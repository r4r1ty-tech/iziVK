.class public Lcom/vk/libvideo/VideoTracker;
.super Ljava/lang/Object;
.source "VideoTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/libvideo/VideoTracker$PlayerType;,
        Lcom/vk/libvideo/VideoTracker$Screen;,
        Lcom/vk/libvideo/VideoTracker$FullscreenTransition;,
        Lcom/vk/libvideo/VideoTracker$RewindType;,
        Lcom/vk/libvideo/VideoTracker$ResizeAction;
    }
.end annotation


# instance fields
.field private final a:Lcom/vk/dto/common/VideoFile;

.field private f15638b:Lcom/vk/statistic/Statistic;

.field private f15639c:Ljava/lang/String;

.field private f15640d:Ljava/lang/String;

.field private final f15641e:Z

.field private f15642f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private l:I

.field private m:Lcom/vk/libvideo/VideoTracker$PlayerType;

.field private n:Lcom/vk/libvideo/VideoTracker$Screen;


# direct methods
.method public constructor <init>(Lcom/vk/dto/common/VideoFile;Lcom/vk/statistic/Statistic;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/vk/libvideo/VideoTracker;->f15642f:I

    .line 82
    iput-object p1, p0, Lcom/vk/libvideo/VideoTracker;->a:Lcom/vk/dto/common/VideoFile;

    .line 83
    iput-object p2, p0, Lcom/vk/libvideo/VideoTracker;->f15638b:Lcom/vk/statistic/Statistic;

    .line 84
    iget p1, p1, Lcom/vk/dto/common/VideoFile;->d:I

    int-to-float p2, p1

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float v0, v0, p2

    float-to-int v0, v0

    .line 85
    iput v0, p0, Lcom/vk/libvideo/VideoTracker;->g:I

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v0, v0, p2

    float-to-int v0, v0

    .line 86
    iput v0, p0, Lcom/vk/libvideo/VideoTracker;->h:I

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float v0, v0, p2

    float-to-int v0, v0

    .line 87
    iput v0, p0, Lcom/vk/libvideo/VideoTracker;->i:I

    const v0, 0x3f733333    # 0.95f

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 88
    iput p2, p0, Lcom/vk/libvideo/VideoTracker;->j:I

    add-int/lit8 p1, p1, -0x1

    .line 89
    iput p1, p0, Lcom/vk/libvideo/VideoTracker;->k:I

    .line 90
    iput-object p3, p0, Lcom/vk/libvideo/VideoTracker;->f15639c:Ljava/lang/String;

    .line 91
    iput-boolean p4, p0, Lcom/vk/libvideo/VideoTracker;->f15641e:Z

    .line 92
    iput-object p5, p0, Lcom/vk/libvideo/VideoTracker;->f15640d:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "video_event"

    .line 299
    invoke-direct {p0, v0, p1}, Lcom/vk/libvideo/VideoTracker;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    .line 285
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 286
    iget-boolean v1, p0, Lcom/vk/libvideo/VideoTracker;->f15641e:Z

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    const-string v2, "autoplay"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "position"

    .line 287
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p2, :cond_1

    add-int/lit8 p2, p2, -0x2

    const-string p1, "quality"

    .line 289
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 291
    :cond_1
    iget-object p1, p0, Lcom/vk/libvideo/VideoTracker;->m:Lcom/vk/libvideo/VideoTracker$PlayerType;

    if-eqz p1, :cond_2

    .line 293
    invoke-virtual {p1}, Lcom/vk/libvideo/VideoTracker$PlayerType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p2, "player_type"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p1, "video_play"

    .line 295
    invoke-direct {p0, p1, v0}, Lcom/vk/libvideo/VideoTracker;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vk/libvideo/VideoTracker;->a:Lcom/vk/dto/common/VideoFile;

    iget v1, v1, Lcom/vk/dto/common/VideoFile;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/libvideo/VideoTracker;->a:Lcom/vk/dto/common/VideoFile;

    iget v1, v1, Lcom/vk/dto/common/VideoFile;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video_id"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "source"

    .line 304
    iget-object v1, p0, Lcom/vk/libvideo/VideoTracker;->f15639c:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ref"

    .line 305
    iget-object v1, p0, Lcom/vk/libvideo/VideoTracker;->f15639c:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/vk/libvideo/VideoTracker;->f15640d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "context"

    .line 307
    iget-object v1, p0, Lcom/vk/libvideo/VideoTracker;->f15640d:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/vk/libvideo/VideoTracker;->a:Lcom/vk/dto/common/VideoFile;

    iget-object v0, v0, Lcom/vk/dto/common/VideoFile;->l0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/vk/libvideo/VideoTracker;->a:Lcom/vk/dto/common/VideoFile;

    iget-object v0, v0, Lcom/vk/dto/common/VideoFile;->l0:Ljava/lang/String;

    const-string v1, "track_code"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "ts"

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 313
    invoke-static {}, Lcom/vk/bridges/StatisticsBridge1;->a()Lcom/vk/bridges/StatisticsBridge;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/vk/bridges/StatisticsBridge;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p2, 0x1

    .line 315
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "sendVideoMetrics"

    invoke-static {v0, p2}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "video_play"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 317
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/vk/libvideo/VideoTracker;->sendMetrics(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 319
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    :goto_0
    return-void
.end method

.method private static a(III)Z
    .locals 0

    if-le p2, p0, :cond_0

    if-gt p2, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 165
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "event"

    .line 166
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "value"

    .line 167
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "position"

    .line 168
    iget p2, p0, Lcom/vk/libvideo/VideoTracker;->f15642f:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/vk/libvideo/VideoTracker;->f15638b:Lcom/vk/statistic/Statistic;

    if-eqz v0, :cond_0

    .line 156
    invoke-static {}, Lcom/vk/bridges/StatisticsBridge1;->a()Lcom/vk/bridges/StatisticsBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/libvideo/VideoTracker;->f15638b:Lcom/vk/statistic/Statistic;

    invoke-interface {v0, v1, p1}, Lcom/vk/bridges/StatisticsBridge;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 140
    invoke-direct {p0, p1, p2}, Lcom/vk/libvideo/VideoTracker;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/vk/libvideo/VideoTracker;->a(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/vk/libvideo/VideoTracker;->f15640d:Ljava/lang/String;

    return-object v0
.end method

.method public a(F)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const-string p1, "normal"

    goto :goto_0

    :cond_0
    float-to-int v0, p1

    int-to-float v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    .line 265
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "%s"

    invoke-static {p1, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%.2f"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "speed"

    .line 267
    invoke-direct {p0, v0, p1}, Lcom/vk/libvideo/VideoTracker;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(I)V
    .locals 1

    const-string v0, "continue"

    .line 221
    invoke-direct {p0, v0, p1}, Lcom/vk/libvideo/VideoTracker;->a(Ljava/lang/String;I)V

    const-string p1, "video_start"

    .line 222
    invoke-direct {p0, p1}, Lcom/vk/libvideo/VideoTracker;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 179
    iget v0, p0, Lcom/vk/libvideo/VideoTracker;->f15642f:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 183
    invoke-static {v0, p1, v1}, Lcom/vk/libvideo/VideoTracker;->a(III)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "start"

    .line 184
    invoke-direct {p0, v0, p2}, Lcom/vk/libvideo/VideoTracker;->a(Ljava/lang/String;I)V

    const-string p2, "video_start"

    .line 185
    invoke-direct {p0, p2}, Lcom/vk/libvideo/VideoTracker;->c(Ljava/lang/String;)V

    .line 217
    :cond_1
    iput p1, p0, Lcom/vk/libvideo/VideoTracker;->f15642f:I

    return-void
.end method

.method public a(IILcom/vk/libvideo/VideoTracker$RewindType;)V
    .locals 2

    if-gt p1, p2, :cond_0

    const-string v0, "forward"

    goto :goto_0

    :cond_0
    const-string v0, "backward"

    :goto_0
    const-string v1, "rewind"

    .line 252
    invoke-direct {p0, v1, v0}, Lcom/vk/libvideo/VideoTracker;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 253
    invoke-virtual {p3}, Lcom/vk/libvideo/VideoTracker$RewindType;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    const-string v1, "rewind_type"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "rewind_start"

    .line 254
    invoke-virtual {v0, p3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "rewind_end"

    .line 255
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    invoke-direct {p0, v0}, Lcom/vk/libvideo/VideoTracker;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 237
    iget v0, p0, Lcom/vk/libvideo/VideoTracker;->l:I

    if-eq v0, p1, :cond_1

    .line 238
    iput p1, p0, Lcom/vk/libvideo/VideoTracker;->l:I

    if-eqz p2, :cond_0

    const-string p2, "auto_quality"

    goto :goto_0

    :cond_0
    const-string p2, "quality"

    .line 239
    :goto_0
    invoke-static {p1}, Lcom/vk/media/player/PlayerTypes;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/vk/libvideo/VideoTracker;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/vk/libvideo/VideoTracker$FullscreenTransition;)V
    .locals 1

    .line 233
    invoke-virtual {p1}, Lcom/vk/libvideo/VideoTracker$FullscreenTransition;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "full_screen_transition"

    invoke-direct {p0, v0, p1}, Lcom/vk/libvideo/VideoTracker;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/vk/libvideo/VideoTracker$PlayerType;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/vk/libvideo/VideoTracker;->m:Lcom/vk/libvideo/VideoTracker$PlayerType;

    if-eq v0, p1, :cond_0

    .line 174
    iput-object p1, p0, Lcom/vk/libvideo/VideoTracker;->m:Lcom/vk/libvideo/VideoTracker$PlayerType;

    :cond_0
    return-void
.end method

.method public a(Lcom/vk/libvideo/VideoTracker$Screen;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/vk/libvideo/VideoTracker;->n:Lcom/vk/libvideo/VideoTracker$Screen;

    if-eq v0, p1, :cond_0

    .line 227
    iput-object p1, p0, Lcom/vk/libvideo/VideoTracker;->n:Lcom/vk/libvideo/VideoTracker$Screen;

    .line 228
    invoke-virtual {p1}, Lcom/vk/libvideo/VideoTracker$Screen;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "screen"

    invoke-direct {p0, v0, p1}, Lcom/vk/libvideo/VideoTracker;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/vk/statistic/Statistic;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/vk/libvideo/VideoTracker;->f15638b:Lcom/vk/statistic/Statistic;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/vk/libvideo/VideoTracker;->f15640d:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 277
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "link_type"

    .line 278
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "value"

    .line 279
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "event"

    const-string p2, "show_link"

    .line 280
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-direct {p0, v0}, Lcom/vk/libvideo/VideoTracker;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p2, "auto_subtitles"

    goto :goto_0

    :cond_0
    const-string p2, "subtitles"

    :goto_0
    if-nez p1, :cond_1

    const-string p1, "off"

    .line 248
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/vk/libvideo/VideoTracker;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(ZLcom/vk/libvideo/VideoTracker$ResizeAction;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "widen"

    goto :goto_0

    :cond_0
    const-string p1, "narrow"

    :goto_0
    const-string v0, "resize"

    .line 271
    invoke-direct {p0, v0, p1}, Lcom/vk/libvideo/VideoTracker;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 272
    invoke-virtual {p2}, Lcom/vk/libvideo/VideoTracker$ResizeAction;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "resize_action"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-direct {p0, p1}, Lcom/vk/libvideo/VideoTracker;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/vk/libvideo/VideoTracker;->f15639c:Ljava/lang/String;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 151
    :cond_0
    iput-object p1, p0, Lcom/vk/libvideo/VideoTracker;->f15639c:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/vk/libvideo/VideoTracker;->f15638b:Lcom/vk/statistic/Statistic;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()V
    .locals 1

    const/4 v0, -0x1

    .line 108
    iput v0, p0, Lcom/vk/libvideo/VideoTracker;->f15642f:I

    return-void
.end method

.method public d()V
    .locals 1

    const-string v0, "video_fullscreen_off"

    .line 112
    invoke-direct {p0, v0}, Lcom/vk/libvideo/VideoTracker;->c(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 1

    const-string v0, "video_fullscreen_on"

    .line 116
    invoke-direct {p0, v0}, Lcom/vk/libvideo/VideoTracker;->c(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 1

    const-string v0, "video_pause"

    .line 120
    invoke-direct {p0, v0}, Lcom/vk/libvideo/VideoTracker;->c(Ljava/lang/String;)V

    const-string v0, "pause"

    .line 121
    invoke-direct {p0, v0, v0}, Lcom/vk/libvideo/VideoTracker;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 2

    const-string v0, "video_resume"

    .line 125
    invoke-direct {p0, v0}, Lcom/vk/libvideo/VideoTracker;->c(Ljava/lang/String;)V

    const-string v0, "pause"

    const-string v1, "resume"

    .line 126
    invoke-direct {p0, v0, v1}, Lcom/vk/libvideo/VideoTracker;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public h()V
    .locals 2

    const-string v0, "video_volume_off"

    .line 130
    invoke-direct {p0, v0}, Lcom/vk/libvideo/VideoTracker;->c(Ljava/lang/String;)V

    const-string v0, "volume"

    const-string v1, "off"

    .line 131
    invoke-direct {p0, v0, v1}, Lcom/vk/libvideo/VideoTracker;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public i()V
    .locals 2

    const-string v0, "video_volume_on"

    .line 135
    invoke-direct {p0, v0}, Lcom/vk/libvideo/VideoTracker;->c(Ljava/lang/String;)V

    const-string v0, "volume"

    const-string v1, "on"

    .line 136
    invoke-direct {p0, v0, v1}, Lcom/vk/libvideo/VideoTracker;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendMetrics(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 325
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "e"

    .line 326
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "source"

    .line 327
    iget-object v1, p0, Lcom/vk/libvideo/VideoTracker;->f15639c:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ref"

    .line 328
    iget-object v1, p0, Lcom/vk/libvideo/VideoTracker;->f15639c:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vk/libvideo/VideoTracker;->a:Lcom/vk/dto/common/VideoFile;

    iget v1, v1, Lcom/vk/dto/common/VideoFile;->a:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/libvideo/VideoTracker;->a:Lcom/vk/dto/common/VideoFile;

    iget v1, v1, Lcom/vk/dto/common/VideoFile;->b:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "video_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "position"

    const-string v1, "start"

    .line 330
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "position_sec"

    const/4 v1, 0x0

    .line 331
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "cur_quality"

    const-string v2, "auto"

    .line 332
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    invoke-static {v0, v1}, Lru/vtosters/lite/utils/Metrics;->trackEvents(Lorg/json/JSONObject;Z)V

    return-void
.end method
