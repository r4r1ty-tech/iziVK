.class Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$2;
.super Ljava/lang/Object;
.source "StickersFragment.java"

# interfaces
.implements Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$KeyCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->checkApiKey(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;Landroid/app/ProgressDialog;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 221
    iput-object p1, p0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$2;->this$0:Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;

    iput-object p2, p0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$2;->val$dialog:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$2;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onNetError$0$ru-vtosters-lite-ui-fragments-tgstickers-StickersFragment$2(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 242
    iget-object p2, p0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$2;->this$0:Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;

    invoke-static {p2, p1}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->-$$Nest$mcheckApiKey(Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onKeyChecked(Z)V
    .locals 2

    .line 224
    iget-object v0, p0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    if-nez p1, :cond_0

    .line 226
    iget-object p1, p0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$2;->this$0:Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;

    invoke-virtual {p1}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$2;->this$0:Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;

    invoke-virtual {v0}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121759

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    .line 227
    invoke-static {p1}, Lru/vtosters/lite/tgs/TGPref;->setTGBotKey(Ljava/lang/String;)V

    return-void

    .line 230
    :cond_0
    iget-object p1, p0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$2;->this$0:Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;

    invoke-virtual {p1}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/aefyr/tsg/g2/TelegramStickersService;->getInstance(Landroid/content/Context;)Lcom/aefyr/tsg/g2/TelegramStickersService;

    move-result-object p1

    .line 231
    invoke-static {}, Lru/vtosters/lite/tgs/TGPref;->getTGBotKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->setBotKey(Ljava/lang/String;)V

    .line 233
    iget-object p1, p0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$2;->val$callback:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public onNetError()V
    .locals 4

    .line 238
    iget-object v0, p0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 239
    new-instance v0, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    iget-object v1, p0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$2;->this$0:Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;

    invoke-virtual {v1}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$2;->this$0:Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;

    .line 240
    invoke-virtual {v1}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12175a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 241
    invoke-virtual {v0, v1, v2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$2;->this$0:Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;

    .line 242
    invoke-virtual {v1}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12175b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$2;->val$callback:Ljava/lang/Runnable;

    new-instance v3, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$2$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2}, Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$2$$ExternalSyntheticLambda0;-><init>(Lru/vtosters/lite/ui/fragments/tgstickers/StickersFragment$2;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v3}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
