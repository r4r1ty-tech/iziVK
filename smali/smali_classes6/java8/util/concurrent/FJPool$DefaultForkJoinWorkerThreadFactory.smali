.class final Ljava8/util/concurrent/FJPool$DefaultForkJoinWorkerThreadFactory;
.super Ljava/lang/Object;
.source "FJPool.java"

# interfaces
.implements Ljava8/util/concurrent/FJPool$ForkJoinWorkerThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/FJPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultForkJoinWorkerThreadFactory"
.end annotation


# static fields
.field private static final ACC:Ljava/security/AccessControlContext;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/security/Permission;

    .line 654
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "getClassLoader"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava8/util/concurrent/FJPool;->contextWithPermissions([Ljava/security/Permission;)Ljava/security/AccessControlContext;

    move-result-object v0

    sput-object v0, Ljava8/util/concurrent/FJPool$DefaultForkJoinWorkerThreadFactory;->ACC:Ljava/security/AccessControlContext;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava8/util/concurrent/FJPool;)Ljava8/util/concurrent/FJWorkerThread;
    .locals 1

    .line 658
    new-instance v0, Ljava8/util/concurrent/FJPool$DefaultForkJoinWorkerThreadFactory$1;

    invoke-direct {v0, p0, p1}, Ljava8/util/concurrent/FJPool$DefaultForkJoinWorkerThreadFactory$1;-><init>(Ljava8/util/concurrent/FJPool$DefaultForkJoinWorkerThreadFactory;Ljava8/util/concurrent/FJPool;)V

    sget-object p1, Ljava8/util/concurrent/FJPool$DefaultForkJoinWorkerThreadFactory;->ACC:Ljava/security/AccessControlContext;

    invoke-static {v0, p1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava8/util/concurrent/FJWorkerThread;

    return-object p1
.end method
