.class public final synthetic Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter$OnGoalReachListener;


# instance fields
.field public final synthetic f$0:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;

.field public final synthetic f$3:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;Ljava/io/File;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$$ExternalSyntheticLambda0;->f$0:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;

    iput-object p2, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$$ExternalSyntheticLambda0;->f$2:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;

    iput-object p4, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$$ExternalSyntheticLambda0;->f$3:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;

    return-void
.end method


# virtual methods
.method public final onGoalReached()V
    .locals 4

    iget-object v0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$$ExternalSyntheticLambda0;->f$0:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;

    iget-object v1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$$ExternalSyntheticLambda0;->f$2:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;

    iget-object v3, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$$ExternalSyntheticLambda0;->f$3:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;

    invoke-static {v0, v1, v2, v3}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->lambda$getPack$0(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;Ljava/io/File;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;)V

    return-void
.end method
