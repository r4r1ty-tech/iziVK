.class public final Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceFile;
.super Ljava/lang/Object;
.source "BinaryResourceFile.java"

# interfaces
.implements Lcom/google/devrel/gmscore/tools/apk/arsc/SerializableResource;


# instance fields
.field private final chunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceFile;->chunks:Ljava/util/List;

    .line 41
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 42
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceFile;->chunks:Ljava/util/List;

    invoke-static {p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->newInstance(Ljava/nio/ByteBuffer;)Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fromInputStream(Ljava/io/InputStream;)Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-static {p0}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0

    .line 57
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceFile;

    invoke-direct {v0, p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceFile;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public getChunks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceFile;->chunks:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

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

    .line 69
    invoke-virtual {p0, v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceFile;->toByteArray(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray(Z)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-static {}, Lcom/google/common/io/ByteStreams;->newDataOutput()Lcom/google/common/io/ByteArrayDataOutput;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceFile;->chunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;

    .line 76
    invoke-virtual {v2, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->toByteArray(Z)[B

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/common/io/ByteArrayDataOutput;->write([B)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-interface {v0}, Lcom/google/common/io/ByteArrayDataOutput;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method
