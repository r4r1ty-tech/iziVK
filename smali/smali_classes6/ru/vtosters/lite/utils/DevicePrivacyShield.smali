.class public Lru/vtosters/lite/utils/DevicePrivacyShield;
.super Ljava/lang/Object;
.source "DevicePrivacyShield.java"


# static fields
.field public static final FAKE_ANDROID_ID:Ljava/lang/String; = "0000000000000000"

.field public static final FAKE_IMEI:Ljava/lang/String; = "000000000000000"

.field public static final FAKE_MAC:Ljava/lang/String; = "02:00:00:00:00:00"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnonymizedAndroidId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "0000000000000000"

    return-object p0
.end method

.method public static getAnonymizedDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "000000000000000"

    return-object p0
.end method

.method public static getAnonymizedMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "02:00:00:00:00:00"

    return-object p0
.end method

.method public static sanitizeInstalledPackages(Ljava/util/List;)Ljava/util/List;
    .locals 0
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

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
