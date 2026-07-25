.class public Lru/vtosters/lite/net/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/vtosters/lite/net/Request$MakeRequestTask;,
        Lru/vtosters/lite/net/Request$RequestCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeRequest(Ljava/lang/String;Lru/vtosters/lite/net/Request$RequestCallback;)V
    .locals 1

    .line 19
    new-instance v0, Lru/vtosters/lite/net/Request$MakeRequestTask;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lru/vtosters/lite/net/Request$MakeRequestTask;-><init>([BLru/vtosters/lite/net/Request$RequestCallback;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lru/vtosters/lite/net/Request$MakeRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static makeRequest([BLru/vtosters/lite/net/Request$RequestCallback;)V
    .locals 1

    .line 15
    new-instance v0, Lru/vtosters/lite/net/Request$MakeRequestTask;

    invoke-direct {v0, p0, p1}, Lru/vtosters/lite/net/Request$MakeRequestTask;-><init>([BLru/vtosters/lite/net/Request$RequestCallback;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lru/vtosters/lite/net/Request$MakeRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
