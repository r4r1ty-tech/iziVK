.class public Lcom/vk/im/ui/views/Corners;
.super Ljava/lang/Object;
.source "Corners.java"


# instance fields
.field private bottomLeft:I

.field private bottomRight:I

.field private topLeft:I

.field private topRight:I


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    move-object v0, p0

    .line 23
    invoke-direct/range {v0 .. v5}, Lcom/vk/im/ui/views/Corners;-><init>(IIIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/vk/im/ui/views/Corners;->topLeft:I

    .line 13
    iput p2, p0, Lcom/vk/im/ui/views/Corners;->topRight:I

    .line 14
    iput p3, p0, Lcom/vk/im/ui/views/Corners;->bottomLeft:I

    .line 15
    iput p4, p0, Lcom/vk/im/ui/views/Corners;->bottomRight:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 2

    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    .line 19
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vk/im/ui/views/Corners;-><init>(IIII)V

    return-void
.end method

.method public static a(Lcom/vk/im/ui/views/Corners;IIIIILjava/lang/Object;)Lcom/vk/im/ui/views/Corners;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 28
    iget p1, p0, Lcom/vk/im/ui/views/Corners;->topLeft:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 31
    iget p2, p0, Lcom/vk/im/ui/views/Corners;->topRight:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 34
    iget p3, p0, Lcom/vk/im/ui/views/Corners;->bottomLeft:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 37
    iget p4, p0, Lcom/vk/im/ui/views/Corners;->bottomRight:I

    .line 39
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vk/im/ui/views/Corners;->a(IIII)Lcom/vk/im/ui/views/Corners;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/vk/im/ui/views/Corners;->bottomLeft:I

    return v0
.end method

.method public a(II)Lcom/vk/im/ui/views/Corners;
    .locals 1

    and-int/lit8 v0, p2, 0x1

    if-lez v0, :cond_0

    .line 96
    iput p1, p0, Lcom/vk/im/ui/views/Corners;->topLeft:I

    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-lez v0, :cond_1

    .line 99
    iput p1, p0, Lcom/vk/im/ui/views/Corners;->topRight:I

    :cond_1
    and-int/lit8 v0, p2, 0x4

    if-lez v0, :cond_2

    .line 102
    iput p1, p0, Lcom/vk/im/ui/views/Corners;->bottomLeft:I

    :cond_2
    and-int/lit8 v0, p2, 0x8

    if-lez v0, :cond_3

    .line 105
    iput p1, p0, Lcom/vk/im/ui/views/Corners;->bottomRight:I

    :cond_3
    if-nez p2, :cond_4

    const/4 p1, 0x0

    .line 108
    iput p1, p0, Lcom/vk/im/ui/views/Corners;->topLeft:I

    .line 109
    iput p1, p0, Lcom/vk/im/ui/views/Corners;->topRight:I

    .line 110
    iput p1, p0, Lcom/vk/im/ui/views/Corners;->bottomLeft:I

    .line 111
    iput p1, p0, Lcom/vk/im/ui/views/Corners;->bottomRight:I

    :cond_4
    return-object p0
.end method

.method public a(IIII)Lcom/vk/im/ui/views/Corners;
    .locals 0

    .line 117
    iput p1, p0, Lcom/vk/im/ui/views/Corners;->topLeft:I

    .line 118
    iput p2, p0, Lcom/vk/im/ui/views/Corners;->topRight:I

    .line 119
    iput p3, p0, Lcom/vk/im/ui/views/Corners;->bottomLeft:I

    .line 120
    iput p4, p0, Lcom/vk/im/ui/views/Corners;->bottomRight:I

    return-object p0
.end method

.method public a(Lcom/vk/im/ui/views/Corners;)Lcom/vk/im/ui/views/Corners;
    .locals 1

    .line 125
    iget v0, p1, Lcom/vk/im/ui/views/Corners;->topLeft:I

    iput v0, p0, Lcom/vk/im/ui/views/Corners;->topLeft:I

    .line 126
    iget v0, p1, Lcom/vk/im/ui/views/Corners;->topRight:I

    iput v0, p0, Lcom/vk/im/ui/views/Corners;->topRight:I

    .line 127
    iget v0, p1, Lcom/vk/im/ui/views/Corners;->bottomLeft:I

    iput v0, p0, Lcom/vk/im/ui/views/Corners;->bottomLeft:I

    .line 128
    iget p1, p1, Lcom/vk/im/ui/views/Corners;->bottomRight:I

    iput p1, p0, Lcom/vk/im/ui/views/Corners;->bottomRight:I

    return-object p0
.end method

.method public b()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/vk/im/ui/views/Corners;->bottomRight:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/vk/im/ui/views/Corners;->topLeft:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/vk/im/ui/views/Corners;->topRight:I

    return v0
.end method

.method public e()Z
    .locals 2

    .line 61
    iget v0, p0, Lcom/vk/im/ui/views/Corners;->topLeft:I

    .line 62
    iget v1, p0, Lcom/vk/im/ui/views/Corners;->topRight:I

    if-ne v0, v1, :cond_0

    .line 63
    iget v0, p0, Lcom/vk/im/ui/views/Corners;->bottomRight:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/vk/im/ui/views/Corners;->bottomLeft:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    .line 68
    instance-of v1, p1, Lcom/vk/im/ui/views/Corners;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 71
    :cond_0
    check-cast p1, Lcom/vk/im/ui/views/Corners;

    .line 72
    iget v1, p0, Lcom/vk/im/ui/views/Corners;->topLeft:I

    iget v3, p1, Lcom/vk/im/ui/views/Corners;->topLeft:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/vk/im/ui/views/Corners;->topRight:I

    iget v3, p1, Lcom/vk/im/ui/views/Corners;->topRight:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/vk/im/ui/views/Corners;->bottomLeft:I

    iget v3, p1, Lcom/vk/im/ui/views/Corners;->bottomLeft:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/vk/im/ui/views/Corners;->bottomRight:I

    iget p1, p1, Lcom/vk/im/ui/views/Corners;->bottomRight:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public f()Z
    .locals 1

    .line 78
    iget v0, p0, Lcom/vk/im/ui/views/Corners;->topLeft:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vk/im/ui/views/Corners;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, v0, v0}, Lcom/vk/im/ui/views/Corners;->a(II)Lcom/vk/im/ui/views/Corners;

    return-void
.end method

.method public hashCode()I
    .locals 2

    .line 86
    iget v0, p0, Lcom/vk/im/ui/views/Corners;->topLeft:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/vk/im/ui/views/Corners;->topRight:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/vk/im/ui/views/Corners;->bottomLeft:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/vk/im/ui/views/Corners;->bottomRight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Corners(topLeft="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vk/im/ui/views/Corners;->topLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", topRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vk/im/ui/views/Corners;->topRight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottomLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vk/im/ui/views/Corners;->bottomLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottomRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vk/im/ui/views/Corners;->bottomRight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
