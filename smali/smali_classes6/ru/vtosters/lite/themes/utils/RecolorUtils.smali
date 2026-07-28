.class public Lru/vtosters/lite/themes/utils/RecolorUtils;
.super Ljava/lang/Object;
.source "RecolorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/vtosters/lite/themes/utils/RecolorUtils$ColorStateListCacheEntry;
    }
.end annotation


# static fields
.field private static final TL_TYPED_VALUE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field

.field private static final sColorStateCacheLock:Ljava/lang/Object;

.field private static final sColorStateCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray<",
            "Lru/vtosters/lite/themes/utils/RecolorUtils$ColorStateListCacheEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lru/vtosters/lite/themes/utils/RecolorUtils;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    .line 28
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    sput-object v0, Lru/vtosters/lite/themes/utils/RecolorUtils;->sColorStateCaches:Ljava/util/WeakHashMap;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lru/vtosters/lite/themes/utils/RecolorUtils;->sColorStateCacheLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addColorStateListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    .locals 3

    .line 32
    sget-object v0, Lru/vtosters/lite/themes/utils/RecolorUtils;->sColorStateCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lru/vtosters/lite/themes/utils/RecolorUtils;->sColorStateCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    if-nez v2, :cond_0

    .line 35
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 36
    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_0
    new-instance v1, Lru/vtosters/lite/themes/utils/RecolorUtils$ColorStateListCacheEntry;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-direct {v1, p2, p0}, Lru/vtosters/lite/themes/utils/RecolorUtils$ColorStateListCacheEntry;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/Configuration;)V

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 39
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static fixActionMenuIcons(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 61
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isDarkTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0600df

    invoke-static {v0}, Lru/vtosters/hooks/other/ThemesUtils;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7f040230

    invoke-static {v0}, Lru/vtosters/hooks/other/ThemesUtils;->getColorFromAttr(I)I

    move-result v0

    :goto_0
    invoke-static {p0, v0}, Lru/vtosters/lite/themes/utils/RecolorUtils;->recolorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static getCachedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 4

    .line 44
    sget-object v0, Lru/vtosters/lite/themes/utils/RecolorUtils;->sColorStateCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lru/vtosters/lite/themes/utils/RecolorUtils;->sColorStateCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-eqz v1, :cond_1

    .line 46
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/vtosters/lite/themes/utils/RecolorUtils$ColorStateListCacheEntry;

    if-eqz v2, :cond_1

    .line 47
    iget-object v3, v2, Lru/vtosters/lite/themes/utils/RecolorUtils$ColorStateListCacheEntry;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 48
    iget-object p0, v2, Lru/vtosters/lite/themes/utils/RecolorUtils$ColorStateListCacheEntry;->value:Landroid/content/res/ColorStateList;

    monitor-exit v0

    return-object p0

    .line 50
    :cond_0
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 52
    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getColor(Landroid/content/res/TypedArray;II)I
    .locals 1

    .line 65
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMonetTheme()Z

    move-result v0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lru/vtosters/lite/themes/utils/RecolorUtils;->recolorHexColor(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private static getTypedValue()Landroid/util/TypedValue;
    .locals 2

    .line 109
    sget-object v0, Lru/vtosters/lite/themes/utils/RecolorUtils;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/TypedValue;

    if-nez v1, :cond_0

    .line 111
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method private static inflateColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2

    .line 89
    invoke-static {p0, p1}, Lru/vtosters/lite/themes/utils/RecolorUtils;->isColorInt(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 92
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-static {v0, p1, p0}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method private static isColorInt(Landroid/content/Context;I)Z
    .locals 2

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 102
    invoke-static {}, Lru/vtosters/lite/themes/utils/RecolorUtils;->getTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    const/4 v1, 0x1

    .line 103
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 104
    iget p0, v0, Landroid/util/TypedValue;->type:I

    const/16 p1, 0x1c

    if-lt p0, p1, :cond_0

    const/16 p1, 0x1f

    if-gt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static recolorCSL(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 84
    :cond_0
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static recolorDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 57
    new-instance v0, Lcom/vk/core/drawable/RecoloredDrawable;

    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/vk/core/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-object v0
.end method

.method public static recolorHexColor(I)I
    .locals 0

    return p0
.end method

.method public static recolorTextView(Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method

.method public static themeCSL(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2

    .line 121
    invoke-static {p0, p1}, Lru/vtosters/lite/themes/utils/RecolorUtils;->getCachedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 126
    :cond_0
    invoke-static {p0, p1}, Lru/vtosters/lite/themes/utils/RecolorUtils;->inflateColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 128
    invoke-static {p0, p1, v0}, Lru/vtosters/lite/themes/utils/RecolorUtils;->addColorStateListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V

    return-object v0

    .line 132
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 133
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 135
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static themeCSL(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0

    return-object p0
.end method
