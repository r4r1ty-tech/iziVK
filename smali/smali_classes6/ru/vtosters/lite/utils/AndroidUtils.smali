.class public Lru/vtosters/lite/utils/AndroidUtils;
.super Ljava/lang/Object;
.source "AndroidUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;
    }
.end annotation


# static fields
.field private static final ALLOWED_CHARACTERS:Ljava/lang/String; = "0123456789qwertyuiopasdfghjklzxcvbnm"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    const-string v0, "MD5"

    .line 147
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 148
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 149
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    .line 152
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 153
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 154
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 159
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static areNotificationsEnabled()Z
    .locals 2

    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 166
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 167
    invoke-virtual {v0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v0

    return v0

    .line 169
    :cond_0
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    return v0
.end method

.method public static dp2px(F)I
    .locals 2

    .line 110
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    mul-float p0, p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static getApplicationName()Ljava/lang/String;
    .locals 2

    .line 97
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getArray(I)[Ljava/lang/String;
    .locals 1

    .line 73
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 77
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "array"

    invoke-static {p0, v1}, Lru/vtosters/lite/utils/AndroidUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCenterScreenCoords()[F
    .locals 4

    .line 101
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 102
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v2, 0x2

    .line 104
    div-int/2addr v0, v2

    .line 105
    div-int/2addr v1, v2

    new-array v2, v2, [F

    const/4 v3, 0x0

    int-to-float v0, v0

    aput v0, v2, v3

    const/4 v0, 0x1

    int-to-float v1, v1

    aput v1, v2, v0

    return-object v2
.end method

.method public static getGlobalContext()Landroid/content/Context;
    .locals 1

    .line 55
    sget-object v0, Lcom/vk/core/util/AppContextHolder;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static getIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 64
    :try_start_0
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "as type "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "iziVK"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    .line 93
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRandomString(I)Ljava/lang/String;
    .locals 5

    .line 174
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    const/16 v3, 0x24

    .line 177
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const-string v4, "0123456789qwertyuiopasdfghjklzxcvbnm"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    .line 183
    :try_start_0
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    const/16 v0, 0xa

    .line 185
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getRandomString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 187
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x400

    new-array v3, v2, [B

    :goto_0
    const/4 v4, 0x0

    .line 190
    invoke-virtual {p0, v3, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-lez v5, :cond_0

    .line 191
    invoke-virtual {v1, v3, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 193
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 195
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "AndroidUtils"

    .line 197
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getResources()Landroid/content/res/Resources;
    .locals 1

    .line 59
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1

    .line 81
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 85
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "string"

    invoke-static {p0, v1}, Lru/vtosters/lite/utils/AndroidUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getStringDate(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 89
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isAdbOrDeveloperOptionsEnabled(Landroid/content/ContentResolver;)Z
    .locals 3

    const-string v0, "adb_enabled"

    const/4 v1, 0x0

    .line 43
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v2, "development_settings_enabled"

    .line 44
    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    if-ne p0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isDebuggable()Z
    .locals 1

    .line 39
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFirstInstall(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x1

    .line 205
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-wide v1, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-wide v4, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p0, v1, v4

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :catch_0
    :goto_0
    return v0
.end method

.method public static isLinksUnverified(Landroid/app/Activity;)Z
    .locals 3

    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 124
    :cond_0
    const-class v0, Landroid/content/pm/verify/domain/DomainVerificationManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/verify/domain/DomainVerificationManager;

    .line 128
    :try_start_0
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/pm/verify/domain/DomainVerificationManager;->getDomainVerificationUserState(Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationUserState;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    invoke-virtual {p0}, Landroid/content/pm/verify/domain/DomainVerificationUserState;->getHostToStateMap()Ljava/util/Map;

    move-result-object p0

    const-string v0, "vk.com"

    .line 137
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    .line 139
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v2, 0x1

    :catch_0
    :cond_1
    return v2
.end method

.method public static isTablet()Z
    .locals 2

    .line 49
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120cba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    sget-object v1, Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;->large:Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;

    invoke-virtual {v1}, Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;->xlarge:Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;

    invoke-virtual {v1}, Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

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

.method public static openWebView(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    .line 118
    new-instance v0, Lcom/vtosters/lite/general/fragments/WebViewFragment$g;

    invoke-direct {v0, p0}, Lcom/vtosters/lite/general/fragments/WebViewFragment$g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vtosters/lite/general/fragments/WebViewFragment$g;->l()Lcom/vtosters/lite/general/fragments/WebViewFragment$g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/vtosters/lite/general/fragments/WebViewFragment$g;->m()Lcom/vtosters/lite/general/fragments/WebViewFragment$g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/vtosters/lite/general/fragments/WebViewFragment$g;->h()Lcom/vtosters/lite/general/fragments/WebViewFragment$g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/vtosters/lite/general/fragments/WebViewFragment$g;->j()Lcom/vtosters/lite/general/fragments/WebViewFragment$g;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/vtosters/lite/general/fragments/WebViewFragment$g;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static sendToast(Ljava/lang/String;)V
    .locals 0

    .line 114
    invoke-static {p0}, Lcom/vk/core/util/ToastUtils;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static upString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
