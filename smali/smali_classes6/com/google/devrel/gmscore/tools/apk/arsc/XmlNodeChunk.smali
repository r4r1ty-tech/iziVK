.class public abstract Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNodeChunk;
.super Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;
.source "XmlNodeChunk.java"


# instance fields
.field private final comment:I

.field private final lineNumber:I


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;-><init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V

    .line 40
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNodeChunk;->lineNumber:I

    .line 41
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNodeChunk;->comment:I

    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .line 62
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNodeChunk;->comment:I

    invoke-virtual {p0, v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNodeChunk;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNodeChunk;->lineNumber:I

    return v0
.end method

.method protected getString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNodeChunk;->getParent()Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 79
    instance-of v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlChunk;

    if-eqz v1, :cond_1

    .line 80
    check-cast v0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlChunk;

    invoke-virtual {v0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlChunk;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 82
    :cond_1
    invoke-virtual {v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->getParent()Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "XmlNodeChunk did not have an XmlChunk parent."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasComment()Z
    .locals 2

    .line 48
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNodeChunk;->comment:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 107
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNodeChunk;->getLineNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNodeChunk;->getComment()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "XmlNodeChunk{line=%d, comment=%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final writeHeader(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 94
    invoke-super {p0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;->writeHeader(Ljava/nio/ByteBuffer;)V

    .line 95
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNodeChunk;->lineNumber:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 96
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNodeChunk;->comment:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method
