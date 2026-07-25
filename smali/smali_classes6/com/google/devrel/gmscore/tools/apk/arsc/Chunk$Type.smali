.class public final enum Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;
.super Ljava/lang/Enum;
.source "Chunk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

.field private static final FROM_SHORT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NULL:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

.field public static final enum STRING_POOL:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

.field public static final enum TABLE:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

.field public static final enum TABLE_LIBRARY:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

.field public static final enum TABLE_PACKAGE:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

.field public static final enum TABLE_TYPE:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

.field public static final enum TABLE_TYPE_SPEC:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

.field public static final enum XML:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

.field public static final enum XML_CDATA:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

.field public static final enum XML_END_ELEMENT:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

.field public static final enum XML_END_NAMESPACE:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

.field public static final enum XML_RESOURCE_MAP:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

.field public static final enum XML_START_ELEMENT:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

.field public static final enum XML_START_NAMESPACE:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;


# instance fields
.field private final code:S


# direct methods
.method private static synthetic $values()[Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    const/4 v1, 0x0

    .line 279
    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->NULL:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->STRING_POOL:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->TABLE:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->XML:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->XML_START_NAMESPACE:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->XML_END_NAMESPACE:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->XML_START_ELEMENT:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->XML_END_ELEMENT:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->XML_CDATA:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->XML_RESOURCE_MAP:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->TABLE_PACKAGE:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->TABLE_TYPE:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->TABLE_TYPE_SPEC:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->TABLE_LIBRARY:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 280
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    const-string v1, "NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->NULL:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    .line 281
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    const-string v1, "STRING_POOL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->STRING_POOL:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    .line 282
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    const-string v1, "TABLE"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->TABLE:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    .line 283
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    const-string v1, "XML"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->XML:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    .line 284
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    const/4 v1, 0x4

    const/16 v3, 0x100

    const-string v4, "XML_START_NAMESPACE"

    invoke-direct {v0, v4, v1, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->XML_START_NAMESPACE:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    .line 285
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    const/4 v1, 0x5

    const/16 v3, 0x101

    const-string v4, "XML_END_NAMESPACE"

    invoke-direct {v0, v4, v1, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->XML_END_NAMESPACE:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    .line 286
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    const/4 v1, 0x6

    const/16 v3, 0x102

    const-string v4, "XML_START_ELEMENT"

    invoke-direct {v0, v4, v1, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->XML_START_ELEMENT:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    .line 287
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    const/4 v1, 0x7

    const/16 v3, 0x103

    const-string v4, "XML_END_ELEMENT"

    invoke-direct {v0, v4, v1, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->XML_END_ELEMENT:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    .line 288
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    const/16 v1, 0x8

    const/16 v3, 0x104

    const-string v4, "XML_CDATA"

    invoke-direct {v0, v4, v1, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->XML_CDATA:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    .line 289
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    const/16 v1, 0x9

    const/16 v3, 0x180

    const-string v4, "XML_RESOURCE_MAP"

    invoke-direct {v0, v4, v1, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->XML_RESOURCE_MAP:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    .line 290
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    const/16 v1, 0xa

    const/16 v3, 0x200

    const-string v4, "TABLE_PACKAGE"

    invoke-direct {v0, v4, v1, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->TABLE_PACKAGE:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    .line 291
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    const/16 v1, 0xb

    const/16 v3, 0x201

    const-string v4, "TABLE_TYPE"

    invoke-direct {v0, v4, v1, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->TABLE_TYPE:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    .line 292
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    const/16 v1, 0xc

    const/16 v3, 0x202

    const-string v4, "TABLE_TYPE_SPEC"

    invoke-direct {v0, v4, v1, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->TABLE_TYPE_SPEC:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    .line 293
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    const/16 v1, 0xd

    const/16 v3, 0x203

    const-string v4, "TABLE_LIBRARY"

    invoke-direct {v0, v4, v1, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->TABLE_LIBRARY:Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    .line 279
    invoke-static {}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->$values()[Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    move-result-object v0

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->$VALUES:[Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    .line 298
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 299
    invoke-static {}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->values()[Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    move-result-object v1

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 300
    invoke-virtual {v4}, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->code()S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->FROM_SHORT:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 307
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-long p1, p3

    .line 308
    invoke-static {p1, p2}, Lcom/google/common/primitives/Shorts;->checkedCast(J)S

    move-result p1

    iput-short p1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->code:S

    return-void
.end method

.method public static fromCode(S)Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;
    .locals 2

    .line 312
    sget-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->FROM_SHORT:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    const-string v1, "Unknown chunk type: %s"

    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;
    .locals 1

    .line 279
    const-class v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    return-object p0
.end method

.method public static values()[Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;
    .locals 1

    .line 279
    sget-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->$VALUES:[Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    invoke-virtual {v0}, [Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;

    return-object v0
.end method


# virtual methods
.method public code()S
    .locals 1

    .line 316
    iget-short v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/Chunk$Type;->code:S

    return v0
.end method
