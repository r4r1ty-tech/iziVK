.class Lru/vtosters/lite/net/NetCall$1;
.super Ljava/lang/Thread;
.source "NetCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/vtosters/lite/net/NetCall;->enqueue(Lru/vtosters/lite/net/NetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/vtosters/lite/net/NetCall;

.field final synthetic val$cb:Lru/vtosters/lite/net/NetCallback;


# direct methods
.method constructor <init>(Lru/vtosters/lite/net/NetCall;Lru/vtosters/lite/net/NetCallback;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lru/vtosters/lite/net/NetCall$1;->this$0:Lru/vtosters/lite/net/NetCall;

    iput-object p2, p0, Lru/vtosters/lite/net/NetCall$1;->val$cb:Lru/vtosters/lite/net/NetCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 100
    :try_start_0
    iget-object v0, p0, Lru/vtosters/lite/net/NetCall$1;->this$0:Lru/vtosters/lite/net/NetCall;

    invoke-virtual {v0}, Lru/vtosters/lite/net/NetCall;->execute()Lru/vtosters/lite/net/NetResponse;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lru/vtosters/lite/net/NetCall$1;->val$cb:Lru/vtosters/lite/net/NetCallback;

    iget-object v2, p0, Lru/vtosters/lite/net/NetCall$1;->this$0:Lru/vtosters/lite/net/NetCall;

    invoke-interface {v1, v2, v0}, Lru/vtosters/lite/net/NetCallback;->onResponse(Lru/vtosters/lite/net/NetCall;Lru/vtosters/lite/net/NetResponse;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 103
    iget-object v1, p0, Lru/vtosters/lite/net/NetCall$1;->val$cb:Lru/vtosters/lite/net/NetCallback;

    iget-object v2, p0, Lru/vtosters/lite/net/NetCall$1;->this$0:Lru/vtosters/lite/net/NetCall;

    invoke-interface {v1, v2, v0}, Lru/vtosters/lite/net/NetCallback;->onFailure(Lru/vtosters/lite/net/NetCall;Ljava/io/IOException;)V

    .line 108
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lru/vtosters/lite/net/NetCall$1;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 110
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
