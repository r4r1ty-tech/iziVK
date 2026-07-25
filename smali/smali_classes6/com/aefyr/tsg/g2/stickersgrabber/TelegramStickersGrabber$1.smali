.class Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$1;
.super Ljava/lang/Object;
.source "TelegramStickersGrabber.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->checkKey(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$KeyCheckListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;

.field final synthetic val$listener:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$KeyCheckListener;


# direct methods
.method constructor <init>(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$KeyCheckListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$1;->this$0:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;

    iput-object p2, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$1;->val$listener:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$KeyCheckListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$a$0(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$KeyCheckListener;Lokhttp3/Response;)V
    .locals 0

    .line 103
    invoke-virtual {p1}, Lokhttp3/Response;->h()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$KeyCheckListener;->onKeyChecked(Z)V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    const-string p1, "TSG"

    .line 96
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$1;->this$0:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;

    iget-object p2, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$1;->val$listener:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$KeyCheckListener;

    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$1$$ExternalSyntheticLambda0;-><init>(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$KeyCheckListener;)V

    invoke-static {p1, v0}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->-$$Nest$mrunOnUiThread(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2

    const-string p1, "TSG"

    .line 102
    invoke-virtual {p2}, Lokhttp3/Response;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object p1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$1;->this$0:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;

    iget-object v0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$1;->val$listener:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$KeyCheckListener;

    new-instance v1, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p2}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$1$$ExternalSyntheticLambda1;-><init>(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$KeyCheckListener;Lokhttp3/Response;)V

    invoke-static {p1, v1}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->-$$Nest$mrunOnUiThread(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;Ljava/lang/Runnable;)V

    return-void
.end method
