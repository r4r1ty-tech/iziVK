.class public interface abstract Lcom/aefyr/tsg/g2/TelegramStickersService$StickersEventsListener;
.super Ljava/lang/Object;
.source "TelegramStickersService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aefyr/tsg/g2/TelegramStickersService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StickersEventsListener"
.end annotation


# virtual methods
.method public abstract onActivePacksListChanged()V
.end method

.method public abstract onInactivePacksListChanged()V
.end method

.method public abstract onPackAdded(Lcom/aefyr/tsg/g2/TelegramStickersPack;I)V
.end method

.method public abstract onPackChanged(Lcom/aefyr/tsg/g2/TelegramStickersPack;I)V
.end method

.method public abstract onPackDownloadError(Lcom/aefyr/tsg/g2/TelegramStickersPack;Ljava/lang/Exception;)V
.end method

.method public abstract onPackRemoved(Lcom/aefyr/tsg/g2/TelegramStickersPack;I)V
.end method
