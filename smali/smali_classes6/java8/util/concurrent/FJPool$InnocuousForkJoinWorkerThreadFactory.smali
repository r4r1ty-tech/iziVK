.class final Ljava8/util/concurrent/FJPool$InnocuousForkJoinWorkerThreadFactory;
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
    name = "InnocuousForkJoinWorkerThreadFactory"
.end annotation


# static fields
.field private static final ACC:Ljava/security/AccessControlContext;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/security/Permission;

    const/4 v1, 0x0

    .line 2589
    sget-object v2, Ljava8/util/concurrent/FJPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "enableContextClassLoaderOverride"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "modifyThreadGroup"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "getClassLoader"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "setContextClassLoader"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava8/util/concurrent/FJPool;->contextWithPermissions([Ljava/security/Permission;)Ljava/security/AccessControlContext;

    move-result-object v0

    sput-object v0, Ljava8/util/concurrent/FJPool$InnocuousForkJoinWorkerThreadFactory;->ACC:Ljava/security/AccessControlContext;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 2605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava8/util/concurrent/FJPool;)Ljava8/util/concurrent/FJWorkerThread;
    .locals 1

    .line 2597
    new-instance v0, Ljava8/util/concurrent/FJPool$InnocuousForkJoinWorkerThreadFactory$1;

    invoke-direct {v0, p0, p1}, Ljava8/util/concurrent/FJPool$InnocuousForkJoinWorkerThreadFactory$1;-><init>(Ljava8/util/concurrent/FJPool$InnocuousForkJoinWorkerThreadFactory;Ljava8/util/concurrent/FJPool;)V

    sget-object p1, Ljava8/util/concurrent/FJPool$InnocuousForkJoinWorkerThreadFactory;->ACC:Ljava/security/AccessControlContext;

    invoke-static {v0, p1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava8/util/concurrent/FJWorkerThread;

    return-object p1
.end method
