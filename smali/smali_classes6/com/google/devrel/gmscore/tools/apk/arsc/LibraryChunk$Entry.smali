.class public Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk$Entry;
.super Ljava/lang/Object;
.source "LibraryChunk.java"

# interfaces
.implements Lcom/google/devrel/gmscore/tools/apk/arsc/SerializableResource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Entry"
.end annotation


# static fields
.field private static final SIZE:I = 0x104


# instance fields
.field private final packageId:I

.field private final packageName:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput p1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk$Entry;->packageId:I

    .line 103
    iput-object p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk$Entry;->packageName:Ljava/lang/String;

    return-void
.end method

.method static create(Ljava/nio/ByteBuffer;I)Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk$Entry;
    .locals 1

    .line 107
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/lit8 p1, p1, 0x4

    .line 108
    invoke-static {p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageUtils;->readPackageName(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object p0

    .line 109
    new-instance p1, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk$Entry;

    invoke-direct {p1, v0, p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk$Entry;-><init>(ILjava/lang/String;)V

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

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 143
    :cond_1
    check-cast p1, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk$Entry;

    .line 144
    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk$Entry;->packageId:I

    iget v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk$Entry;->packageId:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk$Entry;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk$Entry;->packageName:Ljava/lang/String;

    .line 145
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

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 150
    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk$Entry;->packageId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk$Entry;->packageName:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public packageId()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk$Entry;->packageId:I

    return v0
.end method

.method public packageName()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk$Entry;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public toByteArray()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk$Entry;->toByteArray(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray(Z)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p1, 0x104

    .line 133
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 134
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk$Entry;->packageId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 135
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/LibraryChunk$Entry;->packageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageUtils;->writePackageName(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method
