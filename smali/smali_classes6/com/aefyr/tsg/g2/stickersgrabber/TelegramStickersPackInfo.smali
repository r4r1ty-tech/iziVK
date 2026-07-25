.class public Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;
.super Ljava/lang/Object;
.source "TelegramStickersPackInfo.java"


# instance fields
.field public id:Ljava/lang/String;

.field public stickersCount:I

.field public title:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;->id:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;->title:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;->version:Ljava/lang/String;

    .line 16
    iput p3, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;->stickersCount:I

    return-void
.end method
