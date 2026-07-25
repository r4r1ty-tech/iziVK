.class final Ljava8/util/concurrent/FJTask$RunnableExecuteAction;
.super Ljava8/util/concurrent/FJTask;
.source "FJTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/FJTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RunnableExecuteAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/concurrent/FJTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x489d6925990d6e4eL


# instance fields
.field final runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 894
    invoke-direct {p0}, Ljava8/util/concurrent/FJTask;-><init>()V

    .line 895
    invoke-static {p1}, Ljava8/util/concurrent/Util;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Ljava8/util/concurrent/FJTask$RunnableExecuteAction;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected final exec()Z
    .locals 1

    .line 899
    iget-object v0, p0, Ljava8/util/concurrent/FJTask$RunnableExecuteAction;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    .line 892
    invoke-virtual {p0}, Ljava8/util/concurrent/FJTask$RunnableExecuteAction;->getRawResult()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method final getRawResult()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method internalPropagateException(Ljava/lang/Throwable;)V
    .locals 0

    .line 901
    invoke-static {p1}, Ljava8/util/concurrent/FJTask$RunnableExecuteAction;->rethrow(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected bridge synthetic setRawResult(Ljava/lang/Object;)V
    .locals 0

    .line 892
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/FJTask$RunnableExecuteAction;->setRawResult(Ljava/lang/Void;)V

    return-void
.end method

.method protected final setRawResult(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method
