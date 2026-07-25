.class public Lru/vtosters/lite/ui/components/SuperAppEditorManager;
.super Ljava/lang/Object;
.source "SuperAppEditorManager.java"


# static fields
.field private static sInstance:Lru/vtosters/lite/ui/components/SuperAppEditorManager;


# instance fields
.field private final mDisabledItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/vtosters/lite/ui/items/SuperAppItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/vtosters/lite/ui/items/SuperAppItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/vtosters/lite/ui/components/SuperAppEditorManager;->mSelectedItems:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/vtosters/lite/ui/components/SuperAppEditorManager;->mDisabledItems:Ljava/util/List;

    .line 21
    invoke-direct {p0}, Lru/vtosters/lite/ui/components/SuperAppEditorManager;->init()V

    return-void
.end method

.method public static getInstance()Lru/vtosters/lite/ui/components/SuperAppEditorManager;
    .locals 1

    .line 25
    sget-object v0, Lru/vtosters/lite/ui/components/SuperAppEditorManager;->sInstance:Lru/vtosters/lite/ui/components/SuperAppEditorManager;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lru/vtosters/lite/ui/components/SuperAppEditorManager;

    invoke-direct {v0}, Lru/vtosters/lite/ui/components/SuperAppEditorManager;-><init>()V

    sput-object v0, Lru/vtosters/lite/ui/components/SuperAppEditorManager;->sInstance:Lru/vtosters/lite/ui/components/SuperAppEditorManager;

    :cond_0
    return-object v0
.end method

.method private getItemByTag(Ljava/lang/String;)Lru/vtosters/lite/ui/items/SuperAppItem;
    .locals 17

    move-object/from16 v0, p1

    .line 83
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "weather"

    const-string v3, "holiday"

    const-string v4, "greeting"

    const-string v5, "informer"

    const-string v6, "sport"

    const-string v7, "promo"

    const-string v8, "music"

    const-string v9, "games"

    const-string v10, "event"

    const-string v11, "menu"

    const-string v12, "food"

    const-string v13, "vkpay_slim"

    const-string v14, "vk_run"

    const-string v15, "miniapps"

    const/16 v16, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v16, 0xd

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v16, 0xc

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v16, 0xb

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v16, 0xa

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v16, 0x9

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/16 v16, 0x8

    goto :goto_0

    :sswitch_6
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/16 v16, 0x7

    goto :goto_0

    :sswitch_7
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/16 v16, 0x6

    goto :goto_0

    :sswitch_8
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/16 v16, 0x5

    goto :goto_0

    :sswitch_9
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/16 v16, 0x4

    goto :goto_0

    :sswitch_a
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/16 v16, 0x3

    goto :goto_0

    :sswitch_b
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/16 v16, 0x2

    goto :goto_0

    :sswitch_c
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/16 v16, 0x1

    goto :goto_0

    :sswitch_d
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const/16 v16, 0x0

    :goto_0
    packed-switch v16, :pswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :pswitch_0
    const v0, 0x7f121776

    .line 90
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lru/vtosters/lite/ui/items/SuperAppItem;->valuesOf(Ljava/lang/String;Ljava/lang/String;)Lru/vtosters/lite/ui/items/SuperAppItem;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_1
    const v0, 0x7f12176d

    .line 89
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lru/vtosters/lite/ui/items/SuperAppItem;->valuesOf(Ljava/lang/String;Ljava/lang/String;)Lru/vtosters/lite/ui/items/SuperAppItem;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_2
    const v0, 0x7f12176c

    .line 87
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lru/vtosters/lite/ui/items/SuperAppItem;->valuesOf(Ljava/lang/String;Ljava/lang/String;)Lru/vtosters/lite/ui/items/SuperAppItem;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_3
    const v0, 0x7f12176e

    .line 93
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lru/vtosters/lite/ui/items/SuperAppItem;->valuesOf(Ljava/lang/String;Ljava/lang/String;)Lru/vtosters/lite/ui/items/SuperAppItem;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_4
    const v0, 0x7f121773

    .line 91
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lru/vtosters/lite/ui/items/SuperAppItem;->valuesOf(Ljava/lang/String;Ljava/lang/String;)Lru/vtosters/lite/ui/items/SuperAppItem;

    move-result-object v0

    goto :goto_1

    :pswitch_5
    const v0, 0x7f121771

    .line 88
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lru/vtosters/lite/ui/items/SuperAppItem;->valuesOf(Ljava/lang/String;Ljava/lang/String;)Lru/vtosters/lite/ui/items/SuperAppItem;

    move-result-object v0

    goto :goto_1

    :pswitch_6
    const v0, 0x7f121772

    .line 96
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lru/vtosters/lite/ui/items/SuperAppItem;->valuesOf(Ljava/lang/String;Ljava/lang/String;)Lru/vtosters/lite/ui/items/SuperAppItem;

    move-result-object v0

    goto :goto_1

    :pswitch_7
    const v0, 0x7f12176b

    .line 92
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lru/vtosters/lite/ui/items/SuperAppItem;->valuesOf(Ljava/lang/String;Ljava/lang/String;)Lru/vtosters/lite/ui/items/SuperAppItem;

    move-result-object v0

    goto :goto_1

    :pswitch_8
    const v0, 0x7f121769

    .line 95
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lru/vtosters/lite/ui/items/SuperAppItem;->valuesOf(Ljava/lang/String;Ljava/lang/String;)Lru/vtosters/lite/ui/items/SuperAppItem;

    move-result-object v0

    goto :goto_1

    :pswitch_9
    const v0, 0x7f12176f

    .line 84
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lru/vtosters/lite/ui/items/SuperAppItem;->valuesOf(Ljava/lang/String;Ljava/lang/String;)Lru/vtosters/lite/ui/items/SuperAppItem;

    move-result-object v0

    goto :goto_1

    :pswitch_a
    const v0, 0x7f12176a

    .line 94
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lru/vtosters/lite/ui/items/SuperAppItem;->valuesOf(Ljava/lang/String;Ljava/lang/String;)Lru/vtosters/lite/ui/items/SuperAppItem;

    move-result-object v0

    goto :goto_1

    :pswitch_b
    const v0, 0x7f121775

    .line 86
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lru/vtosters/lite/ui/items/SuperAppItem;->valuesOf(Ljava/lang/String;Ljava/lang/String;)Lru/vtosters/lite/ui/items/SuperAppItem;

    move-result-object v0

    goto :goto_1

    :pswitch_c
    const v0, 0x7f121774

    .line 97
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lru/vtosters/lite/ui/items/SuperAppItem;->valuesOf(Ljava/lang/String;Ljava/lang/String;)Lru/vtosters/lite/ui/items/SuperAppItem;

    move-result-object v0

    goto :goto_1

    :pswitch_d
    const v0, 0x7f121770

    .line 85
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lru/vtosters/lite/ui/items/SuperAppItem;->valuesOf(Ljava/lang/String;Ljava/lang/String;)Lru/vtosters/lite/ui/items/SuperAppItem;

    move-result-object v0

    :goto_1
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x510714b7 -> :sswitch_d
        -0x309369ff -> :sswitch_c
        -0x1be05bd7 -> :sswitch_b
        0x300c5e -> :sswitch_a
        0x33155f -> :sswitch_9
        0x5c6729a -> :sswitch_8
        0x5d932c1 -> :sswitch_7
        0x636ee25 -> :sswitch_6
        0x65fc90f -> :sswitch_5
        0x6892774 -> :sswitch_4
        0xaa8d5d6 -> :sswitch_3
        0xc3e8039 -> :sswitch_2
        0x41152858 -> :sswitch_1
        0x48ec37f4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 31
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "superapp_items"

    const-string v2, "menu,miniapps,vkpay_slim,greeting,promo,holiday,weather,sport,games,informer,food,event,music,vk_run"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 33
    :goto_0
    invoke-direct {p0, v0}, Lru/vtosters/lite/ui/components/SuperAppEditorManager;->parseSelectedItems([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$save$0(Lru/vtosters/lite/ui/items/SuperAppItem;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lru/vtosters/lite/ui/items/SuperAppItem;->type:Ljava/lang/String;

    return-object p0
.end method

.method private parseSelectedItems([Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 37
    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "menu"

    const-string v4, "miniapps"

    const-string v5, "vkpay_slim"

    const-string v6, "greeting"

    const-string v7, "promo"

    const-string v8, "holiday"

    const-string v9, "weather"

    const-string v10, "sport"

    const-string v11, "games"

    const-string v12, "informer"

    const-string v13, "food"

    const-string v14, "event"

    const-string v15, "music"

    const-string v16, "vk_run"

    filled-new-array/range {v3 .. v16}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 39
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 40
    iget-object v6, v0, Lru/vtosters/lite/ui/components/SuperAppEditorManager;->mSelectedItems:Ljava/util/List;

    invoke-direct {v0, v5}, Lru/vtosters/lite/ui/components/SuperAppEditorManager;->getItemByTag(Ljava/lang/String;)Lru/vtosters/lite/ui/items/SuperAppItem;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 44
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 45
    iget-object v3, v0, Lru/vtosters/lite/ui/components/SuperAppEditorManager;->mDisabledItems:Ljava/util/List;

    invoke-direct {v0, v2}, Lru/vtosters/lite/ui/components/SuperAppEditorManager;->getItemByTag(Ljava/lang/String;)Lru/vtosters/lite/ui/items/SuperAppItem;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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
            "Lru/vtosters/lite/ui/items/SuperAppItem;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lru/vtosters/lite/ui/components/SuperAppEditorManager;->mDisabledItems:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/vtosters/lite/ui/items/SuperAppItem;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lru/vtosters/lite/ui/components/SuperAppEditorManager;->mSelectedItems:Ljava/util/List;

    return-object v0
.end method

.method public reset()V
    .locals 3

    .line 68
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "superapp_items"

    const-string v2, "menu,miniapps,vkpay_slim,greeting,promo,holiday,informer,event,weather,sport,games,food,music,vk_run"

    .line 70
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 71
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public save()V
    .locals 5

    .line 49
    iget-object v0, p0, Lru/vtosters/lite/ui/components/SuperAppEditorManager;->mSelectedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const-string v2, ","

    const-string v3, "superapp_items"

    if-lt v0, v1, :cond_0

    .line 51
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lru/vtosters/lite/ui/components/SuperAppEditorManager;->mSelectedItems:Ljava/util/List;

    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lru/vtosters/lite/ui/components/SuperAppEditorManager$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lru/vtosters/lite/ui/components/SuperAppEditorManager$$ExternalSyntheticLambda0;-><init>()V

    .line 52
    invoke-interface {v1, v4}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v1

    .line 53
    invoke-static {v2}, Lj$/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Lj$/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 51
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    iget-object v1, p0, Lru/vtosters/lite/ui/components/SuperAppEditorManager;->mSelectedItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/vtosters/lite/ui/items/SuperAppItem;

    .line 58
    iget-object v4, v4, Lru/vtosters/lite/ui/items/SuperAppItem;->type:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {p0}, Lru/vtosters/lite/ui/components/SuperAppEditorManager;->reset()V

    :goto_1
    return-void
.end method
