.class public Lru/vtosters/hooks/DialogMessageInjector;
.super Ljava/lang/Object;
.source "DialogMessageInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static injectToHashMap(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Lcom/vk/im/ui/components/common/MsgAction;",
            "Lcom/vk/im/ui/components/viewcontrollers/popup/DelegateMsg$a$a;",
            ">;)",
            "Ljava/util/LinkedHashMap<",
            "Lcom/vk/im/ui/components/common/MsgAction;",
            "Lcom/vk/im/ui/components/viewcontrollers/popup/DelegateMsg$a$a;",
            ">;"
        }
    .end annotation

    .line 16
    sget-object v0, Lcom/vk/im/ui/components/common/MsgAction;->KICK:Lcom/vk/im/ui/components/common/MsgAction;

    new-instance v1, Lcom/vk/im/ui/components/viewcontrollers/popup/DelegateMsg$a$a;

    const v2, 0x7f12116c

    invoke-direct {v1, v2}, Lcom/vk/im/ui/components/viewcontrollers/popup/DelegateMsg$a$a;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/vk/im/ui/components/common/MsgAction;->TRANSLATE:Lcom/vk/im/ui/components/common/MsgAction;

    new-instance v1, Lcom/vk/im/ui/components/viewcontrollers/popup/DelegateMsg$a$a;

    const v2, 0x7f121789

    invoke-direct {v1, v2}, Lcom/vk/im/ui/components/viewcontrollers/popup/DelegateMsg$a$a;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/vk/im/ui/components/common/MsgAction;->READTO:Lcom/vk/im/ui/components/common/MsgAction;

    new-instance v1, Lcom/vk/im/ui/components/viewcontrollers/popup/DelegateMsg$a$a;

    const v2, 0x7f121711

    invoke-direct {v1, v2}, Lcom/vk/im/ui/components/viewcontrollers/popup/DelegateMsg$a$a;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static onClick(Landroid/content/Context;Lcom/vk/im/ui/components/common/MsgAction;Lcom/vk/im/engine/models/messages/Msg;)Z
    .locals 4

    .line 23
    invoke-virtual {p2}, Lcom/vk/im/engine/models/messages/Msg;->v1()I

    move-result v0

    .line 25
    sget-object v1, Lru/vtosters/hooks/DialogMessageInjector$1;->$SwitchMap$com$vk$im$ui$components$common$MsgAction:[I

    invoke-virtual {p1}, Lcom/vk/im/ui/components/common/MsgAction;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq p1, v2, :cond_0

    goto :goto_1

    .line 35
    :cond_0
    instance-of p1, p2, Lcom/vk/im/engine/models/messages/MsgFromUser;

    if-eqz p1, :cond_3

    .line 36
    check-cast p2, Lcom/vk/im/engine/models/messages/MsgFromUser;

    invoke-virtual {p2}, Lcom/vk/im/engine/models/messages/MsgFromUser;->f()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-eqz v3, :cond_2

    .line 40
    invoke-static {p1, v0}, Lru/vtosters/hooks/EncryptionMessagesHook;->decryptMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lru/vtosters/lite/ui/dialogs/Translate;->showTranslatedText(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const p1, 0x7f12178b

    .line 42
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_3
    :goto_1
    return v3

    .line 31
    :cond_4
    invoke-static {p2}, Lru/vtosters/lite/dialogs/Requests;->hookReadStartMsgTo(Lcom/vk/im/engine/models/messages/Msg;)V

    return v1

    .line 27
    :cond_5
    invoke-static {p2}, Lru/vtosters/lite/dialogs/Requests;->hookKick(Lcom/vk/im/engine/models/messages/Msg;)V

    return v1
.end method
