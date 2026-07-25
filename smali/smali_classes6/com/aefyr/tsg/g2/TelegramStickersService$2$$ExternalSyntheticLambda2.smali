.class public final synthetic Lcom/aefyr/tsg/g2/TelegramStickersService$2$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/aefyr/tsg/g2/TelegramStickersService$2;

.field public final synthetic f$1:Lcom/aefyr/tsg/g2/TelegramStickersPack;

.field public final synthetic f$2:Ljava/lang/Exception;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/aefyr/tsg/g2/TelegramStickersService$2;Lcom/aefyr/tsg/g2/TelegramStickersPack;Ljava/lang/Exception;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2$$ExternalSyntheticLambda2;->f$0:Lcom/aefyr/tsg/g2/TelegramStickersService$2;

    iput-object p2, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2$$ExternalSyntheticLambda2;->f$1:Lcom/aefyr/tsg/g2/TelegramStickersPack;

    iput-object p3, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Exception;

    iput-boolean p4, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2$$ExternalSyntheticLambda2;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2$$ExternalSyntheticLambda2;->f$0:Lcom/aefyr/tsg/g2/TelegramStickersService$2;

    iget-object v1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2$$ExternalSyntheticLambda2;->f$1:Lcom/aefyr/tsg/g2/TelegramStickersPack;

    iget-object v2, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Exception;

    iget-boolean v3, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2$$ExternalSyntheticLambda2;->f$3:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->lambda$onPackDownloadError$1$com-aefyr-tsg-g2-TelegramStickersService$2(Lcom/aefyr/tsg/g2/TelegramStickersPack;Ljava/lang/Exception;Z)V

    return-void
.end method
