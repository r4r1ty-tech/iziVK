.class public Lru/vtosters/hooks/ReplyMsgHook;
.super Ljava/lang/Object;
.source "ReplyMsgHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static injectWithDecrypt(Lcom/vk/im/ui/views/ReplyView;Lcom/vk/im/engine/models/messages/MsgFromUser;Lcom/vk/im/engine/models/ProfilesSimpleInfo;Z)V
    .locals 1

    .line 12
    invoke-static {p1}, Lru/vtosters/hooks/EncryptionMessagesHook;->decryptMessage(Lcom/vk/im/engine/models/messages/MsgFromUser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vk/im/engine/models/messages/MsgFromUser;->d(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lcom/vk/im/ui/views/ReplyView;->a(Lcom/vk/im/engine/models/messages/WithUserContent;Lcom/vk/im/engine/models/ProfilesSimpleInfo;Z)V

    return-void
.end method

.method public static injectWithDecrypt(Lcom/vk/im/ui/views/ReplyView;Lcom/vk/im/engine/models/messages/NestedMsg;Lcom/vk/im/engine/models/ProfilesSimpleInfo;Z)V
    .locals 2

    .line 17
    invoke-virtual {p1}, Lcom/vk/im/engine/models/messages/NestedMsg;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vk/im/engine/models/messages/NestedMsg;->t1()I

    move-result v1

    invoke-static {v0, v1}, Lru/vtosters/hooks/EncryptionMessagesHook;->decryptMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vk/im/engine/models/messages/NestedMsg;->d(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcom/vk/im/ui/views/ReplyView;->a(Lcom/vk/im/engine/models/messages/WithUserContent;Lcom/vk/im/engine/models/ProfilesSimpleInfo;Z)V

    return-void
.end method

.method public static injectWithDecrypt(Lcom/vk/im/ui/views/ReplyView;Lcom/vk/im/engine/models/messages/NestedMsg;Lcom/vk/im/engine/models/ProfilesSimpleInfo;ZI)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 23
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lru/vtosters/hooks/ReplyMsgHook;->injectWithDecrypt(Lcom/vk/im/ui/views/ReplyView;Lcom/vk/im/engine/models/messages/NestedMsg;Lcom/vk/im/engine/models/ProfilesSimpleInfo;Z)V

    return-void
.end method
