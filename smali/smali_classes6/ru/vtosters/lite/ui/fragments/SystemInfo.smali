.class public Lru/vtosters/lite/ui/fragments/SystemInfo;
.super Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;
.source "SystemInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$ru-vtosters-lite-ui-fragments-SystemInfo(Ljava/lang/String;Landroidx/preference/Preference;)Z
    .locals 1

    .line 64
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "clipboard"

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    const-string v0, "MBH-ST"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 65
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f121592

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$1$ru-vtosters-lite-ui-fragments-SystemInfo(Ljava/lang/String;Landroidx/preference/Preference;)Z
    .locals 1

    .line 70
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "clipboard"

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    const-string v0, "MBH-ST"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 71
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f121592

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$10$ru-vtosters-lite-ui-fragments-SystemInfo(Ljava/lang/String;Landroidx/preference/Preference;)Z
    .locals 1

    .line 136
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "clipboard"

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    const-string v0, "MBH-ST"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 137
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f121592

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$11$ru-vtosters-lite-ui-fragments-SystemInfo(Ljava/lang/String;Landroidx/preference/Preference;)Z
    .locals 1

    .line 142
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "clipboard"

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    const-string v0, "MBH-ST"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 143
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f121592

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$12$ru-vtosters-lite-ui-fragments-SystemInfo(Ljava/lang/String;Landroidx/preference/Preference;)Z
    .locals 1

    .line 151
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "clipboard"

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    const-string v0, "MBH-ST"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 152
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f121592

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$13$ru-vtosters-lite-ui-fragments-SystemInfo(Ljava/lang/String;Landroidx/preference/Preference;)Z
    .locals 1

    .line 157
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "clipboard"

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    const-string v0, "MBH-ST"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 158
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f121592

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$14$ru-vtosters-lite-ui-fragments-SystemInfo(Ljava/lang/String;Landroidx/preference/Preference;)Z
    .locals 1

    .line 163
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "clipboard"

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    const-string v0, "MBH-ST"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 164
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f121592

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$15$ru-vtosters-lite-ui-fragments-SystemInfo(Ljava/lang/String;Landroidx/preference/Preference;)Z
    .locals 1

    .line 169
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "clipboard"

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    const-string v0, "MBH-ST"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 170
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f121592

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$16$ru-vtosters-lite-ui-fragments-SystemInfo(Ljava/lang/String;Landroidx/preference/Preference;)Z
    .locals 1

    .line 176
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "clipboard"

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    const-string v0, "MBH-ST"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 177
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f121592

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$17$ru-vtosters-lite-ui-fragments-SystemInfo(Ljava/lang/String;Landroidx/preference/Preference;)Z
    .locals 1

    .line 183
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "clipboard"

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    const-string v0, "MBH-ST"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 184
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f121592

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$2$ru-vtosters-lite-ui-fragments-SystemInfo(Ljava/lang/String;Landroidx/preference/Preference;)Z
    .locals 1

    .line 76
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "clipboard"

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    const-string v0, "MBH-ST"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 77
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f121592

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$3$ru-vtosters-lite-ui-fragments-SystemInfo(Ljava/lang/String;Landroidx/preference/Preference;)Z
    .locals 1

    .line 82
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "clipboard"

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    const-string v0, "MBH-ST"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 83
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f121592

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$4$ru-vtosters-lite-ui-fragments-SystemInfo(Ljava/lang/String;Landroidx/preference/Preference;)Z
    .locals 1

    .line 88
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "clipboard"

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    const-string v0, "MBH-ST"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 89
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f121592

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$5$ru-vtosters-lite-ui-fragments-SystemInfo(Ljava/lang/String;Landroidx/preference/Preference;)Z
    .locals 1

    .line 102
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "clipboard"

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    const-string v0, "MBH-ST"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 103
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f121592

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$6$ru-vtosters-lite-ui-fragments-SystemInfo(Ljava/lang/String;Landroidx/preference/Preference;)Z
    .locals 1

    .line 112
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "clipboard"

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    const-string v0, "MBH-ST"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 113
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f121592

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$7$ru-vtosters-lite-ui-fragments-SystemInfo(Ljava/lang/String;Landroidx/preference/Preference;)Z
    .locals 1

    .line 118
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "clipboard"

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    const-string v0, "MBH-ST"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 119
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f121592

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$8$ru-vtosters-lite-ui-fragments-SystemInfo(Ljava/lang/String;Landroidx/preference/Preference;)Z
    .locals 1

    .line 124
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "clipboard"

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    const-string v0, "MBH-ST"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 125
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f121592

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$9$ru-vtosters-lite-ui-fragments-SystemInfo(Ljava/lang/String;Landroidx/preference/Preference;)Z
    .locals 1

    .line 130
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "clipboard"

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    const-string v0, "MBH-ST"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 131
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f121592

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 46

    move-object/from16 v0, p0

    .line 22
    invoke-super/range {p0 .. p1}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f150013

    .line 23
    invoke-virtual {v0, v1}, Lru/vtosters/lite/ui/fragments/SystemInfo;->addPreferencesFromResource(I)V

    .line 25
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->getOneUiMajorVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 26
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->getOneUiMinorVersion()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v9

    .line 27
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 28
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 29
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 30
    sget-object v3, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 31
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 32
    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 33
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 34
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->getMiuiUiVersionName()Ljava/lang/String;

    move-result-object v8

    .line 35
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->getMiuiUiVersionIncrementalCode()Ljava/lang/String;

    move-result-object v15

    .line 36
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->getMiuiUiVersionCode()Ljava/lang/String;

    move-result-object v14

    .line 37
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->getEmuiVersionCode()Ljava/lang/String;

    move-result-object v12

    .line 38
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->requireContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 39
    invoke-static {}, Lru/vtosters/lite/utils/VersionReader;->getVersionCommit()Ljava/lang/String;

    move-result-object v11

    move-object/from16 p1, v12

    .line 40
    invoke-static {}, Lru/vtosters/lite/utils/VersionReader;->getVersionBranch()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v22, v14

    .line 41
    invoke-static {}, Lru/vtosters/lite/utils/VersionReader;->getVersionFull()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v23, v8

    .line 43
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isMIUI()Z

    move-result v8

    move/from16 v24, v8

    .line 44
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isFlyme()Z

    move-result v8

    move/from16 v25, v8

    .line 45
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isSamsung()Z

    move-result v8

    move/from16 v26, v8

    .line 46
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isOneUi()Z

    move-result v8

    move-object/from16 v27, v9

    .line 47
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isVivo()Z

    move-result v9

    move/from16 v28, v9

    .line 48
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isZenUI()Z

    move-result v9

    move/from16 v29, v9

    .line 49
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isEMUI()Z

    move-result v9

    .line 50
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->hasMiuiIncrCode()Z

    move-result v30

    move/from16 v31, v9

    .line 51
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isHyperOs()Z

    move-result v9

    move/from16 v32, v9

    .line 53
    invoke-static {}, Lru/vtosters/hooks/GmsHook;->isGmsInstalled()Z

    move-result v9

    move-object/from16 v33, v5

    .line 54
    invoke-static {}, Lru/vtosters/hooks/GmsHook;->isAnyServicesInstalled()Z

    move-result v5

    if-eqz v9, :cond_0

    const-string v16, "com.google.android.gms"

    move/from16 v35, v8

    move-object/from16 v34, v15

    :goto_0
    move-object/from16 v8, v16

    goto :goto_1

    :cond_0
    if-eqz v5, :cond_1

    move-object/from16 v34, v15

    .line 55
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v35, v8

    invoke-static {}, Lru/vtosters/hooks/GmsHook;->getCurrentGms()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".android.gms"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    :cond_1
    move/from16 v35, v8

    move-object/from16 v34, v15

    const-string v16, "no gms or microg"

    goto :goto_0

    .line 57
    :goto_1
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->isValidSignature()Z

    move-result v15

    move-object/from16 v42, v7

    .line 58
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->isTablet()Z

    move-result v7

    move-object/from16 v43, v6

    .line 59
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->isDebuggable()Z

    move-result v6

    move-object/from16 v44, v4

    .line 61
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    move-object/from16 v45, v3

    const-string v3, "App information"

    invoke-static {v4, v3}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreferenceCategory(Landroidx/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroidx/preference/PreferenceCategory;

    .line 63
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v16

    const-string v17, ""

    const-string v18, "Package name"

    const/16 v20, 0x0

    new-instance v3, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v10}, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda0;-><init>(Lru/vtosters/lite/ui/fragments/SystemInfo;Ljava/lang/String;)V

    move-object/from16 v19, v10

    move-object/from16 v21, v3

    invoke-static/range {v16 .. v21}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 69
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v16

    const-string v17, ""

    const-string v18, "Commit"

    new-instance v3, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda17;

    invoke-direct {v3, v0, v11}, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda17;-><init>(Lru/vtosters/lite/ui/fragments/SystemInfo;Ljava/lang/String;)V

    move-object/from16 v19, v11

    move-object/from16 v21, v3

    invoke-static/range {v16 .. v21}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 75
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v16

    const-string v17, ""

    const-string v18, "Branch"

    new-instance v3, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v12}, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda1;-><init>(Lru/vtosters/lite/ui/fragments/SystemInfo;Ljava/lang/String;)V

    move-object/from16 v19, v12

    move-object/from16 v21, v3

    invoke-static/range {v16 .. v21}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 81
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v16

    const-string v17, ""

    const-string v18, "Build Info"

    new-instance v3, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v14}, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda2;-><init>(Lru/vtosters/lite/ui/fragments/SystemInfo;Ljava/lang/String;)V

    move-object/from16 v19, v14

    move-object/from16 v21, v3

    invoke-static/range {v16 .. v21}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 87
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v36

    const-string v37, ""

    const-string v38, "Google Market Services package"

    const/16 v40, 0x0

    new-instance v3, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0, v8}, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda3;-><init>(Lru/vtosters/lite/ui/fragments/SystemInfo;Ljava/lang/String;)V

    move-object/from16 v39, v8

    move-object/from16 v41, v3

    invoke-static/range {v36 .. v41}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 93
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v16

    const-string v17, ""

    const-string v18, "Valid Signature"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "Value: "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    invoke-static/range {v16 .. v21}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 95
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v36

    const-string v37, ""

    const-string v38, "isTablet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    const/16 v41, 0x0

    invoke-static/range {v36 .. v41}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 97
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, ""

    const-string v16, "isDebuggable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v14 .. v19}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 99
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "System information"

    invoke-static {v3, v4}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreferenceCategory(Landroidx/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroidx/preference/PreferenceCategory;

    .line 101
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, ""

    const-string v12, "SDK Version"

    const/4 v14, 0x0

    new-instance v15, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda4;

    invoke-direct {v15, v0, v13}, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda4;-><init>(Lru/vtosters/lite/ui/fragments/SystemInfo;Ljava/lang/String;)V

    move-object/from16 v3, p1

    move-object/from16 v4, v22

    move-object/from16 v6, v34

    invoke-static/range {v10 .. v15}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 107
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v16

    const-string v17, ""

    const-string v18, "isInstalledGoogleGMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v16 .. v21}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 109
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, ""

    const-string v11, "isInstalledMicroG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 111
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, ""

    const-string v16, "Product Name"

    const/16 v18, 0x0

    new-instance v5, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda5;

    invoke-direct {v5, v0, v1}, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda5;-><init>(Lru/vtosters/lite/ui/fragments/SystemInfo;Ljava/lang/String;)V

    move-object/from16 v17, v1

    move-object/from16 v19, v5

    invoke-static/range {v14 .. v19}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 117
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, ""

    const-string v16, "Device Name"

    new-instance v1, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, v2}, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda6;-><init>(Lru/vtosters/lite/ui/fragments/SystemInfo;Ljava/lang/String;)V

    move-object/from16 v17, v2

    move-object/from16 v19, v1

    invoke-static/range {v14 .. v19}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 123
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, ""

    const-string v16, "Board Name"

    new-instance v1, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda7;

    move-object/from16 v2, v45

    invoke-direct {v1, v0, v2}, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda7;-><init>(Lru/vtosters/lite/ui/fragments/SystemInfo;Ljava/lang/String;)V

    move-object/from16 v17, v2

    move-object/from16 v19, v1

    invoke-static/range {v14 .. v19}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 129
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, ""

    const-string v16, "Manufacturer Name"

    new-instance v1, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda8;

    move-object/from16 v2, v44

    invoke-direct {v1, v0, v2}, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda8;-><init>(Lru/vtosters/lite/ui/fragments/SystemInfo;Ljava/lang/String;)V

    move-object/from16 v17, v2

    move-object/from16 v19, v1

    invoke-static/range {v14 .. v19}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 135
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, ""

    const-string v16, "Brand Name"

    new-instance v1, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda9;

    move-object/from16 v2, v43

    invoke-direct {v1, v0, v2}, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda9;-><init>(Lru/vtosters/lite/ui/fragments/SystemInfo;Ljava/lang/String;)V

    move-object/from16 v17, v2

    move-object/from16 v19, v1

    invoke-static/range {v14 .. v19}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 141
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, ""

    const-string v16, "Model Name"

    new-instance v1, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda10;

    move-object/from16 v2, v42

    invoke-direct {v1, v0, v2}, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda10;-><init>(Lru/vtosters/lite/ui/fragments/SystemInfo;Ljava/lang/String;)V

    move-object/from16 v17, v2

    move-object/from16 v19, v1

    invoke-static/range {v14 .. v19}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 147
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "OEM Information"

    invoke-static {v1, v2}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreferenceCategory(Landroidx/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroidx/preference/PreferenceCategory;

    if-eqz v35, :cond_2

    .line 150
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, ""

    const-string v4, "OneUiMajorVersion"

    const/4 v6, 0x0

    new-instance v7, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda11;

    move-object/from16 v1, v33

    invoke-direct {v7, v0, v1}, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda11;-><init>(Lru/vtosters/lite/ui/fragments/SystemInfo;Ljava/lang/String;)V

    move-object v5, v1

    invoke-static/range {v2 .. v7}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 156
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, ""

    const-string v1, "OneUiMinorVersion"

    const/4 v10, 0x0

    new-instance v11, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda12;

    move-object/from16 v2, v27

    invoke-direct {v11, v0, v2}, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda12;-><init>(Lru/vtosters/lite/ui/fragments/SystemInfo;Ljava/lang/String;)V

    move-object v14, v8

    move/from16 v5, v24

    move/from16 v12, v25

    move/from16 v13, v26

    move/from16 v15, v35

    move-object v8, v1

    move/from16 v3, v29

    move/from16 v4, v31

    move/from16 v1, v32

    move-object v9, v2

    invoke-static/range {v6 .. v11}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    move v2, v3

    move v7, v4

    move-object v11, v14

    move v4, v15

    goto/16 :goto_2

    :cond_2
    move-object v14, v8

    move/from16 v5, v24

    move/from16 v12, v25

    move/from16 v13, v26

    move/from16 v2, v29

    move/from16 v7, v31

    move/from16 v1, v32

    move/from16 v15, v35

    if-eqz v5, :cond_4

    .line 162
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    const-string v8, ""

    const-string v16, "miuiUiVersionName"

    const/16 v18, 0x0

    new-instance v9, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda13;

    move-object/from16 v10, v23

    invoke-direct {v9, v0, v10}, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda13;-><init>(Lru/vtosters/lite/ui/fragments/SystemInfo;Ljava/lang/String;)V

    move-object v11, v14

    move-object v14, v3

    move v3, v15

    move-object v15, v8

    move-object/from16 v17, v10

    move-object/from16 v19, v9

    invoke-static/range {v14 .. v19}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 168
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v16

    const-string v17, ""

    const-string v18, "miuiUiVersionCodeName"

    const/16 v20, 0x0

    new-instance v8, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda14;

    invoke-direct {v8, v0, v4}, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda14;-><init>(Lru/vtosters/lite/ui/fragments/SystemInfo;Ljava/lang/String;)V

    move-object/from16 v19, v4

    move-object/from16 v21, v8

    invoke-static/range {v16 .. v21}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    if-eqz v30, :cond_3

    .line 175
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, ""

    const-string v16, "miuiIncrementalCodeName"

    const/16 v18, 0x0

    new-instance v4, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda15;

    invoke-direct {v4, v0, v6}, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda15;-><init>(Lru/vtosters/lite/ui/fragments/SystemInfo;Ljava/lang/String;)V

    move-object/from16 v17, v6

    move-object/from16 v19, v4

    invoke-static/range {v14 .. v19}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    :cond_3
    move v4, v3

    goto :goto_2

    :cond_4
    move-object v11, v14

    move v4, v15

    if-eqz v7, :cond_5

    .line 182
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v16

    const-string v17, ""

    const-string v18, "emuiVersionCode"

    const/16 v20, 0x0

    new-instance v6, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda16;

    invoke-direct {v6, v0, v3}, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda16;-><init>(Lru/vtosters/lite/ui/fragments/SystemInfo;Ljava/lang/String;)V

    move-object/from16 v19, v3

    move-object/from16 v21, v6

    invoke-static/range {v16 .. v21}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    goto :goto_2

    .line 188
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v21

    const-string v22, ""

    const-string v23, "No info"

    const-string v24, "No information about OEM"

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v21 .. v26}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 191
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    const-string v6, "OEM List"

    invoke-static {v3, v6}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreferenceCategory(Landroidx/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroidx/preference/PreferenceCategory;

    .line 193
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, ""

    const-string v16, "isOneUi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v14 .. v19}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 195
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v20

    const-string v21, ""

    const-string v22, "isMiui"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v20 .. v25}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 197
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, ""

    const-string v16, "isHyperOS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v14 .. v19}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 199
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v20

    const-string v21, ""

    const-string v22, "isEMUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v20 .. v25}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 201
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, ""

    const-string v5, "isFlyme"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 203
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v14

    const-string v15, ""

    const-string v16, "isSamsung"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v14 .. v19}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 205
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, ""

    const-string v5, "isVivo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v6, v28

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v3 .. v8}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    .line 207
    invoke-virtual/range {p0 .. p0}, Lru/vtosters/lite/ui/fragments/SystemInfo;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v12

    const-string v13, ""

    const-string v14, "isZenUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->addPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroidx/preference/Preference$OnPreferenceClickListener;)Landroidx/preference/Preference;

    return-void
.end method
