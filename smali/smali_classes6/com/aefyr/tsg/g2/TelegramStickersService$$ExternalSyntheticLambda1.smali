.class public final synthetic Lcom/aefyr/tsg/g2/TelegramStickersService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

.field public final synthetic f$1:Lcom/aefyr/tsg/g2/TelegramStickersPack;


# direct methods
.method public synthetic constructor <init>(Lcom/aefyr/tsg/g2/TelegramStickersService;Lcom/aefyr/tsg/g2/TelegramStickersPack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$$ExternalSyntheticLambda1;->f$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    iput-object p2, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$$ExternalSyntheticLambda1;->f$1:Lcom/aefyr/tsg/g2/TelegramStickersPack;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$$ExternalSyntheticLambda1;->f$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    iget-object v1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$$ExternalSyntheticLambda1;->f$1:Lcom/aefyr/tsg/g2/TelegramStickersPack;

    invoke-virtual {v0, v1}, Lcom/aefyr/tsg/g2/TelegramStickersService;->lambda$syncPack$3$com-aefyr-tsg-g2-TelegramStickersService(Lcom/aefyr/tsg/g2/TelegramStickersPack;)V

    return-void
.end method
