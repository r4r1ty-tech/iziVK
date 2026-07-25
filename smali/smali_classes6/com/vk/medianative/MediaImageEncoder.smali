.class public Lcom/vk/medianative/MediaImageEncoder;
.super Ljava/lang/Object;
.source "MediaImageEncoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compressBitmap(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)Z
    .locals 1

    .line 15
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :try_start_1
    invoke-virtual {p0, p2, p3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return p0

    :catchall_0
    move-exception p0

    .line 15
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Bitmap compression error: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaImageEncoder"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static compressBitmapJpeg(Landroid/graphics/Bitmap;Ljava/io/File;I)Z
    .locals 1

    .line 24
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p0, p1, v0, p2}, Lcom/vk/medianative/MediaImageEncoder;->compressBitmap(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)Z

    move-result p0

    return p0
.end method

.method private static compressBitmapNative(Landroid/graphics/Bitmap;Ljava/io/File;I)Z
    .locals 3

    .line 32
    invoke-static {}, Lcom/vk/medianative/MediaNative;->isX86()Z

    move-result v0

    const-string v1, "MediaImageEncoder"

    if-nez v0, :cond_2

    invoke-static {}, Lcom/vk/medianative/MediaNative;->isAsus()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v0, v2, :cond_0

    goto :goto_1

    .line 37
    :cond_0
    invoke-static {p0, p2}, Lcom/vk/medianative/MediaNative;->compressBitmapJpeg(Landroid/graphics/Bitmap;I)[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 40
    invoke-static {p0, p1, p2}, Lcom/vk/medianative/MediaImageEncoder;->compressBitmapJpeg(Landroid/graphics/Bitmap;Ljava/io/File;I)Z

    move-result p0

    return p0

    .line 43
    :cond_1
    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    .line 43
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "JPEG compression error: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    const-string v0, "JPEG turbo not supported on this device!"

    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {p0, p1, p2}, Lcom/vk/medianative/MediaImageEncoder;->compressBitmapJpeg(Landroid/graphics/Bitmap;Ljava/io/File;I)Z

    move-result p0

    return p0
.end method

.method public static encodeJpeg(Landroid/graphics/Bitmap;Ljava/io/File;)Z
    .locals 1

    const/16 v0, 0x55

    .line 61
    invoke-static {v0}, Lru/vtosters/hooks/other/Preferences;->compress(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/vk/medianative/MediaImageEncoder;->encodePicture(Landroid/graphics/Bitmap;Ljava/io/File;I)Z

    move-result p0

    return p0
.end method

.method public static encodeJpeg(Landroid/graphics/Bitmap;Ljava/io/File;I)Z
    .locals 0

    const/16 p2, 0x55

    .line 69
    invoke-static {p2}, Lru/vtosters/hooks/other/Preferences;->compress(I)I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/vk/medianative/MediaImageEncoder;->encodePicture(Landroid/graphics/Bitmap;Ljava/io/File;I)Z

    move-result p0

    return p0
.end method

.method public static encodeJpegWithoutCompression(Landroid/graphics/Bitmap;Ljava/io/File;)Z
    .locals 1

    const/16 v0, 0x64

    .line 65
    invoke-static {p0, p1, v0}, Lcom/vk/medianative/MediaImageEncoder;->encodePicture(Landroid/graphics/Bitmap;Ljava/io/File;I)Z

    move-result p0

    return p0
.end method

.method public static encodePicture(Landroid/graphics/Bitmap;Ljava/io/File;I)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 53
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    if-eqz v0, :cond_0

    .line 54
    invoke-static {p0, p1, p2}, Lcom/vk/medianative/MediaImageEncoder;->compressBitmapNative(Landroid/graphics/Bitmap;Ljava/io/File;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static needToCompress()Z
    .locals 3

    .line 28
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "compressPhotos"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
