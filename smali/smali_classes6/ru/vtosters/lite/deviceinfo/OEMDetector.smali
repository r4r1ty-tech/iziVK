.class public Lru/vtosters/lite/deviceinfo/OEMDetector;
.super Ljava/lang/Object;
.source "OEMDetector.java"


# static fields
.field private static getPropMtd:Ljava/lang/reflect/Method;

.field private static isOneUi:Ljava/lang/Boolean;

.field private static oneUiMajorVersion:I

.field private static oneUiMinorVersion:F

.field private static semPlatformIntField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 25
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lru/vtosters/lite/utils/ReflectionUtils;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/deviceinfo/OEMDetector;->getPropMtd:Ljava/lang/reflect/Method;

    .line 26
    const-class v0, Landroid/os/Build$VERSION;

    const-string v1, "SEM_PLATFORM_INT"

    invoke-static {v0, v1}, Lru/vtosters/lite/utils/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/deviceinfo/OEMDetector;->semPlatformIntField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static detectMiuiV2()Z
    .locals 6

    .line 85
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    .line 86
    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.OP_AUTO_START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isIntentResolved(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.miui.permcenter.autostart.AutoStartManagementActivity"

    const-string v5, "com.miui.securitycenter"

    invoke-direct {v3, v5, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isIntentResolved(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v3, "miui.intent.action.POWER_HIDE_MODE_APP_LIST"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isIntentResolved(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.miui.powercenter.PowerSettings"

    invoke-direct {v2, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isIntentResolved(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static getEmuiVersionCode()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.build.version.emui"

    .line 125
    invoke-static {v0}, Lru/vtosters/lite/deviceinfo/OEMDetector;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMiuiUiVersionCode()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.miui.ui.version.code"

    .line 121
    invoke-static {v0}, Lru/vtosters/lite/deviceinfo/OEMDetector;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMiuiUiVersionIncrementalCode()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.build.version.incremental"

    .line 129
    invoke-static {v0}, Lru/vtosters/lite/deviceinfo/OEMDetector;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMiuiUiVersionName()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.miui.ui.version.name"

    .line 117
    invoke-static {v0}, Lru/vtosters/lite/deviceinfo/OEMDetector;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOneUiMajorVersion()I
    .locals 1

    .line 51
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isOneUi()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lru/vtosters/lite/deviceinfo/OEMDetector;->oneUiMajorVersion:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getOneUiMinorVersion()F
    .locals 1

    .line 55
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isOneUi()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lru/vtosters/lite/deviceinfo/OEMDetector;->oneUiMinorVersion:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 134
    :try_start_0
    sget-object v1, Lru/vtosters/lite/deviceinfo/OEMDetector;->getPropMtd:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method

.method public static hasMiuiIncrCode()Z
    .locals 1

    .line 93
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->getMiuiUiVersionIncrementalCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isMIUI()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEMUI()Z
    .locals 1

    const-string v0, "ro.build.hw_emui_api_level"

    .line 97
    invoke-static {v0}, Lru/vtosters/lite/deviceinfo/OEMDetector;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isFlyme()Z
    .locals 1

    const-string v0, "ro.build.ro.meizu.rom.config"

    .line 113
    invoke-static {v0}, Lru/vtosters/lite/deviceinfo/OEMDetector;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "persist.sys.static_blur_mode"

    invoke-static {v0}, Lru/vtosters/lite/deviceinfo/OEMDetector;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "persist.sys.use.flyme.icon"

    invoke-static {v0}, Lru/vtosters/lite/deviceinfo/OEMDetector;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isHyperOs()Z
    .locals 3

    const/4 v0, 0x0

    .line 73
    :try_start_0
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->getMiuiUiVersionCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xe

    if-le v1, v2, :cond_0

    .line 74
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isMIUI()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public static isIntentResolved(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMIUI()Z
    .locals 3

    .line 64
    :try_start_0
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.miui.system"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    .line 67
    :catch_0
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->detectMiuiV2()Z

    move-result v0

    return v0
.end method

.method public static isOEM()Z
    .locals 1

    .line 59
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isMIUI()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isEMUI()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isFlyme()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isZenUI()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isSamsung()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isVivo()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isOneUi()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isHyperOs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isOneUi()Z
    .locals 5

    .line 32
    sget-object v0, Lru/vtosters/lite/deviceinfo/OEMDetector;->isOneUi:Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v0, :cond_1

    .line 33
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isSamsung()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lru/vtosters/lite/deviceinfo/OEMDetector;->isOneUi:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 35
    :cond_1
    :try_start_0
    sget-object v0, Lru/vtosters/lite/deviceinfo/OEMDetector;->semPlatformIntField:Ljava/lang/reflect/Field;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    const v4, 0x186a0

    if-ge v0, v4, :cond_2

    .line 37
    sput-object v3, Lru/vtosters/lite/deviceinfo/OEMDetector;->isOneUi:Ljava/lang/Boolean;

    return v2

    :cond_2
    const v2, 0x15f90

    sub-int/2addr v0, v2

    .line 41
    div-int/lit16 v2, v0, 0x2710

    sput v2, Lru/vtosters/lite/deviceinfo/OEMDetector;->oneUiMajorVersion:I

    .line 42
    rem-int/lit16 v0, v0, 0x2710

    div-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    sput v0, Lru/vtosters/lite/deviceinfo/OEMDetector;->oneUiMinorVersion:F

    .line 43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/deviceinfo/OEMDetector;->isOneUi:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 45
    :catchall_0
    sput-object v3, Lru/vtosters/lite/deviceinfo/OEMDetector;->isOneUi:Ljava/lang/Boolean;

    .line 47
    :goto_1
    sget-object v0, Lru/vtosters/lite/deviceinfo/OEMDetector;->isOneUi:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isSamsung()Z
    .locals 1

    const-string v0, "ro.config.knox"

    .line 109
    invoke-static {v0}, Lru/vtosters/lite/deviceinfo/OEMDetector;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isVivo()Z
    .locals 1

    const-string v0, "ro.vivo.os.version"

    .line 105
    invoke-static {v0}, Lru/vtosters/lite/deviceinfo/OEMDetector;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ro.vivo.rom"

    invoke-static {v0}, Lru/vtosters/lite/deviceinfo/OEMDetector;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ro.vivo.rom.version"

    invoke-static {v0}, Lru/vtosters/lite/deviceinfo/OEMDetector;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ro.vivo.build.version.sdk"

    invoke-static {v0}, Lru/vtosters/lite/deviceinfo/OEMDetector;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isZenUI()Z
    .locals 1

    const-string v0, "ro.asus.ui"

    .line 101
    invoke-static {v0}, Lru/vtosters/lite/deviceinfo/OEMDetector;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
