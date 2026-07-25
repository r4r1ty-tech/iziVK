.class public interface abstract Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;
.super Ljava/lang/Object;
.source "TelegramStickersGrabber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PackDownloadListener"
.end annotation


# virtual methods
.method public abstract onGotPackInfo(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;)V
.end method

.method public abstract onPackDownloadError(Ljava/lang/Exception;)V
.end method

.method public abstract onPackDownloaded(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;Z)V
.end method

.method public abstract onStickerDownloaded(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;III)V
.end method
