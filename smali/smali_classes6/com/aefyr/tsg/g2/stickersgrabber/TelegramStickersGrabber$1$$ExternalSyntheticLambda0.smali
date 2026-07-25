.class public final synthetic Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$KeyCheckListener;


# direct methods
.method public synthetic constructor <init>(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$KeyCheckListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$1$$ExternalSyntheticLambda0;->f$0:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$KeyCheckListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$1$$ExternalSyntheticLambda0;->f$0:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$KeyCheckListener;

    invoke-interface {v0}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$KeyCheckListener;->onNetError()V

    return-void
.end method
