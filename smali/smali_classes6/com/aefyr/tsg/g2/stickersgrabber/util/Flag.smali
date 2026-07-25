.class public Lcom/aefyr/tsg/g2/stickersgrabber/util/Flag;
.super Ljava/lang/Object;
.source "Flag.java"


# instance fields
.field private up:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/util/Flag;->up:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized lower()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 18
    :try_start_0
    iput-boolean v0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/util/Flag;->up:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized raise()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 14
    :try_start_0
    iput-boolean v0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/util/Flag;->up:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized up()Z
    .locals 1

    monitor-enter p0

    .line 10
    :try_start_0
    iget-boolean v0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/util/Flag;->up:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
