.class public final Lcom/google/devrel/gmscore/tools/apk/arsc/PackageUtils;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# static fields
.field public static final PACKAGE_NAME_SIZE:I = 0x100


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readPackageName(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .locals 4

    .line 42
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    move v1, p1

    .line 46
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    add-int/lit16 v2, p1, 0x100

    if-ge v1, v2, :cond_1

    .line 47
    aget-byte v2, v0, v1

    if-nez v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, v0, v2

    if-nez v2, :cond_0

    sub-int/2addr v1, p1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 52
    :goto_1
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 53
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, p1, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/lit16 p1, p1, 0x100

    .line 54
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v3
.end method

.method public static writePackageName(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 3

    .line 65
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 66
    array-length v0, p1

    const/16 v1, 0x100

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 67
    array-length v0, p1

    if-ge v0, v1, :cond_0

    .line 69
    array-length p1, p1

    sub-int/2addr v1, p1

    new-array p1, v1, [B

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method
