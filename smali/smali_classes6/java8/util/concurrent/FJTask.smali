.class abstract Ljava8/util/concurrent/FJTask;
.super Ljava/lang/Object;
.source "FJTask.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/concurrent/FJTask$AdaptedCallable;,
        Ljava8/util/concurrent/FJTask$RunnableExecuteAction;,
        Ljava8/util/concurrent/FJTask$AdaptedRunnableAction;,
        Ljava8/util/concurrent/FJTask$AdaptedRunnable;,
        Ljava8/util/concurrent/FJTask$ExceptionNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final CANCELLED:I = -0x40000000

.field static final DONE_MASK:I = -0x10000000

.field static final EXCEPTIONAL:I = -0x80000000

.field static final NORMAL:I = -0x10000000

.field static final SIGNAL:I = 0x10000

.field static final SMASK:I = 0xffff

.field private static final STATUS:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final exceptionTable:[Ljava8/util/concurrent/FJTask$ExceptionNode;

.field private static final exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava8/util/concurrent/FJTask<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x6b295cc9a986fd4fL


# instance fields
.field volatile status:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x20

    new-array v0, v0, [Ljava8/util/concurrent/FJTask$ExceptionNode;

    .line 393
    sput-object v0, Ljava8/util/concurrent/FJTask;->exceptionTable:[Ljava8/util/concurrent/FJTask$ExceptionNode;

    .line 397
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Ljava8/util/concurrent/FJTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 401
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Ljava8/util/concurrent/FJTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    .line 969
    sget-object v0, Ljava8/util/concurrent/UnsafeAcc;->unsafe:Lsun/misc/Unsafe;

    sput-object v0, Ljava8/util/concurrent/FJTask;->U:Lsun/misc/Unsafe;

    .line 974
    :try_start_0
    const-class v1, Ljava8/util/concurrent/FJTask;

    const-string v2, "status"

    .line 975
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 974
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/concurrent/FJTask;->STATUS:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 977
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>()V
    .locals 0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final cancelIgnoringExceptions(Ljava8/util/concurrent/FJTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/FJTask<",
            "*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 488
    iget v0, p0, Ljava8/util/concurrent/FJTask;->status:I

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    .line 490
    :try_start_0
    invoke-virtual {p0, v0}, Ljava8/util/concurrent/FJTask;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private doInvoke()I
    .locals 4

    .line 375
    invoke-virtual {p0}, Ljava8/util/concurrent/FJTask;->doExec()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Ljava8/util/concurrent/FJWorkerThread;

    if-eqz v1, :cond_1

    check-cast v0, Ljava8/util/concurrent/FJWorkerThread;

    iget-object v1, v0, Ljava8/util/concurrent/FJWorkerThread;->pool:Ljava8/util/concurrent/FJPool;

    iget-object v0, v0, Ljava8/util/concurrent/FJWorkerThread;->workQueue:Ljava8/util/concurrent/FJPool$WorkQueue;

    const-wide/16 v2, 0x0

    .line 378
    invoke-virtual {v1, v0, p0, v2, v3}, Ljava8/util/concurrent/FJPool;->awaitJoin(Ljava8/util/concurrent/FJPool$WorkQueue;Ljava8/util/concurrent/FJTask;J)I

    move-result v0

    goto :goto_0

    .line 379
    :cond_1
    invoke-direct {p0}, Ljava8/util/concurrent/FJTask;->externalAwaitDone()I

    move-result v0

    :goto_0
    return v0
.end method

.method private doJoin()I
    .locals 4

    .line 360
    iget v0, p0, Ljava8/util/concurrent/FJTask;->status:I

    if-gez v0, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Ljava8/util/concurrent/FJWorkerThread;

    if-eqz v1, :cond_2

    check-cast v0, Ljava8/util/concurrent/FJWorkerThread;

    iget-object v1, v0, Ljava8/util/concurrent/FJWorkerThread;->workQueue:Ljava8/util/concurrent/FJPool$WorkQueue;

    .line 363
    invoke-virtual {v1, p0}, Ljava8/util/concurrent/FJPool$WorkQueue;->tryUnpush(Ljava8/util/concurrent/FJTask;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava8/util/concurrent/FJTask;->doExec()I

    move-result v2

    if-gez v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, v0, Ljava8/util/concurrent/FJWorkerThread;->pool:Ljava8/util/concurrent/FJPool;

    const-wide/16 v2, 0x0

    .line 364
    invoke-virtual {v0, v1, p0, v2, v3}, Ljava8/util/concurrent/FJPool;->awaitJoin(Ljava8/util/concurrent/FJPool$WorkQueue;Ljava8/util/concurrent/FJTask;J)I

    move-result v0

    goto :goto_0

    .line 365
    :cond_2
    invoke-direct {p0}, Ljava8/util/concurrent/FJTask;->externalAwaitDone()I

    move-result v0

    :goto_0
    return v0
.end method

.method private static expungeStaleExceptions()V
    .locals 6

    .line 553
    :cond_0
    :goto_0
    sget-object v0, Ljava8/util/concurrent/FJTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 554
    instance-of v1, v0, Ljava8/util/concurrent/FJTask$ExceptionNode;

    if-eqz v1, :cond_0

    .line 555
    sget-object v1, Ljava8/util/concurrent/FJTask;->exceptionTable:[Ljava8/util/concurrent/FJTask$ExceptionNode;

    .line 556
    move-object v2, v0

    check-cast v2, Ljava8/util/concurrent/FJTask$ExceptionNode;

    iget v2, v2, Ljava8/util/concurrent/FJTask$ExceptionNode;->hashCode:I

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    .line 557
    aget-object v3, v1, v2

    const/4 v4, 0x0

    :goto_1
    if-eqz v3, :cond_0

    .line 560
    iget-object v5, v3, Ljava8/util/concurrent/FJTask$ExceptionNode;->next:Ljava8/util/concurrent/FJTask$ExceptionNode;

    if-ne v3, v0, :cond_2

    if-nez v4, :cond_1

    .line 563
    aput-object v5, v1, v2

    goto :goto_0

    .line 565
    :cond_1
    iput-object v5, v4, Ljava8/util/concurrent/FJTask$ExceptionNode;->next:Ljava8/util/concurrent/FJTask$ExceptionNode;

    goto :goto_0

    :cond_2
    move-object v4, v3

    move-object v3, v5

    goto :goto_1

    :cond_3
    return-void
.end method

.method private externalAwaitDone()I
    .locals 8

    .line 305
    sget-object v0, Ljava8/util/concurrent/FJPool;->common:Ljava8/util/concurrent/FJPool;

    invoke-virtual {v0, p0}, Ljava8/util/concurrent/FJPool;->tryExternalUnpush(Ljava8/util/concurrent/FJTask;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava8/util/concurrent/FJTask;->doExec()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ltz v0, :cond_5

    .line 306
    iget v0, p0, Ljava8/util/concurrent/FJTask;->status:I

    if-ltz v0, :cond_5

    move v6, v0

    .line 309
    :cond_1
    sget-object v2, Ljava8/util/concurrent/FJTask;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava8/util/concurrent/FJTask;->STATUS:J

    const/high16 v0, 0x10000

    or-int v7, v6, v0

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 310
    monitor-enter p0

    .line 311
    :try_start_0
    iget v0, p0, Ljava8/util/concurrent/FJTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v0, :cond_2

    const-wide/16 v2, 0x0

    .line 313
    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    const/4 v1, 0x1

    goto :goto_1

    .line 319
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 320
    :goto_1
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 322
    :cond_3
    :goto_2
    iget v6, p0, Ljava8/util/concurrent/FJTask;->status:I

    if-gez v6, :cond_1

    if-eqz v1, :cond_4

    .line 324
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    move v0, v6

    :cond_5
    return v0
.end method

.method private externalInterruptibleAwaitDone()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 334
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 336
    iget v0, p0, Ljava8/util/concurrent/FJTask;->status:I

    if-ltz v0, :cond_4

    sget-object v0, Ljava8/util/concurrent/FJPool;->common:Ljava8/util/concurrent/FJPool;

    invoke-virtual {v0, p0}, Ljava8/util/concurrent/FJPool;->tryExternalUnpush(Ljava8/util/concurrent/FJTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava8/util/concurrent/FJTask;->doExec()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ltz v0, :cond_4

    .line 337
    :cond_1
    :goto_1
    iget v5, p0, Ljava8/util/concurrent/FJTask;->status:I

    if-ltz v5, :cond_3

    .line 338
    sget-object v1, Ljava8/util/concurrent/FJTask;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava8/util/concurrent/FJTask;->STATUS:J

    const/high16 v0, 0x10000

    or-int v6, v5, v0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    monitor-enter p0

    .line 340
    :try_start_0
    iget v0, p0, Ljava8/util/concurrent/FJTask;->status:I

    if-ltz v0, :cond_2

    const-wide/16 v0, 0x0

    .line 341
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    goto :goto_2

    .line 343
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 344
    :goto_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move v0, v5

    :cond_4
    return v0

    .line 335
    :cond_5
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method private getThrowableException()Ljava/lang/Throwable;
    .locals 10

    .line 511
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 513
    sget-object v1, Ljava8/util/concurrent/FJTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 514
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 516
    :try_start_0
    invoke-static {}, Ljava8/util/concurrent/FJTask;->expungeStaleExceptions()V

    .line 517
    sget-object v2, Ljava8/util/concurrent/FJTask;->exceptionTable:[Ljava8/util/concurrent/FJTask$ExceptionNode;

    .line 518
    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    and-int/2addr v0, v3

    aget-object v0, v2, v0

    :goto_0
    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {v0}, Ljava8/util/concurrent/FJTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 520
    iget-object v0, v0, Ljava8/util/concurrent/FJTask$ExceptionNode;->next:Ljava8/util/concurrent/FJTask$ExceptionNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 522
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 525
    iget-object v2, v0, Ljava8/util/concurrent/FJTask$ExceptionNode;->ex:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    goto :goto_3

    .line 527
    :cond_1
    iget-wide v5, v0, Ljava8/util/concurrent/FJTask$ExceptionNode;->thrower:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-eqz v0, :cond_5

    .line 531
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v3, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_4

    aget-object v7, v0, v6

    .line 532
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 533
    array-length v9, v8

    if-nez v9, :cond_2

    move-object v1, v7

    goto :goto_2

    .line 535
    :cond_2
    array-length v9, v8

    if-ne v9, v4, :cond_3

    aget-object v8, v8, v5

    const-class v9, Ljava/lang/Throwable;

    if-ne v8, v9, :cond_3

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v5

    .line 536
    invoke-virtual {v7, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    new-array v0, v5, [Ljava/lang/Object;

    .line 539
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 540
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    :cond_5
    return-object v2

    :cond_6
    :goto_3
    return-object v1

    :catchall_0
    move-exception v0

    .line 522
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method static final helpExpungeStaleExceptions()V
    .locals 2

    .line 580
    sget-object v0, Ljava8/util/concurrent/FJTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 581
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    :try_start_0
    invoke-static {}, Ljava8/util/concurrent/FJTask;->expungeStaleExceptions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 962
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 963
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 965
    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p0, p1}, Ljava8/util/concurrent/FJTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private reportException(I)V
    .locals 1

    const/high16 v0, -0x40000000    # -2.0f

    if-eq p1, v0, :cond_1

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 604
    invoke-direct {p0}, Ljava8/util/concurrent/FJTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Ljava8/util/concurrent/FJTask;->rethrow(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    .line 602
    :cond_1
    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw p1
.end method

.method static rethrow(Ljava/lang/Throwable;)V
    .locals 0

    .line 594
    invoke-static {p0}, Ljava8/util/concurrent/FJPool;->rethrow(Ljava/lang/Throwable;)Ljava/lang/Object;

    return-void
.end method

.method private setCompletion(I)I
    .locals 7

    .line 250
    :cond_0
    iget v6, p0, Ljava8/util/concurrent/FJTask;->status:I

    if-gez v6, :cond_1

    return v6

    .line 252
    :cond_1
    sget-object v0, Ljava8/util/concurrent/FJTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/FJTask;->STATUS:J

    or-int v5, v6, p1

    move-object v1, p0

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    ushr-int/lit8 v0, v6, 0x10

    if-eqz v0, :cond_2

    .line 254
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return p1
.end method

.method private setExceptionalCompletion(Ljava/lang/Throwable;)I
    .locals 3

    .line 469
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/FJTask;->recordExceptionalCompletion(Ljava/lang/Throwable;)I

    move-result v0

    const/high16 v1, -0x10000000

    and-int/2addr v1, v0

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 471
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/FJTask;->internalPropagateException(Ljava/lang/Throwable;)V

    :cond_0
    return v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 949
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 950
    invoke-virtual {p0}, Ljava8/util/concurrent/FJTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2

    const/high16 p1, -0x40000000    # -2.0f

    .line 652
    invoke-direct {p0, p1}, Ljava8/util/concurrent/FJTask;->setCompletion(I)I

    move-result v0

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method final compareAndSetForkJoinTaskTag(SS)Z
    .locals 6

    .line 839
    :cond_0
    iget v4, p0, Ljava8/util/concurrent/FJTask;->status:I

    int-to-short v0, v4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 841
    :cond_1
    sget-object v0, Ljava8/util/concurrent/FJTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/FJTask;->STATUS:J

    const/high16 v1, -0x10000

    and-int/2addr v1, v4

    const v5, 0xffff

    and-int/2addr v5, p2

    or-int/2addr v5, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method completeExceptionally(Ljava/lang/Throwable;)V
    .locals 1

    .line 692
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Ljava8/util/concurrent/FJTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    return-void
.end method

.method final doExec()I
    .locals 2

    .line 269
    iget v0, p0, Ljava8/util/concurrent/FJTask;->status:I

    if-ltz v0, :cond_0

    .line 271
    :try_start_0
    invoke-virtual {p0}, Ljava8/util/concurrent/FJTask;->exec()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/high16 v0, -0x10000000

    .line 276
    invoke-direct {p0, v0}, Ljava8/util/concurrent/FJTask;->setCompletion(I)I

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 273
    invoke-direct {p0, v0}, Ljava8/util/concurrent/FJTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    move-result v0

    :cond_0
    :goto_0
    return v0
.end method

.method protected abstract exec()Z
.end method

.method public final get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 709
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Ljava8/util/concurrent/FJWorkerThread;

    if-eqz v0, :cond_0

    .line 710
    invoke-direct {p0}, Ljava8/util/concurrent/FJTask;->doJoin()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Ljava8/util/concurrent/FJTask;->externalInterruptibleAwaitDone()I

    move-result v0

    :goto_0
    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    const/high16 v1, -0x40000000    # -2.0f

    if-eq v0, v1, :cond_2

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 715
    invoke-virtual {p0}, Ljava8/util/concurrent/FJTask;->getRawResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 714
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-direct {p0}, Ljava8/util/concurrent/FJTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 712
    :cond_2
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 735
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 736
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p3

    if-nez p3, :cond_b

    .line 738
    iget p3, p0, Ljava8/util/concurrent/FJTask;->status:I

    if-ltz p3, :cond_6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_6

    .line 739
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    add-long/2addr v2, p1

    cmp-long p1, v2, v0

    if-nez p1, :cond_0

    const-wide/16 v2, 0x1

    .line 741
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    .line 742
    instance-of p2, p1, Ljava8/util/concurrent/FJWorkerThread;

    if-eqz p2, :cond_1

    .line 743
    check-cast p1, Ljava8/util/concurrent/FJWorkerThread;

    .line 744
    iget-object p2, p1, Ljava8/util/concurrent/FJWorkerThread;->pool:Ljava8/util/concurrent/FJPool;

    iget-object p1, p1, Ljava8/util/concurrent/FJWorkerThread;->workQueue:Ljava8/util/concurrent/FJPool$WorkQueue;

    invoke-virtual {p2, p1, p0, v2, v3}, Ljava8/util/concurrent/FJPool;->awaitJoin(Ljava8/util/concurrent/FJPool$WorkQueue;Ljava8/util/concurrent/FJTask;J)I

    move-result p3

    goto :goto_3

    .line 746
    :cond_1
    sget-object p1, Ljava8/util/concurrent/FJPool;->common:Ljava8/util/concurrent/FJPool;

    invoke-virtual {p1, p0}, Ljava8/util/concurrent/FJPool;->tryExternalUnpush(Ljava8/util/concurrent/FJTask;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava8/util/concurrent/FJTask;->doExec()I

    move-result p1

    move p3, p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ltz p3, :cond_6

    .line 748
    :cond_3
    :goto_1
    iget v8, p0, Ljava8/util/concurrent/FJTask;->status:I

    if-ltz v8, :cond_5

    .line 749
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    sub-long p1, v2, p1

    cmp-long p3, p1, v0

    if-lez p3, :cond_5

    .line 750
    sget-object p3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    cmp-long p3, p1, v0

    if-lez p3, :cond_3

    sget-object v4, Ljava8/util/concurrent/FJTask;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava8/util/concurrent/FJTask;->STATUS:J

    const/high16 p3, 0x10000

    or-int v9, v8, p3

    move-object v5, p0

    .line 751
    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 752
    monitor-enter p0

    .line 753
    :try_start_0
    iget p3, p0, Ljava8/util/concurrent/FJTask;->status:I

    if-ltz p3, :cond_4

    .line 754
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    goto :goto_2

    .line 756
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 757
    :goto_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    move p3, v8

    :cond_6
    :goto_3
    if-ltz p3, :cond_7

    .line 763
    iget p3, p0, Ljava8/util/concurrent/FJTask;->status:I

    :cond_7
    const/high16 p1, -0x10000000

    and-int p2, p3, p1

    if-eq p2, p1, :cond_a

    const/high16 p1, -0x40000000    # -2.0f

    if-eq p2, p1, :cond_9

    const/high16 p1, -0x80000000

    if-eq p2, p1, :cond_8

    .line 768
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    .line 769
    :cond_8
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {p0}, Ljava8/util/concurrent/FJTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 766
    :cond_9
    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw p1

    .line 771
    :cond_a
    invoke-virtual {p0}, Ljava8/util/concurrent/FJTask;->getRawResult()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 737
    :cond_b
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method final getException()Ljava/lang/Throwable;
    .locals 2

    .line 671
    iget v0, p0, Ljava8/util/concurrent/FJTask;->status:I

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, -0x40000000    # -2.0f

    if-ne v0, v1, :cond_1

    .line 672
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    goto :goto_0

    .line 674
    :cond_1
    invoke-direct {p0}, Ljava8/util/concurrent/FJTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method abstract getRawResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method internalPropagateException(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method final internalWait(J)V
    .locals 6

    .line 289
    iget v4, p0, Ljava8/util/concurrent/FJTask;->status:I

    if-ltz v4, :cond_1

    sget-object v0, Ljava8/util/concurrent/FJTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/FJTask;->STATUS:J

    const/high16 v1, 0x10000

    or-int v5, v4, v1

    move-object v1, p0

    .line 290
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    monitor-enter p0

    .line 292
    :try_start_0
    iget v0, p0, Ljava8/util/concurrent/FJTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v0, :cond_0

    .line 293
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 295
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 296
    :catch_0
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method final invoke()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 619
    invoke-direct {p0}, Ljava8/util/concurrent/FJTask;->doInvoke()I

    move-result v0

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 620
    invoke-direct {p0, v0}, Ljava8/util/concurrent/FJTask;->reportException(I)V

    .line 621
    :cond_0
    invoke-virtual {p0}, Ljava8/util/concurrent/FJTask;->getRawResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 2

    .line 660
    iget v0, p0, Ljava8/util/concurrent/FJTask;->status:I

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    const/high16 v1, -0x40000000    # -2.0f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isDone()Z
    .locals 1

    .line 656
    iget v0, p0, Ljava8/util/concurrent/FJTask;->status:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final quietlyJoin()V
    .locals 0

    .line 781
    invoke-direct {p0}, Ljava8/util/concurrent/FJTask;->doJoin()I

    return-void
.end method

.method final recordExceptionalCompletion(Ljava/lang/Throwable;)I
    .locals 6

    .line 438
    iget v0, p0, Ljava8/util/concurrent/FJTask;->status:I

    if-ltz v0, :cond_2

    .line 439
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 440
    sget-object v1, Ljava8/util/concurrent/FJTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 441
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 443
    :try_start_0
    invoke-static {}, Ljava8/util/concurrent/FJTask;->expungeStaleExceptions()V

    .line 444
    sget-object v2, Ljava8/util/concurrent/FJTask;->exceptionTable:[Ljava8/util/concurrent/FJTask$ExceptionNode;

    .line 445
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v0, v3

    .line 446
    aget-object v3, v2, v0

    :goto_0
    if-nez v3, :cond_0

    .line 448
    new-instance v3, Ljava8/util/concurrent/FJTask$ExceptionNode;

    aget-object v4, v2, v0

    sget-object v5, Ljava8/util/concurrent/FJTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v3, p0, p1, v4, v5}, Ljava8/util/concurrent/FJTask$ExceptionNode;-><init>(Ljava8/util/concurrent/FJTask;Ljava/lang/Throwable;Ljava8/util/concurrent/FJTask$ExceptionNode;Ljava/lang/ref/ReferenceQueue;)V

    aput-object v3, v2, v0

    goto :goto_1

    .line 452
    :cond_0
    invoke-virtual {v3}, Ljava8/util/concurrent/FJTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, p0, :cond_1

    .line 456
    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/high16 p1, -0x80000000

    .line 458
    invoke-direct {p0, p1}, Ljava8/util/concurrent/FJTask;->setCompletion(I)I

    move-result v0

    goto :goto_2

    .line 446
    :cond_1
    :try_start_1
    iget-object v3, v3, Ljava8/util/concurrent/FJTask$ExceptionNode;->next:Ljava8/util/concurrent/FJTask$ExceptionNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 456
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_2
    :goto_2
    return v0
.end method

.method protected abstract setRawResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method
