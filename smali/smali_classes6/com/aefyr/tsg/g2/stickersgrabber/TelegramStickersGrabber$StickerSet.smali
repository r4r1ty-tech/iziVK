.class Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;
.super Ljava/lang/Object;
.source "TelegramStickersGrabber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StickerSet"
.end annotation


# instance fields
.field id:Ljava/lang/String;

.field name:Ljava/lang/String;

.field stickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$Sticker;",
            ">;"
        }
    .end annotation
.end field

.field version:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$Sticker;",
            ">;)V"
        }
    .end annotation

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-object p2, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;->name:Ljava/lang/String;

    .line 362
    iput-object p4, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;->stickers:Ljava/util/ArrayList;

    .line 363
    iput-object p1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;->id:Ljava/lang/String;

    .line 364
    iput-object p3, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;->version:Ljava/lang/String;

    return-void
.end method
