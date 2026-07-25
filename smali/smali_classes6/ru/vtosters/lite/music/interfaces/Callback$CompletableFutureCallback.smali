.class public Lru/vtosters/lite/music/interfaces/Callback$CompletableFutureCallback;
.super Ljava8/util/concurrent/CompletableFuture;
.source "Callback.java"

# interfaces
.implements Lru/vtosters/lite/music/interfaces/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/lite/music/interfaces/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompletableFutureCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/concurrent/CompletableFuture<",
        "Ljava/lang/Void;",
        ">;",
        "Lru/vtosters/lite/music/interfaces/Callback;"
    }
.end annotation


# instance fields
.field private final origin:Lru/vtosters/lite/music/interfaces/Callback;


# direct methods
.method public constructor <init>(Lru/vtosters/lite/music/interfaces/Callback;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava8/util/concurrent/CompletableFuture;-><init>()V

    .line 21
    iput-object p1, p0, Lru/vtosters/lite/music/interfaces/Callback$CompletableFutureCallback;->origin:Lru/vtosters/lite/music/interfaces/Callback;

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 37
    invoke-virtual {p0, p1}, Lru/vtosters/lite/music/interfaces/Callback$CompletableFutureCallback;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 38
    iget-object v0, p0, Lru/vtosters/lite/music/interfaces/Callback$CompletableFutureCallback;->origin:Lru/vtosters/lite/music/interfaces/Callback;

    invoke-interface {v0, p1}, Lru/vtosters/lite/music/interfaces/Callback;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onProgress(I)V
    .locals 1

    .line 26
    iget-object v0, p0, Lru/vtosters/lite/music/interfaces/Callback$CompletableFutureCallback;->origin:Lru/vtosters/lite/music/interfaces/Callback;

    invoke-interface {v0, p1}, Lru/vtosters/lite/music/interfaces/Callback;->onProgress(I)V

    return-void
.end method

.method public onSizeReceived(JJ)V
    .locals 1

    .line 43
    iget-object v0, p0, Lru/vtosters/lite/music/interfaces/Callback$CompletableFutureCallback;->origin:Lru/vtosters/lite/music/interfaces/Callback;

    invoke-interface {v0, p1, p2, p3, p4}, Lru/vtosters/lite/music/interfaces/Callback;->onSizeReceived(JJ)V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, v0}, Lru/vtosters/lite/music/interfaces/Callback$CompletableFutureCallback;->complete(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lru/vtosters/lite/music/interfaces/Callback$CompletableFutureCallback;->origin:Lru/vtosters/lite/music/interfaces/Callback;

    invoke-interface {v0}, Lru/vtosters/lite/music/interfaces/Callback;->onSuccess()V

    return-void
.end method
