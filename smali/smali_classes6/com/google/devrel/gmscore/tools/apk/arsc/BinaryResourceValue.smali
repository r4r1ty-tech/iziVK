.class public Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;
.super Ljava/lang/Object;
.source "BinaryResourceValue.java"

# interfaces
.implements Lcom/google/devrel/gmscore/tools/apk/arsc/SerializableResource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;
    }
.end annotation


# static fields
.field public static final SIZE:I = 0x8


# instance fields
.field public data:I

.field public size:I

.field public type:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;


# direct methods
.method public constructor <init>(ILcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;I)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;->size:I

    .line 43
    iput-object p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;->type:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    .line 44
    iput p3, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;->data:I

    return-void
.end method

.method public static create(Ljava/nio/ByteBuffer;)Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;
    .locals 3

    .line 48
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 49
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 50
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->fromCode(B)Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    move-result-object v1

    .line 51
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    .line 52
    new-instance v2, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;-><init>(ILcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;I)V

    return-object v2
.end method


# virtual methods
.method public data()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;->data:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 95
    :cond_1
    check-cast p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;

    .line 96
    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;->size:I

    iget v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;->size:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;->data:I

    iget v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;->data:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;->type:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    iget-object p1, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;->type:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 103
    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;->size:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;->type:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;->data:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;->size:I

    return v0
.end method

.method public toByteArray()[B
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;->toByteArray(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray(Z)[B
    .locals 1

    const/16 p1, 0x8

    .line 83
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 84
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;->size()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 86
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;->type()Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->code()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 87
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;->data()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 88
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method public type()Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;->type:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    return-object v0
.end method
