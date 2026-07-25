.class public abstract Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNamespaceChunk;
.super Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNodeChunk;
.source "XmlNamespaceChunk.java"


# instance fields
.field private final prefix:I

.field private final uri:I


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNodeChunk;-><init>(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;)V

    .line 42
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNamespaceChunk;->prefix:I

    .line 43
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNamespaceChunk;->uri:I

    return-void
.end method


# virtual methods
.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 50
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNamespaceChunk;->prefix:I

    invoke-virtual {p0, v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNamespaceChunk;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 57
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNamespaceChunk;->uri:I

    invoke-virtual {p0, v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNamespaceChunk;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 79
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNamespaceChunk;->getLineNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNamespaceChunk;->getComment()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNamespaceChunk;->getPrefix()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNamespaceChunk;->getUri()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "XmlNamespaceChunk{line=%d, comment=%s, prefix=%s, uri=%s}"

    .line 78
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writePayload(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNodeChunk;->writePayload(Ljava/io/DataOutput;Ljava/nio/ByteBuffer;Z)V

    .line 64
    iget p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNamespaceChunk;->prefix:I

    invoke-interface {p1, p2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 65
    iget p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNamespaceChunk;->uri:I

    invoke-interface {p1, p2}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method
