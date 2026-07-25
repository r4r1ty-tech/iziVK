.class public final Lru/vtosters/lite/net/NetResponse;
.super Ljava/lang/Object;
.source "NetResponse.java"


# instance fields
.field private code:I

.field private final data:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lru/vtosters/lite/net/NetResponse;->data:[B

    return-void
.end method


# virtual methods
.method public code()I
    .locals 1

    .line 24
    iget v0, p0, Lru/vtosters/lite/net/NetResponse;->code:I

    return v0
.end method

.method public getData()[B
    .locals 1

    .line 28
    iget-object v0, p0, Lru/vtosters/lite/net/NetResponse;->data:[B

    return-object v0
.end method

.method public getDataStream()Ljava/io/InputStream;
    .locals 2

    .line 32
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lru/vtosters/lite/net/NetResponse;->data:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getDataString()Ljava/lang/String;
    .locals 3

    .line 36
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lru/vtosters/lite/net/NetResponse;->data:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 2

    .line 20
    invoke-virtual {p0}, Lru/vtosters/lite/net/NetResponse;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCode(I)V
    .locals 0

    .line 16
    iput p1, p0, Lru/vtosters/lite/net/NetResponse;->code:I

    return-void
.end method
