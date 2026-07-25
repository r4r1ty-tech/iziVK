.class public Lru/vtosters/lite/ui/dialogs/Translate;
.super Ljava/lang/Object;
.source "Translate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/vtosters/lite/ui/dialogs/Translate$DelegateExecutor;
    }
.end annotation


# static fields
.field private static final ASYNC_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final MAIN_EXECUTOR:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/ui/dialogs/Translate;->ASYNC_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 22
    new-instance v0, Lru/vtosters/lite/ui/dialogs/Translate$DelegateExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/vtosters/lite/ui/dialogs/Translate$DelegateExecutor;-><init>(Lru/vtosters/lite/ui/dialogs/Translate$DelegateExecutor-IA;)V

    sput-object v0, Lru/vtosters/lite/ui/dialogs/Translate;->MAIN_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$showDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 43
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$showDialog$3(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "clipboard"

    .line 45
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    const-string p2, "Copied Text"

    .line 46
    invoke-static {p2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 47
    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const p0, 0x7f121592

    .line 48
    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$showTranslatedText$0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lru/vtosters/lite/ui/dialogs/Translate;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$showTranslatedText$1(Lru/vtosters/lite/translators/BaseTranslator;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 30
    :try_start_0
    invoke-virtual {p0, p1}, Lru/vtosters/lite/translators/BaseTranslator;->getTranslation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 31
    sget-object p1, Lru/vtosters/lite/ui/dialogs/Translate;->MAIN_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v0, Lru/vtosters/lite/ui/dialogs/Translate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p0}, Lru/vtosters/lite/ui/dialogs/Translate$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Translate"

    .line 33
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static showDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 39
    new-instance v0, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12178d

    .line 40
    invoke-virtual {v0, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(I)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/ui/dialogs/Translate$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lru/vtosters/lite/ui/dialogs/Translate$$ExternalSyntheticLambda1;-><init>()V

    const v2, 0x7f1201c6

    .line 42
    invoke-virtual {v0, v2, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/ui/dialogs/Translate$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lru/vtosters/lite/ui/dialogs/Translate$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p0, 0x7f120289

    .line 44
    invoke-virtual {v0, p0, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p0

    .line 50
    invoke-virtual {p0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public static showTranslatedText(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 26
    invoke-static {}, Lru/vtosters/lite/translators/BaseTranslator;->getInstance()Lru/vtosters/lite/translators/BaseTranslator;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 28
    :cond_0
    sget-object v1, Lru/vtosters/lite/ui/dialogs/Translate;->ASYNC_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lru/vtosters/lite/ui/dialogs/Translate$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0, p1, p0}, Lru/vtosters/lite/ui/dialogs/Translate$$ExternalSyntheticLambda3;-><init>(Lru/vtosters/lite/translators/BaseTranslator;Ljava/lang/String;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
