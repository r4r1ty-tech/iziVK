.class public Lru/vtosters/lite/tgs/TGPref;
.super Ljava/lang/Object;
.source "TGPref.java"


# static fields
.field private static final Prefs:Landroid/content/SharedPreferences;

.field private static final TG_BOTKEY:Ljava/lang/String; = "VTGS:BKey"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/tgs/TGPref;->Prefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTGBotKey()Ljava/lang/String;
    .locals 3

    .line 13
    sget-object v0, Lru/vtosters/lite/tgs/TGPref;->Prefs:Landroid/content/SharedPreferences;

    const-string v1, "VTGS:BKey"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setTGBotKey(Ljava/lang/String;)V
    .locals 2

    .line 17
    sget-object v0, Lru/vtosters/lite/tgs/TGPref;->Prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "VTGS:BKey"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
