.class Ljava8/util/concurrent/FJPool$InnocuousForkJoinWorkerThreadFactory$1;
.super Ljava/lang/Object;
.source "FJPool.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/concurrent/FJPool$InnocuousForkJoinWorkerThreadFactory;->newThread(Ljava8/util/concurrent/FJPool;)Ljava8/util/concurrent/FJWorkerThread;
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
.field final synthetic this$0:Ljava8/util/concurrent/FJPool$InnocuousForkJoinWorkerThreadFactory;

.field final synthetic val$pool:Ljava8/util/concurrent/FJPool;


# direct methods
.method constructor <init>(Ljava8/util/concurrent/FJPool$InnocuousForkJoinWorkerThreadFactory;Ljava8/util/concurrent/FJPool;)V
    .locals 0

    .line 2598
    iput-object p1, p0, Ljava8/util/concurrent/FJPool$InnocuousForkJoinWorkerThreadFactory$1;->this$0:Ljava8/util/concurrent/FJPool$InnocuousForkJoinWorkerThreadFactory;

    iput-object p2, p0, Ljava8/util/concurrent/FJPool$InnocuousForkJoinWorkerThreadFactory$1;->val$pool:Ljava8/util/concurrent/FJPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 2598
    invoke-virtual {p0}, Ljava8/util/concurrent/FJPool$InnocuousForkJoinWorkerThreadFactory$1;->run()Ljava8/util/concurrent/FJWorkerThread;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava8/util/concurrent/FJWorkerThread;
    .locals 2

    .line 2600
    new-instance v0, Ljava8/util/concurrent/FJWorkerThread$InnocuousForkJoinWorkerThread;

    iget-object v1, p0, Ljava8/util/concurrent/FJPool$InnocuousForkJoinWorkerThreadFactory$1;->val$pool:Ljava8/util/concurrent/FJPool;

    invoke-direct {v0, v1}, Ljava8/util/concurrent/FJWorkerThread$InnocuousForkJoinWorkerThread;-><init>(Ljava8/util/concurrent/FJPool;)V

    return-object v0
.end method
