.class public final Lcom/vk/music/stats/VKMusicStatsTracker$a;
.super Ljava/lang/Object;
.source "VKMusicStatsTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/music/stats/VKMusicStatsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vk/music/stats/VKMusicStatsTracker$a-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/music/stats/VKMusicStatsTracker$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/vtosters/lite/data/Analytics$l;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "[VK_TRACKER]"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string v1, "MusicStats"

    .line 252
    invoke-static {v1, v0}, Lcom/vk/music/logger/MusicLogger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    invoke-virtual {p1}, Lcom/vtosters/lite/data/Analytics$l;->b()Lcom/vtosters/lite/data/Analytics$l;

    return-void
.end method
