.class public Lcom/aefyr/tsg/g2/TelegramStickersPack;
.super Lcom/aefyr/tsg/g2/CustomStickersPack;
.source "TelegramStickersPack.java"


# static fields
.field public static final DOWNLOADED:I = 0x0

.field public static final DOWNLOADING:I = 0x1

.field public static final UNKNOWN:I = -0x1

.field public static final UPDATING:I = 0x2


# instance fields
.field public emojis:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public enabled:Z

.field public folder:Ljava/io/File;

.field public hash:Ljava/lang/Integer;

.field public id:Ljava/lang/String;

.field public index:I

.field public state:I

.field public stickersCount:I

.field public title:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Lcom/aefyr/tsg/g2/CustomStickersPack;-><init>()V

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->state:I

    const/4 v1, 0x1

    .line 29
    iput-boolean v1, p0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->enabled:Z

    .line 31
    iput v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->stickersCount:I

    .line 33
    iput v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->index:I

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->emojis:Ljava/util/HashMap;

    .line 39
    iput-object p1, p0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->title:Ljava/lang/String;

    iput-object p1, p0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->id:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->hash:Ljava/lang/Integer;

    return-void
.end method

.method private getScaledBitmap(Ljava/io/File;I)Landroid/graphics/Bitmap;
    .locals 6

    .line 78
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 79
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 80
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 81
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 83
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 84
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 86
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v4, v5, :cond_0

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto :goto_0

    :cond_0
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_0
    if-le v4, p2, :cond_1

    .line 89
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 90
    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 91
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    :cond_1
    const/4 v4, 0x0

    .line 94
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 96
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 98
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x4

    aput-object p2, v0, v1

    const-string p2, "maxside=%d, from %dx%d to %dx%d"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "AYAYA"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method


# virtual methods
.method public encodeEmojis()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 44
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 45
    iget-object v1, p0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->emojis:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 46
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 47
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_1

    .line 48
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 104
    instance-of v0, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;

    iget-object p1, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->id:Ljava/lang/String;

    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->id:Ljava/lang/String;

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

.method public folder()Ljava/io/File;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->folder:Ljava/io/File;

    return-object v0
.end method

.method public getIcon(I)Landroid/graphics/Bitmap;
    .locals 3

    .line 69
    iget v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->state:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to get an icon of a pack that hasn\'t been downloaded yet"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->folder:Ljava/io/File;

    const-string v2, "001.png"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0, v0, p1}, Lcom/aefyr/tsg/g2/TelegramStickersPack;->getScaledBitmap(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getIconBitmap()Landroid/graphics/Bitmap;
    .locals 1

    const/16 v0, 0x80

    .line 129
    invoke-virtual {p0, v0}, Lcom/aefyr/tsg/g2/TelegramStickersPack;->getIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getStickerBitmap(I)Landroid/graphics/Bitmap;
    .locals 4

    .line 134
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->folder:Ljava/io/File;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v3, v2

    const-string p1, "%03d.png"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getStickerBitmap(II)Landroid/graphics/Bitmap;
    .locals 4

    .line 143
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->folder:Ljava/io/File;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v3, v2

    const-string p1, "%03d.png"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/aefyr/tsg/g2/TelegramStickersPack;->getScaledBitmap(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getStickerFile(I)Ljava/io/File;
    .locals 4

    .line 139
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->folder:Ljava/io/File;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v3, v2

    const-string p1, "%03d.png"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->hash:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public loadEmojis(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 56
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    iget-object v2, p0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->emojis:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 61
    :cond_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    .line 62
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 63
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 64
    :cond_1
    iget-object v3, p0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->emojis:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->title:Ljava/lang/String;

    return-object v0
.end method

.method public stickersCount()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->stickersCount:I

    return v0
.end method
