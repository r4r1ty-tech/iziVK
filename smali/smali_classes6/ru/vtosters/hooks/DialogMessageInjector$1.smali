.class synthetic Lru/vtosters/hooks/DialogMessageInjector$1;
.super Ljava/lang/Object;
.source "DialogMessageInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/hooks/DialogMessageInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$vk$im$ui$components$common$MsgAction:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    invoke-static {}, Lcom/vk/im/ui/components/common/MsgAction;->values()[Lcom/vk/im/ui/components/common/MsgAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lru/vtosters/hooks/DialogMessageInjector$1;->$SwitchMap$com$vk$im$ui$components$common$MsgAction:[I

    :try_start_0
    sget-object v1, Lcom/vk/im/ui/components/common/MsgAction;->KICK:Lcom/vk/im/ui/components/common/MsgAction;

    invoke-virtual {v1}, Lcom/vk/im/ui/components/common/MsgAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lru/vtosters/hooks/DialogMessageInjector$1;->$SwitchMap$com$vk$im$ui$components$common$MsgAction:[I

    sget-object v1, Lcom/vk/im/ui/components/common/MsgAction;->READTO:Lcom/vk/im/ui/components/common/MsgAction;

    invoke-virtual {v1}, Lcom/vk/im/ui/components/common/MsgAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lru/vtosters/hooks/DialogMessageInjector$1;->$SwitchMap$com$vk$im$ui$components$common$MsgAction:[I

    sget-object v1, Lcom/vk/im/ui/components/common/MsgAction;->TRANSLATE:Lcom/vk/im/ui/components/common/MsgAction;

    invoke-virtual {v1}, Lcom/vk/im/ui/components/common/MsgAction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
