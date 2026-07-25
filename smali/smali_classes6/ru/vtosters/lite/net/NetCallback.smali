.class public interface abstract Lru/vtosters/lite/net/NetCallback;
.super Ljava/lang/Object;
.source "NetCallback.java"


# virtual methods
.method public abstract onFailure(Lru/vtosters/lite/net/NetCall;Ljava/io/IOException;)V
.end method

.method public abstract onResponse(Lru/vtosters/lite/net/NetCall;Lru/vtosters/lite/net/NetResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
