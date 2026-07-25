.class public final synthetic Lcom/aefyr/tsg/g2/TelegramStickersService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

.field public final synthetic f$1:Lcom/aefyr/tsg/g2/TelegramStickersPack;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/aefyr/tsg/g2/TelegramStickersService;Lcom/aefyr/tsg/g2/TelegramStickersPack;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$$ExternalSyntheticLambda0;->f$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    iput-object p2, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$$ExternalSyntheticLambda0;->f$1:Lcom/aefyr/tsg/g2/TelegramStickersPack;

    iput-boolean p3, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$$ExternalSyntheticLambda0;->f$2:Z

    iput-boolean p4, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$$ExternalSyntheticLambda0;->f$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    iget-object v1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$$ExternalSyntheticLambda0;->f$1:Lcom/aefyr/tsg/g2/TelegramStickersPack;

    iget-boolean v2, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$$ExternalSyntheticLambda0;->f$2:Z

    iget-boolean v3, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$$ExternalSyntheticLambda0;->f$3:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/aefyr/tsg/g2/TelegramStickersService;->lambda$setPackEnabled$1$com-aefyr-tsg-g2-TelegramStickersService(Lcom/aefyr/tsg/g2/TelegramStickersPack;ZZ)V

    return-void
.end method
