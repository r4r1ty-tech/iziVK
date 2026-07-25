.class public Lru/vtosters/lite/ui/fragments/VKPayFragment;
.super Lcom/vk/core/fragments/FragmentImpl;
.source "VKPayFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/vk/core/fragments/FragmentImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 10
    invoke-super {p0, p1}, Lcom/vk/core/fragments/FragmentImpl;->onCreate(Landroid/os/Bundle;)V

    .line 11
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VKPayFragment;->start()V

    return-void
.end method

.method public start()V
    .locals 2

    const-string v0, "https://vk.com/vkpay"

    .line 15
    invoke-static {v0}, Lru/vtosters/lite/ui/fragments/VKUIwrapper;->setLink(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lru/vtosters/lite/ui/fragments/VKPayFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lru/vtosters/lite/ui/fragments/VKUIwrapper;

    invoke-static {v0, v1}, Lru/vtosters/lite/utils/NavigatorUtils;->switchFragment(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method
