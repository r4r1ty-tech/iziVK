.class public Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer$ResourceEntry;
.super Ljava/lang/Object;
.source "ArscBlamer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceEntry"
.end annotation


# instance fields
.field private final entryName:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final typeName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer$ResourceEntry;->packageName:Ljava/lang/String;

    .line 284
    iput-object p2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer$ResourceEntry;->typeName:Ljava/lang/String;

    .line 285
    iput-object p3, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer$ResourceEntry;->entryName:Ljava/lang/String;

    return-void
.end method

.method static create(Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk$Entry;)Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer$ResourceEntry;
    .locals 3

    .line 289
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk$Entry;->parent()Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk;->getPackageChunk()Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;

    .line 290
    invoke-virtual {v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk$Entry;->typeName()Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk$Entry;->key()Ljava/lang/String;

    move-result-object p0

    .line 293
    new-instance v2, Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer$ResourceEntry;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer$ResourceEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public entryName()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer$ResourceEntry;->entryName:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 311
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 312
    :cond_1
    check-cast p1, Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer$ResourceEntry;

    .line 313
    iget-object v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer$ResourceEntry;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer$ResourceEntry;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer$ResourceEntry;->typeName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer$ResourceEntry;->typeName:Ljava/lang/String;

    .line 314
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer$ResourceEntry;->entryName:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer$ResourceEntry;->entryName:Ljava/lang/String;

    .line 315
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

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 320
    iget-object v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer$ResourceEntry;->packageName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer$ResourceEntry;->typeName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer$ResourceEntry;->entryName:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public packageName()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer$ResourceEntry;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer$ResourceEntry;->typeName:Ljava/lang/String;

    return-object v0
.end method
