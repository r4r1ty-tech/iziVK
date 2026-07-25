.class Lcom/vk/im/ui/q/h/e/MentionsController$2;
.super Ljava/lang/Object;
.source "MentionsController.java"

# interfaces
.implements Lcom/vk/im/ui/components/dialog_mention/DialogMentionComponentCallback;


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

    .line 72
    iput-object p1, p0, Lcom/vk/im/ui/q/h/e/MentionsController$2;->this$0:Lcom/vk/im/ui/q/h/e/MentionsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/vk/im/engine/models/Member;Lcom/vk/im/engine/models/ProfilesInfo;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/vk/im/ui/q/h/e/MentionsController$2;->this$0:Lcom/vk/im/ui/q/h/e/MentionsController;

    invoke-static {v0}, Lcom/vk/im/ui/q/h/e/MentionsController;->-$$Nest$fgetmMentionsManager(Lcom/vk/im/ui/q/h/e/MentionsController;)Lcom/vk/im/ui/utils/j/MentionsManager;

    move-result-object v0

    sget-object v1, Lcom/vk/im/ui/formatters/MentionNameFormatter;->a:Lcom/vk/im/ui/formatters/MentionNameFormatter;

    invoke-virtual {v1, p1, p2}, Lcom/vk/im/ui/formatters/MentionNameFormatter;->a(Lcom/vk/im/engine/models/Member;Lcom/vk/im/engine/models/ProfilesInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/vk/im/ui/utils/j/MentionsManager;->a(Lcom/vk/im/engine/models/Member;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/vk/im/engine/models/Suggestion;)V
    .locals 1

    .line 80
    invoke-virtual {p1}, Lcom/vk/im/engine/models/Suggestion;->b()Lcom/vk/im/engine/models/EntityValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/im/engine/models/EntityValue;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/vk/im/engine/models/Suggestion;->b()Lcom/vk/im/engine/models/EntityValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vk/im/engine/models/EntityValue;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/vk/im/ui/q/h/e/MentionsController$2;->this$0:Lcom/vk/im/ui/q/h/e/MentionsController;

    invoke-virtual {p1}, Lcom/vk/im/ui/q/h/e/MentionsController;->i()V

    goto :goto_1

    .line 81
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/vk/im/ui/q/h/e/MentionsController$2;->this$0:Lcom/vk/im/ui/q/h/e/MentionsController;

    invoke-virtual {p1}, Lcom/vk/im/ui/q/h/e/MentionsController;->g()V

    :goto_1
    return-void
.end method
