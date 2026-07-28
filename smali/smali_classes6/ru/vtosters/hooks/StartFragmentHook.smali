.class public Lru/vtosters/hooks/StartFragmentHook;
.super Ljava/lang/Object;
.source "StartFragmentHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStartFragment()Ljava/lang/Class;
    .locals 4

    .line 31
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->vkme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const-class v0, Lcom/vtosters/lite/fragments/t2/c/DialogsFragment;

    return-object v0

    :cond_0
    const-string v0, "start_values"

    .line 34
    invoke-static {v0}, Lru/vtosters/hooks/other/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "newsfeed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "notifications"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "discover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "money"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "lives"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "liked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "games"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "docs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "brtd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_c
    const-string v1, "apps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_d
    const-string v1, "profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_e
    const-string v1, "friends"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_f
    const-string v1, "videos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_10
    const-string v1, "photos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_11
    const-string v1, "groups"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_12
    const-string v1, "messenger"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_0

    :cond_13
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 55
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v0

    if-eqz v0, :cond_18

    const-class v0, Lcom/vk/newsfeed/HomeFragment;

    goto/16 :goto_1

    :cond_18
    const-class v0, Lcom/vk/newsfeed/NewsfeedFragment;

    goto/16 :goto_1

    .line 42
    :pswitch_0
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->useNewSettings()Ljava/lang/Class;

    move-result-object v0

    goto/16 :goto_1

    .line 35
    :pswitch_1
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v0

    if-eqz v0, :cond_14

    const-class v0, Lcom/vk/newsfeed/HomeFragment;

    goto :goto_1

    :cond_14
    const-class v0, Lcom/vk/newsfeed/NewsfeedFragment;

    goto :goto_1

    .line 45
    :pswitch_2
    const-class v0, Lcom/vk/notifications/NotificationsContainerFragment;

    goto :goto_1

    .line 44
    :pswitch_3
    const-class v0, Lcom/vk/discover/DiscoverFragment;

    goto :goto_1

    .line 38
    :pswitch_4
    const-class v0, Lcom/vk/music/fragment/MusicCatalogFragment1;

    goto :goto_1

    .line 46
    :pswitch_5
    const-class v0, Lcom/vtosters/lite/fragments/money/MoneyTransfersFragment;

    goto :goto_1

    .line 52
    :pswitch_6
    const-class v0, Lcom/vtosters/lite/fragments/lives/LivesTabsFragment;

    goto :goto_1

    .line 48
    :pswitch_7
    const-class v0, Lcom/vk/fave/fragments/FaveTabFragment;

    goto :goto_1

    .line 47
    :pswitch_8
    const-class v0, Lcom/vtosters/lite/general/fragments/GamesFragment;

    goto :goto_1

    .line 50
    :pswitch_9
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->superapp()Z

    move-result v0

    if-eqz v0, :cond_15

    const-class v0, Lcom/vk/superapp/SuperAppFragment;

    goto :goto_1

    :cond_15
    const-class v0, Lcom/vk/menu/SearchMenuFragment;

    goto :goto_1

    :cond_16
    const-class v0, Lcom/vk/menu/MenuFragment;

    goto :goto_1

    .line 53
    :pswitch_a
    const-class v0, Lcom/vtosters/lite/fragments/p2/DocumentsViewFragment;

    goto :goto_1

    .line 54
    :pswitch_b
    const-class v0, Lcom/vtosters/lite/fragments/gifts/BirthdaysFragment;

    goto :goto_1

    .line 43
    :pswitch_c
    const-class v0, Lcom/vk/apps/AppsFragment;

    goto :goto_1

    .line 51
    :pswitch_d
    const-class v0, Lcom/vtosters/lite/fragments/ProfileFragment;

    goto :goto_1

    .line 39
    :pswitch_e
    const-class v0, Lcom/vtosters/lite/fragments/friends/FriendsFragment;

    goto :goto_1

    .line 41
    :pswitch_f
    const-class v0, Lcom/vtosters/lite/fragments/y2/VideoCatalogFragment;

    goto :goto_1

    .line 40
    :pswitch_10
    const-class v0, Lcom/vtosters/lite/general/fragments/PhotosFragment;

    goto :goto_1

    .line 37
    :pswitch_11
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v0

    if-eqz v0, :cond_17

    const-class v0, Lcom/vk/profile/catalog/CommunitiesCatalogFragment;

    goto :goto_1

    :cond_17
    const-class v0, Lcom/vtosters/lite/fragments/s2/GroupsFragment1;

    goto :goto_1

    .line 36
    :pswitch_12
    const-class v0, Lcom/vtosters/lite/fragments/t2/c/DialogsFragment;

    :goto_1
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x559944ed -> :sswitch_12
        -0x49c2262c -> :sswitch_11
        -0x3af3777f -> :sswitch_10
        -0x30ad84a8 -> :sswitch_f
        -0x23c4b66b -> :sswitch_e
        -0x12717657 -> :sswitch_d
        0x2dca72 -> :sswitch_c
        0x2e46c0 -> :sswitch_b
        0x2f223b -> :sswitch_a
        0x33155f -> :sswitch_9
        0x5d932c1 -> :sswitch_8
        0x62343ad -> :sswitch_7
        0x6236d07 -> :sswitch_6
        0x63420c0 -> :sswitch_5
        0x636ee25 -> :sswitch_4
        0x104877e9 -> :sswitch_3
        0x4bd694e8 -> :sswitch_2
        0x532bcef1 -> :sswitch_1
        0x5582bc23 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
