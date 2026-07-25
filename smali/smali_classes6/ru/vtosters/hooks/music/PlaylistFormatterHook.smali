.class public Lru/vtosters/hooks/music/PlaylistFormatterHook;
.super Ljava/lang/Object;
.source "PlaylistFormatterHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOwnerText(Landroid/content/Context;Lcom/vk/dto/music/Playlist;)Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p1, Lcom/vk/dto/music/Playlist;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/vk/dto/music/Playlist;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 16
    iget-object p0, p1, Lcom/vk/dto/music/Playlist;->h:Ljava/lang/String;

    return-object p0

    :cond_0
    const p1, 0x7f1207c9

    .line 18
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "context.getString(R.string.music_my_playlist)"

    .line 19
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static isMyPlaylist(Lcom/vk/dto/music/Playlist;)Z
    .locals 2

    .line 32
    invoke-static {}, Lcom/vk/bridges/AuthBridge;->a()Lcom/vk/bridges/AuthBridge3;

    move-result-object v0

    invoke-static {}, Lcom/vk/bridges/AuthBridge;->a()Lcom/vk/bridges/AuthBridge3;

    move-result-object v1

    invoke-interface {v1}, Lcom/vk/bridges/AuthBridge3;->b()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vk/dto/music/Playlist;->h(I)Lcom/vk/dto/music/Playlist;

    move-result-object p0

    iget p0, p0, Lcom/vk/dto/music/Playlist;->b:I

    invoke-interface {v0, p0}, Lcom/vk/bridges/AuthBridge3;->b(I)Z

    move-result p0

    return p0
.end method

.method public static titleAndSubtitleMergeFix(Landroid/content/Context;Lcom/vk/dto/music/Playlist;I)Ljava/lang/CharSequence;
    .locals 1

    .line 25
    invoke-static {p1}, Lru/vtosters/hooks/music/PlaylistFormatterHook;->isMyPlaylist(Lcom/vk/dto/music/Playlist;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object p0, p1, Lcom/vk/dto/music/Playlist;->g:Ljava/lang/String;

    return-object p0

    .line 28
    :cond_0
    iget-object v0, p1, Lcom/vk/dto/music/Playlist;->g:Ljava/lang/String;

    iget-object p1, p1, Lcom/vk/dto/music/Playlist;->h:Ljava/lang/String;

    invoke-static {p0, v0, p1, p2}, Lcom/vk/core/utils/MediaFormatter;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
