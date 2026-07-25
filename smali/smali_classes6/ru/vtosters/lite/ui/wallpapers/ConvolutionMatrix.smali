.class public Lru/vtosters/lite/ui/wallpapers/ConvolutionMatrix;
.super Ljava/lang/Object;
.source "ConvolutionMatrix.java"


# static fields
.field public static final SIZE:I = 0x3


# instance fields
.field public Factor:D

.field public Matrix:[[D

.field public Offset:D


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 12
    iput-wide v0, p0, Lru/vtosters/lite/ui/wallpapers/ConvolutionMatrix;->Factor:D

    .line 13
    iput-wide v0, p0, Lru/vtosters/lite/ui/wallpapers/ConvolutionMatrix;->Offset:D

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 16
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    iput-object p1, p0, Lru/vtosters/lite/ui/wallpapers/ConvolutionMatrix;->Matrix:[[D

    return-void
.end method

.method public static computeConvolution3x3(Landroid/graphics/Bitmap;Lru/vtosters/lite/ui/wallpapers/ConvolutionMatrix;)Landroid/graphics/Bitmap;
    .locals 21

    move-object/from16 v0, p1

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 26
    fill-array-data v5, :array_0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    const/4 v7, 0x0

    :goto_0
    add-int/lit8 v8, v2, -0x2

    if-ge v7, v8, :cond_b

    const/4 v8, 0x0

    :goto_1
    add-int/lit8 v9, v1, -0x2

    if-ge v8, v9, :cond_a

    const/4 v9, 0x0

    :goto_2
    const/4 v10, 0x3

    if-ge v9, v10, :cond_1

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_0

    .line 34
    aget-object v12, v5, v9

    add-int v13, v8, v9

    add-int v14, v7, v11

    move-object/from16 v15, p0

    invoke-virtual {v15, v13, v14}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v13

    aput v13, v12, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_0
    move-object/from16 v15, p0

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v15, p0

    const/4 v9, 0x1

    .line 39
    aget-object v11, v5, v9

    aget v9, v11, v9

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_4
    if-ge v11, v10, :cond_3

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v10, :cond_2

    move/from16 v16, v7

    int-to-double v6, v12

    .line 47
    aget-object v12, v5, v11

    aget v12, v12, v4

    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v12

    move/from16 v17, v1

    move/from16 v18, v2

    int-to-double v1, v12

    iget-object v12, v0, Lru/vtosters/lite/ui/wallpapers/ConvolutionMatrix;->Matrix:[[D

    aget-object v12, v12, v11

    aget-wide v19, v12, v4

    mul-double v1, v1, v19

    add-double/2addr v6, v1

    double-to-int v12, v6

    int-to-double v1, v13

    .line 48
    aget-object v6, v5, v11

    aget v6, v6, v4

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-double v6, v6

    iget-object v13, v0, Lru/vtosters/lite/ui/wallpapers/ConvolutionMatrix;->Matrix:[[D

    aget-object v13, v13, v11

    aget-wide v19, v13, v4

    mul-double v6, v6, v19

    add-double/2addr v1, v6

    double-to-int v13, v1

    int-to-double v1, v14

    .line 49
    aget-object v6, v5, v11

    aget v6, v6, v4

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-double v6, v6

    iget-object v14, v0, Lru/vtosters/lite/ui/wallpapers/ConvolutionMatrix;->Matrix:[[D

    aget-object v14, v14, v11

    aget-wide v19, v14, v4

    mul-double v6, v6, v19

    add-double/2addr v1, v6

    double-to-int v14, v1

    add-int/lit8 v4, v4, 0x1

    move/from16 v7, v16

    move/from16 v1, v17

    move/from16 v2, v18

    goto :goto_5

    :cond_2
    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v16, v7

    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x2

    goto :goto_4

    :cond_3
    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v16, v7

    int-to-double v1, v12

    .line 54
    iget-wide v6, v0, Lru/vtosters/lite/ui/wallpapers/ConvolutionMatrix;->Factor:D

    div-double/2addr v1, v6

    iget-wide v10, v0, Lru/vtosters/lite/ui/wallpapers/ConvolutionMatrix;->Offset:D

    add-double/2addr v1, v10

    double-to-int v1, v1

    const/16 v2, 0xff

    if-gez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_6

    :cond_4
    if-le v1, v2, :cond_5

    const/16 v1, 0xff

    :cond_5
    :goto_6
    int-to-double v12, v13

    div-double/2addr v12, v6

    add-double/2addr v12, v10

    double-to-int v4, v12

    if-gez v4, :cond_6

    const/4 v4, 0x0

    goto :goto_7

    :cond_6
    if-le v4, v2, :cond_7

    const/16 v4, 0xff

    :cond_7
    :goto_7
    int-to-double v12, v14

    div-double/2addr v12, v6

    add-double/2addr v12, v10

    double-to-int v6, v12

    if-gez v6, :cond_8

    const/4 v2, 0x0

    goto :goto_8

    :cond_8
    if-le v6, v2, :cond_9

    goto :goto_8

    :cond_9
    move v2, v6

    :goto_8
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v16, 0x1

    .line 78
    invoke-static {v9, v1, v4, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v3, v8, v7, v1}, Landroid/graphics/Bitmap;->setPixel(III)V

    move/from16 v7, v16

    move/from16 v1, v17

    move/from16 v2, v18

    const/4 v4, 0x2

    goto/16 :goto_1

    :cond_a
    move-object/from16 v15, p0

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v16, v7

    add-int/lit8 v7, v16, 0x1

    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_b
    return-object v3

    :array_0
    .array-data 4
        0x3
        0x3
    .end array-data
.end method


# virtual methods
.method public applyConfig([[D)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 94
    aget-object v3, p1, v1

    iget-object v4, p0, Lru/vtosters/lite/ui/wallpapers/ConvolutionMatrix;->Matrix:[[D

    aget-object v4, v4, v1

    invoke-static {v3, v0, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAll(D)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 88
    iget-object v1, p0, Lru/vtosters/lite/ui/wallpapers/ConvolutionMatrix;->Matrix:[[D

    aget-object v1, v1, v0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->fill([DD)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
