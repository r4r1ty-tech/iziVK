.class public Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;
.super Ljava/lang/Object;
.source "XmlAttribute.java"

# interfaces
.implements Lcom/google/devrel/gmscore/tools/apk/arsc/SerializableResource;


# static fields
.field public static final SIZE:I = 0x14


# instance fields
.field private final nameIndex:I

.field private final namespaceIndex:I

.field private final parent:Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNodeChunk;

.field private final rawValueIndex:I

.field private final typedValue:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;


# direct methods
.method private constructor <init>(IIILcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNodeChunk;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->namespaceIndex:I

    .line 45
    iput p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->nameIndex:I

    .line 46
    iput p3, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->rawValueIndex:I

    .line 47
    iput-object p4, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->typedValue:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;

    .line 48
    iput-object p5, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->parent:Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNodeChunk;

    return-void
.end method

.method public static create(Ljava/nio/ByteBuffer;Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNodeChunk;)Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;
    .locals 6

    .line 58
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 59
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 60
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 61
    invoke-static {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;->create(Ljava/nio/ByteBuffer;)Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;

    move-result-object v4

    .line 62
    new-instance p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;-><init>(IIILcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNodeChunk;)V

    return-object p0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->parent()Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNodeChunk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNodeChunk;->getString(I)Ljava/lang/String;

    move-result-object p1

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

    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 144
    :cond_1
    check-cast p1, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;

    .line 145
    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->namespaceIndex:I

    iget v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->namespaceIndex:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->nameIndex:I

    iget v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->nameIndex:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->rawValueIndex:I

    iget v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->rawValueIndex:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->typedValue:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;

    iget-object v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->typedValue:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;

    .line 148
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->parent:Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNodeChunk;

    iget-object p1, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->parent:Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNodeChunk;

    .line 149
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

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 154
    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->namespaceIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->nameIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->rawValueIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->typedValue:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->parent:Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNodeChunk;

    aput-object v2, v0, v1

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final name()Ljava/lang/String;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->nameIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nameIndex()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->nameIndex:I

    return v0
.end method

.method public final namespace()Ljava/lang/String;
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->namespaceIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public namespaceIndex()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->namespaceIndex:I

    return v0
.end method

.method public parent()Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNodeChunk;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->parent:Lcom/google/devrel/gmscore/tools/apk/arsc/XmlNodeChunk;

    return-object v0
.end method

.method public final rawValue()Ljava/lang/String;
    .locals 1

    .line 118
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->rawValueIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rawValueIndex()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->rawValueIndex:I

    return v0
.end method

.method public toByteArray()[B
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p0, v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->toByteArray(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray(Z)[B
    .locals 2

    const/16 v0, 0x14

    .line 132
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 133
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->namespaceIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 134
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->nameIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 135
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->rawValueIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 136
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->typedValue()Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;->toByteArray(Z)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 137
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 166
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->namespace()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->rawValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "XmlAttribute{namespace=%s, name=%s, value=%s}"

    .line 165
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typedValue()Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/XmlAttribute;->typedValue:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;

    return-object v0
.end method
