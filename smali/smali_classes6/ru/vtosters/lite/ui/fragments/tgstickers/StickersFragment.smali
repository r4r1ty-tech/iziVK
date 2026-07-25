.class public Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;
.super Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;
.source "StickersFragment.java"


# static fields
.field public static ACTION_RELOAD:Ljava/lang/String; = "com.vtosters.lite.action.RELOAD_TGS_LIST"


# instance fields
.field from:I

.field mAdapter:Lru/vtosters/lite/ui/adapters/StickerPackAdapter;

.field mGrabber:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field movePending:Z

.field to:I


# direct methods
.method static bridge synthetic -$$Nest$mcheckApiKey(Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->checkApiKey(Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->movePending:Z

    .line 41
    new-instance v0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$1;

    invoke-direct {v0, p0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$1;-><init>(Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;)V

    iput-object v0, p0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private addTgsPack()V
    .locals 2

    .line 135
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->initGrabber()V

    .line 136
    new-instance v0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$$ExternalSyntheticLambda5;-><init>(Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;)V

    .line 166
    invoke-static {}, Lru/vtosters/lite/tgs/TGPref;->getTGBotKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$$ExternalSyntheticLambda6;-><init>(Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;Ljava/lang/Runnable;)V

    invoke-direct {p0, v1}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->enterBotKey(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-direct {p0, v0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->checkApiKey(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private checkApiKey(Ljava/lang/Runnable;)V
    .locals 3

    .line 214
    iget-object v0, p0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->mGrabber:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;

    invoke-static {}, Lru/vtosters/lite/tgs/TGPref;->getTGBotKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->setBotApiKey(Ljava/lang/String;)V

    .line 216
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 217
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 218
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f121757

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 219
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 221
    iget-object v1, p0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->mGrabber:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;

    new-instance v2, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$2;

    invoke-direct {v2, p0, v0, p1}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$2;-><init>(Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;Landroid/app/ProgressDialog;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->checkKey(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$KeyCheckListener;)V

    return-void
.end method

.method private enterBotKey(Ljava/lang/Runnable;)V
    .locals 6

    .line 175
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 177
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 178
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/high16 v3, 0x41c00000    # 24.0f

    .line 180
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v4

    const/4 v5, 0x0

    .line 182
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v3

    .line 179
    invoke-virtual {v2, v4, v5, v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 184
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    new-instance v2, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 187
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f12175c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v2

    .line 188
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f12175d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v2

    .line 189
    invoke-virtual {v2, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$$ExternalSyntheticLambda0;-><init>(Landroid/widget/EditText;Ljava/lang/Runnable;)V

    const p1, 0x104000a

    .line 190
    invoke-virtual {v0, p1, v2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$$ExternalSyntheticLambda1;-><init>()V

    const/high16 v1, 0x1040000

    .line 195
    invoke-virtual {p1, v1, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    .line 196
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12175e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$$ExternalSyntheticLambda2;-><init>(Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private initGrabber()V
    .locals 0

    .line 171
    invoke-static {}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->updateURLs()V

    return-void
.end method

.method static synthetic lambda$addTgsPack$3(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 162
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$enterBotKey$6(Landroid/widget/EditText;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 192
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/lite/tgs/TGPref;->setTGBotKey(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 193
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$enterBotKey$7(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 195
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$resetToken$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 63
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$resetToken$1(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p0, 0x0

    .line 66
    invoke-static {p0}, Lru/vtosters/lite/tgs/TGPref;->setTGBotKey(Ljava/lang/String;)V

    const-string p0, "tgs_token_reset"

    .line 67
    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    return-void
.end method

.method private static resetToken(Landroid/content/Context;)V
    .locals 2

    .line 59
    invoke-static {}, Lru/vtosters/lite/tgs/TGPref;->getTGBotKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "tgs_token_missing"

    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    .line 60
    :cond_0
    new-instance v0, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p0, "tgs_token_reset_dialog"

    .line 61
    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p0

    new-instance v0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$$ExternalSyntheticLambda3;-><init>()V

    const v1, 0x7f12018a

    .line 62
    invoke-virtual {p0, v1, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p0

    new-instance v0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$$ExternalSyntheticLambda4;-><init>()V

    const v1, 0x7f1209b9

    .line 65
    invoke-virtual {p0, v1, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p0

    .line 69
    invoke-virtual {p0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method synthetic lambda$addTgsPack$2$ru-vtosters-lite-ui-fragments-tgstickers-StickersFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 3

    .line 154
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "https://"

    .line 155
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x2f

    .line 156
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 157
    :cond_0
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/aefyr/tsg/g2/TelegramStickersService;->getInstance(Landroid/content/Context;)Lcom/aefyr/tsg/g2/TelegramStickersService;

    move-result-object p2

    new-instance p3, Ljava/io/File;

    .line 160
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VT-Stickers/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2, p1, p3}, Lcom/aefyr/tsg/g2/TelegramStickersService;->requestPackDownload(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method synthetic lambda$addTgsPack$4$ru-vtosters-lite-ui-fragments-tgstickers-StickersFragment()V
    .locals 6

    .line 137
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 139
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 140
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/high16 v3, 0x41c00000    # 24.0f

    .line 142
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v4

    const/4 v5, 0x0

    .line 144
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v3

    .line 141
    invoke-virtual {v2, v4, v5, v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 146
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    new-instance v2, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f121763

    .line 149
    invoke-virtual {v2, v3}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(I)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v2

    .line 151
    invoke-virtual {v2, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v1}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$$ExternalSyntheticLambda8;-><init>(Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;Landroid/widget/EditText;)V

    const v1, 0x104000a

    .line 152
    invoke-virtual {v0, v1, v2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$$ExternalSyntheticLambda9;-><init>()V

    const/high16 v2, 0x1040000

    .line 162
    invoke-virtual {v0, v2, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$addTgsPack$5$ru-vtosters-lite-ui-fragments-tgstickers-StickersFragment(Ljava/lang/Runnable;)V
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->checkApiKey(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$enterBotKey$8$ru-vtosters-lite-ui-fragments-tgstickers-StickersFragment(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 203
    new-instance p1, Landroid/content/Intent;

    const-string p2, "https://t.me/botfather"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p2, 0x10000000

    .line 204
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 205
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$enterBotKey$9$ru-vtosters-lite-ui-fragments-tgstickers-StickersFragment(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 198
    new-instance p1, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 199
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f12175f

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121760

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121758

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 200
    invoke-virtual {p1, p2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    const-string p2, "open_bot"

    .line 202
    invoke-static {p2}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$$ExternalSyntheticLambda7;-><init>(Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;)V

    invoke-virtual {p1, p2, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    const/4 v0, 0x0

    .line 207
    invoke-virtual {p1, p2, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    .line 208
    invoke-virtual {p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 97
    invoke-super {p0, p1}, Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    sget-object v2, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->ACTION_RELOAD:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    new-instance p1, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;

    invoke-static {}, Lru/vtosters/lite/tgs/TGPref;->getTGBotKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->mGrabber:Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;

    return-void
.end method

.method public onCreateContent(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const p1, 0x7f121810

    .line 105
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->setTitle(I)V

    .line 107
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 108
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 110
    new-instance v0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter;

    invoke-direct {v0}, Lru/vtosters/lite/ui/adapters/StickerPackAdapter;-><init>()V

    iput-object v0, p0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->mAdapter:Lru/vtosters/lite/ui/adapters/StickerPackAdapter;

    .line 111
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 113
    new-instance v0, Lru/vtosters/lite/ui/components/StickerTouchHelperCallback;

    iget-object v1, p0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->mAdapter:Lru/vtosters/lite/ui/adapters/StickerPackAdapter;

    invoke-direct {v0, v1}, Lru/vtosters/lite/ui/components/StickerTouchHelperCallback;-><init>(Lru/vtosters/lite/ui/components/IItemMovingListener;)V

    .line 114
    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 115
    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 117
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 118
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method protected onCreateMenu(Landroid/view/Menu;)V
    .locals 5

    .line 74
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->serverFeaturesDisable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, ""

    .line 75
    invoke-interface {p1, v0, v0, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 76
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08032f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Lru/vtosters/hooks/other/ThemesUtils;->recolorDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x2

    .line 77
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v2, 0x1

    .line 78
    invoke-interface {p1, v0, v2, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 79
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08071a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lru/vtosters/hooks/other/ThemesUtils;->recolorDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "tgs_token_reset_menu"

    .line 80
    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 81
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 83
    :cond_0
    invoke-super {p0, p1}, Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;->onCreateMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 130
    invoke-super {p0}, Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;->onDestroyView()V

    .line 131
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 88
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->resetToken(Landroid/content/Context;)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->addTgsPack()V

    :goto_0
    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 125
    invoke-super {p0, p1, p2}, Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
