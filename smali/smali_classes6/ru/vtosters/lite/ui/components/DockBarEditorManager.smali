.class public Lru/vtosters/lite/ui/components/DockBarEditorManager;
.super Ljava/lang/Object;
.source "DockBarEditorManager.java"


# static fields
.field private static final ALL_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_SELECTED_TABS:I = 0x9

.field public static final MIN_SELECTED_TABS:I = 0x3

.field private static sInstance:Lru/vtosters/lite/ui/components/DockBarEditorManager;


# instance fields
.field private final mDisabledTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/vtosters/lite/ui/items/DockBarTab;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectedTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/vtosters/lite/ui/items/DockBarTab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v0, "tab_news"

    const-string v1, "tab_superapps"

    const-string v2, "tab_messages"

    const-string v3, "tab_feedback"

    const-string v4, "tab_profile"

    const-string v5, "tab_friends"

    const-string v6, "tab_groups"

    const-string v7, "tab_photos"

    const-string v8, "tab_audios"

    const-string v9, "tab_videos"

    const-string v10, "tab_lives"

    const-string v11, "tab_games"

    const-string v12, "tab_liked"

    const-string v13, "tab_fave"

    const-string v14, "tab_documents"

    const-string v15, "tab_payments"

    const-string v16, "tab_settings"

    .line 42
    filled-new-array/range {v0 .. v16}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/ui/components/DockBarEditorManager;->ALL_TAGS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/vtosters/lite/ui/components/DockBarEditorManager;->mSelectedTabs:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/vtosters/lite/ui/components/DockBarEditorManager;->mDisabledTabs:Ljava/util/List;

    .line 53
    invoke-direct {p0}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->init()V

    return-void
.end method

.method private checkOldConfig()V
    .locals 3

    .line 200
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "dockbar.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    :cond_0
    return-void
.end method

.method public static getInstance()Lru/vtosters/lite/ui/components/DockBarEditorManager;
    .locals 1

    .line 57
    sget-object v0, Lru/vtosters/lite/ui/components/DockBarEditorManager;->sInstance:Lru/vtosters/lite/ui/components/DockBarEditorManager;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lru/vtosters/lite/ui/components/DockBarEditorManager;

    invoke-direct {v0}, Lru/vtosters/lite/ui/components/DockBarEditorManager;-><init>()V

    sput-object v0, Lru/vtosters/lite/ui/components/DockBarEditorManager;->sInstance:Lru/vtosters/lite/ui/components/DockBarEditorManager;

    :cond_0
    return-object v0
.end method

.method public static getTabByTag(Ljava/lang/String;)Lru/vtosters/lite/ui/items/DockBarTab;
    .locals 22

    move-object/from16 v0, p0

    .line 63
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "tab_vk_apps"

    const-string v3, "tab_lives"

    const-string v4, "tab_liked"

    const-string v5, "tab_games"

    const-string v6, "tab_feedback"

    const-string v7, "tab_messages"

    const-string v8, "tab_profile"

    const-string v9, "tab_friends"

    const-string v10, "tab_videos"

    const-string v11, "tab_photos"

    const-string v12, "tab_groups"

    const-string v13, "tab_audios"

    const-string v14, "tab_documents"

    const-string v15, "tab_news"

    move-object/from16 v16, v15

    const-string v15, "tab_fave"

    move-object/from16 v17, v15

    const-string v15, "tab_payments"

    move-object/from16 v18, v15

    const-string v15, "tab_superapps"

    const/16 v19, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move-object/from16 v1, v18

    goto/16 :goto_3

    :sswitch_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v19, 0x10

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v19, 0xf

    goto :goto_0

    :sswitch_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v19, 0xe

    goto :goto_0

    :sswitch_3
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v19, 0xd

    goto :goto_0

    :sswitch_4
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v19, 0xc

    goto :goto_0

    :sswitch_5
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/16 v19, 0xb

    goto :goto_0

    :sswitch_6
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/16 v19, 0xa

    goto :goto_0

    :sswitch_7
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/16 v19, 0x9

    goto :goto_0

    :sswitch_8
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/16 v19, 0x8

    goto :goto_0

    :sswitch_9
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/16 v19, 0x7

    goto :goto_0

    :sswitch_a
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/16 v19, 0x6

    goto :goto_0

    :sswitch_b
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/16 v19, 0x5

    goto :goto_0

    :sswitch_c
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v19, 0x4

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1

    :cond_d
    const/16 v19, 0x3

    :goto_1
    move-object/from16 v16, v1

    goto/16 :goto_0

    :sswitch_e
    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_2

    :cond_e
    const/16 v19, 0x2

    :goto_2
    move-object/from16 v17, v1

    goto/16 :goto_0

    :sswitch_f
    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_3

    :cond_f
    const/16 v19, 0x1

    goto :goto_3

    :sswitch_10
    move-object/from16 v1, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_3

    :cond_10
    const/16 v19, 0x0

    :goto_3
    const v18, 0x7f120978

    const v20, 0x7f080842

    const v21, 0x7f0805ac

    const v0, 0x7f08075b

    packed-switch v19, :pswitch_data_0

    const v0, 0x7f0a07e5

    .line 171
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->useNewSettings()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "tab_settings"

    const v3, 0x7f08075f

    const v4, 0x7f1206fa

    .line 166
    invoke-static {v2, v3, v4, v0, v1}, Lru/vtosters/lite/ui/items/DockBarTab;->valuesOf(Ljava/lang/String;IIILjava/lang/Class;)Lru/vtosters/lite/ui/items/DockBarTab;

    move-result-object v0

    goto/16 :goto_12

    :pswitch_0
    const v1, 0x7f0a07ed

    .line 160
    const-class v3, Lcom/vk/apps/AppsFragment;

    const v4, 0x7f1206f2

    invoke-static {v2, v0, v4, v1, v3}, Lru/vtosters/lite/ui/items/DockBarTab;->valuesOf(Ljava/lang/String;IIILjava/lang/Class;)Lru/vtosters/lite/ui/items/DockBarTab;

    move-result-object v0

    goto/16 :goto_12

    :pswitch_1
    const v0, 0x7f0a07db

    .line 124
    const-class v1, Lcom/vtosters/lite/fragments/lives/LivesTabsFragment;

    const v2, 0x7f080539

    const v4, 0x7f120d2d

    invoke-static {v3, v2, v4, v0, v1}, Lru/vtosters/lite/ui/items/DockBarTab;->valuesOf(Ljava/lang/String;IIILjava/lang/Class;)Lru/vtosters/lite/ui/items/DockBarTab;

    move-result-object v0

    goto/16 :goto_12

    :pswitch_2
    const v0, 0x7f0a07d6

    .line 136
    const-class v1, Lcom/vk/feedlikes/d/FeedLikesFragment;

    const v2, 0x7f080518

    const v3, 0x7f120d2c

    invoke-static {v4, v2, v3, v0, v1}, Lru/vtosters/lite/ui/items/DockBarTab;->valuesOf(Ljava/lang/String;IIILjava/lang/Class;)Lru/vtosters/lite/ui/items/DockBarTab;

    move-result-object v0

    goto/16 :goto_12

    :pswitch_3
    const v0, 0x7f0a07d9

    .line 130
    const-class v1, Lcom/vtosters/lite/general/fragments/GamesFragment;

    const v2, 0x7f0804ce

    const v3, 0x7f12048c

    invoke-static {v5, v2, v3, v0, v1}, Lru/vtosters/lite/ui/items/DockBarTab;->valuesOf(Ljava/lang/String;IIILjava/lang/Class;)Lru/vtosters/lite/ui/items/DockBarTab;

    move-result-object v0

    goto/16 :goto_12

    .line 84
    :pswitch_4
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v0

    if-nez v0, :cond_11

    const v0, 0x7f080842

    goto :goto_4

    :cond_11
    const v0, 0x7f0805ac

    .line 85
    :goto_4
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v1

    if-nez v1, :cond_12

    const v1, 0x7f120439

    goto :goto_5

    :cond_12
    const v1, 0x7f120978

    .line 87
    :goto_5
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v2

    if-nez v2, :cond_13

    const-class v2, Lcom/vtosters/lite/fragments/friends/FriendsFragment;

    goto :goto_6

    :cond_13
    const-class v2, Lcom/vk/notifications/NotificationsContainerFragment;

    :goto_6
    const v3, 0x7f0a0d12

    .line 82
    invoke-static {v6, v0, v1, v3, v2}, Lru/vtosters/lite/ui/items/DockBarTab;->valuesOf(Ljava/lang/String;IIILjava/lang/Class;)Lru/vtosters/lite/ui/items/DockBarTab;

    move-result-object v0

    goto/16 :goto_12

    :pswitch_5
    const v0, 0x7f0a0d14

    .line 76
    const-class v1, Lcom/vtosters/lite/fragments/t2/c/DialogsFragment;

    const v2, 0x7f0805b9

    const v3, 0x7f1206fc

    invoke-static {v7, v2, v3, v0, v1}, Lru/vtosters/lite/ui/items/DockBarTab;->valuesOf(Ljava/lang/String;IIILjava/lang/Class;)Lru/vtosters/lite/ui/items/DockBarTab;

    move-result-object v0

    goto/16 :goto_12

    .line 90
    :pswitch_6
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v0

    if-eqz v0, :cond_14

    const v0, 0x7f080833

    goto :goto_7

    :cond_14
    const v0, 0x7f0805a4

    .line 91
    :goto_7
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v1

    if-eqz v1, :cond_15

    const v1, 0x7f120b89

    goto :goto_8

    :cond_15
    const v1, 0x7f1206f0

    .line 93
    :goto_8
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v2

    if-eqz v2, :cond_16

    const-class v2, Lcom/vtosters/lite/fragments/ProfileFragment;

    goto :goto_9

    :cond_16
    const-class v2, Lcom/vk/menu/MenuFragment;

    :goto_9
    const v3, 0x7f0a0d13

    .line 88
    invoke-static {v8, v0, v1, v3, v2}, Lru/vtosters/lite/ui/items/DockBarTab;->valuesOf(Ljava/lang/String;IIILjava/lang/Class;)Lru/vtosters/lite/ui/items/DockBarTab;

    move-result-object v0

    goto/16 :goto_12

    .line 96
    :pswitch_7
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v0

    if-eqz v0, :cond_17

    const v0, 0x7f080842

    goto :goto_a

    :cond_17
    const v0, 0x7f0805ac

    .line 97
    :goto_a
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v1

    if-eqz v1, :cond_18

    const v1, 0x7f120439

    goto :goto_b

    :cond_18
    const v1, 0x7f120978

    .line 99
    :goto_b
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v2

    if-eqz v2, :cond_19

    const-class v2, Lcom/vk/friends/catalog/FriendsCatalogFragment;

    goto :goto_c

    :cond_19
    const-class v2, Lcom/vk/notifications/NotificationsContainerFragment;

    :goto_c
    const v3, 0x7f0a07d8

    .line 94
    invoke-static {v9, v0, v1, v3, v2}, Lru/vtosters/lite/ui/items/DockBarTab;->valuesOf(Ljava/lang/String;IIILjava/lang/Class;)Lru/vtosters/lite/ui/items/DockBarTab;

    move-result-object v0

    goto/16 :goto_12

    :pswitch_8
    const v0, 0x7f0a07ec

    .line 118
    const-class v1, Lcom/vtosters/lite/fragments/y2/VideoCatalogFragment;

    const v2, 0x7f08084c

    const v3, 0x7f1210b4

    invoke-static {v10, v2, v3, v0, v1}, Lru/vtosters/lite/ui/items/DockBarTab;->valuesOf(Ljava/lang/String;IIILjava/lang/Class;)Lru/vtosters/lite/ui/items/DockBarTab;

    move-result-object v0

    goto/16 :goto_12

    :pswitch_9
    const v0, 0x7f0a07e1

    .line 106
    const-class v1, Lcom/vtosters/lite/general/fragments/PhotosFragment;

    const v2, 0x7f08039f

    const v3, 0x7f120a74

    invoke-static {v11, v2, v3, v0, v1}, Lru/vtosters/lite/ui/items/DockBarTab;->valuesOf(Ljava/lang/String;IIILjava/lang/Class;)Lru/vtosters/lite/ui/items/DockBarTab;

    move-result-object v0

    goto/16 :goto_12

    .line 105
    :pswitch_a
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-class v0, Lcom/vk/profile/catalog/CommunitiesCatalogFragment;

    goto :goto_d

    :cond_1a
    const-class v0, Lcom/vtosters/lite/fragments/s2/GroupsFragment1;

    :goto_d
    const v1, 0x7f080a5d

    const v2, 0x7f120564

    const v3, 0x7f0a07da

    .line 100
    invoke-static {v12, v1, v2, v3, v0}, Lru/vtosters/lite/ui/items/DockBarTab;->valuesOf(Ljava/lang/String;IIILjava/lang/Class;)Lru/vtosters/lite/ui/items/DockBarTab;

    move-result-object v0

    goto/16 :goto_12

    :pswitch_b
    const v0, 0x7f0a07ca

    .line 112
    const-class v1, Lcom/vk/music/fragment/MusicCatalogFragment1;

    const v2, 0x7f0805f5

    const v3, 0x7f12077d

    invoke-static {v13, v2, v3, v0, v1}, Lru/vtosters/lite/ui/items/DockBarTab;->valuesOf(Ljava/lang/String;IIILjava/lang/Class;)Lru/vtosters/lite/ui/items/DockBarTab;

    move-result-object v0

    goto/16 :goto_12

    :pswitch_c
    const v0, 0x7f0a07d1

    .line 148
    const-class v1, Lcom/vtosters/lite/fragments/p2/DocumentsViewFragment;

    const v2, 0x7f08042b

    const v3, 0x7f120318

    invoke-static {v14, v2, v3, v0, v1}, Lru/vtosters/lite/ui/items/DockBarTab;->valuesOf(Ljava/lang/String;IIILjava/lang/Class;)Lru/vtosters/lite/ui/items/DockBarTab;

    move-result-object v0

    goto/16 :goto_12

    .line 69
    :pswitch_d
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-class v0, Lcom/vk/newsfeed/HomeFragment;

    goto :goto_e

    :cond_1b
    const-class v0, Lcom/vk/newsfeed/NewsfeedFragment;

    :goto_e
    const v1, 0x7f0805ab

    const v2, 0x7f1208f7

    const v3, 0x7f0a0d15

    move-object/from16 v4, v16

    .line 64
    invoke-static {v4, v1, v2, v3, v0}, Lru/vtosters/lite/ui/items/DockBarTab;->valuesOf(Ljava/lang/String;IIILjava/lang/Class;)Lru/vtosters/lite/ui/items/DockBarTab;

    move-result-object v0

    goto :goto_12

    :pswitch_e
    const v0, 0x7f0a07d4

    .line 142
    const-class v1, Lcom/vk/fave/fragments/FaveTabFragment;

    const v2, 0x7f080487

    const v3, 0x7f1203ec

    move-object/from16 v4, v17

    invoke-static {v4, v2, v3, v0, v1}, Lru/vtosters/lite/ui/items/DockBarTab;->valuesOf(Ljava/lang/String;IIILjava/lang/Class;)Lru/vtosters/lite/ui/items/DockBarTab;

    move-result-object v0

    goto :goto_12

    :pswitch_f
    const v0, 0x7f0a07e0

    .line 154
    const-class v2, Lcom/vtosters/lite/fragments/money/MoneyTransfersFragment;

    const v3, 0x7f0805d2

    const v4, 0x7f120725

    invoke-static {v1, v3, v4, v0, v2}, Lru/vtosters/lite/ui/items/DockBarTab;->valuesOf(Ljava/lang/String;IIILjava/lang/Class;)Lru/vtosters/lite/ui/items/DockBarTab;

    move-result-object v0

    goto :goto_12

    .line 72
    :pswitch_10
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_f

    :cond_1c
    const v0, 0x7f0805b4

    .line 73
    :goto_f
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v1

    if-eqz v1, :cond_1d

    const v1, 0x7f120fae

    goto :goto_10

    :cond_1d
    const v1, 0x7f120cc1

    .line 75
    :goto_10
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->superapp()Z

    move-result v2

    if-eqz v2, :cond_1e

    const-class v2, Lcom/vk/superapp/SuperAppFragment;

    goto :goto_11

    :cond_1e
    const-class v2, Lcom/vk/menu/SearchMenuFragment;

    goto :goto_11

    :cond_1f
    const-class v2, Lcom/vk/discover/DiscoverFragment;

    :goto_11
    const v3, 0x7f0a0d11

    .line 70
    invoke-static {v15, v0, v1, v3, v2}, Lru/vtosters/lite/ui/items/DockBarTab;->valuesOf(Ljava/lang/String;IIILjava/lang/Class;)Lru/vtosters/lite/ui/items/DockBarTab;

    move-result-object v0

    :goto_12
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f54f7bd -> :sswitch_10
        -0x3cecc769 -> :sswitch_f
        -0x3615b8ec -> :sswitch_e
        -0x361206c3 -> :sswitch_d
        -0x2346a972 -> :sswitch_c
        -0xf01a4b9 -> :sswitch_b
        -0x4e9aa42 -> :sswitch_a
        0x9e5046b -> :sswitch_9
        0x142af742 -> :sswitch_8
        0x32724aeb -> :sswitch_7
        0x43c58aff -> :sswitch_6
        0x551e2ab6 -> :sswitch_5
        0x653f14ef -> :sswitch_4
        0x736c9197 -> :sswitch_3
        0x73b6a283 -> :sswitch_2
        0x73b6cbdd -> :sswitch_1
        0x74555f12 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private init()V
    .locals 3

    .line 176
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->vkme()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lru/vtosters/lite/ui/components/DockBarEditorManager;->mSelectedTabs:Ljava/util/List;

    const-string v1, "tab_settings"

    invoke-static {v1}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->getTabByTag(Ljava/lang/String;)Lru/vtosters/lite/ui/items/DockBarTab;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->vkme_notifs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lru/vtosters/lite/ui/components/DockBarEditorManager;->mSelectedTabs:Ljava/util/List;

    const-string v1, "tab_feedback"

    invoke-static {v1}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->getTabByTag(Ljava/lang/String;)Lru/vtosters/lite/ui/items/DockBarTab;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lru/vtosters/lite/ui/components/DockBarEditorManager;->mSelectedTabs:Ljava/util/List;

    const-string v1, "tab_friends"

    invoke-static {v1}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->getTabByTag(Ljava/lang/String;)Lru/vtosters/lite/ui/items/DockBarTab;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_1
    :goto_0
    iget-object v0, p0, Lru/vtosters/lite/ui/components/DockBarEditorManager;->mSelectedTabs:Ljava/util/List;

    const-string v1, "tab_messages"

    invoke-static {v1}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->getTabByTag(Ljava/lang/String;)Lru/vtosters/lite/ui/items/DockBarTab;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lru/vtosters/lite/ui/components/DockBarEditorManager;->mSelectedTabs:Ljava/util/List;

    const-string v1, "tab_profile"

    invoke-static {v1}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->getTabByTag(Ljava/lang/String;)Lru/vtosters/lite/ui/items/DockBarTab;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 190
    :cond_2
    invoke-direct {p0}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->checkOldConfig()V

    .line 192
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "dockbar_tabs"

    const-string v2, "tab_news,tab_superapps,tab_messages,tab_friends,tab_profile"

    .line 193
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-direct {p0, v0}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->parseSelectedTabs([Ljava/lang/String;)V

    return-void
.end method

.method private parseSelectedTabs([Ljava/lang/String;)V
    .locals 6

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lru/vtosters/lite/ui/components/DockBarEditorManager;->ALL_TAGS:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 207
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 208
    iget-object v4, p0, Lru/vtosters/lite/ui/components/DockBarEditorManager;->mSelectedTabs:Ljava/util/List;

    invoke-static {v3}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->getTabByTag(Ljava/lang/String;)Lru/vtosters/lite/ui/items/DockBarTab;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 213
    iget-object v1, p0, Lru/vtosters/lite/ui/components/DockBarEditorManager;->mDisabledTabs:Ljava/util/List;

    invoke-static {v0}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->getTabByTag(Ljava/lang/String;)Lru/vtosters/lite/ui/items/DockBarTab;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public getDisabledTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/vtosters/lite/ui/items/DockBarTab;",
            ">;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lru/vtosters/lite/ui/components/DockBarEditorManager;->mDisabledTabs:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/vtosters/lite/ui/items/DockBarTab;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lru/vtosters/lite/ui/components/DockBarEditorManager;->mSelectedTabs:Ljava/util/List;

    return-object v0
.end method

.method public reset()V
    .locals 3

    .line 225
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 226
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dockbar_tabs"

    const-string v2, "tab_news,tab_superapps,tab_messages,tab_friends,tab_profile"

    .line 227
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 228
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public save()V
    .locals 3

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    iget-object v1, p0, Lru/vtosters/lite/ui/components/DockBarEditorManager;->mSelectedTabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/vtosters/lite/ui/items/DockBarTab;

    .line 220
    iget-object v2, v2, Lru/vtosters/lite/ui/items/DockBarTab;->tag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 221
    :cond_0
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dockbar_tabs"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
