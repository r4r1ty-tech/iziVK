.class public Lru/vtosters/hooks/EncryptionMessagesHook;
.super Ljava/lang/Object;
.source "EncryptionMessagesHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decryptMessage(Lcom/vk/im/engine/models/messages/Msg;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 35
    instance-of v0, p0, Lcom/vk/im/engine/models/messages/MsgFromUser;

    if-eqz v0, :cond_0

    .line 36
    move-object v0, p0

    check-cast v0, Lcom/vk/im/engine/models/messages/MsgFromUser;

    invoke-virtual {v0}, Lcom/vk/im/engine/models/messages/MsgFromUser;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vk/im/engine/models/messages/Msg;->v1()I

    move-result p0

    invoke-static {v0, p0}, Lru/vtosters/hooks/EncryptionMessagesHook;->decryptMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\ud83d\udd12"

    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static decryptMessage(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 0

    .line 31
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lru/vtosters/hooks/EncryptionMessagesHook;->decryptMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decryptMessage(Ljava/lang/CharSequence;Lcom/vk/im/engine/models/messages/MsgFromUser;Z)Ljava/lang/CharSequence;
    .locals 1

    .line 53
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vk/im/engine/models/messages/MsgFromUser;->v1()I

    move-result p1

    invoke-static {v0, p1, p2}, Lru/vtosters/hooks/EncryptionMessagesHook;->decryptMessage(Ljava/lang/String;IZ)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 55
    :catch_0
    check-cast p0, Ljava/lang/String;

    const/4 p1, 0x0

    invoke-static {p0, p1, p2}, Lru/vtosters/hooks/EncryptionMessagesHook;->decryptMessage(Ljava/lang/String;IZ)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static decryptMessage(Ljava/lang/String;IZ)Ljava/lang/CharSequence;
    .locals 0

    .line 61
    invoke-static {p0, p1}, Lru/vtosters/hooks/EncryptionMessagesHook;->decryptMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_0

    .line 62
    invoke-static {p0}, Lru/vtosters/hooks/MessagesHook;->injectOwnTextAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "^\ud83d\udd12 "

    const-string p2, ""

    .line 63
    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static decryptMessage(Lcom/vk/im/engine/models/messages/MsgFromUser;)Ljava/lang/String;
    .locals 1

    .line 69
    invoke-static {p0}, Lru/vtosters/lite/encryption/EncryptProvider;->getBody(Lcom/vk/im/engine/models/messages/MsgFromUser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lru/vtosters/lite/encryption/EncryptProvider;->getPeerId(Lcom/vk/im/engine/models/messages/Msg;)I

    move-result p0

    invoke-static {v0, p0}, Lru/vtosters/hooks/EncryptionMessagesHook;->decryptMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decryptMessage(Lcom/vk/im/engine/models/messages/MsgFromUser;Z)Ljava/lang/String;
    .locals 2

    .line 16
    invoke-static {p0}, Lru/vtosters/lite/encryption/EncryptProvider;->getBody(Lcom/vk/im/engine/models/messages/MsgFromUser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lru/vtosters/lite/encryption/EncryptProvider;->getPeerId(Lcom/vk/im/engine/models/messages/Msg;)I

    move-result v1

    invoke-static {v0, v1}, Lru/vtosters/hooks/EncryptionMessagesHook;->decryptMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    .line 17
    invoke-static {p0}, Lru/vtosters/lite/encryption/EncryptProvider;->getBody(Lcom/vk/im/engine/models/messages/MsgFromUser;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/hooks/MessagesHook;->injectOwnTextAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "^\ud83d\udd12 "

    const-string p1, ""

    .line 18
    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static decryptMessage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 74
    :try_start_0
    sget-object v0, Lru/vtosters/lite/encryption/EncryptProvider;->processors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/vtosters/lite/encryption/base/IMProcessor;

    .line 75
    invoke-virtual {v1}, Lru/vtosters/lite/encryption/base/IMProcessor;->isUsed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lru/vtosters/lite/encryption/base/IMProcessor;->isPublic()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    invoke-virtual {v1, p0}, Lru/vtosters/lite/encryption/base/IMProcessor;->isEncrypted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lru/vtosters/lite/encryption/base/IMProcessor;->isPublic()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1, p1}, Lru/vtosters/lite/encryption/EncryptProvider;->getKeyForProcessor(Lru/vtosters/lite/encryption/base/IMProcessor;I)[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 76
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ud83d\udd12 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lru/vtosters/lite/encryption/base/IMProcessor;->getUIName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p1}, Lru/vtosters/lite/encryption/EncryptProvider;->getKeyForProcessor(Lru/vtosters/lite/encryption/base/IMProcessor;I)[B

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lru/vtosters/lite/encryption/base/IMProcessor;->decode(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/hooks/MessagesHook;->injectOwnTextAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    :cond_3
    invoke-static {p0}, Lru/vtosters/hooks/MessagesHook;->injectOwnTextAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decryptMessage(Ljava/lang/String;Lcom/vk/im/ui/components/msg_list/MsgListComponent;)Ljava/lang/String;
    .locals 1

    .line 23
    invoke-virtual {p1}, Lcom/vk/im/ui/components/msg_list/MsgListComponent;->G()Lcom/vk/im/engine/models/dialogs/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vk/im/engine/models/dialogs/Dialog;->getId()I

    move-result p1

    .line 24
    invoke-static {p0, p1}, Lru/vtosters/hooks/EncryptionMessagesHook;->decryptMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-static {p0}, Lru/vtosters/hooks/MessagesHook;->injectOwnTextAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "^\ud83d\udd12 "

    const-string v0, ""

    .line 26
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static decryptMessages(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 0

    .line 48
    invoke-static {p0, p1, p2}, Lru/vtosters/hooks/EncryptionMessagesHook;->decryptMessage(Ljava/lang/String;IZ)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static encryptMessage(Lcom/vk/im/engine/models/messages/MsgFromUser;)Ljava/lang/String;
    .locals 5

    .line 88
    invoke-static {p0}, Lru/vtosters/lite/encryption/EncryptProvider;->getBody(Lcom/vk/im/engine/models/messages/MsgFromUser;)Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "encryptMessage: msg = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EncryptProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "encryptMessage: body = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "encryptMessage: peerId = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lru/vtosters/lite/encryption/EncryptProvider;->getPeerId(Lcom/vk/im/engine/models/messages/Msg;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v1, Lru/vtosters/lite/encryption/EncryptProvider;->processors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/vtosters/lite/encryption/base/IMProcessor;

    .line 95
    invoke-static {p0}, Lru/vtosters/lite/encryption/EncryptProvider;->getPeerId(Lcom/vk/im/engine/models/messages/Msg;)I

    move-result v3

    .line 96
    invoke-virtual {v2, v3}, Lru/vtosters/lite/encryption/base/IMProcessor;->isUsedToEncrypt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    invoke-static {v2, v3}, Lru/vtosters/lite/encryption/EncryptProvider;->getKeyForProcessor(Lru/vtosters/lite/encryption/base/IMProcessor;I)[B

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Lru/vtosters/lite/encryption/base/IMProcessor;->encode(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/hooks/MessagesHook;->injectOwnText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 101
    :cond_1
    invoke-static {v0}, Lru/vtosters/hooks/MessagesHook;->injectOwnText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
