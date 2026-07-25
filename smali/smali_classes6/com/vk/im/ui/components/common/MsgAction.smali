.class public final enum Lcom/vk/im/ui/components/common/MsgAction;
.super Ljava/lang/Enum;
.source "MsgAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vk/im/ui/components/common/MsgAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vk/im/ui/components/common/MsgAction;

.field public static final enum COPY:Lcom/vk/im/ui/components/common/MsgAction;

.field public static final enum DELETE:Lcom/vk/im/ui/components/common/MsgAction;

.field public static final enum EDIT:Lcom/vk/im/ui/components/common/MsgAction;

.field public static final enum FORWARD:Lcom/vk/im/ui/components/common/MsgAction;

.field public static final enum KICK:Lcom/vk/im/ui/components/common/MsgAction;

.field public static final enum PIN:Lcom/vk/im/ui/components/common/MsgAction;

.field public static final enum READTO:Lcom/vk/im/ui/components/common/MsgAction;

.field public static final enum REPLY:Lcom/vk/im/ui/components/common/MsgAction;

.field public static final enum RETRY:Lcom/vk/im/ui/components/common/MsgAction;

.field public static final enum SPAM:Lcom/vk/im/ui/components/common/MsgAction;

.field public static final enum TRANSLATE:Lcom/vk/im/ui/components/common/MsgAction;

.field public static final enum UNPIN:Lcom/vk/im/ui/components/common/MsgAction;


# direct methods
.method private static synthetic $values()[Lcom/vk/im/ui/components/common/MsgAction;
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/vk/im/ui/components/common/MsgAction;

    const/4 v1, 0x0

    .line 3
    sget-object v2, Lcom/vk/im/ui/components/common/MsgAction;->RETRY:Lcom/vk/im/ui/components/common/MsgAction;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/vk/im/ui/components/common/MsgAction;->REPLY:Lcom/vk/im/ui/components/common/MsgAction;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/vk/im/ui/components/common/MsgAction;->FORWARD:Lcom/vk/im/ui/components/common/MsgAction;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/vk/im/ui/components/common/MsgAction;->COPY:Lcom/vk/im/ui/components/common/MsgAction;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/vk/im/ui/components/common/MsgAction;->EDIT:Lcom/vk/im/ui/components/common/MsgAction;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/vk/im/ui/components/common/MsgAction;->DELETE:Lcom/vk/im/ui/components/common/MsgAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/vk/im/ui/components/common/MsgAction;->SPAM:Lcom/vk/im/ui/components/common/MsgAction;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/vk/im/ui/components/common/MsgAction;->PIN:Lcom/vk/im/ui/components/common/MsgAction;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/vk/im/ui/components/common/MsgAction;->UNPIN:Lcom/vk/im/ui/components/common/MsgAction;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/vk/im/ui/components/common/MsgAction;->TRANSLATE:Lcom/vk/im/ui/components/common/MsgAction;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/vk/im/ui/components/common/MsgAction;->READTO:Lcom/vk/im/ui/components/common/MsgAction;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/vk/im/ui/components/common/MsgAction;->KICK:Lcom/vk/im/ui/components/common/MsgAction;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/vk/im/ui/components/common/MsgAction;

    const-string v1, "RETRY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/MsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/MsgAction;->RETRY:Lcom/vk/im/ui/components/common/MsgAction;

    .line 5
    new-instance v0, Lcom/vk/im/ui/components/common/MsgAction;

    const-string v1, "REPLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/MsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/MsgAction;->REPLY:Lcom/vk/im/ui/components/common/MsgAction;

    .line 6
    new-instance v0, Lcom/vk/im/ui/components/common/MsgAction;

    const-string v1, "FORWARD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/MsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/MsgAction;->FORWARD:Lcom/vk/im/ui/components/common/MsgAction;

    .line 7
    new-instance v0, Lcom/vk/im/ui/components/common/MsgAction;

    const-string v1, "COPY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/MsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/MsgAction;->COPY:Lcom/vk/im/ui/components/common/MsgAction;

    .line 8
    new-instance v0, Lcom/vk/im/ui/components/common/MsgAction;

    const-string v1, "EDIT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/MsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/MsgAction;->EDIT:Lcom/vk/im/ui/components/common/MsgAction;

    .line 9
    new-instance v0, Lcom/vk/im/ui/components/common/MsgAction;

    const-string v1, "DELETE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/MsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/MsgAction;->DELETE:Lcom/vk/im/ui/components/common/MsgAction;

    .line 10
    new-instance v0, Lcom/vk/im/ui/components/common/MsgAction;

    const-string v1, "SPAM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/MsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/MsgAction;->SPAM:Lcom/vk/im/ui/components/common/MsgAction;

    .line 11
    new-instance v0, Lcom/vk/im/ui/components/common/MsgAction;

    const-string v1, "PIN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/MsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/MsgAction;->PIN:Lcom/vk/im/ui/components/common/MsgAction;

    .line 12
    new-instance v0, Lcom/vk/im/ui/components/common/MsgAction;

    const-string v1, "UNPIN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/MsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/MsgAction;->UNPIN:Lcom/vk/im/ui/components/common/MsgAction;

    .line 13
    new-instance v0, Lcom/vk/im/ui/components/common/MsgAction;

    const-string v1, "TRANSLATE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/MsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/MsgAction;->TRANSLATE:Lcom/vk/im/ui/components/common/MsgAction;

    .line 14
    new-instance v0, Lcom/vk/im/ui/components/common/MsgAction;

    const-string v1, "READTO"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/MsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/MsgAction;->READTO:Lcom/vk/im/ui/components/common/MsgAction;

    .line 15
    new-instance v0, Lcom/vk/im/ui/components/common/MsgAction;

    const-string v1, "KICK"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/MsgAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/MsgAction;->KICK:Lcom/vk/im/ui/components/common/MsgAction;

    .line 3
    invoke-static {}, Lcom/vk/im/ui/components/common/MsgAction;->$values()[Lcom/vk/im/ui/components/common/MsgAction;

    move-result-object v0

    sput-object v0, Lcom/vk/im/ui/components/common/MsgAction;->$VALUES:[Lcom/vk/im/ui/components/common/MsgAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vk/im/ui/components/common/MsgAction;
    .locals 1

    .line 3
    const-class v0, Lcom/vk/im/ui/components/common/MsgAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vk/im/ui/components/common/MsgAction;

    return-object p0
.end method

.method public static values()[Lcom/vk/im/ui/components/common/MsgAction;
    .locals 1

    .line 3
    sget-object v0, Lcom/vk/im/ui/components/common/MsgAction;->$VALUES:[Lcom/vk/im/ui/components/common/MsgAction;

    invoke-virtual {v0}, [Lcom/vk/im/ui/components/common/MsgAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vk/im/ui/components/common/MsgAction;

    return-object v0
.end method
