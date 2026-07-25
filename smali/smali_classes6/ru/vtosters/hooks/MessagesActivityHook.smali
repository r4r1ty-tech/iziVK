.class public Lru/vtosters/hooks/MessagesActivityHook;
.super Ljava/lang/Object;
.source "MessagesActivityHook.java"


# static fields
.field public static mDoNotReadDBHelper:Lru/vtosters/lite/dialogs/helpers/DoNotReadDBHelper;

.field public static mDoNotTypeDBHelper:Lru/vtosters/lite/dialogs/helpers/DoNotTypeDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lru/vtosters/lite/dialogs/helpers/DoNotReadDBHelper;

    invoke-direct {v0}, Lru/vtosters/lite/dialogs/helpers/DoNotReadDBHelper;-><init>()V

    sput-object v0, Lru/vtosters/hooks/MessagesActivityHook;->mDoNotReadDBHelper:Lru/vtosters/lite/dialogs/helpers/DoNotReadDBHelper;

    .line 12
    new-instance v0, Lru/vtosters/lite/dialogs/helpers/DoNotTypeDBHelper;

    invoke-direct {v0}, Lru/vtosters/lite/dialogs/helpers/DoNotTypeDBHelper;-><init>()V

    sput-object v0, Lru/vtosters/hooks/MessagesActivityHook;->mDoNotTypeDBHelper:Lru/vtosters/lite/dialogs/helpers/DoNotTypeDBHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDnrEnabled()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 19
    sget-object v0, Lru/vtosters/hooks/MessagesActivityHook;->mDoNotReadDBHelper:Lru/vtosters/lite/dialogs/helpers/DoNotReadDBHelper;

    invoke-virtual {v0}, Lru/vtosters/lite/dialogs/helpers/DoNotReadDBHelper;->get()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getDntEnabled()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 23
    sget-object v0, Lru/vtosters/hooks/MessagesActivityHook;->mDoNotTypeDBHelper:Lru/vtosters/lite/dialogs/helpers/DoNotTypeDBHelper;

    invoke-virtual {v0}, Lru/vtosters/lite/dialogs/helpers/DoNotTypeDBHelper;->get()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static hookDNR(I)V
    .locals 2

    .line 45
    sget-object v0, Lru/vtosters/hooks/MessagesActivityHook;->mDoNotReadDBHelper:Lru/vtosters/lite/dialogs/helpers/DoNotReadDBHelper;

    invoke-virtual {v0, p0}, Lru/vtosters/lite/dialogs/helpers/DoNotReadDBHelper;->isEnabledForPeerId(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p0, v1}, Lru/vtosters/lite/dialogs/helpers/DoNotReadDBHelper;->setEnabledForPeerId(IZ)V

    return-void
.end method

.method public static hookDNT(I)V
    .locals 2

    .line 49
    sget-object v0, Lru/vtosters/hooks/MessagesActivityHook;->mDoNotTypeDBHelper:Lru/vtosters/lite/dialogs/helpers/DoNotTypeDBHelper;

    invoke-virtual {v0, p0}, Lru/vtosters/lite/dialogs/helpers/DoNotTypeDBHelper;->isEnabledForPeerId(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p0, v1}, Lru/vtosters/lite/dialogs/helpers/DoNotTypeDBHelper;->setEnabledForPeerId(IZ)V

    return-void
.end method

.method public static isDnrEnabledFor(I)Z
    .locals 1

    .line 15
    sget-object v0, Lru/vtosters/hooks/MessagesActivityHook;->mDoNotReadDBHelper:Lru/vtosters/lite/dialogs/helpers/DoNotReadDBHelper;

    invoke-virtual {v0, p0}, Lru/vtosters/lite/dialogs/helpers/DoNotReadDBHelper;->isEnabledForPeerId(I)Z

    move-result p0

    return p0
.end method

.method public static isDnrEnabledFor(Lcom/vk/im/engine/models/dialogs/Dialog;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/vk/im/engine/models/dialogs/Dialog;->getId()I

    move-result p0

    invoke-static {p0}, Lru/vtosters/hooks/MessagesActivityHook;->isDnrEnabledFor(I)Z

    move-result p0

    return p0
.end method

.method public static isDntEnabledFor(I)Z
    .locals 1

    .line 27
    sget-object v0, Lru/vtosters/hooks/MessagesActivityHook;->mDoNotTypeDBHelper:Lru/vtosters/lite/dialogs/helpers/DoNotTypeDBHelper;

    invoke-virtual {v0, p0}, Lru/vtosters/lite/dialogs/helpers/DoNotTypeDBHelper;->isEnabledForPeerId(I)Z

    move-result p0

    return p0
.end method

.method public static isDntEnabledFor(Lcom/vk/im/engine/commands/messages/SetUserActivityCmd;)Z
    .locals 0

    .line 31
    iget p0, p0, Lcom/vk/im/engine/commands/messages/SetUserActivityCmd;->b:I

    invoke-static {p0}, Lru/vtosters/hooks/MessagesActivityHook;->isDntEnabledFor(I)Z

    move-result p0

    return p0
.end method

.method public static isDntEnabledFor(Lcom/vk/im/engine/models/dialogs/Dialog;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/vk/im/engine/models/dialogs/Dialog;->getId()I

    move-result p0

    invoke-static {p0}, Lru/vtosters/hooks/MessagesActivityHook;->isDntEnabledFor(I)Z

    move-result p0

    return p0
.end method
