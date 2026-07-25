.class public Lru/vtosters/lite/ui/dialogs/RoundingSeekbarDialog;
.super Ljava/lang/Object;
.source "RoundingSeekbarDialog.java"


# static fields
.field private static final roundOptions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "\u0417\u0430\u043a\u0440\u0443\u0433\u043b\u0435\u043d\u043d\u044b\u0435"

    const-string v1, "\u041a\u0432\u0430\u0434\u0440\u0430\u0442\u043d\u044b\u0435"

    const-string v2, "\u041a\u0440\u0443\u0433\u043b\u044b\u0435"

    .line 10
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/ui/dialogs/RoundingSeekbarDialog;->roundOptions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dialog(Landroid/content/Context;)V
    .locals 2

    .line 15
    new-instance v0, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1216e9

    .line 16
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setCancelable(Z)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p0

    sget-object v0, Lru/vtosters/lite/ui/dialogs/RoundingSeekbarDialog;->roundOptions:[Ljava/lang/String;

    new-instance v1, Lru/vtosters/lite/ui/dialogs/RoundingSeekbarDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lru/vtosters/lite/ui/dialogs/RoundingSeekbarDialog$$ExternalSyntheticLambda0;-><init>()V

    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private static getRoundingValue(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic lambda$dialog$0(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 19
    invoke-static {p1}, Lru/vtosters/lite/ui/dialogs/RoundingSeekbarDialog;->getRoundingValue(I)I

    move-result p0

    .line 21
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pic_rounding"

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 22
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->restartApplicationWithTimer()V

    return-void
.end method
