.class public final enum Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;
.super Ljava/lang/Enum;
.source "BinaryResourceValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

.field public static final enum ATTRIBUTE:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

.field public static final enum DIMENSION:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

.field public static final enum DYNAMIC_ATTRIBUTE:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

.field public static final enum DYNAMIC_REFERENCE:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

.field public static final enum FLOAT:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

.field public static final enum FRACTION:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

.field private static final FROM_BYTE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum INT_BOOLEAN:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

.field public static final enum INT_COLOR_ARGB4:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

.field public static final enum INT_COLOR_ARGB8:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

.field public static final enum INT_COLOR_RGB4:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

.field public static final enum INT_COLOR_RGB8:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

.field public static final enum INT_DEC:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

.field public static final enum INT_HEX:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

.field public static final enum NULL:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

.field public static final enum REFERENCE:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

.field public static final enum STRING:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;


# instance fields
.field private final code:B


# direct methods
.method private static synthetic $values()[Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    const/4 v1, 0x0

    .line 109
    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->NULL:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->REFERENCE:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->ATTRIBUTE:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->STRING:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->FLOAT:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->DIMENSION:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->FRACTION:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->DYNAMIC_REFERENCE:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->DYNAMIC_ATTRIBUTE:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->INT_DEC:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->INT_HEX:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->INT_BOOLEAN:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->INT_COLOR_ARGB8:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->INT_COLOR_RGB8:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->INT_COLOR_ARGB4:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->INT_COLOR_RGB4:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 113
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    const-string v1, "NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->NULL:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    .line 117
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    const-string v1, "REFERENCE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->REFERENCE:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    .line 121
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    const-string v1, "ATTRIBUTE"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->ATTRIBUTE:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    .line 125
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    const-string v1, "STRING"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->STRING:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    .line 129
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    const-string v1, "FLOAT"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->FLOAT:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    .line 133
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    const-string v1, "DIMENSION"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->DIMENSION:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    .line 137
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    const-string v1, "FRACTION"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->FRACTION:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    .line 141
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    const-string v1, "DYNAMIC_REFERENCE"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->DYNAMIC_REFERENCE:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    .line 145
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    const-string v1, "DYNAMIC_ATTRIBUTE"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->DYNAMIC_ATTRIBUTE:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    .line 149
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    const/16 v1, 0x9

    const/16 v3, 0x10

    const-string v4, "INT_DEC"

    invoke-direct {v0, v4, v1, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->INT_DEC:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    .line 153
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    const/16 v1, 0xa

    const/16 v3, 0x11

    const-string v4, "INT_HEX"

    invoke-direct {v0, v4, v1, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->INT_HEX:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    .line 157
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    const/16 v1, 0xb

    const/16 v3, 0x12

    const-string v4, "INT_BOOLEAN"

    invoke-direct {v0, v4, v1, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->INT_BOOLEAN:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    .line 161
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    const/16 v1, 0xc

    const/16 v3, 0x1c

    const-string v4, "INT_COLOR_ARGB8"

    invoke-direct {v0, v4, v1, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->INT_COLOR_ARGB8:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    .line 165
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    const/16 v1, 0xd

    const/16 v3, 0x1d

    const-string v4, "INT_COLOR_RGB8"

    invoke-direct {v0, v4, v1, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->INT_COLOR_RGB8:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    .line 169
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    const/16 v1, 0xe

    const/16 v3, 0x1e

    const-string v4, "INT_COLOR_ARGB4"

    invoke-direct {v0, v4, v1, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->INT_COLOR_ARGB4:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    .line 173
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    const/16 v1, 0xf

    const/16 v3, 0x1f

    const-string v4, "INT_COLOR_RGB4"

    invoke-direct {v0, v4, v1, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->INT_COLOR_RGB4:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    .line 109
    invoke-static {}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->$values()[Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    move-result-object v0

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->$VALUES:[Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    .line 178
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 179
    invoke-static {}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->values()[Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    move-result-object v1

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 180
    invoke-virtual {v4}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->code()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->FROM_BYTE:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 187
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-long p1, p3

    .line 188
    invoke-static {p1, p2}, Lcom/google/common/primitives/UnsignedBytes;->checkedCast(J)B

    move-result p1

    iput-byte p1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->code:B

    return-void
.end method

.method public static fromCode(B)Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;
    .locals 2

    .line 192
    sget-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->FROM_BYTE:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    const-string v1, "Unknown resource type: %s"

    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;
    .locals 1

    .line 109
    const-class v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    return-object p0
.end method

.method public static values()[Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;
    .locals 1

    .line 109
    sget-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->$VALUES:[Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    invoke-virtual {v0}, [Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    return-object v0
.end method


# virtual methods
.method public code()B
    .locals 1

    .line 196
    iget-byte v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->code:B

    return v0
.end method
