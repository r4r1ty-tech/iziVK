.class Lcom/vk/im/ui/q/h/e/MentionsController$1;
.super Ljava/lang/Object;
.source "MentionsController.java"

# interfaces
.implements Lcom/vk/im/ui/utils/j/MentionSuggestionsSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/im/ui/q/h/e/MentionsController;-><init>(Lcom/vk/im/engine/ImEngine;ILandroid/view/View;Lcom/vk/im/ui/q/h/e/MentionsController$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/im/ui/q/h/e/MentionsController;


# direct methods
.method constructor <init>(Lcom/vk/im/ui/q/h/e/MentionsController;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/vk/im/ui/q/h/e/MentionsController$1;->this$0:Lcom/vk/im/ui/q/h/e/MentionsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/vk/im/ui/q/h/e/MentionsController$1;->this$0:Lcom/vk/im/ui/q/h/e/MentionsController;

    invoke-static {v0}, Lcom/vk/im/ui/q/h/e/MentionsController;->-$$Nest$fgetstate(Lcom/vk/im/ui/q/h/e/MentionsController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/vk/im/ui/q/h/e/MentionsController$1;->this$0:Lcom/vk/im/ui/q/h/e/MentionsController;

    invoke-static {v0}, Lcom/vk/im/ui/q/h/e/MentionsController;->-$$Nest$fgetmCoordinatorLayout(Lcom/vk/im/ui/q/h/e/MentionsController;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/vk/extensions/ViewExtKt;->i(Landroid/view/View;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/vk/im/ui/q/h/e/MentionsController$1;->this$0:Lcom/vk/im/ui/q/h/e/MentionsController;

    invoke-virtual {v0}, Lcom/vk/im/ui/q/h/e/MentionsController;->c()Lcom/vk/im/ui/q/h/e/MentionsController$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/vk/im/ui/q/h/e/MentionsController$b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/vk/im/ui/q/h/e/MentionsController$1;->this$0:Lcom/vk/im/ui/q/h/e/MentionsController;

    invoke-static {v0}, Lcom/vk/im/ui/q/h/e/MentionsController;->-$$Nest$fgetmDialogMentionComponent(Lcom/vk/im/ui/q/h/e/MentionsController;)Lcom/vk/im/ui/components/dialog_mention/DialogMentionComponent;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/im/ui/q/h/e/MentionsController$1;->this$0:Lcom/vk/im/ui/q/h/e/MentionsController;

    invoke-virtual {v1}, Lcom/vk/im/ui/q/h/e/MentionsController;->d()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/vk/im/ui/components/dialog_mention/DialogMentionComponent;->a(ILjava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/vk/im/ui/q/h/e/MentionsController$1;->this$0:Lcom/vk/im/ui/q/h/e/MentionsController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/vk/im/ui/q/h/e/MentionsController;->-$$Nest$fpute(Lcom/vk/im/ui/q/h/e/MentionsController;Z)V

    .line 61
    iget-object p1, p0, Lcom/vk/im/ui/q/h/e/MentionsController$1;->this$0:Lcom/vk/im/ui/q/h/e/MentionsController;

    invoke-virtual {p1}, Lcom/vk/im/ui/q/h/e/MentionsController;->j()V

    return v0
.end method

.method public b()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/vk/im/ui/q/h/e/MentionsController$1;->this$0:Lcom/vk/im/ui/q/h/e/MentionsController;

    invoke-static {v0}, Lcom/vk/im/ui/q/h/e/MentionsController;->-$$Nest$fgetmDialogMentionComponent(Lcom/vk/im/ui/q/h/e/MentionsController;)Lcom/vk/im/ui/components/dialog_mention/DialogMentionComponent;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vk/im/ui/components/dialog_mention/DialogMentionComponent;->a(ILjava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/vk/im/ui/q/h/e/MentionsController$1;->this$0:Lcom/vk/im/ui/q/h/e/MentionsController;

    invoke-virtual {v0}, Lcom/vk/im/ui/q/h/e/MentionsController;->g()V

    return-void
.end method
