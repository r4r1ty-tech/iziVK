.class Ljava8/util/concurrent/FJPool$DefaultForkJoinWorkerThreadFactory$1;
.super Ljava/lang/Object;
.source "FJPool.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/concurrent/FJPool$DefaultForkJoinWorkerThreadFactory;->newThread(Ljava8/util/concurrent/FJPool;)Ljava8/util/concurrent/FJWorkerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava8/util/concurrent/FJWorkerThread;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava8/util/concurrent/FJPool$DefaultForkJoinWorkerThreadFactory;

.field final synthetic val$pool:Ljava8/util/concurrent/FJPool;


# direct methods
.method constructor <init>(Ljava8/util/concurrent/FJPool$DefaultForkJoinWorkerThreadFactory;Ljava8/util/concurrent/FJPool;)V
    .locals 0

    .line 659
    iput-object p1, p0, Ljava8/util/concurrent/FJPool$DefaultForkJoinWorkerThreadFactory$1;->this$0:Ljava8/util/concurrent/FJPool$DefaultForkJoinWorkerThreadFactory;

    iput-object p2, p0, Ljava8/util/concurrent/FJPool$DefaultForkJoinWorkerThreadFactory$1;->val$pool:Ljava8/util/concurrent/FJPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 659
    invoke-virtual {p0}, Ljava8/util/concurrent/FJPool$DefaultForkJoinWorkerThreadFactory$1;->run()Ljava8/util/concurrent/FJWorkerThread;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava8/util/concurrent/FJWorkerThread;
    .locals 3

    .line 661
    new-instance v0, Ljava8/util/concurrent/FJWorkerThread;

    iget-object v1, p0, Ljava8/util/concurrent/FJPool$DefaultForkJoinWorkerThreadFactory$1;->val$pool:Ljava8/util/concurrent/FJPool;

    .line 662
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava8/util/concurrent/FJWorkerThread;-><init>(Ljava8/util/concurrent/FJPool;Ljava/lang/ClassLoader;)V

    return-object v0
.end method
