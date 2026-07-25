.class public Lru/vtosters/lite/utils/NavigatorUtils;
.super Ljava/lang/Object;
.source "NavigatorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static switchFragment(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/vk/core/fragments/FragmentImpl;",
            ">;)V"
        }
    .end annotation

    .line 15
    new-instance v0, Lcom/vk/navigation/Navigator;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/vk/navigation/Navigator;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 16
    new-instance p1, Lcom/vtosters/lite/TabletDialogActivity$b;

    invoke-direct {p1}, Lcom/vtosters/lite/TabletDialogActivity$b;-><init>()V

    invoke-static {v0, p1}, Lcom/vk/extensions/NavigatorExt;->a(Lcom/vk/navigation/Navigator;Lcom/vk/navigation/Navigator$a;)Lcom/vk/navigation/Navigator;

    .line 17
    invoke-virtual {v0, p0}, Lcom/vk/navigation/Navigator;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static switchFragmentNavigator(Landroid/content/Context;Lcom/vk/navigation/Navigator;)V
    .locals 1

    .line 22
    invoke-virtual {p1, p0}, Lcom/vk/navigation/Navigator;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static switchToSettings(Landroid/content/Context;)V
    .locals 2

    .line 31
    new-instance v0, Lcom/vk/navigation/Navigator;

    const-class v1, Lru/vtosters/lite/ui/fragments/VTSettings;

    invoke-direct {v0, v1}, Lcom/vk/navigation/Navigator;-><init>(Ljava/lang/Class;)V

    .line 32
    invoke-virtual {v0, p0}, Lcom/vk/navigation/Navigator;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x8000

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
