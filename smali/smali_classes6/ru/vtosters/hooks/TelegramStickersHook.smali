.class public Lru/vtosters/hooks/TelegramStickersHook;
.super Ljava/lang/Object;
.source "TelegramStickersHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPackBySticker(I)Lcom/vk/dto/stickers/StickerStockItem;
    .locals 4

    const/4 v0, 0x0

    const v1, 0x4942e20

    if-ge p0, v1, :cond_0

    return-object v0

    :cond_0
    sub-int/2addr p0, v1

    .line 24
    div-int/lit8 p0, p0, 0x78

    .line 27
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/aefyr/tsg/g2/TelegramStickersService;->getInstance(Landroid/content/Context;)Lcom/aefyr/tsg/g2/TelegramStickersService;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/aefyr/tsg/g2/TelegramStickersService;->getActivePacksListReference()Ljava/util/ArrayList;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aefyr/tsg/g2/TelegramStickersPack;

    .line 29
    iget v3, v2, Lcom/aefyr/tsg/g2/TelegramStickersPack;->index:I

    if-ne v3, p0, :cond_1

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    if-nez v2, :cond_3

    return-object v0

    .line 37
    :cond_3
    :try_start_0
    invoke-static {v2}, Lru/vtosters/lite/tgs/TGRoot;->toStickerPack(Lcom/aefyr/tsg/g2/TelegramStickersPack;)Lcom/vk/dto/stickers/StickerStockItem;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static injectStickers(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vk/dto/stickers/StickerStockItem;",
            ">;)V"
        }
    .end annotation

    .line 73
    :try_start_0
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->getInstance(Landroid/content/Context;)Lcom/aefyr/tsg/g2/TelegramStickersService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->getActivePacksListReference()Ljava/util/ArrayList;

    move-result-object v0

    .line 74
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 75
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aefyr/tsg/g2/TelegramStickersPack;

    invoke-static {v2}, Lru/vtosters/lite/tgs/TGRoot;->toStickerPack(Lcom/aefyr/tsg/g2/TelegramStickersPack;)Lcom/vk/dto/stickers/StickerStockItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 77
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static modifyStickerIM(ILcom/vk/dto/stickers/StickerItem;Ljava/lang/String;)Lcom/vk/im/engine/models/attaches/Attach;
    .locals 2

    .line 82
    invoke-virtual {p1}, Lcom/vk/dto/stickers/StickerItem;->getId()I

    move-result v0

    const v1, 0x4942e20

    if-ge v0, v1, :cond_0

    .line 83
    sget-object v0, Lcom/vtosters/lite/im/AppAttachToImAttachConverter;->a:Lcom/vtosters/lite/im/AppAttachToImAttachConverter;

    invoke-virtual {v0, p0, p1, p2}, Lcom/vtosters/lite/im/AppAttachToImAttachConverter;->a(ILcom/vk/dto/stickers/StickerItem;Ljava/lang/String;)Lcom/vk/im/engine/models/attaches/AttachSticker;

    move-result-object p0

    return-object p0

    .line 85
    :cond_0
    sget-object p0, Lcom/vtosters/lite/im/AppAttachToImAttachConverter;->a:Lcom/vtosters/lite/im/AppAttachToImAttachConverter;

    invoke-static {p1}, Lru/vtosters/hooks/TelegramStickersHook;->processSticker(Lcom/vk/dto/stickers/StickerItem;)Lcom/vk/dto/common/Attachment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vtosters/lite/im/AppAttachToImAttachConverter;->a(Lcom/vk/dto/common/Attachment;)Lcom/vk/im/engine/models/attaches/Attach;

    move-result-object p0

    return-object p0
.end method

.method public static processSticker(Lcom/vk/dto/stickers/StickerItem;)Lcom/vk/dto/common/Attachment;
    .locals 8

    .line 45
    invoke-virtual {p0}, Lcom/vk/dto/stickers/StickerItem;->getId()I

    move-result p0

    const/4 v0, 0x0

    const v1, 0x4942e20

    if-ge p0, v1, :cond_0

    return-object v0

    :cond_0
    sub-int/2addr p0, v1

    .line 48
    div-int/lit8 v1, p0, 0x78

    .line 49
    rem-int/lit8 p0, p0, 0x78

    .line 52
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/aefyr/tsg/g2/TelegramStickersService;->getInstance(Landroid/content/Context;)Lcom/aefyr/tsg/g2/TelegramStickersService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aefyr/tsg/g2/TelegramStickersService;->getActivePacksListReference()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aefyr/tsg/g2/TelegramStickersPack;

    .line 53
    iget v4, v3, Lcom/aefyr/tsg/g2/TelegramStickersPack;->index:I

    if-ne v4, v1, :cond_1

    move-object v0, v3

    .line 59
    :cond_2
    invoke-virtual {v0, p0}, Lcom/aefyr/tsg/g2/TelegramStickersPack;->getStickerFile(I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 62
    invoke-static {}, Lcom/vtosters/lite/upload/Upload;->a()I

    move-result v1

    .line 63
    sget-object v0, Lru/vtosters/lite/tgs/TGRoot;->pendingStickers:Ljava/util/Stack;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v7, Lcom/vtosters/lite/attachments/PendingGraffitiAttachment;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/vtosters/lite/attachments/PendingGraffitiAttachment;-><init>(IILjava/lang/String;IILjava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v7
.end method
