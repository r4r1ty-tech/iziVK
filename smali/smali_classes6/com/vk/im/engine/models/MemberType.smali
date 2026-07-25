.class public final enum Lcom/vk/im/engine/models/MemberType;
.super Ljava/lang/Enum;
.source "MemberType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vk/im/engine/models/MemberType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vk/im/engine/models/MemberType;

.field public static final enum CONTACT:Lcom/vk/im/engine/models/MemberType;

.field public static final enum CUSTOM_BOT:Lcom/vk/im/engine/models/MemberType;

.field public static final enum EMAIL:Lcom/vk/im/engine/models/MemberType;

.field public static final enum GROUP:Lcom/vk/im/engine/models/MemberType;

.field public static final enum UNKNOWN:Lcom/vk/im/engine/models/MemberType;

.field public static final enum USER:Lcom/vk/im/engine/models/MemberType;


# instance fields
.field private final mTypeAsInt:I


# direct methods
.method private static synthetic $values()[Lcom/vk/im/engine/models/MemberType;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/vk/im/engine/models/MemberType;

    const/4 v1, 0x0

    .line 3
    sget-object v2, Lcom/vk/im/engine/models/MemberType;->UNKNOWN:Lcom/vk/im/engine/models/MemberType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/vk/im/engine/models/MemberType;->USER:Lcom/vk/im/engine/models/MemberType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/vk/im/engine/models/MemberType;->GROUP:Lcom/vk/im/engine/models/MemberType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/vk/im/engine/models/MemberType;->EMAIL:Lcom/vk/im/engine/models/MemberType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/vk/im/engine/models/MemberType;->CONTACT:Lcom/vk/im/engine/models/MemberType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/vk/im/engine/models/MemberType;->CUSTOM_BOT:Lcom/vk/im/engine/models/MemberType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/vk/im/engine/models/MemberType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/vk/im/engine/models/MemberType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vk/im/engine/models/MemberType;->UNKNOWN:Lcom/vk/im/engine/models/MemberType;

    .line 5
    new-instance v0, Lcom/vk/im/engine/models/MemberType;

    const-string v1, "USER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/vk/im/engine/models/MemberType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vk/im/engine/models/MemberType;->USER:Lcom/vk/im/engine/models/MemberType;

    .line 6
    new-instance v0, Lcom/vk/im/engine/models/MemberType;

    const-string v1, "GROUP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/vk/im/engine/models/MemberType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vk/im/engine/models/MemberType;->GROUP:Lcom/vk/im/engine/models/MemberType;

    .line 7
    new-instance v0, Lcom/vk/im/engine/models/MemberType;

    const-string v1, "EMAIL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/vk/im/engine/models/MemberType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vk/im/engine/models/MemberType;->EMAIL:Lcom/vk/im/engine/models/MemberType;

    .line 8
    new-instance v0, Lcom/vk/im/engine/models/MemberType;

    const-string v1, "CONTACT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/vk/im/engine/models/MemberType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vk/im/engine/models/MemberType;->CONTACT:Lcom/vk/im/engine/models/MemberType;

    .line 9
    new-instance v0, Lcom/vk/im/engine/models/MemberType;

    const-string v1, "CUSTOM_BOT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/vk/im/engine/models/MemberType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vk/im/engine/models/MemberType;->CUSTOM_BOT:Lcom/vk/im/engine/models/MemberType;

    .line 3
    invoke-static {}, Lcom/vk/im/engine/models/MemberType;->$values()[Lcom/vk/im/engine/models/MemberType;

    move-result-object v0

    sput-object v0, Lcom/vk/im/engine/models/MemberType;->$VALUES:[Lcom/vk/im/engine/models/MemberType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/vk/im/engine/models/MemberType;->mTypeAsInt:I

    return-void
.end method

.method public static a(I)Lcom/vk/im/engine/models/MemberType;
    .locals 3

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 30
    sget-object p0, Lcom/vk/im/engine/models/MemberType;->CUSTOM_BOT:Lcom/vk/im/engine/models/MemberType;

    return-object p0

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown member type value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_1
    sget-object p0, Lcom/vk/im/engine/models/MemberType;->CONTACT:Lcom/vk/im/engine/models/MemberType;

    return-object p0

    .line 26
    :cond_2
    sget-object p0, Lcom/vk/im/engine/models/MemberType;->EMAIL:Lcom/vk/im/engine/models/MemberType;

    return-object p0

    .line 24
    :cond_3
    sget-object p0, Lcom/vk/im/engine/models/MemberType;->GROUP:Lcom/vk/im/engine/models/MemberType;

    return-object p0

    .line 22
    :cond_4
    sget-object p0, Lcom/vk/im/engine/models/MemberType;->USER:Lcom/vk/im/engine/models/MemberType;

    return-object p0

    .line 20
    :cond_5
    sget-object p0, Lcom/vk/im/engine/models/MemberType;->UNKNOWN:Lcom/vk/im/engine/models/MemberType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vk/im/engine/models/MemberType;
    .locals 1

    .line 3
    const-class v0, Lcom/vk/im/engine/models/MemberType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vk/im/engine/models/MemberType;

    return-object p0
.end method

.method public static values()[Lcom/vk/im/engine/models/MemberType;
    .locals 1

    .line 3
    sget-object v0, Lcom/vk/im/engine/models/MemberType;->$VALUES:[Lcom/vk/im/engine/models/MemberType;

    invoke-virtual {v0}, [Lcom/vk/im/engine/models/MemberType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vk/im/engine/models/MemberType;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/vk/im/engine/models/MemberType;->mTypeAsInt:I

    return v0
.end method
