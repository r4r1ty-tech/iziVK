.class public interface abstract Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper$PacksLoadingListener;
.super Ljava/lang/Object;
.source "TelegramStickersDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PacksLoadingListener"
.end annotation


# virtual methods
.method public abstract onAllPacksLoaded(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/aefyr/tsg/g2/TelegramStickersPack;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPackLoaded(Lcom/aefyr/tsg/g2/TelegramStickersPack;)V
.end method
