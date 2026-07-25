.class public Lcom/vk/medianative/MediaNative$EncoderHandler;
.super Landroid/os/Handler;
.source "MediaNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/medianative/MediaNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncoderHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/medianative/MediaNative$EncoderHandler$Callback;
    }
.end annotation


# instance fields
.field private a:Lcom/vk/medianative/MediaNative$EncoderHandler$Callback;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 456
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static postEventFromNative(Ljava/lang/Object;III)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 462
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/medianative/MediaNative$EncoderHandler;

    if-eqz p0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 464
    iget-object p0, p0, Lcom/vk/medianative/MediaNative$EncoderHandler;->a:Lcom/vk/medianative/MediaNative$EncoderHandler$Callback;

    invoke-interface {p0, p2, p3}, Lcom/vk/medianative/MediaNative$EncoderHandler$Callback;->getLayerBitmap(II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 466
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/vk/medianative/MediaNative$EncoderHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vk/medianative/MediaNative$EncoderHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 473
    iget-object v0, p0, Lcom/vk/medianative/MediaNative$EncoderHandler;->a:Lcom/vk/medianative/MediaNative$EncoderHandler$Callback;

    if-nez v0, :cond_0

    return-void

    .line 477
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_1

    .line 479
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/vk/medianative/MediaNative$EncoderHandler$Callback;->onBytes(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 481
    invoke-static {}, Lcom/vk/medianative/MediaNative;->-$$Nest$sfgeta()Ljava/lang/String;

    move-result-object v0

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown message type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 484
    :cond_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/vk/medianative/MediaNative$EncoderHandler$Callback;->onProgress(I)V

    :goto_0
    return-void
.end method

.method public setCallback(Lcom/vk/medianative/MediaNative$EncoderHandler$Callback;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/vk/medianative/MediaNative$EncoderHandler;->a:Lcom/vk/medianative/MediaNative$EncoderHandler$Callback;

    return-void
.end method
