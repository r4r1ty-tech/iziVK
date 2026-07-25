.class public Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;
.super Ljava/lang/Object;
.source "WallpapersHooks.java"


# static fields
.field private static final MAX_WP_HEIGHT:I = 0x780

.field private static final MAX_WP_WIDTH:I = 0x438

.field private static final compress:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final compressedWp:Ljava/io/File;

.field private static mUpdateWallpaperRequested:Z

.field private static mWallpaper:Landroid/graphics/drawable/Drawable;

.field private static final originalWp:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->compress:Ljava/util/function/Supplier;

    .line 20
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "wallpaper_new.jpeg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->originalWp:Ljava/io/File;

    .line 21
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "compressedwp_new.jpeg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->compressedWp:Ljava/io/File;

    const/4 v0, 0x1

    .line 27
    sput-boolean v0, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->mUpdateWallpaperRequested:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static eligibleWallpaperFile(Ljava/io/File;)Ljava/lang/Boolean;
    .locals 4

    .line 96
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x600000

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const p0, 0x7f121826

    .line 97
    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->removeWallpaper()V

    const/4 p0, 0x0

    .line 99
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x1

    .line 101
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static getWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 30
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "wallpaper.jpeg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "compressedwp.jpeg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 35
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 38
    :cond_1
    sget-object v0, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->mWallpaper:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    sget-boolean v0, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->mUpdateWallpaperRequested:Z

    if-eqz v0, :cond_7

    .line 39
    :cond_2
    sget-object v0, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->originalWp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    return-object v2

    .line 43
    :cond_3
    sget-object v1, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->compress:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 44
    sget-object v0, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->compressedWp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->prepareCompressed()Z

    move-result v1

    if-nez v1, :cond_4

    return-object v2

    .line 47
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_6

    return-object v2

    .line 56
    :cond_6
    invoke-static {v0}, Lru/vtosters/lite/ui/wallpapers/ImageFilters;->getFilteredDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->mWallpaper:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 57
    sput-boolean v0, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->mUpdateWallpaperRequested:Z

    .line 60
    :cond_7
    sget-object v0, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->mWallpaper:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static getWallpaperFile()Ljava/io/File;
    .locals 1

    .line 92
    sget-object v0, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->originalWp:Ljava/io/File;

    return-object v0
.end method

.method public static hasWallpapers()Z
    .locals 1

    .line 106
    invoke-static {}, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->getWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$static$0()Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x1

    .line 19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "compresswp"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static prepareCompressed()Z
    .locals 5

    .line 68
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    sget-object v1, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->compressedWp:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :try_start_1
    sget-object v1, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->originalWp:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/16 v3, 0x438

    const/16 v4, 0x780

    if-gt v2, v4, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-le v2, v3, :cond_1

    .line 72
    :cond_0
    invoke-static {v1, v3, v4}, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 74
    :cond_1
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 77
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    const/16 v4, 0x55

    if-lt v1, v3, :cond_2

    .line 78
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->WEBP_LOSSY:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v2, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v2, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    .line 68
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Wallpapers"

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lvigo/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static removeWallpaper()V
    .locals 2

    const/4 v0, 0x0

    .line 115
    :try_start_0
    sput-object v0, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->mWallpaper:Landroid/graphics/drawable/Drawable;

    .line 116
    sget-object v0, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->originalWp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 117
    sget-object v0, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->compressedWp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Wallpapers"

    .line 119
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lvigo/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static requestUpdateWallpaper()V
    .locals 1

    const/4 v0, 0x1

    .line 110
    sput-boolean v0, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->mUpdateWallpaperRequested:Z

    return-void
.end method

.method private static resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 4

    if-lez p2, :cond_1

    if-lez p1, :cond_1

    .line 125
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 126
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p1

    int-to-float v2, p2

    div-float v3, v1, v2

    cmpl-float v3, v3, v0

    if-lez v3, :cond_0

    mul-float v2, v2, v0

    float-to-int p1, v2

    goto :goto_0

    :cond_0
    div-float/2addr v1, v0

    float-to-int p2, v1

    :goto_0
    const/4 v0, 0x1

    .line 137
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_1
    return-object p0
.end method
