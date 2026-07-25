.class public Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceIdentifier;
.super Ljava/lang/Object;
.source "BinaryResourceIdentifier.java"


# static fields
.field private static final ENTRY_ID_MASK:I = 0xffff

.field private static final ENTRY_ID_SHIFT:I = 0x0

.field private static final PACKAGE_ID_MASK:I = -0x1000000

.field private static final PACKAGE_ID_SHIFT:I = 0x18

.field private static final TYPE_ID_MASK:I = 0xff0000

.field private static final TYPE_ID_SHIFT:I = 0x10


# instance fields
.field private final entryId:I

.field private final packageId:I

.field private final typeId:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceIdentifier;->packageId:I

    .line 54
    iput p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceIdentifier;->typeId:I

    .line 55
    iput p3, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceIdentifier;->entryId:I

    return-void
.end method

.method public static create(I)Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceIdentifier;
    .locals 3

    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x18

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr p0, v2

    ushr-int/lit8 p0, p0, 0x0

    .line 65
    invoke-static {v0, v1, p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceIdentifier;->create(III)Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceIdentifier;

    move-result-object p0

    return-object p0
.end method

.method public static create(III)Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceIdentifier;
    .locals 4

    and-int/lit16 v0, p0, 0xff

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "packageId must be <= 0xFF."

    .line 72
    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    and-int/lit16 v0, p1, 0xff

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v3, "typeId must be <= 0xFF."

    .line 73
    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const v0, 0xffff

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    const-string v0, "entryId must be <= 0xFFFF."

    .line 74
    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 75
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceIdentifier;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceIdentifier;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public entryId()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceIdentifier;->entryId:I

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

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 107
    :cond_1
    check-cast p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceIdentifier;

    .line 108
    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceIdentifier;->packageId:I

    iget v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceIdentifier;->packageId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceIdentifier;->typeId:I

    iget v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceIdentifier;->typeId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceIdentifier;->entryId:I

    iget p1, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceIdentifier;->entryId:I

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

    .line 115
    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceIdentifier;->packageId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceIdentifier;->typeId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceIdentifier;->entryId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public packageId()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceIdentifier;->packageId:I

    return v0
.end method

.method public resId()I
    .locals 2

    .line 100
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceIdentifier;->packageId:I

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceIdentifier;->typeId:I

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceIdentifier;->entryId:I

    or-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 120
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceIdentifier;->packageId:I

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceIdentifier;->typeId:I

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceIdentifier;->entryId:I

    or-int/2addr v0, v1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 121
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "0x%1$08x"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeId()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceIdentifier;->typeId:I

    return v0
.end method
