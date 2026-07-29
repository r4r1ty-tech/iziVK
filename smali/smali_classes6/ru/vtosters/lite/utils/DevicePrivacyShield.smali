.class public Lru/vtosters/lite/utils/DevicePrivacyShield;
.super Ljava/lang/Object;
.source "DevicePrivacyShield.java"


# static fields
.field public static final FAKE_ANDROID_ID:Ljava/lang/String; = "0000000000000000"

.field public static final FAKE_IMEI:Ljava/lang/String; = "000000000000000"

.field public static final FAKE_MAC:Ljava/lang/String; = "02:00:00:00:00:00"

.field private static final VPN_IFACES:[Ljava/lang/String;

.field private static sRandomAndroidId:Ljava/lang/String;

.field private static sRandomDeviceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tun0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "tun1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ppp0"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pptp0"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "wg0"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ipsec0"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ccmni"

    aput-object v2, v0, v1

    sput-object v0, Lru/vtosters/lite/utils/DevicePrivacyShield;->VPN_IFACES:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lru/vtosters/lite/utils/DevicePrivacyShield;->sRandomAndroidId:Ljava/lang/String;

    sput-object v0, Lru/vtosters/lite/utils/DevicePrivacyShield;->sRandomDeviceId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnonymizedAndroidId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lru/vtosters/lite/utils/DevicePrivacyShield;->sRandomAndroidId:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/utils/DevicePrivacyShield;->sRandomAndroidId:Ljava/lang/String;

    :cond_0
    sget-object v0, Lru/vtosters/lite/utils/DevicePrivacyShield;->sRandomAndroidId:Ljava/lang/String;

    return-object v0
.end method

.method public static getAnonymizedDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lru/vtosters/lite/utils/DevicePrivacyShield;->sRandomDeviceId:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/utils/DevicePrivacyShield;->sRandomDeviceId:Ljava/lang/String;

    :cond_0
    sget-object v0, Lru/vtosters/lite/utils/DevicePrivacyShield;->sRandomDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public static getAnonymizedMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "02:00:00:00:00:00"

    return-object p0
.end method

.method public static isVpnActive()Z
    .locals 2

    const-string v0, "iziVK-Privacy"

    const-string v1, "VPN check -> hidden (false)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static isVpnInterfaceName(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "tun"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    const-string v1, "ppp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lru/vtosters/lite/utils/DevicePrivacyShield;->VPN_IFACES:[Ljava/lang/String;

    array-length v3, v1

    move v4, v0

    :cond_2
    if-ge v4, v3, :cond_4

    aget-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_3
    :goto_0
    return v2

    :cond_4
    :goto_1
    return v0
.end method

.method public static sanitizeInstalledApplications(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "iziVK-Privacy"

    const-string v1, "getInstalledApplications blocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static sanitizeInstalledPackages(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "iziVK-Privacy"

    const-string v1, "getInstalledPackages blocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static sanitizeNetworkInterfaces(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lru/vtosters/lite/utils/DevicePrivacyShield;->isVpnInterfaceName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getAnonymizedBssid(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "02:00:00:00:00:00"

    return-object p0
.end method

.method public static getAnonymizedSsid(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "<unknown ssid>"

    return-object p0
.end method

