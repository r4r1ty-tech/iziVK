.class public final Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString;
.super Ljava/lang/Object;
.source "BinaryResourceString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString$Type;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeLengthOffset(ILcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString$Type;)I
    .locals 4

    .line 123
    sget-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString$Type;->UTF8:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString$Type;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    sget-object v3, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString$Type;->UTF8:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString$Type;

    if-ne p1, v3, :cond_1

    const/16 p1, 0x80

    goto :goto_1

    :cond_1
    const p1, 0x8000

    :goto_1
    if-lt p0, p1, :cond_2

    const/4 v1, 0x2

    :cond_2
    mul-int v0, v0, v1

    return v0
.end method

.method private static decodeLength(Ljava/nio/ByteBuffer;ILcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString$Type;)I
    .locals 1

    .line 127
    sget-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString$Type;->UTF8:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString$Type;

    if-ne p2, v0, :cond_0

    invoke-static {p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString;->decodeLengthUTF8(Ljava/nio/ByteBuffer;I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString;->decodeLengthUTF16(Ljava/nio/ByteBuffer;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private static decodeLengthUTF16(Ljava/nio/ByteBuffer;I)I
    .locals 3

    .line 145
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    const v2, 0x8000

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    and-int/lit16 v0, v0, 0x7fff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 p1, p1, 0x2

    .line 147
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    and-int/2addr p0, v1

    or-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method private static decodeLengthUTF8(Ljava/nio/ByteBuffer;I)I
    .locals 2

    .line 134
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    .line 136
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    invoke-static {p0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result p0

    or-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public static decodeString(Ljava/nio/ByteBuffer;ILcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString$Type;)Ljava/lang/String;
    .locals 2

    .line 56
    invoke-static {p0, p1, p2}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString;->decodeLength(Ljava/nio/ByteBuffer;ILcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString$Type;)I

    move-result v0

    .line 57
    invoke-static {v0, p2}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString;->computeLengthOffset(ILcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString$Type;)I

    move-result v1

    add-int/2addr p1, v1

    .line 60
    sget-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString$Type;->UTF8:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString$Type;

    if-ne p2, v1, :cond_0

    .line 61
    invoke-static {p0, p1, p2}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString;->decodeLength(Ljava/nio/ByteBuffer;ILcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString$Type;)I

    move-result v0

    .line 62
    invoke-static {v0, p2}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString;->computeLengthOffset(ILcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString$Type;)I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 66
    :goto_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {p2}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString$Type;->charset()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {v1, p0, p1, v0, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1
.end method

.method private static encodeLength(Lcom/google/common/io/ByteArrayDataOutput;ILcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString$Type;)V
    .locals 2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 101
    invoke-interface {p0, p1}, Lcom/google/common/io/ByteArrayDataOutput;->write(I)V

    return-void

    .line 104
    :cond_0
    sget-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString$Type;->UTF8:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString$Type;

    if-ne p2, v0, :cond_2

    const/16 p2, 0x7f

    if-le p1, p2, :cond_1

    and-int/lit16 p2, p1, 0x7f00

    shr-int/lit8 p2, p2, 0x8

    or-int/lit16 p2, p2, 0x80

    .line 106
    invoke-interface {p0, p2}, Lcom/google/common/io/ByteArrayDataOutput;->write(I)V

    :cond_1
    and-int/lit16 p1, p1, 0xff

    .line 108
    invoke-interface {p0, p1}, Lcom/google/common/io/ByteArrayDataOutput;->write(I)V

    goto :goto_0

    :cond_2
    const/16 p2, 0x7fff

    const v0, 0xff00

    if-le p1, p2, :cond_3

    const/high16 p2, 0x7fff0000

    and-int/2addr p2, p1

    shr-int/lit8 p2, p2, 0x10

    const v1, 0x8000

    or-int/2addr p2, v1

    and-int/lit16 v1, p2, 0xff

    .line 113
    invoke-interface {p0, v1}, Lcom/google/common/io/ByteArrayDataOutput;->write(I)V

    and-int/2addr p2, v0

    shr-int/lit8 p2, p2, 0x8

    .line 114
    invoke-interface {p0, p2}, Lcom/google/common/io/ByteArrayDataOutput;->write(I)V

    :cond_3
    const p2, 0xffff

    and-int/2addr p1, p2

    and-int/lit16 p2, p1, 0xff

    .line 117
    invoke-interface {p0, p2}, Lcom/google/common/io/ByteArrayDataOutput;->write(I)V

    and-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x8

    .line 118
    invoke-interface {p0, p1}, Lcom/google/common/io/ByteArrayDataOutput;->write(I)V

    :goto_0
    return-void
.end method

.method public static encodeString(Ljava/lang/String;Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString$Type;)[B
    .locals 2

    .line 82
    invoke-virtual {p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString$Type;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 84
    array-length v1, v0

    add-int/lit8 v1, v1, 0x5

    invoke-static {v1}, Lcom/google/common/io/ByteStreams;->newDataOutput(I)Lcom/google/common/io/ByteArrayDataOutput;

    move-result-object v1

    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {v1, p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString;->encodeLength(Lcom/google/common/io/ByteArrayDataOutput;ILcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString$Type;)V

    .line 86
    sget-object p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString$Type;->UTF8:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString$Type;

    if-ne p1, p0, :cond_0

    .line 87
    array-length p0, v0

    invoke-static {v1, p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString;->encodeLength(Lcom/google/common/io/ByteArrayDataOutput;ILcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString$Type;)V

    .line 89
    :cond_0
    invoke-interface {v1, v0}, Lcom/google/common/io/ByteArrayDataOutput;->write([B)V

    .line 91
    sget-object p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString$Type;->UTF8:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceString$Type;

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    .line 92
    invoke-interface {v1, v0}, Lcom/google/common/io/ByteArrayDataOutput;->write(I)V

    goto :goto_0

    .line 94
    :cond_1
    invoke-interface {v1, v0}, Lcom/google/common/io/ByteArrayDataOutput;->writeShort(I)V

    .line 96
    :goto_0
    invoke-interface {v1}, Lcom/google/common/io/ByteArrayDataOutput;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
