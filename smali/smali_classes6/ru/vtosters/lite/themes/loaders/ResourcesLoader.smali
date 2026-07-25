.class public Lru/vtosters/lite/themes/loaders/ResourcesLoader;
.super Ljava/lang/Object;
.source "ResourcesLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/vtosters/lite/themes/loaders/ResourcesLoader$ResourceInsuranceHandlerCallback;
    }
.end annotation


# static fields
.field private static assetsFld:Ljava/lang/reflect/Field;

.field private static ensureStringBlocksMtd:Ljava/lang/reflect/Method;

.field private static packagesFld:Ljava/lang/reflect/Field;

.field private static publicSourceDirField:Ljava/lang/reflect/Field;

.field private static resDirFld:Ljava/lang/reflect/Field;

.field private static resourcePackagesFld:Ljava/lang/reflect/Field;

.field private static resourcesImplFld:Ljava/lang/reflect/Field;

.field private static sCurrentActivityThread:Ljava/lang/Object;

.field private static sResourceReferences:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field private static storedPatchedResModifiedTime:J

.field private static stringBlocksFld:Ljava/lang/reflect/Field;


# direct methods
.method static bridge synthetic -$$Nest$smisPatchedResModifiedAfterLastLoad(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->isPatchedResModifiedAfterLastLoad(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "android.app.ActivityThread"

    .line 47
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "android.app.LoadedApk"

    .line 50
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "android.app.ActivityThread$PackagenInfo"

    .line 52
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    :goto_0
    const-string v2, "mResDir"

    .line 55
    invoke-static {v1, v2}, Lru/vtosters/lite/utils/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->resDirFld:Ljava/lang/reflect/Field;

    const-string v1, "mPackages"

    .line 56
    invoke-static {v0, v1}, Lru/vtosters/lite/utils/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->packagesFld:Ljava/lang/reflect/Field;

    .line 57
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-ge v1, v2, :cond_0

    const-string v1, "mResourcePackages"

    .line 58
    invoke-static {v0, v1}, Lru/vtosters/lite/utils/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->resourcePackagesFld:Ljava/lang/reflect/Field;

    .line 62
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v1, 0x18

    const-string v2, "mAssets"

    if-lt v0, v1, :cond_1

    .line 65
    :try_start_3
    const-class v0, Landroid/content/res/Resources;

    const-string v1, "mResourcesImpl"

    invoke-static {v0, v1}, Lru/vtosters/lite/utils/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->resourcesImplFld:Ljava/lang/reflect/Field;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 68
    :catchall_0
    :try_start_4
    const-class v0, Landroid/content/res/Resources;

    invoke-static {v0, v2}, Lru/vtosters/lite/utils/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->assetsFld:Ljava/lang/reflect/Field;

    goto :goto_1

    .line 71
    :cond_1
    const-class v0, Landroid/content/res/Resources;

    invoke-static {v0, v2}, Lru/vtosters/lite/utils/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->assetsFld:Ljava/lang/reflect/Field;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 74
    :goto_1
    :try_start_5
    const-class v0, Landroid/content/pm/ApplicationInfo;

    const-string v1, "publicSourceDir"

    invoke-static {v0, v1}, Lru/vtosters/lite/utils/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->publicSourceDirField:Ljava/lang/reflect/Field;
    :try_end_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 82
    :catch_1
    :try_start_6
    const-class v0, Landroid/content/res/AssetManager;

    const-string v1, "mStringBlocks"

    invoke-static {v0, v1}, Lru/vtosters/lite/utils/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->stringBlocksFld:Ljava/lang/reflect/Field;

    .line 83
    const-class v0, Landroid/content/res/AssetManager;

    const-string v1, "ensureStringBlocks"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lru/vtosters/lite/utils/ReflectionUtils;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->ensureStringBlocksMtd:Ljava/lang/reflect/Method;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_1
    move-exception v0

    const-string v1, "WTF"

    .line 88
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :catchall_2
    :goto_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 93
    invoke-static {p0, v0}, Lru/vtosters/lite/utils/ReflectionUtils;->getActivityThread(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    sput-object p0, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->sCurrentActivityThread:Ljava/lang/Object;

    const-string p0, "android.app.ResourcesManager"

    .line 97
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getInstance"

    .line 98
    invoke-static {p0, v3, v2}, Lru/vtosters/lite/utils/ReflectionUtils;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 99
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    const-string v1, "mActiveResources"

    .line 101
    invoke-static {p0, v1}, Lru/vtosters/lite/utils/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 104
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    sput-object v1, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->sResourceReferences:Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "mResourceReferences"

    .line 107
    invoke-static {p0, v1}, Lru/vtosters/lite/utils/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 108
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    sput-object p0, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->sResourceReferences:Ljava/util/Collection;

    :goto_0
    return-void
.end method

.method private static installResourceInsuranceHacks(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    .line 196
    :try_start_0
    invoke-static {p0, v0}, Lru/vtosters/lite/utils/ReflectionUtils;->getActivityThread(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mH"

    .line 197
    invoke-static {v0, v1}, Lru/vtosters/lite/utils/ReflectionUtils;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 198
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 199
    const-class v1, Landroid/os/Handler;

    const-string v2, "mCallback"

    invoke-static {v1, v2}, Lru/vtosters/lite/utils/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 200
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler$Callback;

    .line 201
    instance-of v3, v2, Lru/vtosters/lite/themes/loaders/ResourcesLoader$ResourceInsuranceHandlerCallback;

    if-nez v3, :cond_0

    .line 202
    new-instance v3, Lru/vtosters/lite/themes/loaders/ResourcesLoader$ResourceInsuranceHandlerCallback;

    .line 203
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p0, p1, v2, v4}, Lru/vtosters/lite/themes/loaders/ResourcesLoader$ResourceInsuranceHandlerCallback;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler$Callback;Ljava/lang/Class;)V

    .line 204
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "ResourcesLoader"

    const-string p1, "installResourceInsuranceHacks: already installed, skip rest logic."

    .line 206
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 209
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static isPatchedResModifiedAfterLastLoad(Ljava/lang/String;)Z
    .locals 5

    const-wide/16 v0, 0x0

    .line 216
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 218
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    move-wide v2, v0

    :goto_0
    const/4 p0, 0x0

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    return p0

    .line 224
    :cond_0
    sget-wide v0, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->storedPatchedResModifiedTime:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 115
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/reflect/Field;

    .line 116
    sget-object v2, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->packagesFld:Ljava/lang/reflect/Field;

    aput-object v2, v1, v4

    sget-object v2, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->resourcePackagesFld:Ljava/lang/reflect/Field;

    aput-object v2, v1, v3

    goto :goto_0

    :cond_0
    new-array v1, v3, [Ljava/lang/reflect/Field;

    .line 117
    sget-object v2, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->packagesFld:Ljava/lang/reflect/Field;

    aput-object v2, v1, v4

    .line 118
    :goto_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v5, v1, v3

    .line 119
    sget-object v6, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->sCurrentActivityThread:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 121
    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 122
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_2

    .line 125
    :cond_2
    sget-object v7, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->resDirFld:Ljava/lang/reflect/Field;

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 126
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 127
    sget-object v7, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->resDirFld:Ljava/lang/reflect/Field;

    invoke-virtual {v7, v6, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const-string v1, "ResourcesLoader"

    if-eqz p2, :cond_5

    const-string p0, "Re-injecting, skip rest logic."

    .line 132
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 137
    :cond_5
    const-class p2, Landroid/content/res/AssetManager;

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/res/AssetManager;

    .line 139
    invoke-static {p2, p1}, Lru/vtosters/lite/themes/loaders/AssetManagerHelper;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 143
    invoke-static {v0}, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->shouldAddSharedLibraryAssets(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 144
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_8

    aget-object v5, v0, v3

    const-string v6, ".apk"

    .line 145
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_4

    .line 146
    :cond_6
    invoke-static {p2, v5}, Lru/vtosters/lite/themes/loaders/AssetManagerHelper;->addAssetPathAsSharedLibrary(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_7

    .line 148
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "addAssetPathAsSharedLibrary "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 147
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "AssetManager add SharedLibrary Fail"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 154
    :cond_8
    sget-object v0, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->stringBlocksFld:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_9

    sget-object v1, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->ensureStringBlocksMtd:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    .line 155
    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    sget-object v0, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->ensureStringBlocksMtd:Ljava/lang/reflect/Method;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_9
    sget-object v0, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->sResourceReferences:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 159
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources;

    if-nez v1, :cond_a

    goto :goto_5

    .line 165
    :cond_a
    :try_start_0
    sget-object v2, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->assetsFld:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    .line 168
    :catchall_0
    sget-object v2, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->resourcesImplFld:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "mAssets"

    .line 170
    invoke-static {v2, v3}, Lru/vtosters/lite/utils/ReflectionUtils;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 171
    invoke-virtual {v3, v2, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    :goto_6
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_5

    .line 181
    :cond_b
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p2, v0, :cond_c

    .line 183
    :try_start_1
    sget-object p2, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->publicSourceDirField:Ljava/lang/reflect/Field;

    if-eqz p2, :cond_c

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 191
    :catchall_1
    :cond_c
    invoke-static {p0, p1}, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->installResourceInsuranceHacks(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static recordCurrentPatchedResModifiedTime(Ljava/lang/String;)V
    .locals 2

    .line 229
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    sput-wide v0, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->storedPatchedResModifiedTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 231
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 v0, 0x0

    .line 232
    sput-wide v0, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->storedPatchedResModifiedTime:J

    :goto_0
    return-void
.end method

.method private static shouldAddSharedLibraryAssets(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    .line 237
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
