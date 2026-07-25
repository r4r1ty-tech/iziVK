.class public Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder;
.super Ljava/lang/Object;
.source "VBottomSheetBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder$VBSContent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$show$0(Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder$VBSContent;)V
    .locals 2

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object p0, p0, Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder$VBSContent;->button:Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder$VBSContent$VBSButton;

    iget-object p0, p0, Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder$VBSContent$VBSButton;->action:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static show(Landroid/app/Activity;Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder$VBSContent;Ljava/lang/String;)V
    .locals 2

    .line 11
    new-instance v0, Lru/vtosters/lite/ui/vkui/ModalBottomSheetWrapper;

    invoke-direct {v0, p0}, Lru/vtosters/lite/ui/vkui/ModalBottomSheetWrapper;-><init>(Landroid/app/Activity;)V

    .line 13
    iget-object p0, p1, Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder$VBSContent;->view:Landroid/view/View;

    invoke-virtual {v0, p0}, Lru/vtosters/lite/ui/vkui/ModalBottomSheetWrapper;->setView(Landroid/view/View;)Ljava/lang/Object;

    .line 15
    iget-object p0, p1, Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder$VBSContent;->title:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lru/vtosters/lite/ui/vkui/ModalBottomSheetWrapper;->setTitle(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    iget-object p0, p1, Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder$VBSContent;->button:Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder$VBSContent$VBSButton;

    iget-object p0, p0, Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder$VBSContent$VBSButton;->title:Ljava/lang/String;

    new-instance v1, Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder$$ExternalSyntheticLambda0;-><init>(Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder$VBSContent;)V

    invoke-virtual {v0, p0, v1}, Lru/vtosters/lite/ui/vkui/ModalBottomSheetWrapper;->setPositiveButton(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 22
    invoke-virtual {v0, p2}, Lru/vtosters/lite/ui/vkui/ModalBottomSheetWrapper;->show(Ljava/lang/String;)Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet;

    return-void
.end method
