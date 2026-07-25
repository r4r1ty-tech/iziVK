.class final Ljava8/util/concurrent/FJTask$ExceptionNode;
.super Ljava/lang/ref/WeakReference;
.source "FJTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/FJTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExceptionNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Ljava8/util/concurrent/FJTask<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final ex:Ljava/lang/Throwable;

.field final hashCode:I

.field next:Ljava8/util/concurrent/FJTask$ExceptionNode;

.field final thrower:J


# direct methods
.method constructor <init>(Ljava8/util/concurrent/FJTask;Ljava/lang/Throwable;Ljava8/util/concurrent/FJTask$ExceptionNode;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/FJTask<",
            "*>;",
            "Ljava/lang/Throwable;",
            "Ljava8/util/concurrent/FJTask$ExceptionNode;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava8/util/concurrent/FJTask<",
            "*>;>;)V"
        }
    .end annotation

    .line 423
    invoke-direct {p0, p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 424
    iput-object p2, p0, Ljava8/util/concurrent/FJTask$ExceptionNode;->ex:Ljava/lang/Throwable;

    .line 425
    iput-object p3, p0, Ljava8/util/concurrent/FJTask$ExceptionNode;->next:Ljava8/util/concurrent/FJTask$ExceptionNode;

    .line 426
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide p2

    iput-wide p2, p0, Ljava8/util/concurrent/FJTask$ExceptionNode;->thrower:J

    .line 427
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Ljava8/util/concurrent/FJTask$ExceptionNode;->hashCode:I

    return-void
.end method
