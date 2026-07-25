.class public Lru/vtosters/lite/deviceinfo/Device;
.super Ljava/lang/Object;
.source "Device.java"


# instance fields
.field private EmuiVersion:Ljava/lang/String;

.field private MiuiIncrementalCode:Ljava/lang/String;

.field private MiuiUiVersionCode:Ljava/lang/String;

.field private MiuiUiVersionName:Ljava/lang/String;

.field private OneUiMajorVersion:Ljava/lang/String;

.field private OneUiMinorVersion:Ljava/lang/String;

.field private boardName:Ljava/lang/String;

.field private brandName:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private manufacturerName:Ljava/lang/String;

.field private modelName:Ljava/lang/String;

.field private productName:Ljava/lang/String;

.field private sdkVersion:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public forLogging()Ljava/lang/String;
    .locals 5

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "**"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "device_info"

    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":** \n\n- Commit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-static {}, Lru/vtosters/lite/utils/VersionReader;->getVersionBuild()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n- Full Version Information: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-static {}, Lru/vtosters/lite/utils/VersionReader;->getVersionFull()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n- Android SDK: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lru/vtosters/lite/deviceinfo/Device;->sdkVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n- Product: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/vtosters/lite/deviceinfo/Device;->productName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n- Device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/vtosters/lite/deviceinfo/Device;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n- Board: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/vtosters/lite/deviceinfo/Device;->boardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n- Manufacturer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/vtosters/lite/deviceinfo/Device;->manufacturerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n- Brand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/vtosters/lite/deviceinfo/Device;->brandName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n- Model: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/vtosters/lite/deviceinfo/Device;->modelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isMIUI()Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_1

    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isHyperOs()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "- Miui/HyperOS Version Code: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lru/vtosters/lite/deviceinfo/Device;->MiuiUiVersionCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n- Miui/HyperOS Version Name: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lru/vtosters/lite/deviceinfo/Device;->MiuiUiVersionName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isSamsung()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "- OneUi Major Version: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lru/vtosters/lite/deviceinfo/Device;->OneUiMajorVersion:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n- OneUi Minor Version: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lru/vtosters/lite/deviceinfo/Device;->OneUiMinorVersion:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->hasMiuiIncrCode()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "- Miui Version Incremental Code: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lru/vtosters/lite/deviceinfo/Device;->MiuiIncrementalCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isEMUI()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "- Emui Version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lru/vtosters/lite/deviceinfo/Device;->EmuiVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toDeviceName()Ljava/lang/String;
    .locals 4

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Device information: commit=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lru/vtosters/lite/utils/VersionReader;->getVersionBuild()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', fullVersionInfo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-static {}, Lru/vtosters/lite/utils/VersionReader;->getVersionFull()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', isMilkshake=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMilkshake()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\', sdkVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lru/vtosters/lite/deviceinfo/Device;->sdkVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\', productName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/vtosters/lite/deviceinfo/Device;->productName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', deviceName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/vtosters/lite/deviceinfo/Device;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', boardName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/vtosters/lite/deviceinfo/Device;->boardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', manufacturerName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/vtosters/lite/deviceinfo/Device;->manufacturerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', brandName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/vtosters/lite/deviceinfo/Device;->brandName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isMIUI()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\', MiuiUiVersionCode=\'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lru/vtosters/lite/deviceinfo/Device;->MiuiUiVersionCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', MiuiUiVersionName=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lru/vtosters/lite/deviceinfo/Device;->MiuiUiVersionName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isSamsung()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\', OneUiMajorVersion=\'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lru/vtosters/lite/deviceinfo/Device;->OneUiMajorVersion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', OneUiMinorVersion=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lru/vtosters/lite/deviceinfo/Device;->OneUiMinorVersion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->hasMiuiIncrCode()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\', MiuiUiVersionIncrementalCode=\'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lru/vtosters/lite/deviceinfo/Device;->MiuiIncrementalCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isEMUI()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\', EmuiVersion=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lru/vtosters/lite/deviceinfo/Device;->EmuiVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', modelName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/vtosters/lite/deviceinfo/Device;->modelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withBoardName(Ljava/lang/String;)Lru/vtosters/lite/deviceinfo/Device;
    .locals 0

    .line 40
    iput-object p1, p0, Lru/vtosters/lite/deviceinfo/Device;->boardName:Ljava/lang/String;

    return-object p0
.end method

.method public withBrandName(Ljava/lang/String;)Lru/vtosters/lite/deviceinfo/Device;
    .locals 0

    .line 50
    iput-object p1, p0, Lru/vtosters/lite/deviceinfo/Device;->brandName:Ljava/lang/String;

    return-object p0
.end method

.method public withDeviceName(Ljava/lang/String;)Lru/vtosters/lite/deviceinfo/Device;
    .locals 0

    .line 35
    iput-object p1, p0, Lru/vtosters/lite/deviceinfo/Device;->deviceName:Ljava/lang/String;

    return-object p0
.end method

.method public withEmuiVersionName(Ljava/lang/String;)Lru/vtosters/lite/deviceinfo/Device;
    .locals 0

    .line 85
    iput-object p1, p0, Lru/vtosters/lite/deviceinfo/Device;->EmuiVersion:Ljava/lang/String;

    return-object p0
.end method

.method public withManufacturerName(Ljava/lang/String;)Lru/vtosters/lite/deviceinfo/Device;
    .locals 0

    .line 45
    iput-object p1, p0, Lru/vtosters/lite/deviceinfo/Device;->manufacturerName:Ljava/lang/String;

    return-object p0
.end method

.method public withMiuiIncrementalCodeName(Ljava/lang/String;)Lru/vtosters/lite/deviceinfo/Device;
    .locals 0

    .line 80
    iput-object p1, p0, Lru/vtosters/lite/deviceinfo/Device;->MiuiIncrementalCode:Ljava/lang/String;

    return-object p0
.end method

.method public withMiuiUiVersionCodeName(Ljava/lang/String;)Lru/vtosters/lite/deviceinfo/Device;
    .locals 0

    .line 65
    iput-object p1, p0, Lru/vtosters/lite/deviceinfo/Device;->MiuiUiVersionCode:Ljava/lang/String;

    return-object p0
.end method

.method public withMiuiUiVersionName(Ljava/lang/String;)Lru/vtosters/lite/deviceinfo/Device;
    .locals 0

    .line 60
    iput-object p1, p0, Lru/vtosters/lite/deviceinfo/Device;->MiuiUiVersionName:Ljava/lang/String;

    return-object p0
.end method

.method public withModelName(Ljava/lang/String;)Lru/vtosters/lite/deviceinfo/Device;
    .locals 0

    .line 55
    iput-object p1, p0, Lru/vtosters/lite/deviceinfo/Device;->modelName:Ljava/lang/String;

    return-object p0
.end method

.method public withOneUiMajorVersionName(Ljava/lang/String;)Lru/vtosters/lite/deviceinfo/Device;
    .locals 0

    .line 75
    iput-object p1, p0, Lru/vtosters/lite/deviceinfo/Device;->OneUiMajorVersion:Ljava/lang/String;

    return-object p0
.end method

.method public withOneUiMinorVersionName(Ljava/lang/String;)Lru/vtosters/lite/deviceinfo/Device;
    .locals 0

    .line 70
    iput-object p1, p0, Lru/vtosters/lite/deviceinfo/Device;->OneUiMinorVersion:Ljava/lang/String;

    return-object p0
.end method

.method public withProductName(Ljava/lang/String;)Lru/vtosters/lite/deviceinfo/Device;
    .locals 0

    .line 30
    iput-object p1, p0, Lru/vtosters/lite/deviceinfo/Device;->productName:Ljava/lang/String;

    return-object p0
.end method

.method public withSdkVersion(I)Lru/vtosters/lite/deviceinfo/Device;
    .locals 0

    .line 25
    iput p1, p0, Lru/vtosters/lite/deviceinfo/Device;->sdkVersion:I

    return-object p0
.end method
