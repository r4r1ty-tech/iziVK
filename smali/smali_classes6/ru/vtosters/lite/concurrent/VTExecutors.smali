.class public Lru/vtosters/lite/concurrent/VTExecutors;
.super Ljava/lang/Object;
.source "VTExecutors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/vtosters/lite/concurrent/VTExecutors$VTMusicDownloadExecutor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIoExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 16
    sget-object v0, Lcom/vk/core/concurrent/VkExecutors;->x:Lcom/vk/core/concurrent/VkExecutors;

    invoke-virtual {v0}, Lcom/vk/core/concurrent/VkExecutors;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static getIoScheduler()Lio/reactivex/Scheduler;
    .locals 1

    .line 20
    sget-object v0, Lcom/vk/core/concurrent/VkExecutors;->x:Lcom/vk/core/concurrent/VkExecutors;

    invoke-virtual {v0}, Lcom/vk/core/concurrent/VkExecutors;->f()Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public static getMusicDownloadExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 12
    invoke-static {}, Lru/vtosters/lite/concurrent/VTExecutors$VTMusicDownloadExecutor;->getInstance()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static getSlowTasksScheduler()Lio/reactivex/Scheduler;
    .locals 1

    .line 24
    sget-object v0, Lcom/vk/core/concurrent/VkExecutors;->x:Lcom/vk/core/concurrent/VkExecutors;

    invoke-virtual {v0}, Lcom/vk/core/concurrent/VkExecutors;->q()Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method
