.class public Lru/vtosters/hooks/PicRoundingHook;
.super Ljava/lang/Object;
.source "PicRoundingHook.java"


# static fields
.field private static final pref:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 9
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pic_rounding"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lru/vtosters/hooks/PicRoundingHook;->pref:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static customParams()Lcom/facebook/drawee/generic/RoundingParams;
    .locals 4

    .line 73
    sget v0, Lru/vtosters/hooks/PicRoundingHook;->pref:I

    int-to-float v1, v0

    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    invoke-static {v2}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    int-to-float v0, v0

    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v1, v2, v3, v0}, Lcom/facebook/drawee/generic/RoundingParams;->b(FFFF)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v0

    return-object v0
.end method

.method public static inject()Lcom/facebook/drawee/generic/RoundingParams;
    .locals 2

    .line 12
    sget v0, Lru/vtosters/hooks/PicRoundingHook;->pref:I

    if-lez v0, :cond_0

    .line 13
    invoke-static {}, Lru/vtosters/hooks/PicRoundingHook;->customParams()Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v0

    return-object v0

    .line 15
    :cond_0
    new-instance v0, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v0}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/RoundingParams;->a(Z)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v0

    return-object v0
.end method

.method public static inject(F)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 1

    .line 20
    sget v0, Lru/vtosters/hooks/PicRoundingHook;->pref:I

    if-lez v0, :cond_0

    .line 21
    invoke-static {}, Lru/vtosters/hooks/PicRoundingHook;->customParams()Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object p0

    return-object p0

    .line 23
    :cond_0
    new-instance v0, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v0}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/generic/RoundingParams;->b(F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object p0

    return-object p0
.end method

.method public static inject(FFFF)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 1

    .line 28
    sget v0, Lru/vtosters/hooks/PicRoundingHook;->pref:I

    if-lez v0, :cond_0

    .line 29
    new-instance p0, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {p0}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    int-to-float p1, v0

    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, v0

    invoke-static {p2}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result p2

    int-to-float p2, p2

    int-to-float p3, v0

    invoke-static {p3}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result p3

    int-to-float p3, p3

    int-to-float v0, v0

    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/drawee/generic/RoundingParams;->a(FFFF)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object p0

    return-object p0

    .line 31
    :cond_0
    new-instance v0, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v0}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/drawee/generic/RoundingParams;->a(FFFF)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object p0

    return-object p0
.end method

.method public static inject(FLandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 4

    .line 36
    sget v0, Lru/vtosters/hooks/PicRoundingHook;->pref:I

    if-lez v0, :cond_0

    .line 37
    new-instance p0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {p0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v1, v0

    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p0, v1, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p1, p0, p0, p0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public static inject(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V
    .locals 10

    .line 60
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 61
    new-instance v1, Landroid/graphics/BitmapShader;

    invoke-direct {v1, p1, v0, v0}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 62
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 63
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    .line 65
    sget v0, Lru/vtosters/hooks/PicRoundingHook;->pref:I

    if-lez v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 66
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float v5, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float v6, p0

    int-to-float p0, v0

    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result p0

    int-to-float v7, p0

    int-to-float p0, v0

    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result p0

    int-to-float v8, p0

    move-object v9, p2

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v2, p1, p1, p1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public static inject(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
    .locals 2

    .line 52
    sget v0, Lru/vtosters/hooks/PicRoundingHook;->pref:I

    if-lez v0, :cond_0

    .line 53
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result p3

    int-to-float p3, p3

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float p2, v0

    invoke-static {p2}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result p2

    int-to-float p2, p2

    int-to-float p3, v0

    invoke-static {p3}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public static inject(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 4

    .line 44
    sget v0, Lru/vtosters/hooks/PicRoundingHook;->pref:I

    if-lez v0, :cond_0

    .line 45
    new-instance p2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {p2, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v1, v0

    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p2, v1, v0, p1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {p0, v0, v1, p2, p1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method
