.class public final synthetic Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$KeyCheckListener;

.field public final synthetic f$1:Lokhttp3/Response;


# direct methods
.method public synthetic constructor <init>(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$KeyCheckListener;Lokhttp3/Response;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$1$$ExternalSyntheticLambda1;->f$0:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$KeyCheckListener;

    iput-object p2, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$1$$ExternalSyntheticLambda1;->f$1:Lokhttp3/Response;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$1$$ExternalSyntheticLambda1;->f$0:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$KeyCheckListener;

    iget-object v1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$1$$ExternalSyntheticLambda1;->f$1:Lokhttp3/Response;

    invoke-static {v0, v1}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$1;->lambda$a$0(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$KeyCheckListener;Lokhttp3/Response;)V

    return-void
.end method
