.class public final synthetic Lcom/aefyr/tsg/g2/TelegramStickersService$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/aefyr/tsg/g2/TelegramStickersService$2;

.field public final synthetic f$1:Lcom/aefyr/tsg/g2/TelegramStickersPack;

.field public final synthetic f$2:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/aefyr/tsg/g2/TelegramStickersService$2;Lcom/aefyr/tsg/g2/TelegramStickersPack;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2$$ExternalSyntheticLambda1;->f$0:Lcom/aefyr/tsg/g2/TelegramStickersService$2;

    iput-object p2, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2$$ExternalSyntheticLambda1;->f$1:Lcom/aefyr/tsg/g2/TelegramStickersPack;

    iput-object p3, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2$$ExternalSyntheticLambda1;->f$2:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2$$ExternalSyntheticLambda1;->f$0:Lcom/aefyr/tsg/g2/TelegramStickersService$2;

    iget-object v1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2$$ExternalSyntheticLambda1;->f$1:Lcom/aefyr/tsg/g2/TelegramStickersPack;

    iget-object v2, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2$$ExternalSyntheticLambda1;->f$2:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;

    invoke-virtual {v0, v1, v2}, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->lambda$onGotPackInfo$2$com-aefyr-tsg-g2-TelegramStickersService$2(Lcom/aefyr/tsg/g2/TelegramStickersPack;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;)V

    return-void
.end method
