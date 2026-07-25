.class public Lru/vtosters/lite/themes/VTLResources;
.super Landroid/content/res/Resources;
.source "VTLResources.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VTLResources"

.field private static final attributesToTheme:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static typedArrayField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lru/vtosters/lite/themes/VTLResources;->attributesToTheme:Ljava/util/List;

    .line 25
    :try_start_0
    const-class v0, Landroid/content/res/TypedArray;

    const-string v1, "mData"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/themes/VTLResources;->typedArrayField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 31
    :goto_0
    sget-object v0, Lru/vtosters/lite/themes/VTLResources;->attributesToTheme:Ljava/util/List;

    const v1, 0x1010121

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x101046b

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x10101a5

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 1

    .line 37
    invoke-virtual {p2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-void
.end method

.method private fixDropdown(ILandroid/graphics/drawable/Drawable;)V
    .locals 1

    const v0, 0x7f080920

    if-ne p1, v0, :cond_0

    .line 90
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMonetTheme()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 91
    invoke-static {p2}, Lru/vtosters/lite/themes/ThemesHacks;->fixDropdown(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private static getArrayData(Landroid/content/res/TypedArray;)[I
    .locals 2

    .line 46
    :try_start_0
    sget-object v0, Lru/vtosters/lite/themes/VTLResources;->typedArrayField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "VTLResources"

    const-string v1, "getArrayData: "

    .line 48
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->fillInStackTrace()Ljava/lang/Throwable;

    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0
.end method

.method private static isAttrThemeable(I)Z
    .locals 1

    .line 41
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isDarkTheme()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0400dd

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$obtainAttributes$0([I[II)V
    .locals 3

    .line 62
    :try_start_0
    aget p0, p0, p2

    .line 63
    sget-object v0, Lru/vtosters/lite/themes/VTLResources;->attributesToTheme:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    mul-int/lit8 p2, p2, 0x6

    .line 64
    aget p0, p1, p2

    add-int/lit8 v0, p2, 0x1

    .line 65
    aget v1, p1, v0

    const/4 v2, 0x2

    if-ne p0, v2, :cond_0

    .line 67
    invoke-static {v1}, Lru/vtosters/lite/themes/VTLResources;->isAttrThemeable(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1d

    .line 68
    aput p0, p1, p2

    .line 69
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result p0

    aput p0, p1, v0

    add-int/2addr p2, v2

    const/4 p0, 0x0

    .line 70
    aput p0, p1, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "VTLResources"

    const-string p2, "TAVzlom failed! (obtainAttributes)"

    .line 74
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 84
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 85
    invoke-direct {p0, p1, p2}, Lru/vtosters/lite/themes/VTLResources;->fixDropdown(ILandroid/graphics/drawable/Drawable;)V

    return-object p2
.end method

.method public obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 3

    .line 56
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 58
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMonetTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {p1}, Lru/vtosters/lite/themes/VTLResources;->getArrayData(Landroid/content/res/TypedArray;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 60
    array-length v2, p2

    invoke-static {v1, v2}, Lj$/util/stream/IntStream$-CC;->range(II)Lj$/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lru/vtosters/lite/themes/VTLResources$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, v0}, Lru/vtosters/lite/themes/VTLResources$$ExternalSyntheticLambda0;-><init>([I[I)V

    invoke-interface {v1, v2}, Lj$/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    :cond_0
    return-object p1
.end method
