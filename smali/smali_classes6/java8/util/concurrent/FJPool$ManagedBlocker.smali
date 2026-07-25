.class interface abstract Ljava8/util/concurrent/FJPool$ManagedBlocker;
.super Ljava/lang/Object;
.source "FJPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/FJPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ManagedBlocker"
.end annotation


# virtual methods
.method public abstract block()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract isReleasable()Z
.end method
