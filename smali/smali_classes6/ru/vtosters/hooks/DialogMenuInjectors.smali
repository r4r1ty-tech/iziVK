.class public Lru/vtosters/hooks/DialogMenuInjectors;
.super Ljava/lang/Object;
.source "DialogMenuInjectors.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lcom/vk/im/engine/models/dialogs/Dialog;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/im/engine/models/dialogs/Dialog;",
            "Ljava/util/List<",
            "Lcom/vk/im/ui/components/common/DialogAction;",
            ">;)V"
        }
    .end annotation

    .line 22
    :try_start_0
    invoke-virtual {p0}, Lcom/vk/im/engine/models/dialogs/Dialog;->getId()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    sget-object v0, Lcom/vk/im/ui/components/common/DialogAction;->STAT:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/vk/im/ui/components/common/DialogAction;->DOWNLOAD:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/vk/im/ui/components/common/DialogAction;->pinmsg:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/vk/im/ui/components/common/DialogAction;->unpinmsg:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-static {p0}, Lru/vtosters/hooks/MessagesActivityHook;->isDnrEnabledFor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vk/im/ui/components/common/DialogAction;->DNR_OFF:Lcom/vk/im/ui/components/common/DialogAction;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/vk/im/ui/components/common/DialogAction;->DNR_ON:Lcom/vk/im/ui/components/common/DialogAction;

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-static {p0}, Lru/vtosters/hooks/MessagesActivityHook;->isDntEnabledFor(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vk/im/ui/components/common/DialogAction;->DNT_OFF:Lcom/vk/im/ui/components/common/DialogAction;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/vk/im/ui/components/common/DialogAction;->DNT_ON:Lcom/vk/im/ui/components/common/DialogAction;

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-static {p0}, Lru/vtosters/hooks/CryptImHook;->isEncryptionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/vk/im/ui/components/common/DialogAction;->ENCRYPT_SETT:Lcom/vk/im/ui/components/common/DialogAction;

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/vk/im/ui/components/common/DialogAction;->ENCRYPT:Lcom/vk/im/ui/components/common/DialogAction;

    :goto_2
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :catch_0
    return-void
.end method

.method public static injectToHashMap(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Lcom/vk/im/ui/components/common/DialogAction;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/LinkedHashMap<",
            "Lcom/vk/im/ui/components/common/DialogAction;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/vk/im/ui/components/common/DialogAction;->DOWNLOAD:Lcom/vk/im/ui/components/common/DialogAction;

    const v1, 0x7f12160d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/vk/im/ui/components/common/DialogAction;->DNR_ON:Lcom/vk/im/ui/components/common/DialogAction;

    const v1, 0x7f1214fc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/vk/im/ui/components/common/DialogAction;->DNR_OFF:Lcom/vk/im/ui/components/common/DialogAction;

    const v1, 0x7f1214fb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/vk/im/ui/components/common/DialogAction;->DNT_ON:Lcom/vk/im/ui/components/common/DialogAction;

    const v1, 0x7f1214fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/vk/im/ui/components/common/DialogAction;->DNT_OFF:Lcom/vk/im/ui/components/common/DialogAction;

    const v1, 0x7f1214fd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/vk/im/ui/components/common/DialogAction;->ENCRYPT:Lcom/vk/im/ui/components/common/DialogAction;

    const v1, 0x7f121619

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/vk/im/ui/components/common/DialogAction;->ENCRYPT_SETT:Lcom/vk/im/ui/components/common/DialogAction;

    const v1, 0x7f12161b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static onClick(Lcom/vk/im/engine/models/dialogs/Dialog;Lcom/vk/im/ui/components/common/DialogAction;)Z
    .locals 4

    const/4 v0, 0x1

    .line 65
    :try_start_0
    invoke-virtual {p0}, Lcom/vk/im/engine/models/dialogs/Dialog;->getId()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    sget-object v2, Lru/vtosters/hooks/DialogMenuInjectors$1;->$SwitchMap$com$vk$im$ui$components$common$DialogAction:[I

    invoke-virtual {p1}, Lcom/vk/im/ui/components/common/DialogAction;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 106
    :pswitch_0
    const/4 p0, 0x1

    invoke-static {v1, p0}, Lru/vtosters/hooks/CryptImHook;->setEncryptionEnabled(IZ)V

    return v0

    .line 102
    :pswitch_1
    invoke-static {v1, v2}, Lru/vtosters/hooks/CryptImHook;->setEncryptionEnabled(IZ)V

    return v0

    .line 98
    :pswitch_2
    invoke-static {v1, v2}, Lru/vtosters/lite/dialogs/Requests;->pinnedMsg(IZ)V

    return v0

    .line 94
    :pswitch_3
    invoke-static {v1, v0}, Lru/vtosters/lite/dialogs/Requests;->pinnedMsg(IZ)V

    return v0

    .line 90
    :pswitch_4
    invoke-static {v1}, Lru/vtosters/hooks/MessagesActivityHook;->hookDNT(I)V

    return v0

    .line 86
    :pswitch_5
    invoke-static {v1}, Lru/vtosters/hooks/MessagesActivityHook;->hookDNR(I)V

    return v0

    .line 77
    :pswitch_6
    new-instance p0, Ljava/io/File;

    sget-object p1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-dialog.html"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    :try_start_1
    new-instance p1, Lru/vtosters/lite/downloaders/messages/MessagesDownloader;

    invoke-direct {p1}, Lru/vtosters/lite/downloaders/messages/MessagesDownloader;-><init>()V

    new-instance v2, Lru/vtosters/lite/downloaders/messages/HtmlDialogDownloaderFormatProvider;

    invoke-direct {v2}, Lru/vtosters/lite/downloaders/messages/HtmlDialogDownloaderFormatProvider;-><init>()V

    invoke-virtual {p1, v1, v2, p0}, Lru/vtosters/lite/downloaders/messages/MessagesDownloader;->downloadDialog(ILru/vtosters/lite/downloaders/messages/DialogDownloaderFormatProvider;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0

    .line 73
    :pswitch_7
    invoke-static {p0}, Lru/vtosters/lite/dialogs/Requests;->hookDialogInfo(Lcom/vk/im/engine/models/dialogs/Dialog;)V

    return v0

    .line 71
    :pswitch_8
    invoke-static {p0}, Lru/vtosters/lite/dialogs/Requests;->hookRead(Lcom/vk/im/engine/models/dialogs/Dialog;)V

    :goto_1
    return v2

    :catch_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
