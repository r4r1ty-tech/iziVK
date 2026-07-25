.class Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk$StringPoolSpan;
.super Ljava/lang/Object;
.source "StringPoolChunk.java"

# interfaces
.implements Lcom/google/devrel/gmscore/tools/apk/arsc/SerializableResource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringPoolSpan"
.end annotation


# static fields
.field static final SPAN_LENGTH:I = 0xc


# instance fields
.field private final nameIndex:I

.field private final parent:Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;

.field private final start:I

.field private final stop:I


# direct methods
.method private constructor <init>(IIILcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;)V
    .locals 0

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput p1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk$StringPoolSpan;->nameIndex:I

    .line 389
    iput p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk$StringPoolSpan;->start:I

    .line 390
    iput p3, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk$StringPoolSpan;->stop:I

    .line 391
    iput-object p4, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk$StringPoolSpan;->parent:Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;

    return-void
.end method

.method static create(Ljava/nio/ByteBuffer;ILcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;)Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk$StringPoolSpan;
    .locals 2

    .line 395
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    .line 396
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    add-int/lit8 p1, p1, 0x8

    .line 397
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    .line 398
    new-instance p1, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk$StringPoolSpan;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk$StringPoolSpan;-><init>(IIILcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;)V

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 418
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 419
    :cond_1
    check-cast p1, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk$StringPoolSpan;

    .line 420
    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk$StringPoolSpan;->nameIndex:I

    iget v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk$StringPoolSpan;->nameIndex:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk$StringPoolSpan;->start:I

    iget v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk$StringPoolSpan;->start:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk$StringPoolSpan;->stop:I

    iget v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk$StringPoolSpan;->stop:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk$StringPoolSpan;->parent:Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;

    iget-object p1, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk$StringPoolSpan;->parent:Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;

    .line 423
    invoke-static {v2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

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

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 428
    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk$StringPoolSpan;->nameIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk$StringPoolSpan;->start:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk$StringPoolSpan;->stop:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk$StringPoolSpan;->parent:Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;

    aput-object v2, v0, v1

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toByteArray()[B
    .locals 1

    const/4 v0, 0x0

    .line 403
    invoke-virtual {p0, v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk$StringPoolSpan;->toByteArray(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public final toByteArray(Z)[B
    .locals 1

    const/16 p1, 0xc

    .line 408
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 409
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk$StringPoolSpan;->nameIndex:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 410
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk$StringPoolSpan;->start:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 411
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk$StringPoolSpan;->stop:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 412
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 439
    iget-object v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk$StringPoolSpan;->parent:Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;

    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk$StringPoolSpan;->nameIndex:I

    .line 440
    invoke-virtual {v1, v2}, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk$StringPoolSpan;->start:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/StringPoolChunk$StringPoolSpan;->stop:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "StringPoolSpan{%s, start=%d, stop=%d}"

    .line 439
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
