.class public Lru/vtosters/lite/ui/fragments/MediaFragment;
.super Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;
.source "MediaFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;-><init>()V

    return-void
.end method

.method private deleteVideoHistoryDialog(Landroid/content/Context;)V
    .locals 2

    .line 126
    new-instance v0, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f12182f

    .line 127
    invoke-virtual {v0, p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(I)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1215fb

    .line 128
    invoke-virtual {p1, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setMessage(I)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p1, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setCancelable(Z)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lru/vtosters/lite/ui/fragments/MediaFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lru/vtosters/lite/ui/fragments/MediaFragment$$ExternalSyntheticLambda2;-><init>(Lru/vtosters/lite/ui/fragments/MediaFragment;)V

    const v1, 0x7f1214f3

    .line 130
    invoke-virtual {p1, v1, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lru/vtosters/lite/ui/fragments/MediaFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lru/vtosters/lite/ui/fragments/MediaFragment$$ExternalSyntheticLambda3;-><init>()V

    const v1, 0x7f12018a

    .line 132
    invoke-virtual {p1, v1, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public static download(Landroid/content/Context;)V
    .locals 4

    .line 32
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTextAttr()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 34
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccenedColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 36
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41800000    # 16.0f

    .line 37
    invoke-static {v2}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 38
    invoke-static {v2}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v2, 0x11

    .line 39
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 40
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    new-instance v1, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f12179d

    .line 45
    invoke-virtual {v1, v3}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(I)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lru/vtosters/lite/ui/fragments/MediaFragment$$ExternalSyntheticLambda8;

    invoke-direct {v3, v0, p0}, Lru/vtosters/lite/ui/fragments/MediaFragment$$ExternalSyntheticLambda8;-><init>(Landroid/widget/EditText;Landroid/content/Context;)V

    const p0, 0x7f12032e

    .line 46
    invoke-virtual {v1, p0, v3}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p0

    .line 48
    invoke-virtual {p0, v2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p0

    .line 49
    invoke-virtual {p0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method static synthetic lambda$deleteVideoHistoryDialog$9(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 133
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$download$0(Landroid/widget/EditText;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 47
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lru/vtosters/lite/downloaders/VideoDownloader;->parseVideoLink(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic lambda$onCreate$3(Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 86
    :goto_0
    invoke-static {p1}, Lru/vtosters/lite/utils/SearchEngine;->setDefaultSearchEngine(I)V

    .line 87
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method


# virtual methods
.method public T4()I
    .locals 1

    const v0, 0x7f1217ec

    return v0
.end method

.method public deleteVideoHistory()V
    .locals 2

    .line 103
    invoke-static {}, Lru/vtosters/lite/concurrent/VTExecutors;->getIoExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/ui/fragments/MediaFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lru/vtosters/lite/ui/fragments/MediaFragment$$ExternalSyntheticLambda9;-><init>(Lru/vtosters/lite/ui/fragments/MediaFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$deleteVideoHistory$5$ru-vtosters-lite-ui-fragments-MediaFragment()V
    .locals 2

    .line 113
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/MediaFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1217a2    # 1.9419E38f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$deleteVideoHistory$6$ru-vtosters-lite-ui-fragments-MediaFragment()V
    .locals 2

    .line 115
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/MediaFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1215fc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$deleteVideoHistory$7$ru-vtosters-lite-ui-fragments-MediaFragment()V
    .locals 5

    .line 104
    new-instance v0, Lokhttp3/Request$a;

    invoke-direct {v0}, Lokhttp3/Request$a;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lru/vtosters/lite/proxy/ProxyUtils;->getApi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/method/video.clearViewingHistoryRecords?https=1&access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&v=5.119"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$a;->b(Ljava/lang/String;)Lokhttp3/Request$a;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "User-Agent"

    aput-object v3, v1, v2

    sget-object v2, Lcom/vk/core/network/Network;->l:Lcom/vk/core/network/Network;

    .line 106
    invoke-virtual {v2}, Lcom/vk/core/network/Network;->c()Lcom/vk/core/network/utils/NetworkUserAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/core/network/utils/NetworkUserAgent;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v4, "Content-Type"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "application/x-www-form-urlencoded; charset=utf-8"

    aput-object v4, v1, v2

    invoke-static {v1}, Lokhttp3/Headers;->a([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$a;->a(Lokhttp3/Headers;)Lokhttp3/Request$a;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lokhttp3/Request$a;->a()Lokhttp3/Request;

    move-result-object v0

    .line 110
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    sget-object v2, Lcom/vk/core/network/Network$ClientType;->CLIENT_API:Lcom/vk/core/network/Network$ClientType;

    invoke-static {v2}, Lcom/vk/core/network/Network;->b(Lcom/vk/core/network/Network$ClientType;)Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->a()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "response"

    .line 112
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 113
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/MediaFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v2, Lru/vtosters/lite/ui/fragments/MediaFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lru/vtosters/lite/ui/fragments/MediaFragment$$ExternalSyntheticLambda0;-><init>(Lru/vtosters/lite/ui/fragments/MediaFragment;)V

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/MediaFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v2, Lru/vtosters/lite/ui/fragments/MediaFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lru/vtosters/lite/ui/fragments/MediaFragment$$ExternalSyntheticLambda1;-><init>(Lru/vtosters/lite/ui/fragments/MediaFragment;)V

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    const-string v0, "VideoHistory"

    .line 118
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method synthetic lambda$deleteVideoHistoryDialog$8$ru-vtosters-lite-ui-fragments-MediaFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 131
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/MediaFragment;->deleteVideoHistory()V

    return-void
.end method

.method synthetic lambda$onCreate$1$ru-vtosters-lite-ui-fragments-MediaFragment(Landroidx/preference/Preference;)Z
    .locals 0

    .line 58
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/MediaFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lru/vtosters/lite/ui/fragments/MediaFragment;->download(Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreate$2$ru-vtosters-lite-ui-fragments-MediaFragment(Landroidx/preference/Preference;)Z
    .locals 0

    .line 63
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/MediaFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lru/vtosters/lite/ui/fragments/MediaFragment;->deleteVideoHistoryDialog(Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onCreate$4$ru-vtosters-lite-ui-fragments-MediaFragment(Landroidx/preference/Preference;)Z
    .locals 6

    .line 68
    invoke-static {}, Lru/vtosters/lite/utils/SearchEngine;->values()[Lru/vtosters/lite/utils/SearchEngine;

    move-result-object p1

    array-length p1, p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    new-array p1, p1, [Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;

    .line 69
    new-instance v1, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;

    .line 70
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0808be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lru/vtosters/hooks/other/ThemesUtils;->recolorDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string v3, "by_choice"

    .line 71
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, p1, v2

    .line 72
    :goto_0
    invoke-static {}, Lru/vtosters/lite/utils/SearchEngine;->values()[Lru/vtosters/lite/utils/SearchEngine;

    move-result-object v1

    array-length v1, v1

    if-ge v2, v1, :cond_1

    .line 73
    invoke-static {}, Lru/vtosters/lite/utils/SearchEngine;->values()[Lru/vtosters/lite/utils/SearchEngine;

    move-result-object v1

    aget-object v1, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 74
    iget v3, v1, Lru/vtosters/lite/utils/SearchEngine;->mIconRes:I

    const v4, 0x7f0806b5

    if-eq v3, v4, :cond_0

    .line 75
    new-instance v3, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;

    iget v4, v1, Lru/vtosters/lite/utils/SearchEngine;->mIconRes:I

    iget-object v1, v1, Lru/vtosters/lite/utils/SearchEngine;->mTitle:Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;-><init>(ILjava/lang/String;)V

    goto :goto_1

    .line 76
    :cond_0
    new-instance v3, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;

    .line 77
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Lru/vtosters/hooks/other/ThemesUtils;->recolorDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v1, v1, Lru/vtosters/lite/utils/SearchEngine;->mTitle:Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    :goto_1
    aput-object v3, p1, v2

    goto :goto_0

    .line 81
    :cond_1
    new-instance v1, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/MediaFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 82
    invoke-static {}, Lru/vtosters/lite/utils/SearchEngine;->getDefaultSearchEngine()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter;->setSelected(I)V

    .line 84
    new-instance p1, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/MediaFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lru/vtosters/lite/ui/fragments/MediaFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lru/vtosters/lite/ui/fragments/MediaFragment$$ExternalSyntheticLambda4;-><init>()V

    .line 85
    invoke-virtual {p1, v1, v2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f150019

    .line 55
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/MediaFragment;->addPreferencesFromResource(I)V

    const-string p1, "download_video"

    .line 57
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/MediaFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    new-instance v0, Lru/vtosters/lite/ui/fragments/MediaFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lru/vtosters/lite/ui/fragments/MediaFragment$$ExternalSyntheticLambda5;-><init>(Lru/vtosters/lite/ui/fragments/MediaFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "clearvideohistory"

    .line 62
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/MediaFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    new-instance v0, Lru/vtosters/lite/ui/fragments/MediaFragment$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lru/vtosters/lite/ui/fragments/MediaFragment$$ExternalSyntheticLambda6;-><init>(Lru/vtosters/lite/ui/fragments/MediaFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "select_photo_search_engine"

    .line 67
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/MediaFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    new-instance v0, Lru/vtosters/lite/ui/fragments/MediaFragment$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lru/vtosters/lite/ui/fragments/MediaFragment$$ExternalSyntheticLambda7;-><init>(Lru/vtosters/lite/ui/fragments/MediaFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "maxquality"

    .line 93
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/MediaFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->isEnableExternalOpening()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    const-string v0, "maxquality"

    .line 98
    invoke-virtual {p0, v0}, Lru/vtosters/lite/ui/fragments/MediaFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->isEnableExternalOpening()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 99
    invoke-super {p0, p1}, Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
