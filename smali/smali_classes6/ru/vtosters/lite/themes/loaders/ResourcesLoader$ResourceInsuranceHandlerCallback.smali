.class Lru/vtosters/lite/themes/loaders/ResourcesLoader$ResourceInsuranceHandlerCallback;
.super Ljava/lang/Object;
.source "ResourcesLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/lite/themes/loaders/ResourcesLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceInsuranceHandlerCallback"
.end annotation


# static fields
.field private static final LAUNCH_ACTIVITY_LIFECYCLE_ITEM_CLASSNAME:Ljava/lang/String; = "android.app.servertransaction.LaunchActivityItem"


# instance fields
.field private final EXECUTE_TRANSACTION:I

.field private final LAUNCH_ACTIVITY:I

.field private final RELAUNCH_ACTIVITY:I

.field private final mContext:Landroid/content/Context;

.field private mGetCallbacksMethod:Ljava/lang/reflect/Method;

.field private final mOriginalCallback:Landroid/os/Handler$Callback;

.field private final mPatchResApkPath:Ljava/lang/String;

.field private mSkipInterceptExecuteTransaction:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler$Callback;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/Handler$Callback;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lru/vtosters/lite/themes/loaders/ResourcesLoader$ResourceInsuranceHandlerCallback;->mGetCallbacksMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    .line 252
    iput-boolean v0, p0, Lru/vtosters/lite/themes/loaders/ResourcesLoader$ResourceInsuranceHandlerCallback;->mSkipInterceptExecuteTransaction:Z

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 256
    :cond_0
    iput-object p1, p0, Lru/vtosters/lite/themes/loaders/ResourcesLoader$ResourceInsuranceHandlerCallback;->mContext:Landroid/content/Context;

    .line 257
    iput-object p2, p0, Lru/vtosters/lite/themes/loaders/ResourcesLoader$ResourceInsuranceHandlerCallback;->mPatchResApkPath:Ljava/lang/String;

    .line 258
    iput-object p3, p0, Lru/vtosters/lite/themes/loaders/ResourcesLoader$ResourceInsuranceHandlerCallback;->mOriginalCallback:Landroid/os/Handler$Callback;

    const-string p1, "LAUNCH_ACTIVITY"

    const/16 p2, 0x64

    .line 259
    invoke-direct {p0, p4, p1, p2}, Lru/vtosters/lite/themes/loaders/ResourcesLoader$ResourceInsuranceHandlerCallback;->fetchMessageId(Ljava/lang/Class;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lru/vtosters/lite/themes/loaders/ResourcesLoader$ResourceInsuranceHandlerCallback;->LAUNCH_ACTIVITY:I

    const-string p1, "RELAUNCH_ACTIVITY"

    const/16 p2, 0x7e

    .line 260
    invoke-direct {p0, p4, p1, p2}, Lru/vtosters/lite/themes/loaders/ResourcesLoader$ResourceInsuranceHandlerCallback;->fetchMessageId(Ljava/lang/Class;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lru/vtosters/lite/themes/loaders/ResourcesLoader$ResourceInsuranceHandlerCallback;->RELAUNCH_ACTIVITY:I

    .line 262
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1c

    if-lt p1, p2, :cond_1

    const-string p1, "EXECUTE_TRANSACTION "

    const/16 p2, 0x9f

    .line 263
    invoke-direct {p0, p4, p1, p2}, Lru/vtosters/lite/themes/loaders/ResourcesLoader$ResourceInsuranceHandlerCallback;->fetchMessageId(Ljava/lang/Class;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lru/vtosters/lite/themes/loaders/ResourcesLoader$ResourceInsuranceHandlerCallback;->EXECUTE_TRANSACTION:I

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 265
    iput p1, p0, Lru/vtosters/lite/themes/loaders/ResourcesLoader$ResourceInsuranceHandlerCallback;->EXECUTE_TRANSACTION:I

    :goto_0
    return-void
.end method

.method private fetchMessageId(Ljava/lang/Class;Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .line 272
    :try_start_0
    invoke-static {p1, p2}, Lru/vtosters/lite/utils/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return p3
.end method

.method private hackMessage(Landroid/os/Message;)Z
    .locals 2

    .line 340
    invoke-direct {p0, p1}, Lru/vtosters/lite/themes/loaders/ResourcesLoader$ResourceInsuranceHandlerCallback;->shouldReInjectPatchedResources(Landroid/os/Message;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 342
    :try_start_0
    iget-object p1, p0, Lru/vtosters/lite/themes/loaders/ResourcesLoader$ResourceInsuranceHandlerCallback;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lru/vtosters/lite/themes/loaders/ResourcesLoader$ResourceInsuranceHandlerCallback;->mPatchResApkPath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->load(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 344
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private shouldReInjectPatchedResources(Landroid/os/Message;)Z
    .locals 5

    .line 293
    iget-object v0, p0, Lru/vtosters/lite/themes/loaders/ResourcesLoader$ResourceInsuranceHandlerCallback;->mPatchResApkPath:Ljava/lang/String;

    invoke-static {v0}, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->-$$Nest$smisPatchedResModifiedAfterLastLoad(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 296
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    iget v2, p0, Lru/vtosters/lite/themes/loaders/ResourcesLoader$ResourceInsuranceHandlerCallback;->LAUNCH_ACTIVITY:I

    const/4 v3, 0x1

    if-eq v0, v2, :cond_8

    iget v0, p1, Landroid/os/Message;->what:I

    iget v2, p0, Lru/vtosters/lite/themes/loaders/ResourcesLoader$ResourceInsuranceHandlerCallback;->RELAUNCH_ACTIVITY:I

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 300
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    iget v2, p0, Lru/vtosters/lite/themes/loaders/ResourcesLoader$ResourceInsuranceHandlerCallback;->EXECUTE_TRANSACTION:I

    if-ne v0, v2, :cond_7

    .line 302
    iget-boolean v0, p0, Lru/vtosters/lite/themes/loaders/ResourcesLoader$ResourceInsuranceHandlerCallback;->mSkipInterceptExecuteTransaction:Z

    if-eqz v0, :cond_2

    return v1

    .line 306
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v0, "ResourcesLoader"

    if-nez p1, :cond_3

    const-string p1, "transaction is null, skip rest insurance logic."

    .line 308
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 312
    :cond_3
    iget-object v2, p0, Lru/vtosters/lite/themes/loaders/ResourcesLoader$ResourceInsuranceHandlerCallback;->mGetCallbacksMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_4

    :try_start_0
    const-string v2, "getCallbacks"

    new-array v4, v1, [Ljava/lang/Class;

    .line 314
    invoke-static {p1, v2, v4}, Lru/vtosters/lite/utils/ReflectionUtils;->findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lru/vtosters/lite/themes/loaders/ResourcesLoader$ResourceInsuranceHandlerCallback;->mGetCallbacksMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 319
    :cond_4
    :goto_0
    iget-object v2, p0, Lru/vtosters/lite/themes/loaders/ResourcesLoader$ResourceInsuranceHandlerCallback;->mGetCallbacksMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_5

    const-string p1, "fail to find getCallbacks method, skip rest insurance logic."

    .line 320
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iput-boolean v3, p0, Lru/vtosters/lite/themes/loaders/ResourcesLoader$ResourceInsuranceHandlerCallback;->mSkipInterceptExecuteTransaction:Z

    return v1

    :cond_5
    :try_start_1
    new-array v4, v1, [Ljava/lang/Object;

    .line 325
    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_7

    .line 326
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 327
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 328
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.app.servertransaction.LaunchActivityItem"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1

    :catchall_1
    const-string p1, "fail to call getCallbacks method, skip rest insurance logic."

    .line 331
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v1

    :cond_8
    :goto_1
    return v3
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 282
    invoke-direct {p0, p1}, Lru/vtosters/lite/themes/loaders/ResourcesLoader$ResourceInsuranceHandlerCallback;->hackMessage(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 284
    :cond_0
    iget-object v0, p0, Lru/vtosters/lite/themes/loaders/ResourcesLoader$ResourceInsuranceHandlerCallback;->mOriginalCallback:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_1

    .line 285
    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
