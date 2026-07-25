.class public abstract Lcom/aefyr/tsg/g2/CustomStickersPack;
.super Ljava/lang/Object;
.source "CustomStickersPack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract folder()Ljava/io/File;
.end method

.method public abstract getIconBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getStickerBitmap(I)Landroid/graphics/Bitmap;
.end method

.method public abstract getStickerFile(I)Ljava/io/File;
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract stickersCount()I
.end method
