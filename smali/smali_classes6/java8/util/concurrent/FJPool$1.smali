.class final Ljava8/util/concurrent/FJPool$1;
.super Ljava/lang/Object;
.source "FJPool.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/FJPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava8/util/concurrent/FJPool;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 2572
    invoke-virtual {p0}, Ljava8/util/concurrent/FJPool$1;->run()Ljava8/util/concurrent/FJPool;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava8/util/concurrent/FJPool;
    .locals 2

    .line 2574
    new-instance v0, Ljava8/util/concurrent/FJPool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava8/util/concurrent/FJPool;-><init>(B)V

    return-object v0
.end method
