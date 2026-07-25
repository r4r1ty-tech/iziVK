.class Lru/vtosters/lite/concurrent/VTExecutors$VTMusicDownloadExecutor;
.super Ljava/lang/Object;
.source "VTExecutors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/lite/concurrent/VTExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VTMusicDownloadExecutor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/vtosters/lite/concurrent/VTExecutors$VTMusicDownloadExecutor$LazyHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 32
    invoke-static {}, Lru/vtosters/lite/concurrent/VTExecutors$VTMusicDownloadExecutor$LazyHolder;->-$$Nest$sfgetINSTANCE()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method
