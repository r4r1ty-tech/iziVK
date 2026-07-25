.class public Lru/vtosters/lite/ui/dialogs/OTADialog;
.super Lru/vtosters/lite/ui/vkui/ModalBottomSheetWrapper;
.source "OTADialog.java"

# interfaces
.implements Lru/vtosters/lite/utils/OTAUtils$OTAListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lru/vtosters/lite/ui/vkui/ModalBottomSheetWrapper<",
        "Lru/vtosters/lite/ui/dialogs/OTADialog;",
        ">;",
        "Lru/vtosters/lite/utils/OTAUtils$OTAListener;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mHelper:Lru/vtosters/lite/utils/OTAUtils;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lru/vtosters/lite/ui/vkui/ModalBottomSheetWrapper;-><init>(Landroid/app/Activity;)V

    .line 23
    iput-object p1, p0, Lru/vtosters/lite/ui/dialogs/OTADialog;->mActivity:Landroid/app/Activity;

    .line 25
    new-instance p1, Lru/vtosters/lite/utils/OTAUtils;

    invoke-direct {p1, p0}, Lru/vtosters/lite/utils/OTAUtils;-><init>(Lru/vtosters/lite/utils/OTAUtils$OTAListener;)V

    iput-object p1, p0, Lru/vtosters/lite/ui/dialogs/OTADialog;->mHelper:Lru/vtosters/lite/utils/OTAUtils;

    .line 26
    invoke-virtual {p1, p2}, Lru/vtosters/lite/utils/OTAUtils;->loadData(Z)V

    return-void
.end method

.method public static checkUpdates(Landroid/app/Activity;)V
    .locals 2

    .line 30
    new-instance v0, Lru/vtosters/lite/ui/dialogs/OTADialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lru/vtosters/lite/ui/dialogs/OTADialog;-><init>(Landroid/app/Activity;Z)V

    return-void
.end method

.method public static checkUpdatesManual(Landroid/app/Activity;)V
    .locals 2

    .line 34
    new-instance v0, Lru/vtosters/lite/ui/dialogs/OTADialog;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lru/vtosters/lite/ui/dialogs/OTADialog;-><init>(Landroid/app/Activity;Z)V

    return-void
.end method

.method private makeUpdateInfoView(Ljava/lang/String;)Landroid/view/View;
    .locals 4

    .line 51
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lru/vtosters/lite/ui/dialogs/OTADialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lru/vtosters/lite/ui/dialogs/OTADialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 54
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changelog"

    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTextAttr()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {p1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method


# virtual methods
.method synthetic lambda$onUpdateApplied$0$ru-vtosters-lite-ui-dialogs-OTADialog()V
    .locals 2

    .line 43
    iget-object v0, p0, Lru/vtosters/lite/ui/dialogs/OTADialog;->mHelper:Lru/vtosters/lite/utils/OTAUtils;

    invoke-virtual {v0}, Lru/vtosters/lite/utils/OTAUtils;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lru/vtosters/lite/ui/dialogs/OTADialog;->mHelper:Lru/vtosters/lite/utils/OTAUtils;

    invoke-virtual {v1}, Lru/vtosters/lite/utils/OTAUtils;->getCommitSHA()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lru/vtosters/lite/downloaders/OTADownloader;->downloadBuild(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onUpdateApplied$1$ru-vtosters-lite-ui-dialogs-OTADialog()V
    .locals 3

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lru/vtosters/lite/ui/dialogs/OTADialog;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1216c5

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/vtosters/lite/ui/dialogs/OTADialog;->mHelper:Lru/vtosters/lite/utils/OTAUtils;

    invoke-virtual {v1}, Lru/vtosters/lite/utils/OTAUtils;->getNewVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/dialogs/OTADialog;->setTitle(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/vtosters/lite/ui/dialogs/OTADialog;

    iget-object v1, p0, Lru/vtosters/lite/ui/dialogs/OTADialog;->mHelper:Lru/vtosters/lite/utils/OTAUtils;

    .line 41
    invoke-virtual {v1}, Lru/vtosters/lite/utils/OTAUtils;->getUpdateDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lru/vtosters/lite/ui/dialogs/OTADialog;->makeUpdateInfoView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/vtosters/lite/ui/dialogs/OTADialog;->setView(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/vtosters/lite/ui/dialogs/OTADialog;

    iget-object v1, p0, Lru/vtosters/lite/ui/dialogs/OTADialog;->mActivity:Landroid/app/Activity;

    const v2, 0x7f121797

    .line 42
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lru/vtosters/lite/ui/dialogs/OTADialog$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lru/vtosters/lite/ui/dialogs/OTADialog$$ExternalSyntheticLambda3;-><init>(Lru/vtosters/lite/ui/dialogs/OTADialog;)V

    invoke-virtual {v0, v1, v2}, Lru/vtosters/lite/ui/dialogs/OTADialog;->setPositiveButton(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/vtosters/lite/ui/dialogs/OTADialog;

    const-string v1, "ota"

    .line 45
    invoke-virtual {v0, v1}, Lru/vtosters/lite/ui/dialogs/OTADialog;->show(Ljava/lang/String;)Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet;

    return-void
.end method

.method synthetic lambda$onUpdateError$3$ru-vtosters-lite-ui-dialogs-OTADialog()V
    .locals 3

    .line 75
    iget-object v0, p0, Lru/vtosters/lite/ui/dialogs/OTADialog;->mActivity:Landroid/app/Activity;

    const-string v1, "update_err"

    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$onUpdateLatest$2$ru-vtosters-lite-ui-dialogs-OTADialog()V
    .locals 3

    .line 67
    iget-object v0, p0, Lru/vtosters/lite/ui/dialogs/OTADialog;->mActivity:Landroid/app/Activity;

    const-string v1, "update_latest"

    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onUpdateApplied(Z)V
    .locals 1

    .line 39
    iget-object p1, p0, Lru/vtosters/lite/ui/dialogs/OTADialog;->mActivity:Landroid/app/Activity;

    new-instance v0, Lru/vtosters/lite/ui/dialogs/OTADialog$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lru/vtosters/lite/ui/dialogs/OTADialog$$ExternalSyntheticLambda2;-><init>(Lru/vtosters/lite/ui/dialogs/OTADialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateError()V
    .locals 2

    .line 74
    iget-object v0, p0, Lru/vtosters/lite/ui/dialogs/OTADialog;->mActivity:Landroid/app/Activity;

    new-instance v1, Lru/vtosters/lite/ui/dialogs/OTADialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lru/vtosters/lite/ui/dialogs/OTADialog$$ExternalSyntheticLambda1;-><init>(Lru/vtosters/lite/ui/dialogs/OTADialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateLatest(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lru/vtosters/lite/ui/dialogs/OTADialog;->mActivity:Landroid/app/Activity;

    new-instance v0, Lru/vtosters/lite/ui/dialogs/OTADialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lru/vtosters/lite/ui/dialogs/OTADialog$$ExternalSyntheticLambda0;-><init>(Lru/vtosters/lite/ui/dialogs/OTADialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
