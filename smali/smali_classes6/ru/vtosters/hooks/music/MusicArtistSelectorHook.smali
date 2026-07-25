.class public Lru/vtosters/hooks/music/MusicArtistSelectorHook;
.super Ljava/lang/Object;
.source "MusicArtistSelectorHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static navigateToSearch(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 8
    new-instance v0, Lcom/vk/music/fragment/MusicFragment$f;

    invoke-direct {v0}, Lcom/vk/music/fragment/MusicFragment$f;-><init>()V

    .line 9
    invoke-virtual {v0, p1}, Lcom/vk/music/fragment/MusicFragment$f;->a(Ljava/lang/String;)Lcom/vk/music/fragment/MusicFragment$f;

    .line 12
    invoke-virtual {v0, p0}, Lcom/vk/music/fragment/MusicFragment$f;->a(Landroid/content/Context;)V

    return-void
.end method
