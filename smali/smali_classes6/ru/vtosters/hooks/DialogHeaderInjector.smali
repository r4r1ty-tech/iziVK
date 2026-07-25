.class public Lru/vtosters/hooks/DialogHeaderInjector;
.super Ljava/lang/Object;
.source "DialogHeaderInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forceInvalidateDialogActions(Lcom/vk/im/engine/models/dialogs/Dialog;)V
    .locals 3

    .line 134
    new-instance v0, Lcom/vk/im/engine/models/EntityIntMap;

    invoke-direct {v0}, Lcom/vk/im/engine/models/EntityIntMap;-><init>()V

    .line 135
    invoke-virtual {p0}, Lcom/vk/im/engine/models/dialogs/Dialog;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/vk/im/engine/models/EntityIntMap;->a(ILjava/lang/Object;)V

    .line 136
    invoke-static {}, Lcom/vk/im/engine/ImEngine1;->a()Lcom/vk/im/engine/ImEngine;

    move-result-object p0

    new-instance v1, Lcom/vk/im/engine/events/OnDialogUpdateEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/vk/im/engine/events/OnDialogUpdateEvent;-><init>(Ljava/lang/Object;Lcom/vk/im/engine/models/EntityIntMap;)V

    invoke-virtual {p0, v1}, Lcom/vk/im/engine/ImEngine;->a(Lcom/vk/im/engine/events/Event;)V

    return-void
.end method

.method public static injectToList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 115
    new-instance p0, Lcom/vk/im/ui/views/dialog_actions/DialogActionsListView$b$a;

    sget-object v1, Lcom/vk/im/ui/components/common/DialogAction;->DOWNLOAD:Lcom/vk/im/ui/components/common/DialogAction;

    const v2, 0x7f040774

    const v3, 0x7f12160d

    const/4 v4, 0x1

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/vk/im/ui/views/dialog_actions/DialogActionsListView$b$a;-><init>(Lcom/vk/im/ui/components/common/DialogAction;III)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance p0, Lcom/vk/im/ui/views/dialog_actions/DialogActionsListView$b$a;

    sget-object v1, Lcom/vk/im/ui/components/common/DialogAction;->DNR_ON:Lcom/vk/im/ui/components/common/DialogAction;

    const v2, 0x7f0402cf

    const v3, 0x7f1214fc

    const/4 v4, 0x2

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/vk/im/ui/views/dialog_actions/DialogActionsListView$b$a;-><init>(Lcom/vk/im/ui/components/common/DialogAction;III)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance p0, Lcom/vk/im/ui/views/dialog_actions/DialogActionsListView$b$a;

    sget-object v1, Lcom/vk/im/ui/components/common/DialogAction;->DNR_OFF:Lcom/vk/im/ui/components/common/DialogAction;

    const v2, 0x7f0402d0

    const v3, 0x7f1214fb

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/vk/im/ui/views/dialog_actions/DialogActionsListView$b$a;-><init>(Lcom/vk/im/ui/components/common/DialogAction;III)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance p0, Lcom/vk/im/ui/views/dialog_actions/DialogActionsListView$b$a;

    sget-object v1, Lcom/vk/im/ui/components/common/DialogAction;->DNT_ON:Lcom/vk/im/ui/components/common/DialogAction;

    const v2, 0x7f1214fe

    const v3, 0x7f0402c1

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/vk/im/ui/views/dialog_actions/DialogActionsListView$b$a;-><init>(Lcom/vk/im/ui/components/common/DialogAction;III)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance p0, Lcom/vk/im/ui/views/dialog_actions/DialogActionsListView$b$a;

    sget-object v1, Lcom/vk/im/ui/components/common/DialogAction;->DNT_OFF:Lcom/vk/im/ui/components/common/DialogAction;

    const v2, 0x7f1214fd

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/vk/im/ui/views/dialog_actions/DialogActionsListView$b$a;-><init>(Lcom/vk/im/ui/components/common/DialogAction;III)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->isTablet()Z

    move-result p0

    if-nez p0, :cond_0

    .line 124
    new-instance p0, Lcom/vk/im/ui/views/dialog_actions/DialogActionsListView$b$a;

    sget-object v1, Lcom/vk/im/ui/components/common/DialogAction;->ENCRYPT:Lcom/vk/im/ui/components/common/DialogAction;

    const v2, 0x7f0402c7

    const v3, 0x7f121619

    const/4 v4, 0x3

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/vk/im/ui/views/dialog_actions/DialogActionsListView$b$a;-><init>(Lcom/vk/im/ui/components/common/DialogAction;III)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance p0, Lcom/vk/im/ui/views/dialog_actions/DialogActionsListView$b$a;

    sget-object v1, Lcom/vk/im/ui/components/common/DialogAction;->ENCRYPT_SETT:Lcom/vk/im/ui/components/common/DialogAction;

    const v2, 0x7f0402ca

    const v3, 0x7f12161e

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/vk/im/ui/views/dialog_actions/DialogActionsListView$b$a;-><init>(Lcom/vk/im/ui/components/common/DialogAction;III)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_0
    new-instance p0, Lcom/vk/im/ui/views/dialog_actions/DialogActionsListView$b$a;

    sget-object v1, Lcom/vk/im/ui/components/common/DialogAction;->MARK_AS_READ:Lcom/vk/im/ui/components/common/DialogAction;

    const v2, 0x7f0402c0

    const v3, 0x7f121241

    const/4 v4, 0x4

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/vk/im/ui/views/dialog_actions/DialogActionsListView$b$a;-><init>(Lcom/vk/im/ui/components/common/DialogAction;III)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static injectToListAccess(Ljava/util/List;Lcom/vk/im/engine/models/dialogs/Dialog;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vk/im/ui/components/common/DialogAction;",
            ">;",
            "Lcom/vk/im/engine/models/dialogs/Dialog;",
            ")",
            "Ljava/util/List<",
            "Lcom/vk/im/ui/components/common/DialogAction;",
            ">;"
        }
    .end annotation

    .line 78
    :try_start_0
    invoke-virtual {p1}, Lcom/vk/im/engine/models/dialogs/Dialog;->getId()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    sget-object v0, Lcom/vk/im/ui/components/common/DialogAction;->STAT:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/vk/im/ui/components/common/DialogAction;->DOWNLOAD:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-static {p1}, Lru/vtosters/hooks/MessagesActivityHook;->isDnrEnabledFor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/vk/im/ui/components/common/DialogAction;->DNR_OFF:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    :cond_0
    sget-object v0, Lcom/vk/im/ui/components/common/DialogAction;->DNR_ON:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :goto_0
    invoke-static {p1}, Lru/vtosters/hooks/MessagesActivityHook;->isDntEnabledFor(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    sget-object v0, Lcom/vk/im/ui/components/common/DialogAction;->DNT_OFF:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 96
    :cond_1
    sget-object v0, Lcom/vk/im/ui/components/common/DialogAction;->DNT_ON:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :goto_1
    sget-object v0, Lcom/vk/im/ui/components/common/DialogAction;->ENCRYPT:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-static {p1}, Lru/vtosters/lite/encryption/EncryptProvider;->getProcessorFor(I)Lru/vtosters/lite/encryption/base/IMProcessor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 102
    invoke-virtual {p1}, Lru/vtosters/lite/encryption/base/IMProcessor;->isPublic()Z

    move-result p1

    if-nez p1, :cond_2

    .line 103
    sget-object p1, Lcom/vk/im/ui/components/common/DialogAction;->ENCRYPT_SETT:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_2
    sget-object p1, Lcom/vk/im/ui/components/common/DialogAction;->MARK_AS_READ:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :catch_0
    return-object p0
.end method

.method public static onClick(Lcom/vk/im/ui/components/common/DialogAction;Lcom/vk/im/engine/models/dialogs/Dialog;)Z
    .locals 4

    const/4 v0, 0x1

    .line 27
    :try_start_0
    invoke-virtual {p1}, Lcom/vk/im/engine/models/dialogs/Dialog;->getId()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 32
    sget-object v2, Lru/vtosters/hooks/DialogHeaderInjector$1;->$SwitchMap$com$vk$im$ui$components$common$DialogAction:[I

    invoke-virtual {p0}, Lcom/vk/im/ui/components/common/DialogAction;->ordinal()I

    move-result p0

    aget p0, v2, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    .line 66
    :pswitch_0
    invoke-static {p1}, Lru/vtosters/lite/dialogs/Requests;->hookDialogInfo(Lcom/vk/im/engine/models/dialogs/Dialog;)V

    return v0

    .line 56
    :pswitch_1
    new-instance p0, Ljava/io/File;

    sget-object p1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dialog-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".html"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
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

    const p1, 0x7f12160e

    .line 60
    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0

    .line 52
    :pswitch_2
    invoke-static {v1, p1}, Lru/vtosters/hooks/CryptImHook;->hook(ILcom/vk/im/engine/models/dialogs/Dialog;)V

    return v0

    .line 48
    :pswitch_3
    invoke-static {v1}, Lru/vtosters/hooks/CryptImHook;->hookPref(I)V

    return v0

    .line 43
    :pswitch_4
    invoke-static {v1}, Lru/vtosters/hooks/MessagesActivityHook;->hookDNT(I)V

    .line 44
    invoke-static {p1}, Lru/vtosters/hooks/DialogHeaderInjector;->forceInvalidateDialogActions(Lcom/vk/im/engine/models/dialogs/Dialog;)V

    return v0

    .line 38
    :pswitch_5
    invoke-static {v1}, Lru/vtosters/hooks/MessagesActivityHook;->hookDNR(I)V

    .line 39
    invoke-static {p1}, Lru/vtosters/hooks/DialogHeaderInjector;->forceInvalidateDialogActions(Lcom/vk/im/engine/models/dialogs/Dialog;)V

    return v0

    .line 34
    :pswitch_6
    invoke-static {p1}, Lru/vtosters/lite/dialogs/Requests;->hookRead(Lcom/vk/im/engine/models/dialogs/Dialog;)V

    .line 35
    invoke-static {p1}, Lru/vtosters/hooks/DialogHeaderInjector;->forceInvalidateDialogActions(Lcom/vk/im/engine/models/dialogs/Dialog;)V

    :goto_1
    const/4 p0, 0x0

    return p0

    :catch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
