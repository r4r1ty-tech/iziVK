.class final enum Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;
.super Ljava/lang/Enum;
.source "VhMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

.field public static final enum BUTTON:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

.field public static final enum EMPTY:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

.field public static final enum FWD_SENDER:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

.field public static final enum FWD_TIME:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

.field public static final enum IMAGE:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

.field public static final enum SNIPPET:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

.field public static final enum TEXT:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

.field public static final enum TWO_LINE:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;


# instance fields
.field public final index:I


# direct methods
.method private static synthetic $values()[Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    const/4 v1, 0x0

    .line 1031
    sget-object v2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->BUTTON:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->EMPTY:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->FWD_SENDER:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->FWD_TIME:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->IMAGE:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->SNIPPET:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->TEXT:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->TWO_LINE:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 10

    .line 1032
    new-instance v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    const-string v1, "BUTTON"

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->BUTTON:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    .line 1033
    new-instance v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    const-string v1, "EMPTY"

    const/4 v4, 0x1

    const/4 v5, 0x7

    invoke-direct {v0, v1, v4, v5}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->EMPTY:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    .line 1034
    new-instance v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    const-string v1, "FWD_SENDER"

    const/4 v6, 0x2

    const/4 v7, 0x4

    invoke-direct {v0, v1, v6, v7}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->FWD_SENDER:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    .line 1035
    new-instance v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    const-string v1, "FWD_TIME"

    const/4 v8, 0x3

    const/4 v9, 0x5

    invoke-direct {v0, v1, v8, v9}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->FWD_TIME:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    .line 1036
    new-instance v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v7, v4}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->IMAGE:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    .line 1037
    new-instance v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    const-string v1, "SNIPPET"

    invoke-direct {v0, v1, v9, v6}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->SNIPPET:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    .line 1038
    new-instance v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v3, v2}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->TEXT:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    .line 1039
    new-instance v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    const-string v1, "TWO_LINE"

    invoke-direct {v0, v1, v5, v8}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->TWO_LINE:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    .line 1031
    invoke-static {}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->$values()[Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    move-result-object v0

    sput-object v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->$VALUES:[Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1043
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1044
    iput p3, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->index:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;
    .locals 1

    .line 1031
    const-class v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    return-object p0
.end method

.method public static values()[Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;
    .locals 1

    .line 1031
    sget-object v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->$VALUES:[Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    invoke-virtual {v0}, [Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    return-object v0
.end method
