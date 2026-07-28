.class public Lru/vtosters/hooks/other/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static VKUI_INJ()Z
    .locals 2

    const/4 v0, 0x1

    .line 141
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "VKUI_INJ"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static ads()Z
    .locals 2

    const/4 v0, 0x1

    .line 92
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "__dbg_no_ads"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static adsgroup()Z
    .locals 2

    const/4 v0, 0x1

    .line 96
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "adsgroup"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static adsstories()Z
    .locals 2

    const/4 v0, 0x1

    .line 108
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "adsstories"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static alteremoji(Z)Z
    .locals 1

    .line 120
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->alteremojipref()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->alteremojipref()Z

    move-result p0

    :cond_0
    return p0
.end method

.method public static alteremojipref()Z
    .locals 2

    const/4 v0, 0x0

    .line 124
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "alteremoji"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static authorsrecomm()Z
    .locals 2

    const/4 v0, 0x0

    .line 72
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "authorsrecomm"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static autoalltranslate()Z
    .locals 2

    const/4 v0, 0x0

    .line 248
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "autoalltranslate"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static autocache()I
    .locals 3

    .line 104
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "autocaching"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static autotranslate()Z
    .locals 2

    .line 243
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->autoalltranslate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 244
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "autotranslate"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static awayphp()Z
    .locals 2

    const/4 v0, 0x1

    .line 128
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "awayphp"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static captions()Z
    .locals 2

    const/4 v0, 0x0

    .line 76
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "captions"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static checkupdates()Z
    .locals 3

    const/4 v0, 0x0

    .line 305
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isRoamingState"

    invoke-static {v2, v1}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->isValidSignature()Z

    :cond_0
    return v0
.end method

.method public static compress(I)I
    .locals 1

    .line 366
    invoke-static {}, Lcom/vk/medianative/MediaImageEncoder;->needToCompress()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x64

    :goto_0
    return p0
.end method

.method public static copyright_post()Z
    .locals 2

    const/4 v0, 0x0

    .line 80
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "copyright_post"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static dev()Z
    .locals 2

    const/4 v0, 0x0

    .line 146
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "dev"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public static devmenu()Z
    .locals 2

    const/4 v0, 0x0

    .line 151
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "devmenu"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public static disableForceTrafficSaver()Z
    .locals 2

    const/4 v0, 0x0

    .line 183
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "disableForceTrafficSaver"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static dnr()Z
    .locals 2

    const/4 v0, 0x1

    .line 155
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "dnr"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static dnt()Z
    .locals 2

    const/4 v0, 0x1

    .line 159
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "dnt"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static dockbar_accent()Z
    .locals 2

    const/4 v0, 0x1

    .line 195
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "dockbar_accent"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static dockcounter()Z
    .locals 2

    const/4 v0, 0x1

    .line 163
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "dockcounter"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static feedcache()Z
    .locals 2

    const/4 v0, 0x1

    .line 167
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "feedcache"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static foaf()Z
    .locals 2

    const/4 v0, 0x0

    .line 132
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "foaf"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static forceOffline()V
    .locals 1

    .line 54
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->setoffline()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->offline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lcom/vtosters/lite/data/Users;->a()V

    :cond_0
    return-void
.end method

.method public static friendsblock()Z
    .locals 2

    const/4 v0, 0x0

    .line 191
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "friendsblock"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static friendsrecomm()Z
    .locals 2

    const/4 v0, 0x0

    .line 88
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "friendsrecomm"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 1

    .line 60
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getBuildName()Ljava/lang/String;
    .locals 1

    const-string v0, "dev"

    .line 42
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->upString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getId()Ljava/lang/String;
    .locals 1

    .line 322
    invoke-static {}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 46
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.vtosters.lite_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getPrefsFromFile(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 2

    .line 64
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getSizeForDelete()J
    .locals 3

    .line 355
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "autoclearcache"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "500mb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "100mb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "5gb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "2gb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "1gb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_1

    :pswitch_0
    const-wide/32 v0, 0x1f400000

    goto :goto_1

    :pswitch_1
    const-wide/32 v0, 0x6400000

    goto :goto_1

    :pswitch_2
    const-wide v0, 0x140000000L

    goto :goto_1

    :pswitch_3
    const-wide v0, 0x80000000L

    goto :goto_1

    :pswitch_4
    const-wide/32 v0, 0x40000000

    :goto_1
    return-wide v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc4cc -> :sswitch_4
        0xc88d -> :sswitch_3
        0xd3d0 -> :sswitch_2
        0x2c91346 -> :sswitch_1
        0x301714a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 50
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hasMusicSubscription()Z
    .locals 2

    const/4 v0, 0x1

    .line 211
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "hasMusicSubscription"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static hasSpecialVerif()Z
    .locals 1

    .line 347
    invoke-static {}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserId()I

    move-result v0

    invoke-static {v0}, Lru/vtosters/lite/utils/VTVerifications;->isPrometheus(I)Z

    move-result v0

    return v0
.end method

.method public static hasVerification()Z
    .locals 1

    .line 343
    invoke-static {}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserId()I

    move-result v0

    invoke-static {v0}, Lru/vtosters/hooks/VerificationsHook;->isVerified(I)Z

    move-result v0

    return v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/vk/core/util/AppContextHolder;->a:Landroid/content/Context;

    .line 28
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 29
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 31
    invoke-static {p0}, Lcom/vk/medianative/MediaNative;->init(Landroid/content/Context;)V

    .line 33
    invoke-static {}, Lru/vtosters/hooks/GmsHook;->fixGapps()V

    .line 34
    invoke-static {}, Lru/vtosters/lite/proxy/ProxyUtils;->setProxy()V

    .line 35
    invoke-static {p0}, Lru/vtosters/lite/utils/VTVerifications;->load(Landroid/content/Context;)V

    .line 36
    invoke-static {p0}, Lru/vtosters/lite/utils/LifecycleUtils;->registerActivities(Landroid/app/Application;)V

    .line 38
    invoke-static {p0}, Lru/vtosters/lite/utils/AnalyticsHelper;->start(Landroid/app/Application;)V

    return-void
.end method

.method public static isEnableExternalOpening()Z
    .locals 2

    const/4 v0, 0x0

    .line 215
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "isEnableExternalOpening"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static isLikesOnRightEnabled()Z
    .locals 2

    const/4 v0, 0x0

    .line 351
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "is_likes_on_right"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static isMusicRestricted()Z
    .locals 2

    const/4 v0, 0x1

    .line 219
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "isMusicRestricted"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static isNewBuild()Z
    .locals 8

    const/4 v0, 0x1

    .line 309
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "invalidate_theme_cache_each_update"

    invoke-static {v2, v1}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 311
    :try_start_0
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    .line 312
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 313
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-wide v3, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 314
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v5, "setupTime"

    const-wide/16 v6, 0x0

    invoke-interface {v1, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    .line 316
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1
    return v2
.end method

.method public static isValidSignature()Z
    .locals 1

    .line 335
    :try_start_0
    invoke-static {}, Lru/vtosters/lite/utils/SignatureChecker;->validateAppSignature()Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 337
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public static metadataSeparator()Ljava/lang/String;
    .locals 3

    .line 370
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "metadata_separator"

    const-string v2, "; "

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static milkshake()Z
    .locals 2

    const/4 v0, 0x1

    .line 199
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "milkshake"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static miniapps()Z
    .locals 2

    const/4 v0, 0x1

    .line 179
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "miniapps"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static navbar()Z
    .locals 2

    const/4 v0, 0x1

    .line 223
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "navbar"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static offline()Z
    .locals 2

    const/4 v0, 0x0

    .line 227
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "offline"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static postsrecomm()Z
    .locals 2

    const/4 v0, 0x0

    .line 231
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "postsrecomm"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static postsredesign()Z
    .locals 2

    const/4 v0, 0x1

    .line 203
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "postsredesign"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static refsfilter()Z
    .locals 2

    const/4 v0, 0x0

    .line 235
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "refsfilter"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static returnnorifs()Z
    .locals 2

    const/4 v0, 0x0

    .line 207
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "returnnorifs"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static savemsgsett()Z
    .locals 2

    const/4 v0, 0x0

    .line 187
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "savemsgsett"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static screenshotdetect()Z
    .locals 2

    const/4 v0, 0x1

    .line 300
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "screenshotdetect"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static sendMusicMetrics()Z
    .locals 2

    const/4 v0, 0x0

    .line 296
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "sendMusicMetrics"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static serverFeaturesDisable()Z
    .locals 2

    const/4 v0, 0x0

    .line 252
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "serverFeaturesDisable"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static setMetadataSeparator(Ljava/lang/String;)V
    .locals 2

    .line 374
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "metadata_separator"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setoffline()Z
    .locals 2

    const/4 v0, 0x0

    .line 239
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "setoffline"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static shitposting()Z
    .locals 2

    const/4 v0, 0x0

    .line 84
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "shitposting"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static shortinfo()Z
    .locals 2

    const/4 v0, 0x1

    .line 256
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "shortinfo"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static shortlinkfilter()Z
    .locals 2

    const/4 v0, 0x0

    .line 260
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "shortlinkfilter"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static shortpost()Z
    .locals 2

    const/4 v0, 0x1

    .line 264
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "shortpost"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static showmenu()Z
    .locals 2

    const/4 v0, 0x0

    .line 268
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "showmenu"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static ssl()Z
    .locals 2

    const/4 v0, 0x1

    .line 272
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "ssl"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static stories()Z
    .locals 2

    const/4 v0, 0x1

    .line 276
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "stories"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static superapp()Z
    .locals 3

    const/4 v0, 0x1

    .line 171
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "superapp"

    invoke-static {v2, v1}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static swipe()Z
    .locals 2

    const/4 v0, 0x1

    .line 280
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "swipe"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static systememoji()Z
    .locals 2

    const/4 v0, 0x0

    .line 284
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "systememoji"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static systemtheme()Z
    .locals 3

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "system_theme"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static updateBuildNumber()V
    .locals 5

    .line 327
    :try_start_0
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "setupTime"

    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-wide v2, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 329
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static useNewSettings()Ljava/lang/Class;
    .locals 2

    const/4 v0, 0x1

    .line 136
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "useNewSettings"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const-class v0, Lru/vtosters/lite/ui/fragments/VTSettings;

    goto :goto_0

    :cond_0
    const-class v0, Lcom/vtosters/lite/fragments/SettingsListFragment;

    :goto_0
    return-object v0
.end method

.method public static videofeed()Z
    .locals 2

    const/4 v0, 0x0

    .line 116
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "__dbg_disable_video_feed"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static vkme()Z
    .locals 2

    const/4 v0, 0x0

    .line 100
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "vkme"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static vkme_notifs()Z
    .locals 2

    const/4 v0, 0x0

    .line 292
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "vkme_notifs"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static vkpay()Z
    .locals 2

    const/4 v0, 0x1

    .line 175
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "vkpay"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static voice()Z
    .locals 2

    const/4 v0, 0x1

    .line 288
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "voice"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static wbios()Z
    .locals 2

    const/4 v0, 0x0

    .line 112
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "wbios"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method
