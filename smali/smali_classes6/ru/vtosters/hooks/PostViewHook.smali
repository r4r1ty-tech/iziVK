.class public Lru/vtosters/hooks/PostViewHook;
.super Ljava/lang/Object;
.source "PostViewHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static injectBaseFooterHolder(Lcom/vk/newsfeed/holders/BaseFooterHolder;)V
    .locals 1

    .line 32
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->isLikesOnRightEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    :try_start_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    .line 36
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0}, Lru/vtosters/hooks/PostViewHook;->saveChildDirectionForRlt(Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static injectPhotoViewer(Landroid/view/View;)V
    .locals 1

    .line 44
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->isLikesOnRightEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a099a

    .line 47
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 48
    invoke-static {p0}, Lru/vtosters/hooks/PostViewHook;->saveChildDirectionForRlt(Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static injectVideoView(Landroid/widget/RelativeLayout;)V
    .locals 1

    .line 56
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->isLikesOnRightEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a0193

    .line 59
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 60
    invoke-static {p0}, Lru/vtosters/hooks/PostViewHook;->saveChildDirectionForRlt(Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static saveChildDirectionForRlt(Landroid/view/ViewGroup;)V
    .locals 5

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 19
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 20
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 21
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    :goto_1
    if-ge v2, v0, :cond_1

    .line 24
    aget-object v3, v1, v2

    .line 25
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    return-void
.end method
