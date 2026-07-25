.class public Lru/vtosters/hooks/GmsHook;
.super Ljava/lang/Object;
.source "GmsHook.java"


# static fields
.field private static final currentGms:Ljava/lang/String;

.field private static final spoofPackages:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.mgoogle"

    const-string v1, "app.revanced"

    .line 14
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lru/vtosters/hooks/GmsHook;->spoofPackages:[Ljava/lang/String;

    .line 18
    invoke-static {}, Lru/vtosters/hooks/GmsHook;->getSpoofPackagePrefix()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lru/vtosters/hooks/GmsHook;->currentGms:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fixGapps()V
    .locals 5

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-static {}, Lru/vtosters/hooks/GmsHook;->isGmsInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v1, "audio_playback_channel"

    .line 51
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v2

    if-nez v2, :cond_0

    .line 52
    new-instance v2, Landroid/app/NotificationChannel;

    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12012d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v1, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method public static getCurrentGms()Ljava/lang/String;
    .locals 1

    .line 70
    sget-object v0, Lru/vtosters/hooks/GmsHook;->currentGms:Ljava/lang/String;

    return-object v0
.end method

.method public static getFirebaseInstanceIdReceiver()Ljava/lang/String;
    .locals 1

    .line 62
    invoke-static {}, Lru/vtosters/hooks/GmsHook;->getFirebaseInstanceIdReceiverClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFirebaseInstanceIdReceiverClass()Ljava/lang/Class;
    .locals 1

    .line 66
    invoke-static {}, Lru/vtosters/hooks/GmsHook;->getSpoofFirebaseInstanceIdReceiverClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static getSpoofFirebaseInstanceIdReceiverClass()Ljava/lang/Class;
    .locals 2

    .line 87
    sget-object v0, Lru/vtosters/hooks/GmsHook;->currentGms:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "app.revanced"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.mgoogle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;

    return-object v0

    .line 89
    :cond_0
    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver2;

    return-object v0

    .line 92
    :cond_1
    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver3;

    return-object v0
.end method

.method private static getSpoofPackagePrefix()Ljava/lang/String;
    .locals 5

    .line 78
    sget-object v0, Lru/vtosters/hooks/GmsHook;->spoofPackages:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 79
    invoke-static {v3}, Lru/vtosters/hooks/GmsHook;->isSpoofPackageInstalled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "com.google"

    return-object v0
.end method

.method public static isAnyServicesInstalled()Z
    .locals 5

    .line 39
    sget-object v0, Lru/vtosters/hooks/GmsHook;->spoofPackages:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 40
    invoke-static {v4}, Lru/vtosters/hooks/GmsHook;->isSpoofPackageInstalled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static isGmsInstalled()Z
    .locals 1

    const-string v0, "com.google.android.gms"

    .line 31
    invoke-static {v0}, Lru/vtosters/hooks/GmsHook;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isPackageInstalled(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 23
    :try_start_0
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public static isSpoofPackageInstalled(Ljava/lang/String;)Z
    .locals 1

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".android.gms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/hooks/GmsHook;->isPackageInstalled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static replaceGMSPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 58
    invoke-static {}, Lru/vtosters/hooks/GmsHook;->shouldSpoof()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.google"

    sget-object v1, Lru/vtosters/hooks/GmsHook;->currentGms:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static shouldSpoof()Z
    .locals 1

    .line 74
    invoke-static {}, Lru/vtosters/hooks/GmsHook;->isGmsInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.mgoogle"

    invoke-static {v0}, Lru/vtosters/hooks/GmsHook;->isSpoofPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "app.revanced"

    invoke-static {v0}, Lru/vtosters/hooks/GmsHook;->isSpoofPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
