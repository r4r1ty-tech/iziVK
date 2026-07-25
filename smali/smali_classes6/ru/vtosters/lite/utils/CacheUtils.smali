.class public Lru/vtosters/lite/utils/CacheUtils;
.super Ljava/lang/Object;
.source "CacheUtils.java"


# static fields
.field private static sInstance:Lru/vtosters/lite/utils/CacheUtils;


# instance fields
.field public size:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lru/vtosters/lite/utils/CacheUtils;

    invoke-direct {v0}, Lru/vtosters/lite/utils/CacheUtils;-><init>()V

    sput-object v0, Lru/vtosters/lite/utils/CacheUtils;->sInstance:Lru/vtosters/lite/utils/CacheUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 23
    iput-wide v0, p0, Lru/vtosters/lite/utils/CacheUtils;->size:J

    return-void
.end method

.method public static getInstance()Lru/vtosters/lite/utils/CacheUtils;
    .locals 1

    .line 26
    sget-object v0, Lru/vtosters/lite/utils/CacheUtils;->sInstance:Lru/vtosters/lite/utils/CacheUtils;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lru/vtosters/lite/utils/CacheUtils;

    invoke-direct {v0}, Lru/vtosters/lite/utils/CacheUtils;-><init>()V

    sput-object v0, Lru/vtosters/lite/utils/CacheUtils;->sInstance:Lru/vtosters/lite/utils/CacheUtils;

    .line 28
    :cond_0
    sget-object v0, Lru/vtosters/lite/utils/CacheUtils;->sInstance:Lru/vtosters/lite/utils/CacheUtils;

    return-object v0
.end method

.method public static humanReadableByteCountBin(J)Ljava/lang/String;
    .locals 9

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x400

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " B"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 38
    :cond_1
    new-instance v2, Ljava/text/StringCharacterIterator;

    const-string v3, "KMGTPE"

    invoke-direct {v2, v3}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x28

    move-wide v4, v0

    :goto_1
    if-ltz v3, :cond_2

    const-wide v6, 0xfffccccccccccccL

    shr-long/2addr v6, v3

    cmp-long v8, v0, v6

    if-lez v8, :cond_2

    const/16 v6, 0xa

    shr-long/2addr v4, v6

    .line 41
    invoke-interface {v2}, Ljava/text/CharacterIterator;->next()C

    add-int/lit8 v3, v3, -0xa

    goto :goto_1

    .line 43
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Long;->signum(J)I

    move-result p0

    int-to-long p0, p0

    mul-long v4, v4, p0

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    long-to-double v0, v4

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v3

    .line 44
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    invoke-interface {v2}, Ljava/text/CharacterIterator;->current()C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, p0, v0

    const-string p1, "%.1f %cB"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public autoCleaningCache()V
    .locals 5

    .line 48
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/lite/utils/IOUtils;->getDirSize(Ljava/io/File;)J

    move-result-wide v0

    iput-wide v0, p0, Lru/vtosters/lite/utils/CacheUtils;->size:J

    .line 50
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getSizeForDelete()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 51
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->dev()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f121549

    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    .line 52
    :cond_0
    invoke-static {}, Lcom/vk/imageloader/VKImageLoader;->e()V

    .line 53
    invoke-static {}, Lcom/vk/im/ui/providers/audiomsg/ImAudioMsgPlayerProvider;->b()Lcom/vk/audiomsg/player/AudioMsgPlayer;

    move-result-object v0

    sget-object v1, Lcom/vk/im/ui/providers/audiomsg/PlayerActionSources;->a:Lcom/vk/im/ui/providers/audiomsg/PlayerActionSource;

    invoke-interface {v0, v1}, Lcom/vk/audiomsg/player/AudioMsgPlayer;->e(Lcom/vk/audiomsg/player/Source;)V

    .line 54
    invoke-static {}, Lcom/vk/im/ui/providers/audiomsg/ImAudioMsgPlayerProvider;->b()Lcom/vk/audiomsg/player/AudioMsgPlayer;

    move-result-object v0

    sget-object v1, Lcom/vk/im/ui/providers/audiomsg/PlayerActionSources;->a:Lcom/vk/im/ui/providers/audiomsg/PlayerActionSource;

    invoke-interface {v0, v1}, Lcom/vk/audiomsg/player/AudioMsgPlayer;->d(Lcom/vk/audiomsg/player/Source;)V

    .line 55
    sget-object v0, Lcom/vk/stickers/Stickers;->l:Lcom/vk/stickers/Stickers;

    invoke-virtual {v0}, Lcom/vk/stickers/Stickers;->c()V

    .line 56
    invoke-static {}, Lcom/vk/im/engine/ImEngine1;->a()Lcom/vk/im/engine/ImEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/vk/im/engine/ImEngineExt;->a(Lcom/vk/im/engine/ImEngine;)V

    .line 57
    sget-object v0, Lcom/vk/media/player/cache/AutoPlayCacheHolder;->d:Lcom/vk/media/player/cache/AutoPlayCacheHolder;

    invoke-virtual {v0}, Lcom/vk/media/player/cache/AutoPlayCacheHolder;->a()V

    const-wide/16 v0, 0x0

    .line 58
    iput-wide v0, p0, Lru/vtosters/lite/utils/CacheUtils;->size:J

    :cond_1
    return-void
.end method
