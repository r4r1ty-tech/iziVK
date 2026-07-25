.class synthetic Lru/vtosters/hooks/TogglesHook$1;
.super Ljava/lang/Object;
.source "TogglesHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/hooks/TogglesHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$vk$toggle$Features$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    invoke-static {}, Lcom/vk/toggle/Features$Type;->values()[Lcom/vk/toggle/Features$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    :try_start_0
    sget-object v1, Lcom/vk/toggle/Features$Type;->AB_IM_LONGPOLL_MSG_BATCHING:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->AB_IM_VIEW_POOL:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->AB_MULTI_GIFTS:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->AB_NEWS_VIDEO_LAYOUT_TEXT:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->AB_STICKERS_DISCOVER:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->AB_GIFTS_FROM_KEYBOARD:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->EXPERIMENT_NEWS_VIDEO_LAYOUT_TEXT:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_DISCOVER_CATEGORIES:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_FAVE_PERF_IMPROVE:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_GROUP_ADMIN_MESSAGES:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_GROUP_MSG_PUSH_PARAM:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_IMAGE_QUALITY_UPGRADE:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_IM_AUDIO_MSG_TRANSCRIPT:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_IM_CASPER_MSGS:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_IM_DISABLE_FORCE_OPEN_VK_ME:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_IM_GIF_AUTOPLAY:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_IM_MR_IN_VKAPP:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_MEMORIES_ENABLED:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_MENU_GAMES_CAROUSEL:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_MILKSHAKE:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_MILKSHAKE_NEWS_SCROLL_ON_BACK:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_MILKSHAKE_SWITCH_THEME_ON_TAP:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_ML_BRANDS:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_ML_FEATURES:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_ML_MODELS_LOADING:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_MONEY_TRANSFERS_VKPAY:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_MUSIC_ARTIST_CATALOG:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_MUSIC_NEW_CATALOG:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_NARRATIVE_SNIPPET_TYPE:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_NEWS_GAMES_IN_DISCOVER:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_NEWS_HEADER_SCROLL:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_NEW_FORMAT_SHOW_WPB:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_PODCASTS_PAGE:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_QR_CREATE_QR:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_QR_DYNAMIC_FRAME:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_QR_SCAN_FROM_PHOTO:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_QR_VISION_DECODER:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_QUEUE_COUNTERS:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_REEF:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_ROAMING_AUTOPLAY:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_SHARE_MSGS_ON_INVITE:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STICKERS_BOT_LINK:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STICKERS_NEW_CATALOG:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORIES_AVATAR:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORIES_FEED_TYPE:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    :try_start_2d
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORIES_SHOW_ALWAYS:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    :try_start_2e
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_ANSWER_PUBLIC:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2f
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_APP_STICKER:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    :catch_2f
    :try_start_30
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_ARCHIVE:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    :catch_30
    :try_start_31
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_ARCHIVE_POST:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    :catch_31
    :try_start_32
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_BAKGROUND_ALL:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    :catch_32
    :try_start_33
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_BOX:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    :catch_33
    :try_start_34
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_CADRE:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    :catch_34
    :try_start_35
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_CAMERA_TOOLTIP:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    :catch_35
    :try_start_36
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_EDITOR_GALLERY:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    :catch_36
    :try_start_37
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_EDITOR_TYPE:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    :catch_37
    :try_start_38
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_ENDLESS_VIDEO:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    :catch_38
    :try_start_39
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_FAST_REACTIONS:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    :catch_39
    :try_start_3a
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_GIF:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    :catch_3a
    :try_start_3b
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_GROUPED:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x3c

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_3b

    :catch_3b
    :try_start_3c
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_HIGH_QUALITY:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x3d

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_3c

    :catch_3c
    :try_start_3d
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_MASKS_FRONTAL:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x3e

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3e
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_MENTION_ICON:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x3f

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3f
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_MODERN_PUBLISH:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x40

    aput v2, v0, v1
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_3f

    :catch_3f
    :try_start_40
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_MUSIC_EDITOR:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x41

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_40

    :catch_40
    :try_start_41
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_MUSIC_REPLIES:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x42

    aput v2, v0, v1
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_41

    :catch_41
    :try_start_42
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_MUSIC_REPLIES_2:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x43

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_42

    :catch_42
    :try_start_43
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_NEW_FRAME:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x44

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_43

    :catch_43
    :try_start_44
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_ONE_TIME:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x45

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_44

    :catch_44
    :try_start_45
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_PHOTO_SHARING:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x46

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_45

    :catch_45
    :try_start_46
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_PHOTO_STICKER:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x47

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_46

    :catch_46
    :try_start_47
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_POLLS:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x48

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_47

    :catch_47
    :try_start_48
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_POST_REPOST:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x49

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_48

    :catch_48
    :try_start_49
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_PRELOADING:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x4a

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_49

    :catch_49
    :try_start_4a
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_QUESTION:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x4b

    aput v2, v0, v1
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_4a

    :catch_4a
    :try_start_4b
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_QUESTION_STYLE:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x4c

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_4b

    :catch_4b
    :try_start_4c
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_RLOTTIE:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x4d

    aput v2, v0, v1
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_4c

    :catch_4c
    :try_start_4d
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_RLOTTIE_CACHE:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x4e

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_4d

    :catch_4d
    :try_start_4e
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_SAVE_DEFAULT_ON:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x4f

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_4e

    :catch_4e
    :try_start_4f
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_SEND_DIALOG_LIST:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x50

    aput v2, v0, v1
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_4f

    :catch_4f
    :try_start_50
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_STICKER_PACK:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x51

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_50

    :catch_50
    :try_start_51
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_TIME:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x52

    aput v2, v0, v1
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_51

    :catch_51
    :try_start_52
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_VIEWER_CAMERA:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x53

    aput v2, v0, v1
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_52

    :catch_52
    :try_start_53
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_VOICE_ANSWER:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x54

    aput v2, v0, v1
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_53

    :catch_53
    :try_start_54
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_STORY_WITH_CONTEXT:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x55

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_54

    :catch_54
    :try_start_55
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_SUPERAPP_MENU:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x56

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_55

    :catch_55
    :try_start_56
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_TRAFFIC_SAVER:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x57

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_56

    :catch_56
    :try_start_57
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_VKPAY_WIDGET:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x58

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_57} :catch_57

    :catch_57
    :try_start_58
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_VKUI_INTERNAL_TO_MINI_APPS:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x59

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_58} :catch_58

    :catch_58
    :try_start_59
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_VKUI_TOKEN_CACHE:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x5a

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_59} :catch_59

    :catch_59
    :try_start_5a
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_VK_APPS_SEARCH:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x5b

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_5a} :catch_5a

    :catch_5a
    :try_start_5b
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_VOTES_BALANCE:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x5c

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_5b} :catch_5b

    :catch_5b
    :try_start_5c
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_WEBVIEW_TOKEN_ACTIVE:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x5d

    aput v2, v0, v1
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_5c} :catch_5c

    :catch_5c
    :try_start_5d
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_MILKSHAKE_FORCE_DISABLED:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x5e

    aput v2, v0, v1
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_5d} :catch_5d

    :catch_5d
    :try_start_5e
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_MILKSHAKE_ACTIVATION_DISABLED:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x5f

    aput v2, v0, v1
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_5e} :catch_5e

    :catch_5e
    :try_start_5f
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->EXPERIMENT_NEWS_DISABLE_CACHE:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x60

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_5f} :catch_5f

    :catch_5f
    :try_start_60
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    sget-object v1, Lcom/vk/toggle/Features$Type;->FEATURE_COMPACT_REPOST:Lcom/vk/toggle/Features$Type;

    invoke-virtual {v1}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x61

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_60} :catch_60

    :catch_60
    return-void
.end method
