.class public Lru/vtosters/lite/ui/vkui/ModalBottomSheetWrapper;
.super Ljava/lang/Object;
.source "ModalBottomSheetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mBottomSheet:Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet;

.field public final mBuilder:Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;

    invoke-direct {v0, p1}, Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/vtosters/lite/ui/vkui/ModalBottomSheetWrapper;->mBuilder:Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;

    return-void
.end method

.method static synthetic lambda$setClickableMessage$0(Ljava/lang/Runnable;I)V
    .locals 0

    .line 24
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$setPositiveButton$1(Ljava/lang/Runnable;I)V
    .locals 0

    .line 32
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 52
    iget-object v0, p0, Lru/vtosters/lite/ui/vkui/ModalBottomSheetWrapper;->mBottomSheet:Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet;

    invoke-virtual {v0}, Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet;->dismiss()V

    return-void
.end method

.method public setClickableMessage(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ")TT;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lru/vtosters/lite/ui/vkui/ModalBottomSheetWrapper;->mBuilder:Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;

    new-instance v1, Lru/vtosters/lite/ui/vkui/ModalBottomSheetWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lru/vtosters/lite/ui/vkui/ModalBottomSheetWrapper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1, v1}, Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;->a(Ljava/lang/String;Lcom/vk/core/dialogs/bottomsheet/ModalDialogInterface$e;)Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ")TT;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lru/vtosters/lite/ui/vkui/ModalBottomSheetWrapper;->mBuilder:Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;

    new-instance v1, Lru/vtosters/lite/ui/vkui/ModalBottomSheetWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lru/vtosters/lite/ui/vkui/ModalBottomSheetWrapper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1, v1}, Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;->a(Ljava/lang/String;Lcom/vk/core/dialogs/bottomsheet/ModalDialogInterface$e;)Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lru/vtosters/lite/ui/vkui/ModalBottomSheetWrapper;->mBuilder:Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;

    invoke-virtual {v0, p1}, Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;->d(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;

    return-object p0
.end method

.method public setView(Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lru/vtosters/lite/ui/vkui/ModalBottomSheetWrapper;->mBuilder:Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;

    invoke-virtual {v0, p1}, Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;->a(Landroid/view/View;)Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;

    return-object p0
.end method

.method public show(Ljava/lang/String;)Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet;
    .locals 1

    .line 42
    iget-object v0, p0, Lru/vtosters/lite/ui/vkui/ModalBottomSheetWrapper;->mBuilder:Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;

    invoke-virtual {v0, p1}, Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;->a(Ljava/lang/String;)Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet;

    move-result-object p1

    return-object p1
.end method

.method public show(Ljava/lang/String;Z)Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet;
    .locals 1

    .line 46
    iget-object v0, p0, Lru/vtosters/lite/ui/vkui/ModalBottomSheetWrapper;->mBuilder:Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;

    invoke-virtual {v0, p1}, Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;->a(Ljava/lang/String;)Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet;

    move-result-object p1

    iput-object p1, p0, Lru/vtosters/lite/ui/vkui/ModalBottomSheetWrapper;->mBottomSheet:Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet;

    .line 47
    invoke-virtual {p1, p2}, Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet;->setCancelable(Z)V

    .line 48
    iget-object p1, p0, Lru/vtosters/lite/ui/vkui/ModalBottomSheetWrapper;->mBottomSheet:Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet;

    return-object p1
.end method
