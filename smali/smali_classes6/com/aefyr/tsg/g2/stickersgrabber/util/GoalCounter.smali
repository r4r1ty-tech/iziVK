.class public Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;
.super Ljava/lang/Object;
.source "GoalCounter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter$OnGoalReachListener;
    }
.end annotation


# instance fields
.field private final goal:I

.field private i:I

.field private final listener:Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter$OnGoalReachListener;


# direct methods
.method public constructor <init>(ILcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter$OnGoalReachListener;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;->i:I

    .line 15
    iput p1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;->goal:I

    .line 16
    iput-object p2, p0, Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;->listener:Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter$OnGoalReachListener;

    return-void
.end method


# virtual methods
.method public declared-synchronized increase()V
    .locals 3

    const-string v0, "G="

    monitor-enter p0

    .line 20
    :try_start_0
    iget v1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;->i:I

    iget v2, p0, Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;->goal:I

    if-ne v1, v2, :cond_0

    .line 21
    iget-object v1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;->listener:Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter$OnGoalReachListener;

    invoke-interface {v1}, Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter$OnGoalReachListener;->onGoalReached()V

    :cond_0
    const-string v1, "COUNTER"

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;->goal:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", I="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;->i:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized increase(I)V
    .locals 1

    monitor-enter p0

    .line 27
    :try_start_0
    iget v0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;->i:I

    iget p1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;->goal:I

    if-ne v0, p1, :cond_0

    .line 28
    iget-object p1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;->listener:Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter$OnGoalReachListener;

    invoke-interface {p1}, Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter$OnGoalReachListener;->onGoalReached()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized value()I
    .locals 1

    monitor-enter p0

    .line 32
    :try_start_0
    iget v0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
