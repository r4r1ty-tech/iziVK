.class public Lru/vtosters/hooks/PostsMenuHook;
.super Ljava/lang/Object;
.source "PostsMenuHook.java"


# static fields
.field private static final id:I = 0xc8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static injectButtons(ILcom/vk/dto/newsfeed/entries/NewsEntry;Landroid/content/Context;)V
    .locals 1

    .line 28
    instance-of p0, p1, Lcom/vk/dto/newsfeed/entries/Post;

    if-eqz p0, :cond_0

    .line 29
    check-cast p1, Lcom/vk/dto/newsfeed/entries/Post;

    .line 30
    invoke-virtual {p1}, Lcom/vk/dto/newsfeed/entries/Post;->b()I

    move-result p0

    .line 31
    invoke-virtual {p1}, Lcom/vk/dto/newsfeed/entries/Post;->P1()I

    move-result v0

    .line 32
    invoke-virtual {p1}, Lcom/vk/dto/newsfeed/entries/Post;->K()I

    move-result p1

    .line 34
    invoke-static {p0, v0, p1, p2}, Lcom/vk/newsfeed/holders/AdMarkHolder;->voteDialog(IIILandroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string p0, "PostsMenuHook"

    const-string p1, "unsupported instance"

    .line 36
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static injectList(Lcom/vk/newsfeed/NewsEntryActionsAdapter;Lcom/vk/dto/newsfeed/entries/NewsEntry;)V
    .locals 1

    .line 18
    instance-of v0, p1, Lcom/vk/dto/newsfeed/entries/Post;

    if-eqz v0, :cond_0

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->isValidSignature()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lru/vtosters/sponsorpost/internal/Native;->canVote()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    check-cast p1, Lcom/vk/dto/newsfeed/entries/Post;

    invoke-virtual {p1}, Lcom/vk/dto/newsfeed/entries/Post;->b()I

    move-result p1

    .line 21
    invoke-static {}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserId()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-static {}, Lru/vtosters/sponsorpost/utils/PostsPreferences;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xc8

    const-string v0, "SponsorPost"

    .line 22
    invoke-virtual {p0, p1, v0}, Lcom/vk/newsfeed/NewsEntryActionsAdapter;->a(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static isCustomButton(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
