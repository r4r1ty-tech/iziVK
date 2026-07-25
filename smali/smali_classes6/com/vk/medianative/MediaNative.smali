.class public final Lcom/vk/medianative/MediaNative;
.super Ljava/lang/Object;
.source "MediaNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/medianative/MediaNative$EncoderHandler;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field public static volatile context:Landroid/content/Context;

.field private static final f17443d:Ljava/lang/Object;

.field private static isMediaLoaded:Z

.field private static isMediaMasksLoaded:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgeta()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/vk/medianative/MediaNative;->a:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/vk/medianative/NativeMediaEncoder;

    const-string v0, "NativeMediaEncoder"

    sput-object v0, Lcom/vk/medianative/MediaNative;->a:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vk/medianative/MediaNative;->f17443d:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 25
    sput-boolean v0, Lcom/vk/medianative/MediaNative;->isMediaLoaded:Z

    .line 26
    sput-boolean v0, Lcom/vk/medianative/MediaNative;->isMediaMasksLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HSLToIntRGB(FFF)I
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 30
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 31
    invoke-static {p0, p1, p2, v0}, Lcom/vk/medianative/MediaNative;->nativeHSLToRGB(FFF[I)V

    const/4 p0, 0x0

    aget p0, v0, p0

    const/4 p1, 0x1

    aget p1, v0, p1

    const/4 p2, 0x2

    aget p2, v0, p2

    const/16 v0, 0xff

    .line 32
    invoke-static {v0, p0, p1, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static HSLToRGB(FFF[I)V
    .locals 0

    .line 36
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 37
    invoke-static {p0, p1, p2, p3}, Lcom/vk/medianative/MediaNative;->nativeHSLToRGB(FFF[I)V

    return-void
.end method

.method public static HSVToIntRGB(FFF)I
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 42
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 43
    invoke-static {p0, p1, p2, v0}, Lcom/vk/medianative/MediaNative;->nativeHSVToRGB(FFF[I)V

    const/4 p0, 0x0

    aget p0, v0, p0

    const/4 p1, 0x1

    aget p1, v0, p1

    const/4 p2, 0x2

    aget p2, v0, p2

    const/16 v0, 0xff

    .line 44
    invoke-static {v0, p0, p1, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static HSVToRGB(FFF[I)V
    .locals 0

    .line 48
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/vk/medianative/MediaNative;->nativeHSVToRGB(FFF[I)V

    return-void
.end method

.method public static LabToIntRGB(FFF)I
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 54
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 55
    invoke-static {p0, p1, p2, v0}, Lcom/vk/medianative/MediaNative;->nativeLabToRGB(FFF[I)V

    const/4 p0, 0x0

    aget p0, v0, p0

    const/4 p1, 0x1

    aget p1, v0, p1

    const/4 p2, 0x2

    aget p2, v0, p2

    const/16 v0, 0xff

    .line 56
    invoke-static {v0, p0, p1, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static LabToRGB(FFF[I)V
    .locals 0

    .line 60
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 61
    invoke-static {p0, p1, p2, p3}, Lcom/vk/medianative/MediaNative;->nativeLabToRGB(FFF[I)V

    return-void
.end method

.method public static RGBToHSL(III[F)V
    .locals 0

    .line 65
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 66
    invoke-static {p0, p1, p2, p3}, Lcom/vk/medianative/MediaNative;->nativeRGBToHSL(III[F)V

    return-void
.end method

.method public static RGBToHSV(III[F)V
    .locals 0

    .line 70
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 71
    invoke-static {p0, p1, p2, p3}, Lcom/vk/medianative/MediaNative;->nativeRGBToHSV(III[F)V

    return-void
.end method

.method public static RGBToLab(III[F)V
    .locals 0

    .line 75
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 76
    invoke-static {p0, p1, p2, p3}, Lcom/vk/medianative/MediaNative;->nativeRGBToLab(III[F)V

    return-void
.end method

.method public static animationPlayerCreate(Ljava/lang/String;IIZ)J
    .locals 0

    .line 80
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 81
    invoke-static {p0, p1, p2, p3}, Lcom/vk/medianative/MediaNative;->nativeAnimationPlayerCreate(Ljava/lang/String;IIZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static animationPlayerDecode(JLandroid/graphics/Bitmap;)I
    .locals 0

    .line 85
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 86
    invoke-static {p0, p1, p2}, Lcom/vk/medianative/MediaNative;->nativeAnimationPlayerDecode(JLandroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public static animationPlayerGetSize(J)I
    .locals 0

    .line 90
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 91
    invoke-static {p0, p1}, Lcom/vk/medianative/MediaNative;->nativeAnimationPlayerGetSize(J)I

    move-result p0

    return p0
.end method

.method public static animationPlayerRelease(J)V
    .locals 0

    .line 95
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 96
    invoke-static {p0, p1}, Lcom/vk/medianative/MediaNative;->nativeAnimationPlayerRelease(J)V

    return-void
.end method

.method public static animationPlayerSeek(JI)Z
    .locals 0

    .line 100
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 101
    invoke-static {p0, p1, p2}, Lcom/vk/medianative/MediaNative;->nativeAnimationPlayerSeek(JI)Z

    move-result p0

    return p0
.end method

.method public static applyCurveAndSaturationBitmap(Landroid/graphics/Bitmap;[IF)V
    .locals 2

    .line 105
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    float-to-double v0, p2

    .line 106
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p2

    invoke-static {p0, p1, v0, v1, p2}, Lcom/vk/medianative/MediaNative;->nativeCurveSaturation(Landroid/graphics/Bitmap;[IDI)V

    return-void
.end method

.method public static audioGetTotalPcmDuration()J
    .locals 2

    .line 110
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 111
    invoke-static {}, Lcom/vk/medianative/MediaNative;->nativeAudioGetTotalPcmDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public static audioGetWaveform([SI)[B
    .locals 0

    .line 115
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 116
    invoke-static {p0, p1}, Lcom/vk/medianative/MediaNative;->nativeAudioGetWaveform([SI)[B

    move-result-object p0

    return-object p0
.end method

.method public static audioIsOpusFile(Ljava/lang/String;)I
    .locals 0

    .line 120
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 121
    invoke-static {p0}, Lcom/vk/medianative/MediaNative;->nativeAudioIsOpusFile(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static audioReadOpusFile(Ljava/nio/ByteBuffer;I[I)V
    .locals 0

    .line 125
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 126
    invoke-static {p0, p1, p2}, Lcom/vk/medianative/MediaNative;->nativeAudioReadOpusFile(Ljava/nio/ByteBuffer;I[I)V

    return-void
.end method

.method public static audioSeekOpusFile(F)I
    .locals 0

    .line 130
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 131
    invoke-static {p0}, Lcom/vk/medianative/MediaNative;->nativeAudioSeekOpusFile(F)I

    move-result p0

    return p0
.end method

.method public static audioStartRecord(Ljava/lang/String;)I
    .locals 0

    .line 135
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 136
    invoke-static {p0}, Lcom/vk/medianative/MediaNative;->nativeAudioStartRecord(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static audioStopRecord()V
    .locals 0

    .line 140
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 141
    invoke-static {}, Lcom/vk/medianative/MediaNative;->nativeAudioStopRecord()V

    return-void
.end method

.method public static audioWriteFrame(Ljava/nio/ByteBuffer;I)I
    .locals 0

    .line 145
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 146
    invoke-static {p0, p1}, Lcom/vk/medianative/MediaNative;->nativeAudioWriteFrame(Ljava/nio/ByteBuffer;I)I

    move-result p0

    return p0
.end method

.method public static blurBitmap(Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 162
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 163
    invoke-static {p0, p1}, Lcom/vk/medianative/MediaNative;->nativeBlur(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method private static c()Ljava/lang/String;
    .locals 1

    .line 167
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vk/medianative/MediaNative;->getProcMaps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static cameraProcessorCreate()V
    .locals 0

    .line 171
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 172
    invoke-static {}, Lcom/vk/medianative/MediaNative;->nativeProcessorCreate()V

    return-void
.end method

.method public static cameraProcessorDo([B[J)Z
    .locals 0

    .line 176
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 177
    invoke-static {p0, p1}, Lcom/vk/medianative/MediaNative;->nativeProcessorDo([B[J)Z

    move-result p0

    return p0
.end method

.method public static cameraProcessorGetVersion()I
    .locals 1

    .line 181
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 182
    invoke-static {}, Lcom/vk/medianative/MediaNative;->nativeProcessorGetVersion()I

    move-result v0

    return v0
.end method

.method public static cameraProcessorInit(Ljava/lang/String;II)Z
    .locals 0

    .line 186
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 187
    invoke-static {p0, p1, p2}, Lcom/vk/medianative/MediaNative;->nativeProcessorInit(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static cameraProcessorLoad(Ljava/lang/String;Z)Z
    .locals 0

    .line 191
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 192
    invoke-static {p0, p1}, Lcom/vk/medianative/MediaNative;->nativeProcessorLoad(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static cameraProcessorMouseTap(IFF)V
    .locals 0

    .line 196
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 197
    invoke-static {p0, p1, p2}, Lcom/vk/medianative/MediaNative;->nativeProcessorMouseTap(IFF)V

    return-void
.end method

.method public static cameraProcessorRelease()V
    .locals 0

    .line 201
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 202
    invoke-static {}, Lcom/vk/medianative/MediaNative;->nativeProcessorRelease()V

    return-void
.end method

.method public static colorCorrectionBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[F)V
    .locals 2

    .line 206
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 207
    array-length v0, p2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/vk/medianative/MediaNative;->nativeColorCorrection(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[FII)V

    return-void
.end method

.method public static compressBitmapJpeg(Landroid/graphics/Bitmap;I)[B
    .locals 0

    .line 211
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 212
    invoke-static {p0, p1}, Lcom/vk/medianative/MediaNative;->nativeJpegTurboCompress(Landroid/graphics/Bitmap;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static createAllInOneShader()Ljava/lang/String;
    .locals 1

    .line 216
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 217
    invoke-static {}, Lcom/vk/medianative/MediaNative;->nativeAllInOneShader()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createCurve([I[I[I[I[IFFFFF)V
    .locals 0

    .line 221
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 222
    invoke-static/range {p0 .. p9}, Lcom/vk/medianative/MediaNative;->nativeCreateCurve([I[I[I[I[IFFFFF)V

    return-void
.end method

.method public static createOneInAllShader()Ljava/lang/String;
    .locals 1

    .line 226
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 227
    invoke-static {}, Lcom/vk/medianative/MediaNative;->nativeOneInAllShader()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d()Ljava/lang/String;
    .locals 1

    const-string v0, "self"

    .line 231
    invoke-static {v0}, Lcom/vk/medianative/MediaNative;->getProcMaps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dump()Ljava/lang/String;
    .locals 2

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LD_LIBRARY_PATH:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/soloader/SoLoader;->makeLdLibraryPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nSELF_MAPS:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/vk/medianative/MediaNative;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nPID_MAPS:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/vk/medianative/MediaNative;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e()V
    .locals 1

    const-string v0, "vkmediamasks"

    .line 239
    invoke-static {v0}, Lcom/vk/medianative/NativeLibLoader;->loadLibrary(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/vk/medianative/MediaNative;->isMediaMasksLoaded:Z

    return-void
.end method

.method public static enhanceBitmap(Landroid/graphics/Bitmap;F)V
    .locals 2

    .line 243
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    float-to-double v0, p1

    .line 244
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    invoke-static {p0, v0, v1, p1}, Lcom/vk/medianative/MediaNative;->nativeEnhance(Landroid/graphics/Bitmap;DI)V

    return-void
.end method

.method public static flipHorizontallyBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 256
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 257
    invoke-static {p0}, Lcom/vk/medianative/MediaNative;->nativeFlipHorizontally(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static flipVerticallyBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 261
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 262
    invoke-static {p0}, Lcom/vk/medianative/MediaNative;->nativeFlipVertically(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static generateHistogram(Landroid/graphics/Bitmap;[I[I[I[I)V
    .locals 0

    .line 266
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 267
    invoke-static {p0, p1, p2, p3, p4}, Lcom/vk/medianative/MediaNative;->nativeHistogram(Landroid/graphics/Bitmap;[I[I[I[I)V

    return-void
.end method

.method private static getProcMaps(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "cat /proc/"

    .line 445
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/maps"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :try_start_1
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v1, "\\A"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 447
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_1

    .line 445
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-string p0, "empty"

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .line 271
    sget-object v0, Lcom/vk/medianative/MediaNative;->f17443d:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_0
    sput-object p0, Lcom/vk/medianative/MediaNative;->context:Landroid/content/Context;

    const/4 v1, 0x0

    .line 273
    invoke-static {p0, v1}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;Z)V

    const-string p0, "gnustl_shared"

    .line 274
    invoke-static {p0}, Lcom/vk/medianative/NativeLibLoader;->loadLibrary(Ljava/lang/String;)Z

    const-string p0, "vkchronicle"

    .line 275
    invoke-static {p0}, Lcom/vk/medianative/NativeLibLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 276
    invoke-static {}, Lcom/vk/medianative/MediaNative;->loadVKMediaLibs()V

    .line 277
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 278
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static intRGBToHSL(I[F)V
    .locals 2

    .line 282
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 283
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Lcom/vk/medianative/MediaNative;->nativeRGBToHSL(III[F)V

    return-void
.end method

.method public static intRGBToHSV(I[F)V
    .locals 2

    .line 287
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 288
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Lcom/vk/medianative/MediaNative;->nativeRGBToHSV(III[F)V

    return-void
.end method

.method public static intRGBToLab(I[F)V
    .locals 2

    .line 292
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 293
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Lcom/vk/medianative/MediaNative;->nativeRGBToLab(III[F)V

    return-void
.end method

.method public static isAsus()Z
    .locals 2

    const-string v0, "asus"

    .line 297
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMediaSupported()Z
    .locals 1

    .line 301
    sget-boolean v0, Lcom/vk/medianative/MediaNative;->isMediaMasksLoaded:Z

    if-nez v0, :cond_0

    .line 302
    invoke-static {}, Lcom/vk/medianative/MediaNative;->e()V

    .line 304
    :cond_0
    sget-boolean v0, Lcom/vk/medianative/MediaNative;->isMediaMasksLoaded:Z

    return v0
.end method

.method public static isX86()Z
    .locals 3

    const/4 v0, 0x0

    .line 309
    :try_start_0
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const-string v2, "x86"

    .line 311
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return v0
.end method

.method private static loadVKMediaLibs()V
    .locals 1

    .line 248
    sget-boolean v0, Lcom/vk/medianative/MediaNative;->isMediaLoaded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "vkmedia"

    .line 251
    invoke-static {v0}, Lcom/vk/medianative/NativeLibLoader;->loadLibrary(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/vk/medianative/MediaNative;->isMediaLoaded:Z

    const-string v0, "vkmediaencoder"

    .line 252
    invoke-static {v0}, Lcom/vk/medianative/NativeLibLoader;->loadLibrary(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/vk/medianative/MediaNative;->isMediaLoaded:Z

    return-void
.end method

.method public static lookupBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 320
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 321
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/vk/medianative/MediaNative;->nativeLookup(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public static mediaEncoderCreate(Lcom/vk/medianative/MediaEncoderSettings;)J
    .locals 2

    .line 325
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 326
    invoke-static {p0}, Lcom/vk/medianative/MediaNative;->nativeCreateEncoder(Lcom/vk/medianative/MediaEncoderSettings;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static mediaEncoderDoEncode(J)I
    .locals 0

    .line 330
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 331
    invoke-static {p0, p1}, Lcom/vk/medianative/MediaNative;->nativeDoEncode(J)I

    move-result p0

    return p0
.end method

.method public static mediaEncoderDoRelease(J)V
    .locals 0

    .line 335
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 336
    invoke-static {p0, p1}, Lcom/vk/medianative/MediaNative;->nativeReleaseEncoder(J)V

    return-void
.end method

.method private static native nativeAllInOneShader()Ljava/lang/String;
.end method

.method private static native nativeAnimationPlayerCreate(Ljava/lang/String;IIZ)J
.end method

.method private static native nativeAnimationPlayerDecode(JLandroid/graphics/Bitmap;)I
.end method

.method private static native nativeAnimationPlayerGetSize(J)I
.end method

.method private static native nativeAnimationPlayerRelease(J)V
.end method

.method private static native nativeAnimationPlayerSeek(JI)Z
.end method

.method private static native nativeAudioGetTotalPcmDuration()J
.end method

.method private static native nativeAudioGetWaveform([SI)[B
.end method

.method private static native nativeAudioIsOpusFile(Ljava/lang/String;)I
.end method

.method private static native nativeAudioOpenOpusFile(Ljava/lang/String;)I
.end method

.method private static native nativeAudioReadOpusFile(Ljava/nio/ByteBuffer;I[I)V
.end method

.method private static native nativeAudioSeekOpusFile(F)I
.end method

.method private static native nativeAudioStartRecord(Ljava/lang/String;)I
.end method

.method private static native nativeAudioStopRecord()V
.end method

.method private static native nativeAudioWriteFrame(Ljava/nio/ByteBuffer;I)I
.end method

.method private static native nativeBlur(Landroid/graphics/Bitmap;I)V
.end method

.method private static native nativeColorCorrection(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[FII)V
.end method

.method private static native nativeCreateColorCorrectionShader([FII)Ljava/lang/String;
.end method

.method private static native nativeCreateCurve([I[I[I[I[IFFFFF)V
.end method

.method private static native nativeCreateEncoder(Lcom/vk/medianative/MediaEncoderSettings;)J
.end method

.method private static native nativeCurveSaturation(Landroid/graphics/Bitmap;[IDI)V
.end method

.method private static native nativeDoEncode(J)I
.end method

.method private static native nativeEnhance(Landroid/graphics/Bitmap;DI)V
.end method

.method private static native nativeFlipHorizontally(Landroid/graphics/Bitmap;)V
.end method

.method private static native nativeFlipVertically(Landroid/graphics/Bitmap;)V
.end method

.method private static native nativeHSLToRGB(FFF[I)V
.end method

.method private static native nativeHSVToRGB(FFF[I)V
.end method

.method private static native nativeHistogram(Landroid/graphics/Bitmap;[I[I[I[I)V
.end method

.method private static native nativeJpegTurboCompress(Landroid/graphics/Bitmap;I)[B
.end method

.method private static native nativeLabToRGB(FFF[I)V
.end method

.method private static native nativeLookup(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
.end method

.method private static native nativeOneInAllShader()Ljava/lang/String;
.end method

.method private static native nativePinBitmap(Landroid/graphics/Bitmap;)V
.end method

.method private static native nativeProcessorCreate()V
.end method

.method private static native nativeProcessorDo([B[J)Z
.end method

.method private static native nativeProcessorGetVersion()I
.end method

.method private static native nativeProcessorInit(Ljava/lang/String;II)Z
.end method

.method private static native nativeProcessorLoad(Ljava/lang/String;Z)Z
.end method

.method private static native nativeProcessorMouseTap(IFF)V
.end method

.method private static native nativeProcessorRelease()V
.end method

.method private static native nativeRGBToHSL(III[F)V
.end method

.method private static native nativeRGBToHSV(III[F)V
.end method

.method private static native nativeRGBToLab(III[F)V
.end method

.method private static native nativeReleaseEncoder(J)V
.end method

.method private static native nativeResize(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
.end method

.method public static openOpusFile(Ljava/lang/String;)I
    .locals 0

    .line 430
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 431
    invoke-static {p0}, Lcom/vk/medianative/MediaNative;->nativeAudioOpenOpusFile(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static pinBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 435
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 436
    invoke-static {p0}, Lcom/vk/medianative/MediaNative;->nativePinBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static resizeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 440
    invoke-static {}, Lcom/vk/medianative/MediaNative;->waitForContext()V

    .line 441
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/vk/medianative/MediaNative;->nativeResize(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method private static waitForContext()V
    .locals 4

    .line 150
    sget-object v0, Lcom/vk/medianative/MediaNative;->f17443d:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    sget-object v1, Lcom/vk/medianative/MediaNative;->context:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 153
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 155
    :try_start_2
    sget-object v2, Lcom/vk/medianative/MediaNative;->a:Ljava/lang/String;

    const-string v3, "Interrupted while waiting for context"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
