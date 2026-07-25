.class public Lru/vtosters/lite/themes/palettes/PalettesManager;
.super Ljava/lang/Object;
.source "PalettesManager.java"


# static fields
.field private static final ASSETS_DIR:Ljava/lang/String; = "vtl_themes/palettes/"

.field private static final PALETTES_DIR:Ljava/io/File;

.field private static sInstance:Lru/vtosters/lite/themes/palettes/PalettesManager;


# instance fields
.field private final mPalettes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/vtosters/lite/themes/items/VTLPalette;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "VTL/palettes"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lru/vtosters/lite/themes/palettes/PalettesManager;->PALETTES_DIR:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/vtosters/lite/themes/palettes/PalettesManager;->mPalettes:Ljava/util/List;

    .line 33
    invoke-virtual {p0}, Lru/vtosters/lite/themes/palettes/PalettesManager;->load()V

    return-void
.end method

.method private copyPaletteFromAssets()V
    .locals 3

    .line 61
    :try_start_0
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "vtl_themes/palettes/"

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lru/vtosters/lite/themes/palettes/PalettesManager$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lru/vtosters/lite/themes/palettes/PalettesManager$$ExternalSyntheticLambda0;-><init>()V

    .line 63
    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lru/vtosters/lite/themes/palettes/PalettesManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lru/vtosters/lite/themes/palettes/PalettesManager$$ExternalSyntheticLambda1;-><init>(Landroid/content/res/AssetManager;)V

    .line 64
    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/io/IOException;->fillInStackTrace()Ljava/lang/Throwable;

    :goto_0
    return-void
.end method

.method public static getInstance()Lru/vtosters/lite/themes/palettes/PalettesManager;
    .locals 1

    .line 37
    sget-object v0, Lru/vtosters/lite/themes/palettes/PalettesManager;->sInstance:Lru/vtosters/lite/themes/palettes/PalettesManager;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lru/vtosters/lite/themes/palettes/PalettesManager;

    invoke-direct {v0}, Lru/vtosters/lite/themes/palettes/PalettesManager;-><init>()V

    sput-object v0, Lru/vtosters/lite/themes/palettes/PalettesManager;->sInstance:Lru/vtosters/lite/themes/palettes/PalettesManager;

    .line 39
    :cond_0
    sget-object v0, Lru/vtosters/lite/themes/palettes/PalettesManager;->sInstance:Lru/vtosters/lite/themes/palettes/PalettesManager;

    return-object v0
.end method

.method static synthetic lambda$copyPaletteFromAssets$1(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 2

    const-string v0, "vtl_themes/palettes/"

    .line 66
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    sget-object v1, Lru/vtosters/lite/themes/palettes/PalettesManager;->PALETTES_DIR:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lru/vtosters/lite/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 68
    invoke-virtual {p0}, Ljava/io/IOException;->fillInStackTrace()Ljava/lang/Throwable;

    :goto_0
    return-void
.end method

.method static synthetic lambda$getPalette$6(Ljava/lang/String;Lru/vtosters/lite/themes/items/VTLPalette;)Z
    .locals 0

    .line 101
    iget-object p1, p1, Lru/vtosters/lite/themes/items/VTLPalette;->id:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$load$0(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p0, ".json"

    .line 53
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$parsePalettes$2(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p0, ".json"

    .line 77
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$parsePalettes$3(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 1

    .line 81
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p0}, Lru/vtosters/lite/utils/IOUtils;->readAllLines(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 83
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$parsePalettes$4(Lorg/json/JSONObject;)Lru/vtosters/lite/themes/items/VTLPalette;
    .locals 1

    if-eqz p0, :cond_0

    .line 90
    :try_start_0
    invoke-static {p0}, Lru/vtosters/lite/themes/items/VTLPalette;->fromJson(Lorg/json/JSONObject;)Lru/vtosters/lite/themes/items/VTLPalette;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 92
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private parsePalettes()V
    .locals 2

    .line 77
    sget-object v0, Lru/vtosters/lite/themes/palettes/PalettesManager;->PALETTES_DIR:Ljava/io/File;

    new-instance v1, Lru/vtosters/lite/themes/palettes/PalettesManager$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lru/vtosters/lite/themes/palettes/PalettesManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/themes/palettes/PalettesManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lru/vtosters/lite/themes/palettes/PalettesManager$$ExternalSyntheticLambda3;-><init>(Lru/vtosters/lite/themes/palettes/PalettesManager;)V

    .line 78
    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public getPalette(I)Lru/vtosters/lite/themes/items/VTLPalette;
    .locals 1

    .line 108
    iget-object v0, p0, Lru/vtosters/lite/themes/palettes/PalettesManager;->mPalettes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/vtosters/lite/themes/items/VTLPalette;

    return-object p1
.end method

.method public getPalette(Ljava/lang/String;)Lru/vtosters/lite/themes/items/VTLPalette;
    .locals 2

    .line 100
    iget-object v0, p0, Lru/vtosters/lite/themes/palettes/PalettesManager;->mPalettes:Ljava/util/List;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/themes/palettes/PalettesManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lru/vtosters/lite/themes/palettes/PalettesManager$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 102
    invoke-interface {p1}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p1, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/vtosters/lite/themes/items/VTLPalette;

    return-object p1
.end method

.method public getPalettesCount()I
    .locals 1

    .line 112
    iget-object v0, p0, Lru/vtosters/lite/themes/palettes/PalettesManager;->mPalettes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method synthetic lambda$parsePalettes$5$ru-vtosters-lite-themes-palettes-PalettesManager([Ljava/io/File;)V
    .locals 2

    .line 78
    invoke-static {p1}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lru/vtosters/lite/themes/palettes/PalettesManager$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lru/vtosters/lite/themes/palettes/PalettesManager$$ExternalSyntheticLambda4;-><init>()V

    .line 79
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lru/vtosters/lite/themes/palettes/PalettesManager$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lru/vtosters/lite/themes/palettes/PalettesManager$$ExternalSyntheticLambda5;-><init>()V

    .line 87
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lru/vtosters/lite/themes/palettes/PalettesManager$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lru/vtosters/lite/themes/palettes/PalettesManager$$ExternalSyntheticLambda6;-><init>()V

    .line 88
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    iget-object v0, p0, Lru/vtosters/lite/themes/palettes/PalettesManager;->mPalettes:Ljava/util/List;

    .line 95
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lru/vtosters/lite/themes/palettes/PalettesManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lru/vtosters/lite/themes/palettes/PalettesManager$$ExternalSyntheticLambda7;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public load()V
    .locals 3

    .line 43
    iget-object v0, p0, Lru/vtosters/lite/themes/palettes/PalettesManager;->mPalettes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    sget-object v0, Lru/vtosters/lite/themes/palettes/PalettesManager;->PALETTES_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 47
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_1

    .line 48
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cannot_write"

    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 49
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe4

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 53
    :cond_1
    new-instance v1, Lru/vtosters/lite/themes/palettes/PalettesManager$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lru/vtosters/lite/themes/palettes/PalettesManager$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 54
    array-length v0, v0

    if-nez v0, :cond_3

    .line 55
    :cond_2
    invoke-direct {p0}, Lru/vtosters/lite/themes/palettes/PalettesManager;->copyPaletteFromAssets()V

    .line 56
    :cond_3
    invoke-direct {p0}, Lru/vtosters/lite/themes/palettes/PalettesManager;->parsePalettes()V

    return-void
.end method
