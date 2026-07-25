.class public Lru/vtosters/hooks/LastFMHook;
.super Ljava/lang/Object;
.source "LastFMHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static grabMusicTrack(Lcom/vk/dto/music/MusicTrack;)V
    .locals 0

    .line 8
    invoke-static {p0}, Lru/vtosters/lite/music/LastFMScrobbler;->grabMusicTrack(Lcom/vk/dto/music/MusicTrack;)V

    return-void
.end method
