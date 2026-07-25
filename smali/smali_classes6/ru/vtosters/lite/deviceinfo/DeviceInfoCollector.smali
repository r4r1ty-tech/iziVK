.class public Lru/vtosters/lite/deviceinfo/DeviceInfoCollector;
.super Ljava/lang/Object;
.source "DeviceInfoCollector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect()Lru/vtosters/lite/deviceinfo/Device;
    .locals 2

    .line 10
    new-instance v0, Lru/vtosters/lite/deviceinfo/Device;

    invoke-direct {v0}, Lru/vtosters/lite/deviceinfo/Device;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    invoke-virtual {v0, v1}, Lru/vtosters/lite/deviceinfo/Device;->withSdkVersion(I)Lru/vtosters/lite/deviceinfo/Device;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1}, Lru/vtosters/lite/deviceinfo/Device;->withProductName(Ljava/lang/String;)Lru/vtosters/lite/deviceinfo/Device;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Lru/vtosters/lite/deviceinfo/Device;->withDeviceName(Ljava/lang/String;)Lru/vtosters/lite/deviceinfo/Device;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v1}, Lru/vtosters/lite/deviceinfo/Device;->withBoardName(Ljava/lang/String;)Lru/vtosters/lite/deviceinfo/Device;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v1}, Lru/vtosters/lite/deviceinfo/Device;->withManufacturerName(Ljava/lang/String;)Lru/vtosters/lite/deviceinfo/Device;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v1}, Lru/vtosters/lite/deviceinfo/Device;->withBrandName(Ljava/lang/String;)Lru/vtosters/lite/deviceinfo/Device;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1}, Lru/vtosters/lite/deviceinfo/Device;->withModelName(Ljava/lang/String;)Lru/vtosters/lite/deviceinfo/Device;

    move-result-object v0

    .line 18
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->getOneUiMajorVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/vtosters/lite/deviceinfo/Device;->withOneUiMajorVersionName(Ljava/lang/String;)Lru/vtosters/lite/deviceinfo/Device;

    move-result-object v0

    .line 19
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->getOneUiMinorVersion()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/vtosters/lite/deviceinfo/Device;->withOneUiMinorVersionName(Ljava/lang/String;)Lru/vtosters/lite/deviceinfo/Device;

    move-result-object v0

    .line 20
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->getMiuiUiVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/vtosters/lite/deviceinfo/Device;->withMiuiUiVersionName(Ljava/lang/String;)Lru/vtosters/lite/deviceinfo/Device;

    move-result-object v0

    .line 21
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->getMiuiUiVersionIncrementalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/vtosters/lite/deviceinfo/Device;->withMiuiIncrementalCodeName(Ljava/lang/String;)Lru/vtosters/lite/deviceinfo/Device;

    move-result-object v0

    .line 22
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->getEmuiVersionCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/vtosters/lite/deviceinfo/Device;->withEmuiVersionName(Ljava/lang/String;)Lru/vtosters/lite/deviceinfo/Device;

    move-result-object v0

    .line 23
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->getMiuiUiVersionCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/vtosters/lite/deviceinfo/Device;->withMiuiUiVersionCodeName(Ljava/lang/String;)Lru/vtosters/lite/deviceinfo/Device;

    move-result-object v0

    return-object v0
.end method
