.class Lru/vtosters/lite/concurrent/VTExecutors$VTMusicDownloadExecutor$LazyHolder;
.super Ljava/lang/Object;
.source "VTExecutors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/lite/concurrent/VTExecutors$VTMusicDownloadExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Ljava/util/concurrent/ExecutorService;

.field private static final MAX_PARALLELISM:I = 0x7

.field private static final MIN_PARALLELISM:I = 0x1

.field private static final PARALLELISM:I


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lru/vtosters/lite/concurrent/VTExecutors$VTMusicDownloadExecutor$LazyHolder;->INSTANCE:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 39
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    sub-int/2addr v0, v1

    .line 38
    invoke-static {v0}, Lru/vtosters/lite/concurrent/VTExecutors$VTMusicDownloadExecutor$LazyHolder;->clamp(I)I

    move-result v0

    sput v0, Lru/vtosters/lite/concurrent/VTExecutors$VTMusicDownloadExecutor$LazyHolder;->PARALLELISM:I

    .line 42
    new-instance v2, Ljava/util/concurrent/ForkJoinPool;

    sget-object v3, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    new-instance v4, Lru/vtosters/lite/concurrent/VTExecutors$VTMusicDownloadExecutor$LazyHolder$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lru/vtosters/lite/concurrent/VTExecutors$VTMusicDownloadExecutor$LazyHolder$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v2, v0, v3, v4, v1}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    sput-object v2, Lru/vtosters/lite/concurrent/VTExecutors$VTMusicDownloadExecutor$LazyHolder;->INSTANCE:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clamp(I)I
    .locals 1

    const/4 v0, 0x1

    .line 49
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, 0x7

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$static$0(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
