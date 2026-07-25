.class public Lru/vtosters/hooks/CryptImHook;
.super Ljava/lang/Object;
.source "CryptImHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hook(ILcom/vk/im/engine/models/dialogs/Dialog;)V
    .locals 7

    .line 38
    sget-object v0, Lru/vtosters/lite/encryption/EncryptProvider;->processors:Ljava/util/List;

    .line 43
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f12161b

    .line 44
    invoke-static {v2}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 46
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 47
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/vtosters/lite/encryption/base/IMProcessor;

    add-int/lit8 v3, v3, 0x1

    .line 49
    invoke-virtual {v5}, Lru/vtosters/lite/encryption/base/IMProcessor;->getUIName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    .line 51
    invoke-virtual {v5, p0}, Lru/vtosters/lite/encryption/base/IMProcessor;->isUsedToEncrypt(I)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v3

    move-object v2, v5

    goto :goto_0

    .line 58
    :cond_1
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    .line 60
    new-instance v5, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-direct {v5, v3}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f12161e

    .line 61
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v3

    new-instance v5, Lru/vtosters/hooks/CryptImHook$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2, p0, v0, p1}, Lru/vtosters/hooks/CryptImHook$$ExternalSyntheticLambda0;-><init>(Lru/vtosters/lite/encryption/base/IMProcessor;ILjava/util/List;Lcom/vk/im/engine/models/dialogs/Dialog;)V

    .line 62
    invoke-virtual {v3, v1, v4, v5}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p0

    .line 79
    invoke-virtual {p0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public static hookPref(I)V
    .locals 10

    .line 86
    sget-object v0, Lru/vtosters/lite/encryption/EncryptProvider;->processors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/vtosters/lite/encryption/base/IMProcessor;

    .line 87
    invoke-virtual {v3, p0}, Lru/vtosters/lite/encryption/base/IMProcessor;->isUsedToEncrypt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 92
    invoke-virtual {v2}, Lru/vtosters/lite/encryption/base/IMProcessor;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_2

    const p0, 0x7f12161d

    .line 93
    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    return-void

    .line 97
    :cond_2
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/vtosters/lite/encryption/base/IMProcessor;

    invoke-virtual {v0, p0}, Lru/vtosters/lite/encryption/base/IMProcessor;->getEncryptionKeyFor(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 98
    invoke-virtual {v2, p0}, Lru/vtosters/lite/encryption/base/IMProcessor;->getEncryptionKeyFor(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    const-string v3, "VTAesDefault"

    .line 101
    invoke-static {v0, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, v1

    .line 105
    :cond_4
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    .line 107
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 109
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 110
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getSTextAttr()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 111
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getSTextAttr()I

    move-result v6

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 113
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 114
    invoke-virtual {v5}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const/4 v7, -0x1

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 115
    invoke-virtual {v5}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v7, 0x41c00000    # 24.0f

    .line 116
    invoke-static {v7}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v8

    invoke-static {v7}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v7

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9, v7, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 117
    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v0, :cond_5

    const-string v0, ""

    .line 118
    :cond_5
    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 121
    new-instance v0, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-direct {v0, v3}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f12161c

    .line 122
    invoke-virtual {v0, v6}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(I)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    const v6, 0x7f12161a

    .line 123
    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lru/vtosters/lite/encryption/base/IMProcessor;->getUIName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    .line 124
    invoke-virtual {v0, v4}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lru/vtosters/hooks/CryptImHook$$ExternalSyntheticLambda1;

    invoke-direct {v3, v5, v2, p0}, Lru/vtosters/hooks/CryptImHook$$ExternalSyntheticLambda1;-><init>(Landroid/widget/EditText;Lru/vtosters/lite/encryption/base/IMProcessor;I)V

    const v4, 0x104000a

    .line 125
    invoke-virtual {v0, v4, v3}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    const/high16 v3, 0x1040000

    .line 128
    invoke-virtual {v0, v3, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    const-string v1, "remove_encryption_key"

    .line 129
    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lru/vtosters/hooks/CryptImHook$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2, p0}, Lru/vtosters/hooks/CryptImHook$$ExternalSyntheticLambda2;-><init>(Lru/vtosters/lite/encryption/base/IMProcessor;I)V

    invoke-virtual {v0, v1, v3}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p0

    .line 132
    invoke-virtual {p0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public static isPrivateProcessor(I)Z
    .locals 3

    .line 28
    sget-object v0, Lru/vtosters/lite/encryption/EncryptProvider;->processors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/vtosters/lite/encryption/base/IMProcessor;

    .line 29
    invoke-virtual {v1, p0}, Lru/vtosters/lite/encryption/base/IMProcessor;->isUsedToEncrypt(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    invoke-virtual {v1}, Lru/vtosters/lite/encryption/base/IMProcessor;->isPublic()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$hook$0(Lru/vtosters/lite/encryption/base/IMProcessor;ILjava/util/List;Lcom/vk/im/engine/models/dialogs/Dialog;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p5, :cond_0

    if-eqz p0, :cond_2

    .line 64
    invoke-virtual {p0, p1}, Lru/vtosters/lite/encryption/base/IMProcessor;->disableEncryptFor(I)V

    goto :goto_0

    :cond_0
    add-int/lit8 p5, p5, -0x1

    .line 66
    invoke-interface {p2, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lru/vtosters/lite/encryption/base/IMProcessor;

    .line 68
    invoke-virtual {p2, p1}, Lru/vtosters/lite/encryption/base/IMProcessor;->isUsedToEncrypt(I)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 69
    invoke-virtual {p2, p1}, Lru/vtosters/lite/encryption/base/IMProcessor;->disableEncryptFor(I)V

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p2, p1}, Lru/vtosters/lite/encryption/base/IMProcessor;->enableEncryptFor(I)V

    if-eqz p0, :cond_2

    .line 72
    invoke-virtual {p0, p1}, Lru/vtosters/lite/encryption/base/IMProcessor;->disableEncryptFor(I)V

    .line 76
    :cond_2
    :goto_0
    invoke-interface {p4}, Landroid/content/DialogInterface;->dismiss()V

    .line 77
    invoke-static {p3}, Lru/vtosters/hooks/DialogHeaderInjector;->forceInvalidateDialogActions(Lcom/vk/im/engine/models/dialogs/Dialog;)V

    return-void
.end method

.method static synthetic lambda$hookPref$1(Landroid/widget/EditText;Lru/vtosters/lite/encryption/base/IMProcessor;ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 126
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p2, p0}, Lru/vtosters/lite/encryption/base/IMProcessor;->setEncryptionKeyFor(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$hookPref$2(Lru/vtosters/lite/encryption/base/IMProcessor;ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Lru/vtosters/lite/encryption/base/IMProcessor;->removeEncryptionKeyFor(I)V

    return-void
.end method
