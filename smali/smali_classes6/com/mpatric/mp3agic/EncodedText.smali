.class public Lcom/mpatric/mp3agic/EncodedText;
.super Ljava/lang/Object;
.source "EncodedText.java"


# static fields
.field public static final CHARSET_ISO_8859_1:Ljava/lang/String; = "ISO-8859-1"

.field public static final CHARSET_UTF_16:Ljava/lang/String; = "UTF-16LE"

.field public static final CHARSET_UTF_16BE:Ljava/lang/String; = "UTF-16BE"

.field public static final CHARSET_UTF_8:Ljava/lang/String; = "UTF-8"

.field public static final TEXT_ENCODING_ISO_8859_1:B = 0x0t

.field public static final TEXT_ENCODING_UTF_16:B = 0x1t

.field public static final TEXT_ENCODING_UTF_16BE:B = 0x2t

.field public static final TEXT_ENCODING_UTF_8:B = 0x3t

.field private static final boms:[[B

.field private static final characterSets:[Ljava/lang/String;

.field private static final terminators:[[B

.field private static final textEncodingFallback:[B


# instance fields
.field private textEncoding:B

.field private value:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "UTF-16BE"

    const-string v1, "UTF-8"

    const-string v2, "ISO-8859-1"

    const-string v3, "UTF-16LE"

    .line 23
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mpatric/mp3agic/EncodedText;->characterSets:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 30
    fill-array-data v1, :array_0

    sput-object v1, Lcom/mpatric/mp3agic/EncodedText;->textEncodingFallback:[B

    new-array v1, v0, [[B

    const/4 v2, 0x0

    new-array v3, v2, [B

    aput-object v3, v1, v2

    const/4 v3, 0x2

    new-array v4, v3, [B

    .line 32
    fill-array-data v4, :array_1

    const/4 v5, 0x1

    aput-object v4, v1, v5

    new-array v4, v3, [B

    fill-array-data v4, :array_2

    aput-object v4, v1, v3

    new-array v4, v2, [B

    const/4 v6, 0x3

    aput-object v4, v1, v6

    sput-object v1, Lcom/mpatric/mp3agic/EncodedText;->boms:[[B

    new-array v0, v0, [[B

    new-array v1, v5, [B

    aput-byte v2, v1, v2

    aput-object v1, v0, v2

    new-array v1, v3, [B

    .line 39
    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    new-array v1, v3, [B

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    new-array v1, v5, [B

    aput-byte v2, v1, v2

    aput-object v1, v0, v6

    sput-object v0, Lcom/mpatric/mp3agic/EncodedText;->terminators:[[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x2t
        0x1t
        0x3t
    .end array-data

    :array_1
    .array-data 1
        -0x1t
        -0x2t
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x2t
        -0x1t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-byte p1, p0, Lcom/mpatric/mp3agic/EncodedText;->textEncoding:B

    .line 80
    invoke-static {p1}, Lcom/mpatric/mp3agic/EncodedText;->characterSetForTextEncoding(B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/mpatric/mp3agic/EncodedText;->stringToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/mpatric/mp3agic/EncodedText;->value:[B

    .line 81
    invoke-direct {p0}, Lcom/mpatric/mp3agic/EncodedText;->stripBomAndTerminator()V

    return-void
.end method

.method public constructor <init>(B[B)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 52
    invoke-static {p2}, Lcom/mpatric/mp3agic/EncodedText;->textEncodingForBytesFromBOM([B)B

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 53
    iput-byte v1, p0, Lcom/mpatric/mp3agic/EncodedText;->textEncoding:B

    goto :goto_0

    .line 55
    :cond_0
    iput-byte p1, p0, Lcom/mpatric/mp3agic/EncodedText;->textEncoding:B

    .line 57
    :goto_0
    iput-object p2, p0, Lcom/mpatric/mp3agic/EncodedText;->value:[B

    .line 58
    invoke-direct {p0}, Lcom/mpatric/mp3agic/EncodedText;->stripBomAndTerminator()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lcom/mpatric/mp3agic/EncodedText;->textEncodingFallback:[B

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, v0, v2

    .line 63
    iput-byte v3, p0, Lcom/mpatric/mp3agic/EncodedText;->textEncoding:B

    .line 64
    invoke-static {v3}, Lcom/mpatric/mp3agic/EncodedText;->characterSetForTextEncoding(B)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/mpatric/mp3agic/EncodedText;->stringToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/mpatric/mp3agic/EncodedText;->value:[B

    if-eqz v3, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/mpatric/mp3agic/EncodedText;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/mpatric/mp3agic/EncodedText;->stripBomAndTerminator()V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid string, could not find appropriate encoding"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1}, Lcom/mpatric/mp3agic/EncodedText;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 75
    invoke-virtual {p0, p2, p1}, Lcom/mpatric/mp3agic/EncodedText;->setTextEncoding(BZ)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 85
    invoke-static {p1}, Lcom/mpatric/mp3agic/EncodedText;->textEncodingForBytesFromBOM([B)B

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/mpatric/mp3agic/EncodedText;-><init>(B[B)V

    return-void
.end method

.method protected static bytesToCharBuffer([BLjava/lang/String;)Ljava/nio/CharBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 242
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    .line 243
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    .line 244
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static bytesToString([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 234
    invoke-static {p0, p1}, Lcom/mpatric/mp3agic/EncodedText;->bytesToCharBuffer([BLjava/lang/String;)Ljava/nio/CharBuffer;

    move-result-object p0

    .line 235
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 236
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    .line 238
    :cond_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static charBufferToBytes(Ljava/nio/CharBuffer;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 256
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    .line 257
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p1

    .line 258
    invoke-virtual {p1, p0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 259
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-static {p1, v0, p0}, Lcom/mpatric/mp3agic/BufferTools;->copyBuffer([BII)[B

    move-result-object p0

    return-object p0
.end method

.method private static characterSetForTextEncoding(B)Ljava/lang/String;
    .locals 3

    .line 102
    :try_start_0
    sget-object v0, Lcom/mpatric/mp3agic/EncodedText;->characterSets:[Ljava/lang/String;

    aget-object p0, v0, p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 104
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid text encoding "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static stringToBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0

    .line 249
    :try_start_0
    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/mpatric/mp3agic/EncodedText;->charBufferToBytes(Ljava/nio/CharBuffer;Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private stripBomAndTerminator()V
    .locals 8

    .line 110
    iget-object v0, p0, Lcom/mpatric/mp3agic/EncodedText;->value:[B

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-lt v1, v4, :cond_1

    aget-byte v1, v0, v3

    const/4 v5, -0x1

    const/4 v6, -0x2

    if-ne v1, v6, :cond_0

    aget-byte v7, v0, v2

    if-eq v7, v5, :cond_3

    :cond_0
    if-ne v1, v5, :cond_1

    aget-byte v1, v0, v2

    if-ne v1, v6, :cond_1

    goto :goto_0

    .line 112
    :cond_1
    array-length v1, v0

    const/4 v5, 0x3

    if-lt v1, v5, :cond_2

    aget-byte v1, v0, v3

    const/16 v6, -0x11

    if-ne v1, v6, :cond_2

    aget-byte v1, v0, v2

    const/16 v6, -0x45

    if-ne v1, v6, :cond_2

    aget-byte v1, v0, v4

    const/16 v4, -0x41

    if-ne v1, v4, :cond_2

    const/4 v4, 0x3

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 116
    :cond_3
    :goto_0
    sget-object v1, Lcom/mpatric/mp3agic/EncodedText;->terminators:[[B

    iget-byte v5, p0, Lcom/mpatric/mp3agic/EncodedText;->textEncoding:B

    aget-object v1, v1, v5

    .line 117
    array-length v0, v0

    sub-int/2addr v0, v4

    array-length v5, v1

    if-lt v0, v5, :cond_6

    const/4 v0, 0x0

    .line 119
    :goto_1
    array-length v5, v1

    if-ge v0, v5, :cond_5

    .line 120
    iget-object v5, p0, Lcom/mpatric/mp3agic/EncodedText;->value:[B

    array-length v6, v5

    array-length v7, v1

    sub-int/2addr v6, v7

    add-int/2addr v6, v0

    aget-byte v5, v5, v6

    aget-byte v6, v1, v0

    if-eq v5, v6, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    .line 125
    array-length v0, v1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    add-int v1, v4, v0

    if-lez v1, :cond_8

    .line 128
    iget-object v1, p0, Lcom/mpatric/mp3agic/EncodedText;->value:[B

    array-length v2, v1

    sub-int/2addr v2, v4

    sub-int/2addr v2, v0

    .line 129
    new-array v0, v2, [B

    if-lez v2, :cond_7

    .line 131
    invoke-static {v1, v4, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    :cond_7
    iput-object v0, p0, Lcom/mpatric/mp3agic/EncodedText;->value:[B

    :cond_8
    return-void
.end method

.method private static textEncodingForBytesFromBOM([B)B
    .locals 6

    .line 89
    array-length v0, p0

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-lt v0, v5, :cond_0

    aget-byte v0, p0, v4

    if-ne v0, v2, :cond_0

    aget-byte v0, p0, v3

    if-ne v0, v1, :cond_0

    return v3

    .line 91
    :cond_0
    array-length v0, p0

    if-lt v0, v5, :cond_1

    aget-byte v0, p0, v4

    if-ne v0, v1, :cond_1

    aget-byte v0, p0, v3

    if-ne v0, v2, :cond_1

    return v5

    .line 93
    :cond_1
    array-length v0, p0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    aget-byte v0, p0, v4

    const/16 v2, -0x11

    if-ne v0, v2, :cond_2

    aget-byte v0, p0, v3

    const/16 v2, -0x45

    if-ne v0, v2, :cond_2

    aget-byte p0, p0, v5

    const/16 v0, -0x41

    if-ne p0, v0, :cond_2

    return v1

    :cond_2
    return v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 223
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 225
    :cond_2
    check-cast p1, Lcom/mpatric/mp3agic/EncodedText;

    .line 226
    iget-byte v2, p0, Lcom/mpatric/mp3agic/EncodedText;->textEncoding:B

    iget-byte v3, p1, Lcom/mpatric/mp3agic/EncodedText;->textEncoding:B

    if-eq v2, v3, :cond_3

    return v1

    .line 228
    :cond_3
    iget-object v2, p0, Lcom/mpatric/mp3agic/EncodedText;->value:[B

    iget-object p1, p1, Lcom/mpatric/mp3agic/EncodedText;->value:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getCharacterSet()Ljava/lang/String;
    .locals 1

    .line 205
    iget-byte v0, p0, Lcom/mpatric/mp3agic/EncodedText;->textEncoding:B

    invoke-static {v0}, Lcom/mpatric/mp3agic/EncodedText;->characterSetForTextEncoding(B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTerminator()[B
    .locals 2

    .line 155
    sget-object v0, Lcom/mpatric/mp3agic/EncodedText;->terminators:[[B

    iget-byte v1, p0, Lcom/mpatric/mp3agic/EncodedText;->textEncoding:B

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTextEncoding()B
    .locals 1

    .line 138
    iget-byte v0, p0, Lcom/mpatric/mp3agic/EncodedText;->textEncoding:B

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 212
    iget-byte v0, p0, Lcom/mpatric/mp3agic/EncodedText;->textEncoding:B

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 213
    iget-object v1, p0, Lcom/mpatric/mp3agic/EncodedText;->value:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setTextEncoding(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 142
    invoke-virtual {p0, p1, v0}, Lcom/mpatric/mp3agic/EncodedText;->setTextEncoding(BZ)V

    return-void
.end method

.method public setTextEncoding(BZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 146
    iget-byte p2, p0, Lcom/mpatric/mp3agic/EncodedText;->textEncoding:B

    if-eq p2, p1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/mpatric/mp3agic/EncodedText;->value:[B

    invoke-static {p2}, Lcom/mpatric/mp3agic/EncodedText;->characterSetForTextEncoding(B)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/mpatric/mp3agic/EncodedText;->bytesToCharBuffer([BLjava/lang/String;)Ljava/nio/CharBuffer;

    move-result-object p2

    .line 148
    invoke-static {p1}, Lcom/mpatric/mp3agic/EncodedText;->characterSetForTextEncoding(B)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/mpatric/mp3agic/EncodedText;->charBufferToBytes(Ljava/nio/CharBuffer;Ljava/lang/String;)[B

    move-result-object p2

    .line 149
    iput-byte p1, p0, Lcom/mpatric/mp3agic/EncodedText;->textEncoding:B

    .line 150
    iput-object p2, p0, Lcom/mpatric/mp3agic/EncodedText;->value:[B

    :cond_0
    return-void
.end method

.method public toBytes()[B
    .locals 1

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, v0, v0}, Lcom/mpatric/mp3agic/EncodedText;->toBytes(ZZ)[B

    move-result-object v0

    return-object v0
.end method

.method public toBytes(Z)[B
    .locals 1

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p0, p1, v0}, Lcom/mpatric/mp3agic/EncodedText;->toBytes(ZZ)[B

    move-result-object p1

    return-object p1
.end method

.method public toBytes(ZZ)[B
    .locals 4

    .line 167
    iget-byte v0, p0, Lcom/mpatric/mp3agic/EncodedText;->textEncoding:B

    invoke-static {v0}, Lcom/mpatric/mp3agic/EncodedText;->characterSetForTextEncoding(B)Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/mpatric/mp3agic/EncodedText;->value:[B

    array-length v0, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    sget-object v2, Lcom/mpatric/mp3agic/EncodedText;->boms:[[B

    iget-byte v3, p0, Lcom/mpatric/mp3agic/EncodedText;->textEncoding:B

    aget-object v2, v2, v3

    array-length v2, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/mpatric/mp3agic/EncodedText;->getTerminator()[B

    move-result-object v2

    array-length v2, v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    .line 169
    iget-object v2, p0, Lcom/mpatric/mp3agic/EncodedText;->value:[B

    array-length v3, v2

    if-ne v0, v3, :cond_2

    return-object v2

    .line 172
    :cond_2
    new-array v0, v0, [B

    if-eqz p1, :cond_3

    .line 175
    sget-object p1, Lcom/mpatric/mp3agic/EncodedText;->boms:[[B

    iget-byte v2, p0, Lcom/mpatric/mp3agic/EncodedText;->textEncoding:B

    aget-object v2, p1, v2

    .line 176
    array-length v3, v2

    if-lez v3, :cond_3

    .line 177
    array-length v3, v2

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    iget-byte v2, p0, Lcom/mpatric/mp3agic/EncodedText;->textEncoding:B

    aget-object p1, p1, v2

    array-length p1, p1

    add-int/2addr p1, v1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 181
    :goto_2
    iget-object v2, p0, Lcom/mpatric/mp3agic/EncodedText;->value:[B

    array-length v3, v2

    if-lez v3, :cond_4

    .line 182
    array-length v3, v2

    invoke-static {v2, v1, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    iget-object v2, p0, Lcom/mpatric/mp3agic/EncodedText;->value:[B

    array-length v2, v2

    add-int/2addr p1, v2

    :cond_4
    if-eqz p2, :cond_5

    .line 186
    invoke-virtual {p0}, Lcom/mpatric/mp3agic/EncodedText;->getTerminator()[B

    move-result-object p2

    .line 187
    array-length v2, p2

    if-lez v2, :cond_5

    .line 188
    array-length v2, p2

    invoke-static {p2, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/mpatric/mp3agic/EncodedText;->value:[B

    iget-byte v1, p0, Lcom/mpatric/mp3agic/EncodedText;->textEncoding:B

    invoke-static {v1}, Lcom/mpatric/mp3agic/EncodedText;->characterSetForTextEncoding(B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mpatric/mp3agic/EncodedText;->bytesToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
