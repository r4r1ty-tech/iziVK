.class public Lru/vtosters/hooks/PhotoViewer;
.super Ljava/lang/Object;
.source "PhotoViewer.java"


# static fields
.field static client:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    invoke-static {}, Lru/vtosters/lite/di/singleton/VtOkHttpClient;->getInstance()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lru/vtosters/hooks/PhotoViewer;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMenuItems(Lcom/vk/dto/common/AttachmentWithMedia;Lcom/vk/core/dialogs/actionspopup/ActionsPopup$b;IZ)V
    .locals 3

    const p2, 0x7f0803ff

    .line 45
    invoke-static {p2}, Lru/vtosters/lite/themes/utils/RecolorUtils;->fixActionMenuIcons(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    new-instance v0, Lru/vtosters/hooks/PhotoViewer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lru/vtosters/hooks/PhotoViewer$$ExternalSyntheticLambda0;-><init>(Lcom/vk/dto/common/AttachmentWithMedia;)V

    const v1, 0x7f120289

    const/4 v2, 0x0

    .line 43
    invoke-virtual {p1, v1, p3, v2, v0}, Lcom/vk/core/dialogs/actionspopup/ActionsPopup$b;->a(ILandroid/graphics/drawable/Drawable;ZLkotlin/jvm/b/Functions;)Lcom/vk/core/dialogs/actionspopup/ActionsPopup$b;

    move-result-object p1

    const p3, 0x7f0805b4

    .line 53
    invoke-static {p3}, Lru/vtosters/lite/themes/utils/RecolorUtils;->fixActionMenuIcons(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    new-instance v0, Lru/vtosters/hooks/PhotoViewer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lru/vtosters/hooks/PhotoViewer$$ExternalSyntheticLambda1;-><init>(Lcom/vk/dto/common/AttachmentWithMedia;)V

    const v1, 0x7f121731

    .line 51
    invoke-virtual {p1, v1, p3, v2, v0}, Lcom/vk/core/dialogs/actionspopup/ActionsPopup$b;->a(ILandroid/graphics/drawable/Drawable;ZLkotlin/jvm/b/Functions;)Lcom/vk/core/dialogs/actionspopup/ActionsPopup$b;

    move-result-object p1

    .line 61
    invoke-static {p2}, Lru/vtosters/lite/themes/utils/RecolorUtils;->fixActionMenuIcons(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    new-instance p3, Lru/vtosters/hooks/PhotoViewer$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lru/vtosters/hooks/PhotoViewer$$ExternalSyntheticLambda2;-><init>(Lcom/vk/dto/common/AttachmentWithMedia;)V

    const v0, 0x7f121593

    .line 59
    invoke-virtual {p1, v0, p2, v2, p3}, Lcom/vk/core/dialogs/actionspopup/ActionsPopup$b;->a(ILandroid/graphics/drawable/Drawable;ZLkotlin/jvm/b/Functions;)Lcom/vk/core/dialogs/actionspopup/ActionsPopup$b;

    move-result-object p1

    const p2, 0x7f080523

    .line 69
    invoke-static {p2}, Lru/vtosters/lite/themes/utils/RecolorUtils;->fixActionMenuIcons(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    new-instance p3, Lru/vtosters/hooks/PhotoViewer$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lru/vtosters/hooks/PhotoViewer$$ExternalSyntheticLambda3;-><init>(Lcom/vk/dto/common/AttachmentWithMedia;)V

    const p0, 0x7f1216d4

    .line 67
    invoke-virtual {p1, p0, p2, v2, p3}, Lcom/vk/core/dialogs/actionspopup/ActionsPopup$b;->a(ILandroid/graphics/drawable/Drawable;ZLkotlin/jvm/b/Functions;)Lcom/vk/core/dialogs/actionspopup/ActionsPopup$b;

    return-void
.end method

.method private static copyImage(Lcom/vk/dto/common/AttachmentWithMedia;)V
    .locals 3

    .line 91
    new-instance v0, Lokhttp3/Request$a;

    invoke-direct {v0}, Lokhttp3/Request$a;-><init>()V

    .line 92
    invoke-static {p0}, Lru/vtosters/hooks/PhotoViewer;->getImageUrlFromAttachment(Lcom/vk/dto/common/AttachmentWithMedia;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$a;->b(Ljava/lang/String;)Lokhttp3/Request$a;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lokhttp3/Request$a;->a()Lokhttp3/Request;

    move-result-object v0

    .line 94
    sget-object v1, Lcom/vk/core/network/Network$ClientType;->CLIENT_API:Lcom/vk/core/network/Network$ClientType;

    invoke-static {v1}, Lcom/vk/core/network/Network;->b(Lcom/vk/core/network/Network$ClientType;)Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    new-instance v2, Lru/vtosters/hooks/PhotoViewer$1;

    invoke-direct {v2, p0, v0}, Lru/vtosters/hooks/PhotoViewer$1;-><init>(Lcom/vk/dto/common/AttachmentWithMedia;Lokhttp3/Request;)V

    invoke-interface {v1, v2}, Lokhttp3/Call;->a(Lokhttp3/Callback;)V

    return-void
.end method

.method private static copyImageUrl(Lcom/vk/dto/common/AttachmentWithMedia;)V
    .locals 2

    .line 141
    invoke-static {p0}, Lru/vtosters/hooks/PhotoViewer;->getImageUrlFromAttachment(Lcom/vk/dto/common/AttachmentWithMedia;)Ljava/lang/String;

    move-result-object p0

    .line 142
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 143
    :cond_0
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "vk_photo_url"

    .line 144
    invoke-static {v1, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 145
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f121592

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static getImageUrlFromAttachment(Lcom/vk/dto/common/AttachmentWithMedia;)Ljava/lang/String;
    .locals 5

    .line 161
    instance-of v0, p0, Lcom/vtosters/lite/attachments/PhotoAttachment;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 162
    check-cast p0, Lcom/vtosters/lite/attachments/PhotoAttachment;

    iget-object p0, p0, Lcom/vtosters/lite/attachments/PhotoAttachment;->D:Lcom/vk/dto/photo/Photo;

    iget-object p0, p0, Lcom/vk/dto/photo/Photo;->Q:Lcom/vk/dto/common/Image;

    invoke-virtual {p0}, Lcom/vk/dto/common/Image;->t1()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 163
    :cond_0
    instance-of v0, p0, Lcom/vtosters/lite/attachments/DocumentAttachment;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/vtosters/lite/attachments/DocumentAttachment;

    iget-object v0, p0, Lcom/vtosters/lite/attachments/DocumentAttachment;->J:Lcom/vk/dto/common/Image;

    if-eqz v0, :cond_4

    .line 164
    iget-object p0, p0, Lcom/vtosters/lite/attachments/DocumentAttachment;->J:Lcom/vk/dto/common/Image;

    invoke-virtual {p0}, Lcom/vk/dto/common/Image;->t1()Ljava/util/List;

    move-result-object p0

    .line 170
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    .line 172
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/dto/common/ImageSize;

    const/4 v1, 0x1

    .line 173
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 174
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vk/dto/common/ImageSize;

    .line 175
    invoke-virtual {v0}, Lcom/vk/dto/common/ImageSize;->t1()I

    move-result v3

    invoke-virtual {v2}, Lcom/vk/dto/common/ImageSize;->t1()I

    move-result v4

    if-ge v3, v4, :cond_2

    move-object v0, v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 177
    :cond_3
    iget-object p0, v0, Lcom/vk/dto/common/ImageSize;->url:Ljava/lang/String;

    return-object p0

    :cond_4
    const p0, 0x7f1216e6

    .line 166
    invoke-static {p0}, Lcom/vk/core/util/ToastUtils;->a(I)V

    return-object v1
.end method

.method public static interceptClick(Lcom/vk/dto/common/AttachmentWithMedia;Landroid/view/MenuItem;Landroid/view/View;)Z
    .locals 0

    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 81
    :sswitch_0
    invoke-static {p0}, Lru/vtosters/hooks/PhotoViewer;->copyImage(Lcom/vk/dto/common/AttachmentWithMedia;)V

    goto :goto_0

    .line 82
    :sswitch_1
    invoke-static {p0}, Lru/vtosters/hooks/PhotoViewer;->searchImageWithUrl(Lcom/vk/dto/common/AttachmentWithMedia;)V

    goto :goto_0

    .line 84
    :sswitch_2
    invoke-static {p0}, Lru/vtosters/hooks/PhotoViewer;->getImageUrlFromAttachment(Lcom/vk/dto/common/AttachmentWithMedia;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/hooks/PhotoViewer;->openUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :sswitch_3
    invoke-static {p0}, Lru/vtosters/hooks/PhotoViewer;->copyImageUrl(Lcom/vk/dto/common/AttachmentWithMedia;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a1011 -> :sswitch_3
        0x7f0a1019 -> :sswitch_2
        0x7f0a101f -> :sswitch_1
        0x7f0a1026 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic lambda$addMenuItems$0(Lcom/vk/dto/common/AttachmentWithMedia;)Lkotlin/Unit;
    .locals 0

    .line 48
    invoke-static {p0}, Lru/vtosters/hooks/PhotoViewer;->copyImage(Lcom/vk/dto/common/AttachmentWithMedia;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$addMenuItems$1(Lcom/vk/dto/common/AttachmentWithMedia;)Lkotlin/Unit;
    .locals 0

    .line 56
    invoke-static {p0}, Lru/vtosters/hooks/PhotoViewer;->searchImageWithUrl(Lcom/vk/dto/common/AttachmentWithMedia;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$addMenuItems$2(Lcom/vk/dto/common/AttachmentWithMedia;)Lkotlin/Unit;
    .locals 0

    .line 64
    invoke-static {p0}, Lru/vtosters/hooks/PhotoViewer;->copyImageUrl(Lcom/vk/dto/common/AttachmentWithMedia;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$addMenuItems$3(Lcom/vk/dto/common/AttachmentWithMedia;)Lkotlin/Unit;
    .locals 0

    .line 72
    invoke-static {p0}, Lru/vtosters/hooks/PhotoViewer;->getImageUrlFromAttachment(Lcom/vk/dto/common/AttachmentWithMedia;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/hooks/PhotoViewer;->openUrl(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$searchImageWithUrl$4(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 131
    invoke-static {}, Lru/vtosters/lite/utils/SearchEngine;->values()[Lru/vtosters/lite/utils/SearchEngine;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-virtual {p1, p0}, Lru/vtosters/lite/utils/SearchEngine;->buildSearchUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/hooks/PhotoViewer;->openUrl(Ljava/lang/String;)V

    return-void
.end method

.method private static openUrl(Ljava/lang/String;)V
    .locals 2

    .line 149
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "PhotoViewer"

    const-string v0, "url is null or empty"

    .line 150
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 153
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p0, 0x10000000

    .line 154
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p0

    .line 155
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static searchImageWithUrl(Lcom/vk/dto/common/AttachmentWithMedia;)V
    .locals 3

    .line 123
    invoke-static {p0}, Lru/vtosters/hooks/PhotoViewer;->getImageUrlFromAttachment(Lcom/vk/dto/common/AttachmentWithMedia;)Ljava/lang/String;

    move-result-object p0

    .line 124
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-static {}, Lru/vtosters/lite/utils/SearchEngine;->getDefaultSearchEngine()I

    move-result v0

    if-gez v0, :cond_2

    .line 127
    invoke-static {}, Lru/vtosters/lite/utils/SearchEngine;->values()[Lru/vtosters/lite/utils/SearchEngine;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 128
    :goto_0
    invoke-static {}, Lru/vtosters/lite/utils/SearchEngine;->values()[Lru/vtosters/lite/utils/SearchEngine;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 129
    invoke-static {}, Lru/vtosters/lite/utils/SearchEngine;->values()[Lru/vtosters/lite/utils/SearchEngine;

    move-result-object v2

    aget-object v2, v2, v1

    iget-object v2, v2, Lru/vtosters/lite/utils/SearchEngine;->mTitle:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_1
    new-instance v1, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lru/vtosters/hooks/PhotoViewer$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lru/vtosters/hooks/PhotoViewer$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v1, v0, v2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p0

    .line 132
    invoke-virtual {p0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_1

    .line 135
    :cond_2
    invoke-static {}, Lru/vtosters/lite/utils/SearchEngine;->values()[Lru/vtosters/lite/utils/SearchEngine;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lru/vtosters/lite/utils/SearchEngine;->setDefaultSearchEngine(I)V

    .line 136
    :cond_3
    invoke-static {}, Lru/vtosters/lite/utils/SearchEngine;->values()[Lru/vtosters/lite/utils/SearchEngine;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0, p0}, Lru/vtosters/lite/utils/SearchEngine;->buildSearchUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/hooks/PhotoViewer;->openUrl(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
