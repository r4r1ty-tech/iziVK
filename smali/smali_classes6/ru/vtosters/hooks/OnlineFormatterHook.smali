.class public Lru/vtosters/hooks/OnlineFormatterHook;
.super Ljava/lang/Object;
.source "OnlineFormatterHook.java"


# static fields
.field private static AppName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$sfgetAppName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lru/vtosters/hooks/OnlineFormatterHook;->AppName:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputAppName(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lru/vtosters/hooks/OnlineFormatterHook;->AppName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppName(I)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x3

    if-le p0, v0, :cond_1

    const/4 v0, 0x1

    .line 31
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "onlineformatter"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const v0, 0x7f1217a8

    const v1, 0x7f1217a7

    const v2, 0x7f12173a

    const v3, 0x7f1217ad

    const-string v4, " (iPhone)"

    const-string v5, " (Android)"

    sparse-switch p0, :sswitch_data_0

    .line 87
    invoke-static {p0}, Lru/vtosters/hooks/OnlineFormatterHook;->getAppNameFromOnline(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :sswitch_0
    const-string p0, "VK Me Web"

    goto/16 :goto_0

    :sswitch_1
    const p0, 0x7f1217af

    .line 65
    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 62
    :sswitch_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 63
    :sswitch_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 58
    :sswitch_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 59
    :sswitch_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :sswitch_6
    const-string p0, "Quise"

    goto/16 :goto_0

    :sswitch_7
    const p0, 0x7f1217ac

    .line 53
    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 60
    :sswitch_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (Desktop)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 54
    :sswitch_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 55
    :sswitch_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 56
    :sswitch_b
    invoke-static {v2}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :sswitch_c
    const-string p0, "VK ID"

    goto/16 :goto_0

    :sswitch_d
    const-string p0, "\u0412\u0435\u0447\u043d\u044b\u0439 Online"

    goto/16 :goto_0

    :sswitch_e
    const-string p0, "Fast"

    goto/16 :goto_0

    :sswitch_f
    const-string p0, "VK Helper"

    goto/16 :goto_0

    .line 61
    :sswitch_10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f1217ae

    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :sswitch_11
    const-string p0, "Laney"

    goto/16 :goto_0

    .line 50
    :sswitch_12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 52
    :sswitch_13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Dev (iPhone)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :sswitch_14
    const-string p0, "VK mp3 mod"

    goto/16 :goto_0

    :sswitch_15
    const-string p0, "vk.com"

    goto/16 :goto_0

    :sswitch_16
    const-string p0, "MemeVoices for VK"

    goto/16 :goto_0

    .line 49
    :sswitch_17
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :sswitch_18
    const-string p0, "VK Admin (Android)"

    goto/16 :goto_0

    :sswitch_19
    const-string p0, "Juno Messenger"

    goto/16 :goto_0

    :sswitch_1a
    const-string p0, "VK Mobile"

    goto :goto_0

    :sswitch_1b
    const-string p0, "DarkVK"

    goto :goto_0

    :sswitch_1c
    const-string p0, "VK Admin (iPhone)"

    goto :goto_0

    :sswitch_1d
    const-string p0, "SpaceVK"

    goto :goto_0

    :sswitch_1e
    const-string p0, "Fast Messenger"

    goto :goto_0

    :sswitch_1f
    const-string p0, "Candy"

    goto :goto_0

    :sswitch_20
    const-string p0, "VK Messenger (Desktop)"

    goto :goto_0

    :sswitch_21
    const-string p0, "Phoenix for VK"

    goto :goto_0

    :sswitch_22
    const-string p0, "Snapster (iPhone)"

    goto :goto_0

    :sswitch_23
    const-string p0, "Phoenix Lite"

    goto :goto_0

    :sswitch_24
    const-string p0, "Snapster (Android)"

    goto :goto_0

    :sswitch_25
    const-string p0, "Black VK"

    goto :goto_0

    :sswitch_26
    const-string p0, "VFeed Pro (iPhone)"

    goto :goto_0

    :sswitch_27
    const-string p0, "VFeed (iPhone)"

    goto :goto_0

    :sswitch_28
    const-string p0, "Miranda NG (bridge)"

    goto :goto_0

    :sswitch_29
    const-string p0, "\u0414\u043e\u043c\u043e\u0444\u043e\u043d"

    goto :goto_0

    :sswitch_2a
    const-string p0, "Instagram"

    goto :goto_0

    :sswitch_2b
    const-string p0, "Windows"

    goto :goto_0

    :sswitch_2c
    const-string p0, "iPad"

    goto :goto_0

    :sswitch_2d
    const-string p0, "Windows Phone"

    goto :goto_0

    :sswitch_2e
    const-string p0, "Lynt"

    goto :goto_0

    :sswitch_2f
    const-string p0, "iPhone"

    goto :goto_0

    :sswitch_30
    const-string p0, "iPhone (Dev)"

    goto :goto_0

    :sswitch_31
    const-string p0, "Vika"

    goto :goto_0

    :sswitch_32
    const-string p0, "Kate Mobile"

    goto :goto_0

    :sswitch_33
    const-string p0, "Android"

    :goto_0
    return-object p0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22b2d3 -> :sswitch_33
        0x28f95e -> :sswitch_32
        0x2e442b -> :sswitch_31
        0x2f1b02 -> :sswitch_30
        0x2fec0f -> :sswitch_2f
        0x34f2a0 -> :sswitch_2e
        0x3571dd -> :sswitch_2d
        0x3571e1 -> :sswitch_2d
        0x3831b8 -> :sswitch_2c
        0x386bcf -> :sswitch_2b
        0x386d68 -> :sswitch_2a
        0x3b82c2 -> :sswitch_29
        0x3bc856 -> :sswitch_28
        0x3e4f66 -> :sswitch_27
        0x42e9f2 -> :sswitch_26
        0x4550a0 -> :sswitch_25
        0x45e42f -> :sswitch_24
        0x4ab003 -> :sswitch_23
        0x4c184a -> :sswitch_22
        0x4c350c -> :sswitch_21
        0x4cb78a -> :sswitch_20
        0x4cf90b -> :sswitch_1f
        0x511f94 -> :sswitch_27
        0x51b048 -> :sswitch_29
        0x535b6f -> :sswitch_1e
        0x55f1e5 -> :sswitch_1d
        0x5825d9 -> :sswitch_1c
        0x5a3137 -> :sswitch_1b
        0x5adec1 -> :sswitch_1a
        0x5c02b3 -> :sswitch_19
        0x5d67b4 -> :sswitch_18
        0x5dcb0b -> :sswitch_17
        0x5f58d5 -> :sswitch_16
        0x5ff07f -> :sswitch_15
        0x608ee7 -> :sswitch_14
        0x609224 -> :sswitch_14
        0x62e733 -> :sswitch_13
        0x62ec06 -> :sswitch_12
        0x64ee5c -> :sswitch_11
        0x67434e -> :sswitch_10
        0x6812a4 -> :sswitch_14
        0x692d87 -> :sswitch_f
        0x6a45c7 -> :sswitch_e
        0x6e32b0 -> :sswitch_d
        0x7267b2 -> :sswitch_c
        0x734de0 -> :sswitch_b
        0x738927 -> :sswitch_a
        0x73f1ec -> :sswitch_9
        0x76e9de -> :sswitch_8
        0x770367 -> :sswitch_7
        0x7abd26 -> :sswitch_6
        0x7b8022 -> :sswitch_5
        0x7b830c -> :sswitch_4
        0x7bb1bc -> :sswitch_3
        0x7bcc91 -> :sswitch_2
        0x7bcf92 -> :sswitch_1
        0x7d296e -> :sswitch_0
    .end sparse-switch
.end method

.method public static getAppNameFromOnline(I)Ljava/lang/String;
    .locals 4

    const-string v0, "onlines"

    .line 93
    invoke-static {v0}, Lru/vtosters/hooks/other/Preferences;->getPrefsFromFile(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 94
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 98
    :cond_0
    new-instance v1, Lokhttp3/Request$a;

    invoke-direct {v1}, Lokhttp3/Request$a;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lru/vtosters/lite/proxy/ProxyUtils;->getApi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/method/apps.get?app_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "&v=5.99&access_token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Request$a;->b(Ljava/lang/String;)Lokhttp3/Request$a;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Lokhttp3/Request$a;->a()Lokhttp3/Request;

    move-result-object v1

    .line 102
    sget-object v2, Lcom/vk/core/network/Network$ClientType;->CLIENT_API:Lcom/vk/core/network/Network$ClientType;

    invoke-static {v2}, Lcom/vk/core/network/Network;->b(Lcom/vk/core/network/Network$ClientType;)Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    new-instance v2, Lru/vtosters/hooks/OnlineFormatterHook$1;

    invoke-direct {v2, v0, p0}, Lru/vtosters/hooks/OnlineFormatterHook$1;-><init>(Landroid/content/SharedPreferences;I)V

    invoke-interface {v1, v2}, Lokhttp3/Call;->a(Lokhttp3/Callback;)V

    .line 127
    sget-object p0, Lru/vtosters/hooks/OnlineFormatterHook;->AppName:Ljava/lang/String;

    return-object p0
.end method

.method public static getOnline(I)Ljava/lang/String;
    .locals 2

    .line 131
    invoke-static {p0}, Lru/vtosters/hooks/OnlineFormatterHook;->getAppName(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f1215a0

    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static onlineHook(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    const/4 v0, 0x0

    .line 139
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "onlinefix"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->serverFeaturesDisable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    :try_start_0
    invoke-static {p0}, Lru/vtosters/hooks/JsonInjectors;->setOnlineInfo(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "onlineHook"

    .line 144
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static onlineHookItems(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    const/4 v0, 0x0

    .line 195
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "onlinefix"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->serverFeaturesDisable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "items"

    .line 198
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/hooks/JsonInjectors;->setOnlineInfoUsers(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "onlineHookItems"

    .line 200
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static onlineHookList(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/vk/im/engine/models/users/User;",
            ">;"
        }
    .end annotation

    .line 153
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "response"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 157
    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 158
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const-string v2, "onlinefix"

    const/4 v3, 0x0

    .line 160
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v4}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->serverFeaturesDisable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 162
    :cond_0
    :try_start_1
    invoke-static {p0}, Lru/vtosters/hooks/JsonInjectors;->setOnlineInfoUsers(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    if-ge v3, v1, :cond_2

    .line 171
    :try_start_2
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 175
    invoke-static {v2}, Lcom/vk/im/engine/internal/api_parsers/UserApiParser;->b(Lorg/json/JSONObject;)Lcom/vk/im/engine/models/users/User;

    move-result-object v2

    .line 176
    invoke-virtual {v2}, Lcom/vk/im/engine/models/users/User;->getId()I

    move-result v4

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 173
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    return-object v0

    :catch_1
    move-exception p0

    .line 164
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    .line 155
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static onlineHookProfiles(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    const/4 v0, 0x0

    .line 183
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "onlinefix"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->serverFeaturesDisable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "profiles"

    .line 186
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/hooks/JsonInjectors;->setOnlineInfoUsers(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "onlineHookProfiles"

    .line 188
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static onlineHookRequestsAndRecommendations(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "items"

    const-string v1, "onlineHookItemsRec"

    const/4 v2, 0x0

    .line 207
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "onlinefix"

    invoke-static {v3, v2}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->serverFeaturesDisable()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    const-string v2, "read_requests"

    .line 210
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lru/vtosters/hooks/JsonInjectors;->setOnlineInfoUsers(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 212
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    const-string v2, "recommendations"

    .line 216
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/hooks/JsonInjectors;->setOnlineInfoUsers(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 218
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    :try_start_2
    const-string v0, "profiles"

    .line 222
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/hooks/JsonInjectors;->setOnlineInfoUsers(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-object p0
.end method
