.class public Lru/vtosters/hooks/ProfileMenuHook;
.super Ljava/lang/Object;
.source "ProfileMenuHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lcom/vk/profile/ui/components/CommunityFragmentActionsMenuBuilder;Lcom/vk/core/dialogs/actionspopup/ActionsPopup$b;)V
    .locals 0

    .line 10
    invoke-static {p0, p1}, Lru/vtosters/lite/ui/vkui/MenuBuilder;->injectAP(Lcom/vk/profile/ui/components/CommunityFragmentActionsMenuBuilder;Lcom/vk/core/dialogs/actionspopup/ActionsPopup$b;)V

    return-void
.end method

.method public static inject(Lcom/vk/profile/ui/components/ProfileFragmentActionsMenuBuilder;Lcom/vk/core/dialogs/actionspopup/ActionsPopup$b;)V
    .locals 0

    .line 14
    invoke-static {p0, p1}, Lru/vtosters/lite/ui/vkui/MenuBuilder;->injectAP(Lcom/vk/profile/ui/components/ProfileFragmentActionsMenuBuilder;Lcom/vk/core/dialogs/actionspopup/ActionsPopup$b;)V

    return-void
.end method
