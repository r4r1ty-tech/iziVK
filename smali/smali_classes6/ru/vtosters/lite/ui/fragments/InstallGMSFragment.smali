.class public Lru/vtosters/lite/ui/fragments/InstallGMSFragment;
.super Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;
.source "InstallGMSFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public T4()I
    .locals 1

    const v0, 0x7f121677

    return v0
.end method

.method synthetic lambda$onCreate$0$ru-vtosters-lite-ui-fragments-InstallGMSFragment(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p1, "android.intent.action.VIEW"

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/InstallGMSFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "https://github.com/microg/GmsCore/releases"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/InstallGMSFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "https://github.com/inotia00/mMicroG/releases/latest/download/microg.apk"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/InstallGMSFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "https://github.com/TeamVanced/VancedMicroG/releases/latest/download/microg.apk"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 28
    :goto_0
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/InstallGMSFragment;->dismiss()V

    return-void
.end method

.method synthetic lambda$onCreate$1$ru-vtosters-lite-ui-fragments-InstallGMSFragment(Landroidx/preference/Preference;)Z
    .locals 3

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    const-string v0, "microg_dialog1"

    .line 17
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "microg_dialog2"

    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string v0, "microg_dialog3"

    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, p1, v2

    .line 19
    new-instance v0, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/InstallGMSFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lru/vtosters/lite/ui/fragments/InstallGMSFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lru/vtosters/lite/ui/fragments/InstallGMSFragment$$ExternalSyntheticLambda1;-><init>(Lru/vtosters/lite/ui/fragments/InstallGMSFragment;)V

    invoke-virtual {v0, p1, v2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 13
    invoke-super {p0, p1}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f150017

    .line 14
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/InstallGMSFragment;->addPreferencesFromResource(I)V

    const-string p1, "microg"

    .line 16
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/InstallGMSFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    new-instance v0, Lru/vtosters/lite/ui/fragments/InstallGMSFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lru/vtosters/lite/ui/fragments/InstallGMSFragment$$ExternalSyntheticLambda0;-><init>(Lru/vtosters/lite/ui/fragments/InstallGMSFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method
