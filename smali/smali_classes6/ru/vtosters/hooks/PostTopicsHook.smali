.class public Lru/vtosters/hooks/PostTopicsHook;
.super Ljava/lang/Object;
.source "PostTopicsHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hook(Lcom/vtosters/lite/api/execute/GetWallInfo$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vtosters/lite/api/execute/GetWallInfo$a;->f:Ljava/util/List;

    return-void
.end method
