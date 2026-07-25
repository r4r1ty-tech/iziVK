.class synthetic Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs$1;
.super Ljava/lang/Object;
.source "VhBindArgs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$vk$im$engine$models$messages$MsgIdType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 365
    invoke-static {}, Lcom/vk/im/engine/models/messages/MsgIdType;->values()[Lcom/vk/im/engine/models/messages/MsgIdType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs$1;->$SwitchMap$com$vk$im$engine$models$messages$MsgIdType:[I

    :try_start_0
    sget-object v1, Lcom/vk/im/engine/models/messages/MsgIdType;->LOCAL_ID:Lcom/vk/im/engine/models/messages/MsgIdType;

    invoke-virtual {v1}, Lcom/vk/im/engine/models/messages/MsgIdType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs$1;->$SwitchMap$com$vk$im$engine$models$messages$MsgIdType:[I

    sget-object v1, Lcom/vk/im/engine/models/messages/MsgIdType;->VK_ID:Lcom/vk/im/engine/models/messages/MsgIdType;

    invoke-virtual {v1}, Lcom/vk/im/engine/models/messages/MsgIdType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
