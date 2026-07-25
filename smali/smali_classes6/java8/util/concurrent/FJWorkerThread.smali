.class Ljava8/util/concurrent/FJWorkerThread;
.super Ljava/lang/Thread;
.source "FJWorkerThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/concurrent/FJWorkerThread$InnocuousForkJoinWorkerThread;
    }
.end annotation


# static fields
.field private static final NAME_PLACEHOLDER:Ljava/lang/String; = "aFJWorkerThread"


# instance fields
.field final pool:Ljava8/util/concurrent/FJPool;

.field final workQueue:Ljava8/util/concurrent/FJPool$WorkQueue;


# direct methods
.method constructor <init>(Ljava8/util/concurrent/FJPool;Ljava/lang/ClassLoader;)V
    .locals 1

    const-string v0, "aFJWorkerThread"

    .line 67
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-static {p0, p2}, Ljava8/util/concurrent/TLR;->setContextClassLoader(Ljava/lang/Thread;Ljava/lang/ClassLoader;)V

    .line 69
    iput-object p1, p0, Ljava8/util/concurrent/FJWorkerThread;->pool:Ljava8/util/concurrent/FJPool;

    .line 70
    invoke-virtual {p1, p0}, Ljava8/util/concurrent/FJPool;->registerWorker(Ljava8/util/concurrent/FJWorkerThread;)Ljava8/util/concurrent/FJPool$WorkQueue;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/concurrent/FJWorkerThread;->workQueue:Ljava8/util/concurrent/FJPool$WorkQueue;

    return-void
.end method

.method constructor <init>(Ljava8/util/concurrent/FJPool;Ljava/lang/ClassLoader;Ljava/lang/ThreadGroup;Ljava/security/AccessControlContext;)V
    .locals 1

    const-string v0, "aFJWorkerThread"

    .line 81
    invoke-direct {p0, p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    .line 82
    invoke-super {p0, p2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 83
    invoke-static {p0, p4}, Ljava8/util/concurrent/TLR;->setInheritedAccessControlContext(Ljava/lang/Thread;Ljava/security/AccessControlContext;)V

    .line 84
    invoke-static {p0}, Ljava8/util/concurrent/TLR;->eraseThreadLocals(Ljava/lang/Thread;)V

    .line 85
    iput-object p1, p0, Ljava8/util/concurrent/FJWorkerThread;->pool:Ljava8/util/concurrent/FJPool;

    .line 86
    invoke-virtual {p1, p0}, Ljava8/util/concurrent/FJPool;->registerWorker(Ljava8/util/concurrent/FJWorkerThread;)Ljava8/util/concurrent/FJPool$WorkQueue;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/concurrent/FJWorkerThread;->workQueue:Ljava8/util/concurrent/FJPool$WorkQueue;

    return-void
.end method


# virtual methods
.method afterTopLevelExec()V
    .locals 0

    return-void
.end method

.method protected onStart()V
    .locals 0

    return-void
.end method

.method protected onTermination(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 2

    .line 118
    iget-object v0, p0, Ljava8/util/concurrent/FJWorkerThread;->workQueue:Ljava8/util/concurrent/FJPool$WorkQueue;

    iget-object v0, v0, Ljava8/util/concurrent/FJPool$WorkQueue;->array:[Ljava8/util/concurrent/FJTask;

    if-nez v0, :cond_0

    .line 121
    :try_start_0
    invoke-virtual {p0}, Ljava8/util/concurrent/FJWorkerThread;->onStart()V

    .line 122
    iget-object v0, p0, Ljava8/util/concurrent/FJWorkerThread;->pool:Ljava8/util/concurrent/FJPool;

    iget-object v1, p0, Ljava8/util/concurrent/FJWorkerThread;->workQueue:Ljava8/util/concurrent/FJPool$WorkQueue;

    invoke-virtual {v0, v1}, Ljava8/util/concurrent/FJPool;->runWorker(Ljava8/util/concurrent/FJPool$WorkQueue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x0

    .line 127
    :try_start_1
    invoke-virtual {p0, v0}, Ljava8/util/concurrent/FJWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 133
    :catchall_0
    :goto_0
    iget-object v1, p0, Ljava8/util/concurrent/FJWorkerThread;->pool:Ljava8/util/concurrent/FJPool;

    invoke-virtual {v1, p0, v0}, Ljava8/util/concurrent/FJPool;->deregisterWorker(Ljava8/util/concurrent/FJWorkerThread;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    .line 127
    :try_start_2
    invoke-virtual {p0, v0}, Ljava8/util/concurrent/FJWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    :goto_1
    return-void
.end method
