.class public interface abstract Lru/vtosters/lite/music/interfaces/Callback;
.super Ljava/lang/Object;
.source "Callback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/vtosters/lite/music/interfaces/Callback$CompletableFutureCallback;
    }
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/Throwable;)V
.end method

.method public abstract onProgress(I)V
.end method

.method public abstract onSizeReceived(JJ)V
.end method

.method public abstract onSuccess()V
.end method
