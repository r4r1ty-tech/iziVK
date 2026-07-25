.class public Lru/vtosters/lite/ui/fragments/VTSettings$AboutInformation;
.super Landroidx/fragment/app/DialogFragment;
.source "VTSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/lite/ui/fragments/VTSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AboutInformation"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 754
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateDialog$0$ru-vtosters-lite-ui-fragments-VTSettings$AboutInformation(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p1, "android.intent.action.VIEW"

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 766
    :cond_0
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings$AboutInformation;->requireContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings$AboutInformation;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "tg_link"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 764
    :cond_1
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings$AboutInformation;->requireContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings$AboutInformation;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "vk_link"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 768
    :goto_0
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings$AboutInformation;->dismiss()V

    return-void
.end method

.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 754
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/VTSettings$AboutInformation;->onCreateDialog(Landroid/os/Bundle;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroidx/appcompat/app/AlertDialog;
    .locals 3

    .line 757
    new-instance p1, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VTSettings$AboutInformation;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f12151e

    .line 759
    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "Telegram"

    aput-object v2, v0, v1

    .line 761
    new-instance v1, Lru/vtosters/lite/ui/fragments/VTSettings$AboutInformation$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lru/vtosters/lite/ui/fragments/VTSettings$AboutInformation$$ExternalSyntheticLambda0;-><init>(Lru/vtosters/lite/ui/fragments/VTSettings$AboutInformation;)V

    invoke-virtual {p1, v0, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    .line 771
    invoke-virtual {p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
