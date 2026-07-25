.class public Ljava8/util/concurrent/CompletableFuture;
.super Ljava/lang/Object;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Ljava8/util/concurrent/CompletionStage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/concurrent/CompletableFuture$MinimalStage;,
        Ljava8/util/concurrent/CompletableFuture$Canceller;,
        Ljava8/util/concurrent/CompletableFuture$DelayedCompleter;,
        Ljava8/util/concurrent/CompletableFuture$Timeout;,
        Ljava8/util/concurrent/CompletableFuture$TaskSubmitter;,
        Ljava8/util/concurrent/CompletableFuture$DelayedExecutor;,
        Ljava8/util/concurrent/CompletableFuture$Delayer;,
        Ljava8/util/concurrent/CompletableFuture$Signaller;,
        Ljava8/util/concurrent/CompletableFuture$AsyncRun;,
        Ljava8/util/concurrent/CompletableFuture$AsyncSupply;,
        Ljava8/util/concurrent/CompletableFuture$AnyOf;,
        Ljava8/util/concurrent/CompletableFuture$OrRun;,
        Ljava8/util/concurrent/CompletableFuture$OrAccept;,
        Ljava8/util/concurrent/CompletableFuture$OrApply;,
        Ljava8/util/concurrent/CompletableFuture$BiRelay;,
        Ljava8/util/concurrent/CompletableFuture$BiRun;,
        Ljava8/util/concurrent/CompletableFuture$BiAccept;,
        Ljava8/util/concurrent/CompletableFuture$BiApply;,
        Ljava8/util/concurrent/CompletableFuture$CoCompletion;,
        Ljava8/util/concurrent/CompletableFuture$BiCompletion;,
        Ljava8/util/concurrent/CompletableFuture$UniCompose;,
        Ljava8/util/concurrent/CompletableFuture$UniRelay;,
        Ljava8/util/concurrent/CompletableFuture$UniComposeExceptionally;,
        Ljava8/util/concurrent/CompletableFuture$UniExceptionally;,
        Ljava8/util/concurrent/CompletableFuture$UniHandle;,
        Ljava8/util/concurrent/CompletableFuture$UniWhenComplete;,
        Ljava8/util/concurrent/CompletableFuture$UniRun;,
        Ljava8/util/concurrent/CompletableFuture$UniAccept;,
        Ljava8/util/concurrent/CompletableFuture$UniApply;,
        Ljava8/util/concurrent/CompletableFuture$UniCompletion;,
        Ljava8/util/concurrent/CompletableFuture$Completion;,
        Ljava8/util/concurrent/CompletableFuture$ThreadPerTaskExecutor;,
        Ljava8/util/concurrent/CompletableFuture$AsynchronousCompletionTask;,
        Ljava8/util/concurrent/CompletableFuture$AltResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TT;>;",
        "Ljava8/util/concurrent/CompletionStage<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final ASYNC:I = 0x1

.field private static final ASYNC_POOL:Ljava/util/concurrent/Executor;

.field static final NESTED:I = -0x1

.field private static final NEXT:J

.field static final NIL:Ljava8/util/concurrent/CompletableFuture$AltResult;

.field private static final RESULT:J

.field private static final STACK:J

.field static final SYNC:I

.field private static final U:Lsun/misc/Unsafe;

.field private static final USE_COMMON_POOL:Z


# instance fields
.field volatile result:Ljava/lang/Object;

.field volatile stack:Ljava8/util/concurrent/CompletableFuture$Completion;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 281
    const-class v0, Ljava8/util/concurrent/CompletableFuture;

    new-instance v1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava8/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    sput-object v1, Ljava8/util/concurrent/CompletableFuture;->NIL:Ljava8/util/concurrent/CompletableFuture$AltResult;

    .line 425
    invoke-static {}, Ljava8/util/concurrent/FJPool;->getCommonPoolParallelism()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sput-boolean v2, Ljava8/util/concurrent/CompletableFuture;->USE_COMMON_POOL:Z

    if-eqz v2, :cond_1

    .line 432
    invoke-static {}, Ljava8/util/concurrent/FJPool;->commonPool()Ljava8/util/concurrent/FJPool;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava8/util/concurrent/CompletableFuture$ThreadPerTaskExecutor;

    invoke-direct {v1}, Ljava8/util/concurrent/CompletableFuture$ThreadPerTaskExecutor;-><init>()V

    :goto_1
    sput-object v1, Ljava8/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    .line 3023
    sget-object v1, Ljava8/util/concurrent/UnsafeAcc;->unsafe:Lsun/misc/Unsafe;

    sput-object v1, Ljava8/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    :try_start_0
    const-string v2, "result"

    .line 3030
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava8/util/concurrent/CompletableFuture;->RESULT:J

    const-string v2, "stack"

    .line 3032
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava8/util/concurrent/CompletableFuture;->STACK:J

    .line 3033
    const-class v0, Ljava8/util/concurrent/CompletableFuture$Completion;

    const-string v2, "next"

    .line 3034
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/concurrent/CompletableFuture;->NEXT:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3042
    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    return-void

    :catch_0
    move-exception v0

    .line 3036
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .line 1965
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1972
    iput-object p1, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    return-void
.end method

.method public static varargs allOf([Ljava8/util/concurrent/CompletableFuture;)Ljava8/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava8/util/concurrent/CompletableFuture<",
            "*>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2491
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava8/util/concurrent/CompletableFuture;->andTree([Ljava8/util/concurrent/CompletableFuture;II)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method static andTree([Ljava8/util/concurrent/CompletableFuture;II)Ljava8/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava8/util/concurrent/CompletableFuture<",
            "*>;II)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1507
    new-instance v0, Ljava8/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava8/util/concurrent/CompletableFuture;-><init>()V

    if-le p1, p2, :cond_0

    .line 1509
    sget-object p0, Ljava8/util/concurrent/CompletableFuture;->NIL:Ljava8/util/concurrent/CompletableFuture$AltResult;

    iput-object p0, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_3

    :cond_0
    add-int v1, p1, p2

    ushr-int/lit8 v1, v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1513
    aget-object v2, p0, p1

    goto :goto_0

    .line 1514
    :cond_1
    invoke-static {p0, p1, v1}, Ljava8/util/concurrent/CompletableFuture;->andTree([Ljava8/util/concurrent/CompletableFuture;II)Ljava8/util/concurrent/CompletableFuture;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_9

    if-ne p1, p2, :cond_2

    move-object p0, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-ne p2, v1, :cond_3

    aget-object p0, p0, p2

    goto :goto_1

    .line 1516
    :cond_3
    invoke-static {p0, v1, p2}, Ljava8/util/concurrent/CompletableFuture;->andTree([Ljava8/util/concurrent/CompletableFuture;II)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_9

    .line 1518
    iget-object p1, v2, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz p1, :cond_8

    iget-object p2, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez p2, :cond_4

    goto :goto_2

    .line 1520
    :cond_4
    instance-of p0, p1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz p0, :cond_5

    move-object p0, p1

    check-cast p0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    move-object v1, p0

    check-cast v1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object p0, p0, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-nez p0, :cond_6

    :cond_5
    instance-of p0, p2, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz p0, :cond_7

    move-object p0, p2

    check-cast p0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    move-object p1, p0

    check-cast p1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object p0, p0, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz p0, :cond_7

    move-object p1, p2

    .line 1524
    :cond_6
    invoke-static {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_3

    .line 1526
    :cond_7
    sget-object p0, Ljava8/util/concurrent/CompletableFuture;->NIL:Ljava8/util/concurrent/CompletableFuture$AltResult;

    iput-object p0, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_3

    .line 1519
    :cond_8
    :goto_2
    new-instance p1, Ljava8/util/concurrent/CompletableFuture$BiRelay;

    invoke-direct {p1, v0, v2, p0}, Ljava8/util/concurrent/CompletableFuture$BiRelay;-><init>(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;)V

    invoke-virtual {v2, p0, p1}, Ljava8/util/concurrent/CompletableFuture;->bipush(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture$BiCompletion;)V

    :goto_3
    return-object v0

    :cond_9
    const/4 p0, 0x0

    .line 1517
    throw p0
.end method

.method public static varargs anyOf([Ljava8/util/concurrent/CompletableFuture;)Ljava8/util/concurrent/CompletableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava8/util/concurrent/CompletableFuture<",
            "*>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2511
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    if-nez v0, :cond_0

    .line 2512
    new-instance p0, Ljava8/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Ljava8/util/concurrent/CompletableFuture;-><init>()V

    goto :goto_0

    :cond_0
    aget-object p0, p0, v1

    .line 2514
    invoke-static {p0}, Ljava8/util/concurrent/CompletableFuture;->uniCopyStage(Ljava8/util/concurrent/CompletableFuture;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    :goto_0
    return-object p0

    .line 2515
    :cond_1
    array-length v0, p0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_3

    aget-object v4, p0, v3

    .line 2516
    iget-object v4, v4, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 2517
    new-instance p0, Ljava8/util/concurrent/CompletableFuture;

    invoke-static {v4}, Ljava8/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava8/util/concurrent/CompletableFuture;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2518
    :cond_3
    invoke-virtual {p0}, [Ljava8/util/concurrent/CompletableFuture;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava8/util/concurrent/CompletableFuture;

    .line 2519
    new-instance v0, Ljava8/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava8/util/concurrent/CompletableFuture;-><init>()V

    .line 2520
    array-length v3, p0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_4

    aget-object v5, p0, v4

    .line 2521
    new-instance v6, Ljava8/util/concurrent/CompletableFuture$AnyOf;

    invoke-direct {v6, v0, v5, p0}, Ljava8/util/concurrent/CompletableFuture$AnyOf;-><init>(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;[Ljava8/util/concurrent/CompletableFuture;)V

    invoke-virtual {v5, v6}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2525
    :cond_4
    iget-object v3, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v3, :cond_7

    .line 2526
    array-length v3, p0

    :goto_3
    if-ge v1, v3, :cond_7

    .line 2527
    aget-object v4, p0, v1

    iget-object v4, v4, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v4, :cond_6

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v3, :cond_6

    .line 2529
    aget-object v4, p0, v1

    iget-object v4, v4, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v4, :cond_5

    .line 2530
    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljava8/util/concurrent/CompletableFuture;->cleanStack()V

    goto :goto_4

    :cond_6
    add-int/2addr v1, v2

    goto :goto_3

    :cond_7
    return-object v0
.end method

.method static asyncRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1813
    invoke-static {p1}, Ljava8/util/concurrent/Util;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1814
    new-instance v0, Ljava8/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava8/util/concurrent/CompletableFuture;-><init>()V

    .line 1815
    new-instance v1, Ljava8/util/concurrent/CompletableFuture$AsyncRun;

    invoke-direct {v1, v0, p1}, Ljava8/util/concurrent/CompletableFuture$AsyncRun;-><init>(Ljava8/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static asyncSupplyStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Supplier;)Ljava8/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/function/Supplier<",
            "TU;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 1777
    invoke-static {p1}, Ljava8/util/concurrent/Util;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1778
    new-instance v0, Ljava8/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava8/util/concurrent/CompletableFuture;-><init>()V

    .line 1779
    new-instance v1, Ljava8/util/concurrent/CompletableFuture$AsyncSupply;

    invoke-direct {v1, v0, p1}, Ljava8/util/concurrent/CompletableFuture$AsyncSupply;-><init>(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/Supplier;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private biAcceptStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/concurrent/CompletionStage<",
            "TU;>;",
            "Ljava8/util/function/BiConsumer<",
            "-TT;-TU;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    .line 1395
    invoke-interface {p2}, Ljava8/util/concurrent/CompletionStage;->toCompletableFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1397
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v7

    .line 1398
    iget-object v1, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v2, p2, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 1401
    invoke-virtual {v7, v1, v2, p3, v0}, Ljava8/util/concurrent/CompletableFuture;->biAccept(Ljava/lang/Object;Ljava/lang/Object;Ljava8/util/function/BiConsumer;Ljava8/util/concurrent/CompletableFuture$BiAccept;)Z

    goto :goto_1

    .line 1404
    :cond_1
    :try_start_0
    new-instance v0, Ljava8/util/concurrent/CompletableFuture$BiAccept;

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, v7

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ljava8/util/concurrent/CompletableFuture$BiAccept;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/BiConsumer;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1406
    invoke-static {p1}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletableFuture$AltResult;

    move-result-object p1

    iput-object p1, v7, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_1

    .line 1399
    :cond_2
    :goto_0
    new-instance v0, Ljava8/util/concurrent/CompletableFuture$BiAccept;

    move-object v1, v0

    move-object v2, p1

    move-object v3, v7

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ljava8/util/concurrent/CompletableFuture$BiAccept;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/BiConsumer;)V

    invoke-virtual {p0, p2, v0}, Ljava8/util/concurrent/CompletableFuture;->bipush(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture$BiCompletion;)V

    :goto_1
    return-object v7

    .line 1396
    :cond_3
    throw v0
.end method

.method private biApplyStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/concurrent/CompletionStage<",
            "TU;>;",
            "Ljava8/util/function/BiFunction<",
            "-TT;-TU;+TV;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    .line 1318
    invoke-interface {p2}, Ljava8/util/concurrent/CompletionStage;->toCompletableFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1320
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v7

    .line 1321
    iget-object v1, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v2, p2, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 1324
    invoke-virtual {v7, v1, v2, p3, v0}, Ljava8/util/concurrent/CompletableFuture;->biApply(Ljava/lang/Object;Ljava/lang/Object;Ljava8/util/function/BiFunction;Ljava8/util/concurrent/CompletableFuture$BiApply;)Z

    goto :goto_1

    .line 1327
    :cond_1
    :try_start_0
    new-instance v0, Ljava8/util/concurrent/CompletableFuture$BiApply;

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, v7

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ljava8/util/concurrent/CompletableFuture$BiApply;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/BiFunction;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1329
    invoke-static {p1}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletableFuture$AltResult;

    move-result-object p1

    iput-object p1, v7, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_1

    .line 1322
    :cond_2
    :goto_0
    new-instance v0, Ljava8/util/concurrent/CompletableFuture$BiApply;

    move-object v1, v0

    move-object v2, p1

    move-object v3, v7

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ljava8/util/concurrent/CompletableFuture$BiApply;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/BiFunction;)V

    invoke-virtual {p0, p2, v0}, Ljava8/util/concurrent/CompletableFuture;->bipush(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture$BiCompletion;)V

    :goto_1
    return-object v7

    .line 1319
    :cond_3
    throw v0
.end method

.method private biRunStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    .line 1459
    invoke-interface {p2}, Ljava8/util/concurrent/CompletionStage;->toCompletableFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1461
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v7

    .line 1462
    iget-object v1, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v2, p2, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 1465
    invoke-virtual {v7, v1, v2, p3, v0}, Ljava8/util/concurrent/CompletableFuture;->biRun(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava8/util/concurrent/CompletableFuture$BiRun;)Z

    goto :goto_1

    .line 1468
    :cond_1
    :try_start_0
    new-instance v0, Ljava8/util/concurrent/CompletableFuture$BiRun;

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, v7

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ljava8/util/concurrent/CompletableFuture$BiRun;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1470
    invoke-static {p1}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletableFuture$AltResult;

    move-result-object p1

    iput-object p1, v7, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_1

    .line 1463
    :cond_2
    :goto_0
    new-instance v0, Ljava8/util/concurrent/CompletableFuture$BiRun;

    move-object v1, v0

    move-object v2, p1

    move-object v3, v7

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Ljava8/util/concurrent/CompletableFuture$BiRun;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p2, v0}, Ljava8/util/concurrent/CompletableFuture;->bipush(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture$BiCompletion;)V

    :goto_1
    return-object v7

    .line 1460
    :cond_3
    throw v0
.end method

.method static casNext(Ljava8/util/concurrent/CompletableFuture$Completion;Ljava8/util/concurrent/CompletableFuture$Completion;Ljava8/util/concurrent/CompletableFuture$Completion;)Z
    .locals 6

    .line 486
    sget-object v0, Ljava8/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/CompletableFuture;->NEXT:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/ClosingFuture$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static completedFuture(Ljava/lang/Object;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2042
    new-instance v0, Ljava8/util/concurrent/CompletableFuture;

    if-nez p0, :cond_0

    sget-object p0, Ljava8/util/concurrent/CompletableFuture;->NIL:Ljava8/util/concurrent/CompletableFuture$AltResult;

    :cond_0
    invoke-direct {v0, p0}, Ljava8/util/concurrent/CompletableFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static completedStage(Ljava/lang/Object;)Ljava8/util/concurrent/CompletionStage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;)",
            "Ljava8/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation

    .line 2851
    new-instance v0, Ljava8/util/concurrent/CompletableFuture$MinimalStage;

    if-nez p0, :cond_0

    sget-object p0, Ljava8/util/concurrent/CompletableFuture;->NIL:Ljava8/util/concurrent/CompletableFuture$AltResult;

    :cond_0
    invoke-direct {v0, p0}, Ljava8/util/concurrent/CompletableFuture$MinimalStage;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static delayedExecutor(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Executor;
    .locals 2

    .line 2837
    new-instance v0, Ljava8/util/concurrent/CompletableFuture$DelayedExecutor;

    invoke-static {p2}, Ljava8/util/concurrent/Util;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava8/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava8/util/concurrent/CompletableFuture$DelayedExecutor;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static delayedExecutor(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 2821
    new-instance v0, Ljava8/util/concurrent/CompletableFuture$DelayedExecutor;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava8/util/concurrent/CompletableFuture$DelayedExecutor;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    .line 2820
    throw p0
.end method

.method static encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 358
    instance-of v0, p0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava8/util/concurrent/CompletionException;

    if-nez v1, :cond_0

    .line 361
    new-instance p0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    new-instance v1, Ljava8/util/concurrent/CompletionException;

    invoke-direct {v1, v0}, Ljava8/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Ljava8/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    :cond_0
    return-object p0
.end method

.method static encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 323
    instance-of v0, p0, Ljava8/util/concurrent/CompletionException;

    if-nez v0, :cond_0

    .line 324
    new-instance p1, Ljava8/util/concurrent/CompletionException;

    invoke-direct {p1, p0}, Ljava8/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    goto :goto_0

    .line 325
    :cond_0
    instance-of v0, p1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-ne p0, v0, :cond_1

    return-object p1

    .line 327
    :cond_1
    :goto_0
    new-instance p1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    invoke-direct {p1, p0}, Ljava8/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method static encodeThrowable(Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletableFuture$AltResult;
    .locals 2

    .line 305
    new-instance v0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    instance-of v1, p0, Ljava8/util/concurrent/CompletionException;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava8/util/concurrent/CompletionException;

    invoke-direct {v1, p0}, Ljava8/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v1

    :goto_0
    invoke-direct {v0, p0}, Ljava8/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static failedFuture(Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2864
    new-instance v0, Ljava8/util/concurrent/CompletableFuture;

    new-instance v1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    invoke-static {p0}, Ljava8/util/concurrent/Util;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    invoke-direct {v1, p0}, Ljava8/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Ljava8/util/concurrent/CompletableFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static failedStage(Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletionStage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava8/util/concurrent/CompletionStage<",
            "TU;>;"
        }
    .end annotation

    .line 2878
    new-instance v0, Ljava8/util/concurrent/CompletableFuture$MinimalStage;

    new-instance v1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    invoke-static {p0}, Ljava8/util/concurrent/Util;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    invoke-direct {v1, p0}, Ljava8/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Ljava8/util/concurrent/CompletableFuture$MinimalStage;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method static lazySetNext(Ljava8/util/concurrent/CompletableFuture$Completion;Ljava8/util/concurrent/CompletableFuture$Completion;)V
    .locals 3

    .line 482
    sget-object v0, Ljava8/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/concurrent/CompletableFuture;->NEXT:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private orAcceptStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TT;>(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/concurrent/CompletionStage<",
            "TU;>;",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 1646
    invoke-interface {p2}, Ljava8/util/concurrent/CompletionStage;->toCompletableFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1650
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p2, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1654
    :cond_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v6

    .line 1655
    new-instance v7, Ljava8/util/concurrent/CompletableFuture$OrAccept;

    move-object v0, v7

    move-object v1, p1

    move-object v2, v6

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ljava8/util/concurrent/CompletableFuture$OrAccept;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/Consumer;)V

    invoke-virtual {p0, p2, v7}, Ljava8/util/concurrent/CompletableFuture;->orpush(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture$BiCompletion;)V

    return-object v6

    :cond_1
    move-object p2, p0

    .line 1652
    :goto_0
    invoke-direct {p2, v0, p1, p3}, Ljava8/util/concurrent/CompletableFuture;->uniAcceptNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    .line 1647
    throw p1
.end method

.method private orApplyStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TT;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/concurrent/CompletionStage<",
            "TU;>;",
            "Ljava8/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 1592
    invoke-interface {p2}, Ljava8/util/concurrent/CompletionStage;->toCompletableFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1596
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p2, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1600
    :cond_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v6

    .line 1601
    new-instance v7, Ljava8/util/concurrent/CompletableFuture$OrApply;

    move-object v0, v7

    move-object v1, p1

    move-object v2, v6

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ljava8/util/concurrent/CompletableFuture$OrApply;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/Function;)V

    invoke-virtual {p0, p2, v7}, Ljava8/util/concurrent/CompletableFuture;->orpush(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture$BiCompletion;)V

    return-object v6

    :cond_1
    move-object p2, p0

    .line 1598
    :goto_0
    invoke-direct {p2, v0, p1, p3}, Ljava8/util/concurrent/CompletableFuture;->uniApplyNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    .line 1593
    throw p1
.end method

.method private orRunStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 1697
    invoke-interface {p2}, Ljava8/util/concurrent/CompletionStage;->toCompletableFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1702
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p2, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1705
    :cond_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v6

    .line 1706
    new-instance v7, Ljava8/util/concurrent/CompletableFuture$OrRun;

    move-object v0, v7

    move-object v1, p1

    move-object v2, v6

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ljava8/util/concurrent/CompletableFuture$OrRun;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p2, v7}, Ljava8/util/concurrent/CompletableFuture;->orpush(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture$BiCompletion;)V

    return-object v6

    :cond_1
    move-object p2, p0

    .line 1703
    :goto_0
    invoke-direct {p2, v0, p1, p3}, Ljava8/util/concurrent/CompletableFuture;->uniRunNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    .line 1698
    throw p1
.end method

.method private static reportGet(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 381
    instance-of v0, p0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_3

    .line 383
    check-cast p0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object p0, p0, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 385
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_2

    .line 387
    instance-of v0, p0, Ljava8/util/concurrent/CompletionException;

    if-eqz v0, :cond_1

    .line 388
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p0, v0

    .line 390
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 386
    :cond_2
    check-cast p0, Ljava/util/concurrent/CancellationException;

    throw p0

    :cond_3
    return-object p0

    .line 380
    :cond_4
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0
.end method

.method private static reportJoin(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 399
    instance-of v0, p0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_3

    .line 401
    check-cast p0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object p0, p0, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 403
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_2

    .line 405
    instance-of v0, p0, Ljava8/util/concurrent/CompletionException;

    if-eqz v0, :cond_1

    .line 406
    check-cast p0, Ljava8/util/concurrent/CompletionException;

    throw p0

    .line 407
    :cond_1
    new-instance v0, Ljava8/util/concurrent/CompletionException;

    invoke-direct {v0, p0}, Ljava8/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 404
    :cond_2
    check-cast p0, Ljava/util/concurrent/CancellationException;

    throw p0

    :cond_3
    return-object p0
.end method

.method public static runAsync(Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2015
    sget-object v0, Ljava8/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Ljava8/util/concurrent/CompletableFuture;->asyncRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2030
    invoke-static {p1}, Ljava8/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {p1, p0}, Ljava8/util/concurrent/CompletableFuture;->asyncRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method static screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 1

    .line 447
    sget-boolean v0, Ljava8/util/concurrent/CompletableFuture;->USE_COMMON_POOL:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava8/util/concurrent/FJPool;->commonPool()Ljava8/util/concurrent/FJPool;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 448
    sget-object p0, Ljava8/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    return-object p0

    .line 449
    :cond_0
    invoke-static {p0}, Ljava8/util/concurrent/Util;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static supplyAsync(Ljava8/util/function/Supplier;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Supplier<",
            "TU;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 1986
    sget-object v0, Ljava8/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Ljava8/util/concurrent/CompletableFuture;->asyncSupplyStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Supplier;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static supplyAsync(Ljava8/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Supplier<",
            "TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2002
    invoke-static {p1}, Ljava8/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {p1, p0}, Ljava8/util/concurrent/CompletableFuture;->asyncSupplyStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Supplier;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method private timedGet(J)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1915
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    add-long v1, v1, p1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-wide/16 v1, 0x1

    :cond_0
    const/4 v5, 0x0

    const/4 v11, 0x0

    move-wide/from16 v12, p1

    move-object v6, v11

    move-object v7, v6

    const/4 v14, 0x0

    :goto_0
    if-nez v5, :cond_7

    .line 1921
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v15

    if-eqz v15, :cond_1

    :goto_1
    move v5, v15

    goto :goto_5

    .line 1923
    :cond_1
    iget-object v9, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    cmp-long v5, v12, v3

    if-gtz v5, :cond_3

    :goto_2
    move-object v7, v9

    goto :goto_1

    :cond_3
    if-nez v6, :cond_5

    .line 1928
    new-instance v10, Ljava8/util/concurrent/CompletableFuture$Signaller;

    const/4 v6, 0x1

    move-object v5, v10

    move-wide v7, v12

    move-object/from16 v16, v9

    move-object v3, v10

    move-wide v9, v1

    invoke-direct/range {v5 .. v10}, Ljava8/util/concurrent/CompletableFuture$Signaller;-><init>(ZJJ)V

    .line 1929
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    instance-of v4, v4, Ljava8/util/concurrent/FJWorkerThread;

    if-eqz v4, :cond_4

    .line 1930
    invoke-virtual/range {p0 .. p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-static {v4, v3}, Ljava8/util/concurrent/FJPool;->helpAsyncBlocker(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/FJPool$ManagedBlocker;)V

    :cond_4
    move-object v6, v3

    :goto_3
    move v5, v15

    :goto_4
    move-object/from16 v7, v16

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_5
    move-object/from16 v16, v9

    if-nez v14, :cond_6

    .line 1933
    invoke-virtual {v0, v6}, Ljava8/util/concurrent/CompletableFuture;->tryPushStack(Ljava8/util/concurrent/CompletableFuture$Completion;)Z

    move-result v14

    goto :goto_3

    .line 1936
    :cond_6
    :try_start_0
    invoke-static {v6}, Ljava8/util/concurrent/FJPool;->managedBlock(Ljava8/util/concurrent/FJPool$ManagedBlocker;)V

    .line 1937
    iget-boolean v5, v6, Ljava8/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    .line 1938
    iget-wide v12, v6, Ljava8/util/concurrent/CompletableFuture$Signaller;->nanos:J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const/4 v5, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    if-eqz v6, :cond_8

    .line 1945
    iput-object v11, v6, Ljava8/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    if-nez v7, :cond_8

    .line 1947
    invoke-virtual/range {p0 .. p0}, Ljava8/util/concurrent/CompletableFuture;->cleanStack()V

    :cond_8
    if-eqz v7, :cond_a

    if-eqz v5, :cond_9

    .line 1951
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1952
    :cond_9
    invoke-virtual/range {p0 .. p0}, Ljava8/util/concurrent/CompletableFuture;->postComplete()V

    return-object v7

    :cond_a
    if-eqz v5, :cond_b

    return-object v11

    .line 1957
    :cond_b
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1
.end method

.method private uniAcceptNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 735
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 736
    instance-of v1, p1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 737
    move-object v1, p1

    check-cast v1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 738
    invoke-static {v1, p1}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    return-object v0

    :cond_0
    move-object p1, v2

    :cond_1
    if-eqz p2, :cond_2

    .line 745
    :try_start_0
    new-instance p1, Ljava8/util/concurrent/CompletableFuture$UniAccept;

    invoke-direct {p1, v2, v0, p0, p3}, Ljava8/util/concurrent/CompletableFuture$UniAccept;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/Consumer;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 748
    :cond_2
    invoke-interface {p3, p1}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 749
    sget-object p1, Ljava8/util/concurrent/CompletableFuture;->NIL:Ljava8/util/concurrent/CompletableFuture$AltResult;

    iput-object p1, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 752
    invoke-static {p1}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletableFuture$AltResult;

    move-result-object p1

    iput-object p1, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method private uniAcceptStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 723
    invoke-static {p2}, Ljava8/util/concurrent/Util;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 726
    invoke-direct {p0, v0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->uniAcceptNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    .line 727
    :cond_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 728
    new-instance v1, Ljava8/util/concurrent/CompletableFuture$UniAccept;

    invoke-direct {v1, p1, v0, p0, p2}, Ljava8/util/concurrent/CompletableFuture$UniAccept;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/Consumer;)V

    invoke-virtual {p0, v1}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V

    return-object v0
.end method

.method private uniApplyNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 662
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 663
    instance-of v1, p1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 664
    move-object v1, p1

    check-cast v1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 665
    invoke-static {v1, p1}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    return-object v0

    :cond_0
    move-object p1, v2

    :cond_1
    if-eqz p2, :cond_2

    .line 672
    :try_start_0
    new-instance p1, Ljava8/util/concurrent/CompletableFuture$UniApply;

    invoke-direct {p1, v2, v0, p0, p3}, Ljava8/util/concurrent/CompletableFuture$UniApply;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/Function;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 675
    :cond_2
    invoke-interface {p3, p1}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava8/util/concurrent/CompletableFuture;->encodeValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 678
    invoke-static {p1}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletableFuture$AltResult;

    move-result-object p1

    iput-object p1, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method private uniApplyStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 650
    invoke-static {p2}, Ljava8/util/concurrent/Util;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 653
    invoke-direct {p0, v0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->uniApplyNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    .line 654
    :cond_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 655
    new-instance v1, Ljava8/util/concurrent/CompletableFuture$UniApply;

    invoke-direct {v1, p1, v0, p0, p2}, Ljava8/util/concurrent/CompletableFuture$UniApply;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/Function;)V

    invoke-virtual {p0, v1}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V

    return-object v0
.end method

.method private uniAsMinimalStage()Ljava8/util/concurrent/CompletableFuture$MinimalStage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/concurrent/CompletableFuture$MinimalStage<",
            "TT;>;"
        }
    .end annotation

    .line 1110
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1111
    new-instance v1, Ljava8/util/concurrent/CompletableFuture$MinimalStage;

    invoke-static {v0}, Ljava8/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava8/util/concurrent/CompletableFuture$MinimalStage;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 1112
    :cond_0
    new-instance v0, Ljava8/util/concurrent/CompletableFuture$MinimalStage;

    invoke-direct {v0}, Ljava8/util/concurrent/CompletableFuture$MinimalStage;-><init>()V

    .line 1113
    new-instance v1, Ljava8/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {v1, v0, p0}, Ljava8/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;)V

    invoke-virtual {p0, v1}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V

    return-object v0
.end method

.method private uniComposeExceptionallyStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava8/util/concurrent/CompletionStage<",
            "TT;>;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 1056
    invoke-static {p2}, Ljava8/util/concurrent/Util;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 1059
    iget-object v1, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 1060
    new-instance v1, Ljava8/util/concurrent/CompletableFuture$UniComposeExceptionally;

    invoke-direct {v1, p1, v0, p0, p2}, Ljava8/util/concurrent/CompletableFuture$UniComposeExceptionally;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/Function;)V

    invoke-virtual {p0, v1}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_1

    .line 1061
    :cond_0
    instance-of v2, v1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object v2, v2, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 1066
    :try_start_0
    new-instance v1, Ljava8/util/concurrent/CompletableFuture$UniComposeExceptionally;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, p0, p2}, Ljava8/util/concurrent/CompletableFuture$UniComposeExceptionally;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/Function;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1068
    :cond_2
    invoke-interface {p2, v2}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava8/util/concurrent/CompletionStage;

    invoke-interface {p1}, Ljava8/util/concurrent/CompletionStage;->toCompletableFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    .line 1069
    iget-object p2, p1, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz p2, :cond_3

    .line 1070
    invoke-static {p2}, Ljava8/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_1

    .line 1072
    :cond_3
    new-instance p2, Ljava8/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {p2, v0, p1}, Ljava8/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;)V

    invoke-virtual {p1, p2}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1075
    invoke-static {p1}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletableFuture$AltResult;

    move-result-object p1

    iput-object p1, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_1

    .line 1062
    :cond_4
    :goto_0
    invoke-virtual {v0, v1}, Ljava8/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z

    :goto_1
    return-object v0
.end method

.method private uniComposeStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/function/Function<",
            "-TT;+",
            "Ljava8/util/concurrent/CompletionStage<",
            "TV;>;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 1163
    invoke-static {p2}, Ljava8/util/concurrent/Util;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 1166
    iget-object v1, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 1167
    new-instance v1, Ljava8/util/concurrent/CompletableFuture$UniCompose;

    invoke-direct {v1, p1, v0, p0, p2}, Ljava8/util/concurrent/CompletableFuture$UniCompose;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/Function;)V

    invoke-virtual {p0, v1}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_0

    .line 1169
    :cond_0
    instance-of v2, v1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 1170
    move-object v2, v1

    check-cast v2, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object v2, v2, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 1171
    invoke-static {v2, v1}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    return-object v0

    :cond_1
    move-object v1, v3

    :cond_2
    if-eqz p1, :cond_3

    .line 1178
    :try_start_0
    new-instance v1, Ljava8/util/concurrent/CompletableFuture$UniCompose;

    invoke-direct {v1, v3, v0, p0, p2}, Ljava8/util/concurrent/CompletableFuture$UniCompose;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/Function;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1181
    :cond_3
    invoke-interface {p2, v1}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava8/util/concurrent/CompletionStage;

    invoke-interface {p1}, Ljava8/util/concurrent/CompletionStage;->toCompletableFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    .line 1182
    iget-object p2, p1, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz p2, :cond_4

    .line 1183
    invoke-static {p2}, Ljava8/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_0

    .line 1185
    :cond_4
    new-instance p2, Ljava8/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {p2, v0, p1}, Ljava8/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;)V

    invoke-virtual {p1, p2}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1188
    invoke-static {p1}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletableFuture$AltResult;

    move-result-object p1

    iput-object p1, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method private static uniCopyStage(Ljava8/util/concurrent/CompletableFuture;)Ljava8/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "T:TU;>(",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 1100
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 1101
    iget-object v1, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1102
    invoke-static {v1}, Ljava8/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_0

    .line 1104
    :cond_0
    new-instance v1, Ljava8/util/concurrent/CompletableFuture$UniRelay;

    invoke-direct {v1, v0, p0}, Ljava8/util/concurrent/CompletableFuture$UniRelay;-><init>(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;)V

    invoke-virtual {p0, v1}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V

    :goto_0
    return-object v0
.end method

.method private uniExceptionallyStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 996
    invoke-static {p2}, Ljava8/util/concurrent/Util;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 999
    iget-object v1, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 1000
    new-instance v1, Ljava8/util/concurrent/CompletableFuture$UniExceptionally;

    invoke-direct {v1, p1, v0, p0, p2}, Ljava8/util/concurrent/CompletableFuture$UniExceptionally;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/Function;)V

    invoke-virtual {p0, v1}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 1002
    invoke-virtual {v0, v1, p2, v2}, Ljava8/util/concurrent/CompletableFuture;->uniExceptionally(Ljava/lang/Object;Ljava8/util/function/Function;Ljava8/util/concurrent/CompletableFuture$UniExceptionally;)Z

    goto :goto_0

    .line 1005
    :cond_1
    :try_start_0
    new-instance v1, Ljava8/util/concurrent/CompletableFuture$UniExceptionally;

    invoke-direct {v1, v2, v0, p0, p2}, Ljava8/util/concurrent/CompletableFuture$UniExceptionally;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/Function;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1007
    invoke-static {p1}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletableFuture$AltResult;

    move-result-object p1

    iput-object p1, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method private uniHandleStage(Ljava/util/concurrent/Executor;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/function/BiFunction<",
            "-TT;",
            "Ljava/lang/Throwable;",
            "+TV;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 938
    invoke-static {p2}, Ljava8/util/concurrent/Util;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 941
    iget-object v1, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 942
    new-instance v1, Ljava8/util/concurrent/CompletableFuture$UniHandle;

    invoke-direct {v1, p1, v0, p0, p2}, Ljava8/util/concurrent/CompletableFuture$UniHandle;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/BiFunction;)V

    invoke-virtual {p0, v1}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 944
    invoke-virtual {v0, v1, p2, v2}, Ljava8/util/concurrent/CompletableFuture;->uniHandle(Ljava/lang/Object;Ljava8/util/function/BiFunction;Ljava8/util/concurrent/CompletableFuture$UniHandle;)Z

    goto :goto_0

    .line 947
    :cond_1
    :try_start_0
    new-instance v1, Ljava8/util/concurrent/CompletableFuture$UniHandle;

    invoke-direct {v1, v2, v0, p0, p2}, Ljava8/util/concurrent/CompletableFuture$UniHandle;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/BiFunction;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 949
    invoke-static {p1}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletableFuture$AltResult;

    move-result-object p1

    iput-object p1, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method private uniRunNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 802
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 803
    instance-of v1, p1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object v1, v1, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 804
    invoke-static {v1, p1}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 808
    :try_start_0
    new-instance p1, Ljava8/util/concurrent/CompletableFuture$UniRun;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0, p0, p3}, Ljava8/util/concurrent/CompletableFuture$UniRun;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 810
    :cond_1
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 811
    sget-object p1, Ljava8/util/concurrent/CompletableFuture;->NIL:Ljava8/util/concurrent/CompletableFuture$AltResult;

    iput-object p1, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 814
    invoke-static {p1}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletableFuture$AltResult;

    move-result-object p1

    iput-object p1, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method private uniRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 791
    invoke-static {p2}, Ljava8/util/concurrent/Util;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 794
    invoke-direct {p0, v0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->uniRunNow(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    .line 795
    :cond_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 796
    new-instance v1, Ljava8/util/concurrent/CompletableFuture$UniRun;

    invoke-direct {v1, p1, v0, p0, p2}, Ljava8/util/concurrent/CompletableFuture$UniRun;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V

    return-object v0
.end method

.method private uniWhenCompleteStage(Ljava/util/concurrent/Executor;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava8/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 874
    invoke-static {p2}, Ljava8/util/concurrent/Util;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 877
    iget-object v1, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 878
    new-instance v1, Ljava8/util/concurrent/CompletableFuture$UniWhenComplete;

    invoke-direct {v1, p1, v0, p0, p2}, Ljava8/util/concurrent/CompletableFuture$UniWhenComplete;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/BiConsumer;)V

    invoke-virtual {p0, v1}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 880
    invoke-virtual {v0, v1, p2, v2}, Ljava8/util/concurrent/CompletableFuture;->uniWhenComplete(Ljava/lang/Object;Ljava8/util/function/BiConsumer;Ljava8/util/concurrent/CompletableFuture$UniWhenComplete;)Z

    goto :goto_0

    .line 883
    :cond_1
    :try_start_0
    new-instance v1, Ljava8/util/concurrent/CompletableFuture$UniWhenComplete;

    invoke-direct {v1, v2, v0, p0, p2}, Ljava8/util/concurrent/CompletableFuture$UniWhenComplete;-><init>(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/BiConsumer;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 885
    invoke-static {p1}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletableFuture$AltResult;

    move-result-object p1

    iput-object p1, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method private waitingGet(Z)Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1875
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    move-object v2, v0

    .line 1880
    :cond_1
    :goto_0
    iget-object v3, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v3, :cond_5

    if-nez v2, :cond_2

    .line 1882
    new-instance v2, Ljava8/util/concurrent/CompletableFuture$Signaller;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v4, v2

    move v5, p1

    invoke-direct/range {v4 .. v9}, Ljava8/util/concurrent/CompletableFuture$Signaller;-><init>(ZJJ)V

    .line 1883
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    instance-of v3, v3, Ljava8/util/concurrent/FJWorkerThread;

    if-eqz v3, :cond_1

    .line 1884
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-static {v3, v2}, Ljava8/util/concurrent/FJPool;->helpAsyncBlocker(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/FJPool$ManagedBlocker;)V

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 1887
    invoke-virtual {p0, v2}, Ljava8/util/concurrent/CompletableFuture;->tryPushStack(Ljava8/util/concurrent/CompletableFuture$Completion;)Z

    move-result v1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 1888
    iget-boolean v3, v2, Ljava8/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    if-eqz v3, :cond_4

    .line 1889
    iput-object v0, v2, Ljava8/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    .line 1890
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->cleanStack()V

    return-object v0

    .line 1895
    :cond_4
    :try_start_0
    invoke-static {v2}, Ljava8/util/concurrent/FJPool;->managedBlock(Ljava8/util/concurrent/FJPool$ManagedBlocker;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v3, 0x1

    .line 1897
    iput-boolean v3, v2, Ljava8/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    .line 1902
    iput-object v0, v2, Ljava8/util/concurrent/CompletableFuture$Signaller;->thread:Ljava/lang/Thread;

    .line 1903
    iget-boolean p1, v2, Ljava8/util/concurrent/CompletableFuture$Signaller;->interrupted:Z

    if-eqz p1, :cond_6

    .line 1904
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 1906
    :cond_6
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->postComplete()V

    return-object v3
.end method


# virtual methods
.method public acceptEither(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2273
    invoke-direct {p0, v0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->orAcceptStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic acceptEither(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->acceptEither(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public acceptEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2278
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->orAcceptStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public acceptEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava8/util/function/Consumer<",
            "-TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2284
    invoke-static {p3}, Ljava8/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->orAcceptStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic acceptEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->acceptEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic acceptEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Ljava8/util/concurrent/CompletableFuture;->acceptEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public applyToEither(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava8/util/function/Function<",
            "-TT;TU;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2257
    invoke-direct {p0, v0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->orApplyStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyToEither(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->applyToEither(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public applyToEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava8/util/function/Function<",
            "-TT;TU;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2262
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->orApplyStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public applyToEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/concurrent/CompletionStage<",
            "+TT;>;",
            "Ljava8/util/function/Function<",
            "-TT;TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2268
    invoke-static {p3}, Ljava8/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->orApplyStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyToEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->applyToEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyToEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Ljava8/util/concurrent/CompletableFuture;->applyToEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method final biAccept(Ljava/lang/Object;Ljava/lang/Object;Ljava8/util/function/BiConsumer;Ljava8/util/concurrent/CompletableFuture$BiAccept;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava8/util/function/BiConsumer<",
            "-TR;-TS;>;",
            "Ljava8/util/concurrent/CompletableFuture$BiAccept<",
            "TR;TS;>;)Z"
        }
    .end annotation

    .line 1360
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 1361
    instance-of v0, p1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1362
    move-object v0, p1

    check-cast v0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 1363
    invoke-virtual {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 1368
    :cond_1
    instance-of v0, p2, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_3

    .line 1369
    move-object v0, p2

    check-cast v0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 1370
    invoke-virtual {p0, v0, p2}, Ljava8/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object p2, v1

    :cond_3
    if-eqz p4, :cond_4

    .line 1376
    :try_start_0
    invoke-virtual {p4}, Ljava8/util/concurrent/CompletableFuture$BiAccept;->claim()Z

    move-result p4

    if-nez p4, :cond_4

    const/4 p1, 0x0

    return p1

    .line 1382
    :cond_4
    invoke-interface {p3, p1, p2}, Ljava8/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1383
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1385
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    :cond_5
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method final biApply(Ljava/lang/Object;Ljava/lang/Object;Ljava8/util/function/BiFunction;Ljava8/util/concurrent/CompletableFuture$BiApply;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava8/util/function/BiFunction<",
            "-TR;-TS;+TT;>;",
            "Ljava8/util/concurrent/CompletableFuture$BiApply<",
            "TR;TS;TT;>;)Z"
        }
    .end annotation

    .line 1284
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 1285
    instance-of v0, p1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1286
    move-object v0, p1

    check-cast v0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 1287
    invoke-virtual {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 1292
    :cond_1
    instance-of v0, p2, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_3

    .line 1293
    move-object v0, p2

    check-cast v0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 1294
    invoke-virtual {p0, v0, p2}, Ljava8/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object p2, v1

    :cond_3
    if-eqz p4, :cond_4

    .line 1300
    :try_start_0
    invoke-virtual {p4}, Ljava8/util/concurrent/CompletableFuture$BiApply;->claim()Z

    move-result p4

    if-nez p4, :cond_4

    const/4 p1, 0x0

    return p1

    .line 1306
    :cond_4
    invoke-interface {p3, p1, p2}, Ljava8/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1308
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    :cond_5
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method final biRun(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava8/util/concurrent/CompletableFuture$BiRun;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Runnable;",
            "Ljava8/util/concurrent/CompletableFuture$BiRun<",
            "**>;)Z"
        }
    .end annotation

    .line 1436
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_4

    .line 1437
    instance-of v0, p1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    move-object v1, v0

    check-cast v1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    :cond_0
    instance-of p1, p2, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz p1, :cond_2

    move-object p1, p2

    check-cast p1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    move-object v0, p1

    check-cast v0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, p1, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    move-object p1, p2

    .line 1441
    :cond_1
    invoke-virtual {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    .line 1444
    :try_start_0
    invoke-virtual {p4}, Ljava8/util/concurrent/CompletableFuture$BiRun;->claim()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    return p1

    .line 1446
    :cond_3
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 1447
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1449
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method final bipush(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture$BiCompletion;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletableFuture<",
            "*>;",
            "Ljava8/util/concurrent/CompletableFuture$BiCompletion<",
            "***>;)V"
        }
    .end annotation

    if-eqz p2, :cond_4

    .line 1232
    :cond_0
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 1233
    invoke-virtual {p0, p2}, Ljava8/util/concurrent/CompletableFuture;->tryPushStack(Ljava8/util/concurrent/CompletableFuture$Completion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1234
    iget-object v0, p1, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 1235
    new-instance v0, Ljava8/util/concurrent/CompletableFuture$CoCompletion;

    invoke-direct {v0, p2}, Ljava8/util/concurrent/CompletableFuture$CoCompletion;-><init>(Ljava8/util/concurrent/CompletableFuture$BiCompletion;)V

    invoke-virtual {p1, v0}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_0

    .line 1236
    :cond_1
    iget-object p1, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 1237
    invoke-virtual {p2, p1}, Ljava8/util/concurrent/CompletableFuture$BiCompletion;->tryFire(I)Ljava8/util/concurrent/CompletableFuture;

    :cond_2
    :goto_0
    return-void

    .line 1241
    :cond_3
    invoke-virtual {p1, p2}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V

    :cond_4
    return-void
.end method

.method public cancel(Z)Z
    .locals 3

    .line 2550
    iget-object p1, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance p1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    new-instance v2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-direct {p1, v2}, Ljava8/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    .line 2551
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2552
    :goto_0
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->postComplete()V

    if-nez p1, :cond_2

    .line 2553
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    return v0
.end method

.method final casStack(Ljava8/util/concurrent/CompletableFuture$Completion;Ljava8/util/concurrent/CompletableFuture$Completion;)Z
    .locals 6

    .line 258
    sget-object v0, Ljava8/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/CompletableFuture;->STACK:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/ClosingFuture$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final cleanStack()V
    .locals 5

    const/4 v0, 0x0

    .line 520
    :goto_0
    iget-object v1, p0, Ljava8/util/concurrent/CompletableFuture;->stack:Ljava8/util/concurrent/CompletableFuture$Completion;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava8/util/concurrent/CompletableFuture$Completion;->isLive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 521
    iget-object v0, v1, Ljava8/util/concurrent/CompletableFuture$Completion;->next:Ljava8/util/concurrent/CompletableFuture$Completion;

    invoke-virtual {p0, v1, v0}, Ljava8/util/concurrent/CompletableFuture;->casStack(Ljava8/util/concurrent/CompletableFuture$Completion;Ljava8/util/concurrent/CompletableFuture$Completion;)Z

    move-result v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 523
    iget-object v0, v1, Ljava8/util/concurrent/CompletableFuture$Completion;->next:Ljava8/util/concurrent/CompletableFuture$Completion;

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    if-eqz v1, :cond_2

    .line 524
    iget-object v2, v1, Ljava8/util/concurrent/CompletableFuture$Completion;->next:Ljava8/util/concurrent/CompletableFuture$Completion;

    .line 525
    invoke-virtual {v1}, Ljava8/util/concurrent/CompletableFuture$Completion;->isLive()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v1

    move-object v1, v2

    goto :goto_1

    .line 530
    :cond_1
    invoke-static {v0, v1, v2}, Ljava8/util/concurrent/CompletableFuture;->casNext(Ljava8/util/concurrent/CompletableFuture$Completion;Ljava8/util/concurrent/CompletableFuture$Completion;Ljava8/util/concurrent/CompletableFuture$Completion;)Z

    :cond_2
    return-void
.end method

.method public complete(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 2143
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z

    move-result p1

    .line 2144
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->postComplete()V

    return p1
.end method

.method public completeAsync(Ljava8/util/function/Supplier;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Supplier<",
            "+TT;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2759
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava8/util/concurrent/CompletableFuture;->completeAsync(Ljava8/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public completeAsync(Ljava8/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Supplier<",
            "+TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2744
    new-instance v0, Ljava8/util/concurrent/CompletableFuture$AsyncSupply;

    invoke-direct {v0, p0, p1}, Ljava8/util/concurrent/CompletableFuture$AsyncSupply;-><init>(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/function/Supplier;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 2743
    throw p1
.end method

.method public completeExceptionally(Ljava/lang/Throwable;)Z
    .locals 1

    .line 2157
    new-instance v0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    invoke-static {p1}, Ljava8/util/concurrent/Util;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava8/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Ljava8/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z

    move-result p1

    .line 2158
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->postComplete()V

    return p1
.end method

.method final completeNull()Z
    .locals 6

    .line 285
    sget-object v0, Ljava8/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/CompletableFuture;->RESULT:J

    const/4 v4, 0x0

    sget-object v5, Ljava8/util/concurrent/CompletableFuture;->NIL:Ljava8/util/concurrent/CompletableFuture$AltResult;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/ClosingFuture$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public completeOnTimeout(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava8/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2796
    invoke-static {p4}, Ljava8/util/concurrent/Util;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2797
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2798
    new-instance v0, Ljava8/util/concurrent/CompletableFuture$Canceller;

    new-instance v1, Ljava8/util/concurrent/CompletableFuture$DelayedCompleter;

    invoke-direct {v1, p0, p1}, Ljava8/util/concurrent/CompletableFuture$DelayedCompleter;-><init>(Ljava8/util/concurrent/CompletableFuture;Ljava/lang/Object;)V

    invoke-static {v1, p2, p3, p4}, Ljava8/util/concurrent/CompletableFuture$Delayer;->delay(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava8/util/concurrent/CompletableFuture$Canceller;-><init>(Ljava/util/concurrent/Future;)V

    invoke-virtual {p0, v0}, Ljava8/util/concurrent/CompletableFuture;->whenComplete(Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;

    :cond_0
    return-object p0
.end method

.method final completeRelay(Ljava/lang/Object;)Z
    .locals 6

    .line 370
    sget-object v0, Ljava8/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/CompletableFuture;->RESULT:J

    const/4 v4, 0x0

    .line 371
    invoke-static {p1}, Ljava8/util/concurrent/CompletableFuture;->encodeRelay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, p0

    .line 370
    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/ClosingFuture$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final completeThrowable(Ljava/lang/Throwable;)Z
    .locals 6

    .line 311
    sget-object v0, Ljava8/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/CompletableFuture;->RESULT:J

    const/4 v4, 0x0

    .line 312
    invoke-static {p1}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletableFuture$AltResult;

    move-result-object v5

    move-object v1, p0

    .line 311
    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/ClosingFuture$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z
    .locals 6

    .line 339
    sget-object v0, Ljava8/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/CompletableFuture;->RESULT:J

    const/4 v4, 0x0

    .line 340
    invoke-static {p1, p2}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, p0

    .line 339
    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/ClosingFuture$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final completeValue(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 296
    sget-object v0, Ljava8/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/CompletableFuture;->RESULT:J

    const/4 v4, 0x0

    if-nez p1, :cond_0

    sget-object p1, Ljava8/util/concurrent/CompletableFuture;->NIL:Ljava8/util/concurrent/CompletableFuture$AltResult;

    :cond_0
    move-object v5, p1

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/ClosingFuture$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public copy()Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2702
    invoke-static {p0}, Ljava8/util/concurrent/CompletableFuture;->uniCopyStage(Ljava8/util/concurrent/CompletableFuture;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method public defaultExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 2684
    sget-object v0, Ljava8/util/concurrent/CompletableFuture;->ASYNC_POOL:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method encodeOutcome(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p2, :cond_0

    if-nez p1, :cond_1

    .line 349
    sget-object p1, Ljava8/util/concurrent/CompletableFuture;->NIL:Ljava8/util/concurrent/CompletableFuture$AltResult;

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava8/util/concurrent/CompletableFuture;->encodeThrowable(Ljava/lang/Throwable;)Ljava8/util/concurrent/CompletableFuture$AltResult;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method final encodeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 291
    sget-object p1, Ljava8/util/concurrent/CompletableFuture;->NIL:Ljava8/util/concurrent/CompletableFuture$AltResult;

    :cond_0
    return-object p1
.end method

.method public exceptionally(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2360
    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->uniExceptionallyStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic exceptionally(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->exceptionally(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public exceptionallyAsync(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2382
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->uniExceptionallyStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public exceptionallyAsync(Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2404
    invoke-static {p2}, Ljava8/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Ljava8/util/concurrent/CompletableFuture;->uniExceptionallyStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic exceptionallyAsync(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->exceptionallyAsync(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic exceptionallyAsync(Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->exceptionallyAsync(Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public exceptionallyCompose(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava8/util/concurrent/CompletionStage<",
            "TT;>;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2422
    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->uniComposeExceptionallyStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic exceptionallyCompose(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->exceptionallyCompose(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public exceptionallyComposeAsync(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava8/util/concurrent/CompletionStage<",
            "TT;>;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2441
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->uniComposeExceptionallyStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public exceptionallyComposeAsync(Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Function<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava8/util/concurrent/CompletionStage<",
            "TT;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2462
    invoke-static {p2}, Ljava8/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Ljava8/util/concurrent/CompletableFuture;->uniComposeExceptionallyStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic exceptionallyComposeAsync(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->exceptionallyComposeAsync(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic exceptionallyComposeAsync(Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->exceptionallyComposeAsync(Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 2068
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2069
    invoke-direct {p0, v0}, Ljava8/util/concurrent/CompletableFuture;->waitingGet(Z)Ljava/lang/Object;

    move-result-object v0

    .line 2070
    :cond_0
    invoke-static {v0}, Ljava8/util/concurrent/CompletableFuture;->reportGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 2089
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 2091
    iget-object p3, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez p3, :cond_0

    .line 2092
    invoke-direct {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->timedGet(J)Ljava/lang/Object;

    move-result-object p3

    .line 2093
    :cond_0
    invoke-static {p3}, Ljava8/util/concurrent/CompletableFuture;->reportGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getNow(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 2131
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava8/util/concurrent/CompletableFuture;->reportJoin(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getNumberOfDependents()I
    .locals 2

    .line 2625
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->stack:Ljava8/util/concurrent/CompletableFuture$Completion;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    iget-object v0, v0, Ljava8/util/concurrent/CompletableFuture$Completion;->next:Ljava8/util/concurrent/CompletableFuture$Completion;

    goto :goto_0

    :cond_0
    return v1
.end method

.method public handle(Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/BiFunction<",
            "-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2336
    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->uniHandleStage(Ljava/util/concurrent/Executor;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic handle(Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->handle(Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public handleAsync(Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/BiFunction<",
            "-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2341
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->uniHandleStage(Ljava/util/concurrent/Executor;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public handleAsync(Ljava8/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/BiFunction<",
            "-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2346
    invoke-static {p2}, Ljava8/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Ljava8/util/concurrent/CompletableFuture;->uniHandleStage(Ljava/util/concurrent/Executor;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic handleAsync(Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->handleAsync(Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic handleAsync(Ljava8/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->handleAsync(Ljava8/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method final internalComplete(Ljava/lang/Object;)Z
    .locals 6

    .line 254
    sget-object v0, Ljava8/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/CompletableFuture;->RESULT:J

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/ClosingFuture$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isCancelled()Z
    .locals 2

    .line 2565
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    instance-of v1, v0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_0

    check-cast v0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object v0, v0, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCompletedExceptionally()Z
    .locals 2

    .line 2581
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    instance-of v1, v0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz v1, :cond_0

    sget-object v1, Ljava8/util/concurrent/CompletableFuture;->NIL:Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 2052
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public join()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2113
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2114
    invoke-direct {p0, v0}, Ljava8/util/concurrent/CompletableFuture;->waitingGet(Z)Ljava/lang/Object;

    move-result-object v0

    .line 2115
    :cond_0
    invoke-static {v0}, Ljava8/util/concurrent/CompletableFuture;->reportJoin(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public minimalCompletionStage()Ljava8/util/concurrent/CompletionStage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation

    .line 2726
    invoke-direct {p0}, Ljava8/util/concurrent/CompletableFuture;->uniAsMinimalStage()Ljava8/util/concurrent/CompletableFuture$MinimalStage;

    move-result-object v0

    return-object v0
.end method

.method public newIncompleteFuture()Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2669
    new-instance v0, Ljava8/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava8/util/concurrent/CompletableFuture;-><init>()V

    return-object v0
.end method

.method public obtrudeException(Ljava/lang/Throwable;)V
    .locals 1

    .line 2611
    new-instance v0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    invoke-static {p1}, Ljava8/util/concurrent/Util;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava8/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 2612
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->postComplete()V

    return-void
.end method

.method public obtrudeValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2595
    sget-object p1, Ljava8/util/concurrent/CompletableFuture;->NIL:Ljava8/util/concurrent/CompletableFuture$AltResult;

    :cond_0
    iput-object p1, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 2596
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->postComplete()V

    return-void
.end method

.method public orTimeout(JLjava/util/concurrent/TimeUnit;)Ljava8/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2775
    invoke-static {p3}, Ljava8/util/concurrent/Util;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2776
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2777
    new-instance v0, Ljava8/util/concurrent/CompletableFuture$Canceller;

    new-instance v1, Ljava8/util/concurrent/CompletableFuture$Timeout;

    invoke-direct {v1, p0}, Ljava8/util/concurrent/CompletableFuture$Timeout;-><init>(Ljava8/util/concurrent/CompletableFuture;)V

    invoke-static {v1, p1, p2, p3}, Ljava8/util/concurrent/CompletableFuture$Delayer;->delay(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava8/util/concurrent/CompletableFuture$Canceller;-><init>(Ljava/util/concurrent/Future;)V

    invoke-virtual {p0, v0}, Ljava8/util/concurrent/CompletableFuture;->whenComplete(Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;

    :cond_0
    return-object p0
.end method

.method final orpush(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture$BiCompletion;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletableFuture<",
            "*>;",
            "Ljava8/util/concurrent/CompletableFuture$BiCompletion<",
            "***>;)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 1539
    :cond_0
    invoke-virtual {p0, p2}, Ljava8/util/concurrent/CompletableFuture;->tryPushStack(Ljava8/util/concurrent/CompletableFuture$Completion;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1540
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1541
    invoke-static {p2, v0}, Ljava8/util/concurrent/CompletableFuture;->lazySetNext(Ljava8/util/concurrent/CompletableFuture$Completion;Ljava8/util/concurrent/CompletableFuture$Completion;)V

    .line 1545
    :cond_1
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    .line 1546
    invoke-virtual {p2, p1}, Ljava8/util/concurrent/CompletableFuture$BiCompletion;->tryFire(I)Ljava8/util/concurrent/CompletableFuture;

    goto :goto_0

    .line 1548
    :cond_2
    new-instance v0, Ljava8/util/concurrent/CompletableFuture$CoCompletion;

    invoke-direct {v0, p2}, Ljava8/util/concurrent/CompletableFuture$CoCompletion;-><init>(Ljava8/util/concurrent/CompletableFuture$BiCompletion;)V

    invoke-virtual {p1, v0}, Ljava8/util/concurrent/CompletableFuture;->unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V

    :cond_3
    :goto_0
    return-void
.end method

.method final postComplete()V
    .locals 4

    :goto_0
    move-object v0, p0

    .line 500
    :cond_0
    :goto_1
    iget-object v1, v0, Ljava8/util/concurrent/CompletableFuture;->stack:Ljava8/util/concurrent/CompletableFuture$Completion;

    if-nez v1, :cond_2

    if-eq v0, p0, :cond_1

    iget-object v1, p0, Ljava8/util/concurrent/CompletableFuture;->stack:Ljava8/util/concurrent/CompletableFuture$Completion;

    if-eqz v1, :cond_1

    move-object v0, p0

    goto :goto_2

    :cond_1
    return-void

    .line 503
    :cond_2
    :goto_2
    iget-object v2, v1, Ljava8/util/concurrent/CompletableFuture$Completion;->next:Ljava8/util/concurrent/CompletableFuture$Completion;

    invoke-virtual {v0, v1, v2}, Ljava8/util/concurrent/CompletableFuture;->casStack(Ljava8/util/concurrent/CompletableFuture$Completion;Ljava8/util/concurrent/CompletableFuture$Completion;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_4

    if-eq v0, p0, :cond_3

    .line 506
    invoke-virtual {p0, v1}, Ljava8/util/concurrent/CompletableFuture;->pushStack(Ljava8/util/concurrent/CompletableFuture$Completion;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 509
    invoke-static {v1, v2, v0}, Ljava8/util/concurrent/CompletableFuture;->casNext(Ljava8/util/concurrent/CompletableFuture$Completion;Ljava8/util/concurrent/CompletableFuture$Completion;Ljava8/util/concurrent/CompletableFuture$Completion;)Z

    :cond_4
    const/4 v0, -0x1

    .line 511
    invoke-virtual {v1, v0}, Ljava8/util/concurrent/CompletableFuture$Completion;->tryFire(I)Ljava8/util/concurrent/CompletableFuture;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method final postFire(Ljava8/util/concurrent/CompletableFuture;I)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletableFuture<",
            "*>;I)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 594
    iget-object v0, p1, Ljava8/util/concurrent/CompletableFuture;->stack:Ljava8/util/concurrent/CompletableFuture$Completion;

    if-eqz v0, :cond_2

    .line 596
    iget-object v0, p1, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 597
    invoke-virtual {p1}, Ljava8/util/concurrent/CompletableFuture;->cleanStack()V

    :cond_0
    if-ltz p2, :cond_2

    if-nez v0, :cond_1

    .line 598
    iget-object v0, p1, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 599
    :cond_1
    invoke-virtual {p1}, Ljava8/util/concurrent/CompletableFuture;->postComplete()V

    .line 601
    :cond_2
    iget-object p1, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz p1, :cond_4

    iget-object p1, p0, Ljava8/util/concurrent/CompletableFuture;->stack:Ljava8/util/concurrent/CompletableFuture$Completion;

    if-eqz p1, :cond_4

    if-gez p2, :cond_3

    return-object p0

    .line 605
    :cond_3
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->postComplete()V

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method final postFire(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;I)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletableFuture<",
            "*>;",
            "Ljava8/util/concurrent/CompletableFuture<",
            "*>;I)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 1248
    iget-object v0, p2, Ljava8/util/concurrent/CompletableFuture;->stack:Ljava8/util/concurrent/CompletableFuture$Completion;

    if-eqz v0, :cond_2

    .line 1250
    iget-object v0, p2, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 1251
    invoke-virtual {p2}, Ljava8/util/concurrent/CompletableFuture;->cleanStack()V

    :cond_0
    if-ltz p3, :cond_2

    if-nez v0, :cond_1

    .line 1252
    iget-object v0, p2, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 1253
    :cond_1
    invoke-virtual {p2}, Ljava8/util/concurrent/CompletableFuture;->postComplete()V

    .line 1255
    :cond_2
    invoke-virtual {p0, p1, p3}, Ljava8/util/concurrent/CompletableFuture;->postFire(Ljava8/util/concurrent/CompletableFuture;I)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method final pushStack(Ljava8/util/concurrent/CompletableFuture$Completion;)V
    .locals 1

    .line 270
    :cond_0
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->tryPushStack(Ljava8/util/concurrent/CompletableFuture$Completion;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public runAfterBoth(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2241
    invoke-direct {p0, v0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->biRunStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic runAfterBoth(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->runAfterBoth(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public runAfterBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2246
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->biRunStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public runAfterBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2252
    invoke-static {p3}, Ljava8/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->biRunStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic runAfterBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->runAfterBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic runAfterBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Ljava8/util/concurrent/CompletableFuture;->runAfterBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public runAfterEither(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2289
    invoke-direct {p0, v0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->orRunStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic runAfterEither(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->runAfterEither(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public runAfterEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2294
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->orRunStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public runAfterEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletionStage<",
            "*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2300
    invoke-static {p3}, Ljava8/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->orRunStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic runAfterEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->runAfterEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic runAfterEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Ljava8/util/concurrent/CompletableFuture;->runAfterEitherAsync(Ljava8/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenAccept(Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2178
    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->uniAcceptStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenAccept(Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->thenAccept(Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenAcceptAsync(Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2182
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->uniAcceptStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenAcceptAsync(Ljava8/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2187
    invoke-static {p2}, Ljava8/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Ljava8/util/concurrent/CompletableFuture;->uniAcceptStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenAcceptAsync(Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava8/util/function/Consumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenAcceptAsync(Ljava8/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava8/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenAcceptBoth(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava8/util/function/BiConsumer<",
            "-TT;-TU;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2224
    invoke-direct {p0, v0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->biAcceptStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenAcceptBoth(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->thenAcceptBoth(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenAcceptBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava8/util/function/BiConsumer<",
            "-TT;-TU;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2230
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->biAcceptStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenAcceptBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava8/util/function/BiConsumer<",
            "-TT;-TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2236
    invoke-static {p3}, Ljava8/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->biAcceptStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenAcceptBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->thenAcceptBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenAcceptBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Ljava8/util/concurrent/CompletableFuture;->thenAcceptBothAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenApply(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2164
    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->uniApplyStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenApply(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->thenApply(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenApplyAsync(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2169
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->uniApplyStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenApplyAsync(Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2174
    invoke-static {p2}, Ljava8/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Ljava8/util/concurrent/CompletableFuture;->uniApplyStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenApplyAsync(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->thenApplyAsync(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenApplyAsync(Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->thenApplyAsync(Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenCombine(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava8/util/function/BiFunction<",
            "-TT;-TU;+TV;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2206
    invoke-direct {p0, v0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->biApplyStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenCombine(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->thenCombine(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenCombineAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava8/util/function/BiFunction<",
            "-TT;-TU;+TV;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 2212
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->biApplyStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenCombineAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava8/util/function/BiFunction<",
            "-TT;-TU;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 2218
    invoke-static {p3}, Ljava8/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->biApplyStage(Ljava/util/concurrent/Executor;Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenCombineAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->thenCombineAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenCombineAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Ljava8/util/concurrent/CompletableFuture;->thenCombineAsync(Ljava8/util/concurrent/CompletionStage;Ljava8/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenCompose(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+",
            "Ljava8/util/concurrent/CompletionStage<",
            "TU;>;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2305
    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->uniComposeStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenCompose(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->thenCompose(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenComposeAsync(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+",
            "Ljava8/util/concurrent/CompletionStage<",
            "TU;>;>;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2310
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->uniComposeStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenComposeAsync(Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+",
            "Ljava8/util/concurrent/CompletionStage<",
            "TU;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation

    .line 2316
    invoke-static {p2}, Ljava8/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Ljava8/util/concurrent/CompletableFuture;->uniComposeStage(Ljava/util/concurrent/Executor;Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenComposeAsync(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->thenComposeAsync(Ljava8/util/function/Function;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenComposeAsync(Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->thenComposeAsync(Ljava8/util/function/Function;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenRun(Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2191
    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->uniRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenRun(Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenRunAsync(Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2195
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->uniRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2200
    invoke-static {p2}, Ljava8/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Ljava8/util/concurrent/CompletableFuture;->uniRunStage(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenRunAsync(Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->thenRunAsync(Ljava/lang/Runnable;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public toCompletableFuture()Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 2641
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 2643
    iget-object v1, p0, Ljava8/util/concurrent/CompletableFuture;->stack:Ljava8/util/concurrent/CompletableFuture$Completion;

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    iget-object v1, v1, Ljava8/util/concurrent/CompletableFuture$Completion;->next:Ljava8/util/concurrent/CompletableFuture$Completion;

    goto :goto_0

    .line 2645
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    if-nez v2, :cond_1

    const-string v0, "[Not completed]"

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[Not completed, "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dependents]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    instance-of v2, v0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz v2, :cond_3

    check-cast v0, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object v2, v0, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Completed exceptionally: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, "[Completed normally]"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final tryPushStack(Ljava8/util/concurrent/CompletableFuture$Completion;)Z
    .locals 6

    .line 263
    iget-object v4, p0, Ljava8/util/concurrent/CompletableFuture;->stack:Ljava8/util/concurrent/CompletableFuture$Completion;

    .line 264
    invoke-static {p1, v4}, Ljava8/util/concurrent/CompletableFuture;->lazySetNext(Ljava8/util/concurrent/CompletableFuture$Completion;Ljava8/util/concurrent/CompletableFuture$Completion;)V

    .line 265
    sget-object v0, Ljava8/util/concurrent/CompletableFuture;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/CompletableFuture;->STACK:J

    move-object v1, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/ClosingFuture$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final uniExceptionally(Ljava/lang/Object;Ljava8/util/function/Function;Ljava8/util/concurrent/CompletableFuture$UniExceptionally;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava8/util/function/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;",
            "Ljava8/util/concurrent/CompletableFuture$UniExceptionally<",
            "TT;>;)Z"
        }
    .end annotation

    .line 979
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_2

    if-eqz p3, :cond_0

    .line 981
    :try_start_0
    invoke-virtual {p3}, Ljava8/util/concurrent/CompletableFuture$UniExceptionally;->claim()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 983
    :cond_0
    instance-of p3, p1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz p3, :cond_1

    move-object p3, p1

    check-cast p3, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object p3, p3, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz p3, :cond_1

    .line 984
    invoke-interface {p2, p3}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z

    goto :goto_0

    .line 986
    :cond_1
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 988
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method final uniHandle(Ljava/lang/Object;Ljava8/util/function/BiFunction;Ljava8/util/concurrent/CompletableFuture$UniHandle;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava8/util/function/BiFunction<",
            "-TS;",
            "Ljava/lang/Throwable;",
            "+TT;>;",
            "Ljava8/util/concurrent/CompletableFuture$UniHandle<",
            "TS;TT;>;)Z"
        }
    .end annotation

    .line 915
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_2

    if-eqz p3, :cond_0

    .line 917
    :try_start_0
    invoke-virtual {p3}, Ljava8/util/concurrent/CompletableFuture$UniHandle;->claim()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 919
    :cond_0
    instance-of p3, p1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 920
    check-cast p1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object p1, p1, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    .line 928
    :cond_1
    invoke-interface {p2, p1, v0}, Ljava8/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->completeValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 930
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method final uniWhenComplete(Ljava/lang/Object;Ljava8/util/function/BiConsumer;Ljava8/util/concurrent/CompletableFuture$UniWhenComplete;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava8/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava8/util/concurrent/CompletableFuture$UniWhenComplete<",
            "TT;>;)Z"
        }
    .end annotation

    .line 843
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez v0, :cond_4

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 845
    :try_start_0
    invoke-virtual {p3}, Ljava8/util/concurrent/CompletableFuture$UniWhenComplete;->claim()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 847
    :cond_0
    instance-of p3, p1, Ljava8/util/concurrent/CompletableFuture$AltResult;

    if-eqz p3, :cond_1

    .line 848
    move-object p3, p1

    check-cast p3, Ljava8/util/concurrent/CompletableFuture$AltResult;

    iget-object p3, p3, Ljava8/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_1
    move-object p3, v0

    move-object v0, p1

    .line 855
    :goto_0
    :try_start_1
    invoke-interface {p2, v0, p3}, Ljava8/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p3, :cond_3

    .line 857
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    :catchall_0
    move-exception p2

    move-object v0, p3

    goto :goto_1

    :catchall_1
    move-exception p2

    :goto_1
    if-nez v0, :cond_2

    move-object p3, p2

    goto :goto_2

    :cond_2
    move-object p3, v0

    .line 867
    :cond_3
    :goto_2
    invoke-virtual {p0, p3, p1}, Ljava8/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    :cond_4
    return v1
.end method

.method final unipush(Ljava8/util/concurrent/CompletableFuture$Completion;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 577
    :cond_0
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->tryPushStack(Ljava8/util/concurrent/CompletableFuture$Completion;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 578
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 579
    invoke-static {p1, v0}, Ljava8/util/concurrent/CompletableFuture;->lazySetNext(Ljava8/util/concurrent/CompletableFuture$Completion;Ljava8/util/concurrent/CompletableFuture$Completion;)V

    .line 583
    :cond_1
    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 584
    invoke-virtual {p1, v0}, Ljava8/util/concurrent/CompletableFuture$Completion;->tryFire(I)Ljava8/util/concurrent/CompletableFuture;

    :cond_2
    return-void
.end method

.method public whenComplete(Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2321
    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->uniWhenCompleteStage(Ljava/util/concurrent/Executor;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whenComplete(Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->whenComplete(Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whenCompleteAsync(Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2326
    invoke-virtual {p0}, Ljava8/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/CompletableFuture;->uniWhenCompleteStage(Ljava/util/concurrent/Executor;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public whenCompleteAsync(Ljava8/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 2331
    invoke-static {p2}, Ljava8/util/concurrent/CompletableFuture;->screenExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Ljava8/util/concurrent/CompletableFuture;->uniWhenCompleteStage(Ljava/util/concurrent/Executor;Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whenCompleteAsync(Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->whenCompleteAsync(Ljava8/util/function/BiConsumer;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whenCompleteAsync(Ljava8/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletionStage;
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2}, Ljava8/util/concurrent/CompletableFuture;->whenCompleteAsync(Ljava8/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
