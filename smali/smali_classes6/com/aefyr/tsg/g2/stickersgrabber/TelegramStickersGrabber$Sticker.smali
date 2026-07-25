.class Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$Sticker;
.super Ljava/lang/Object;
.source "TelegramStickersGrabber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sticker"
.end annotation


# instance fields
.field emoji:Ljava/lang/String;

.field fileId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$Sticker;->fileId:Ljava/lang/String;

    .line 374
    iput-object p2, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$Sticker;->emoji:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 379
    instance-of v0, p1, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$Sticker;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$Sticker;

    iget-object p1, p1, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$Sticker;->fileId:Ljava/lang/String;

    iget-object v0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$Sticker;->fileId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$Sticker;->emoji:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    iget-object v1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$Sticker;->fileId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    shl-int/2addr v0, v1

    return v0
.end method
