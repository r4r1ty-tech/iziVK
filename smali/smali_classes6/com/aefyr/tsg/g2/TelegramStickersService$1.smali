.class Lcom/aefyr/tsg/g2/TelegramStickersService$1;
.super Ljava/lang/Object;
.source "TelegramStickersService.java"

# interfaces
.implements Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper$PacksLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aefyr/tsg/g2/TelegramStickersService;->updatePacks(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

.field final synthetic val$notify:Z


# direct methods
.method constructor <init>(Lcom/aefyr/tsg/g2/TelegramStickersService;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$1;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    iput-boolean p2, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$1;->val$notify:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onPackLoaded$0$com-aefyr-tsg-g2-TelegramStickersService$1(Lcom/aefyr/tsg/g2/TelegramStickersPack;Z)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$1;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    invoke-static {v0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$fgetpacks(Lcom/aefyr/tsg/g2/TelegramStickersService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-boolean v0, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->enabled:Z

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$1;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    invoke-static {v0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$fgetactivePacks(Lcom/aefyr/tsg/g2/TelegramStickersService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$1;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    invoke-static {v0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$fgetinactivePacks(Lcom/aefyr/tsg/g2/TelegramStickersService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz p2, :cond_1

    .line 78
    iget-object p2, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$1;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    invoke-static {p2}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$fgetpacks(Lcom/aefyr/tsg/g2/TelegramStickersService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, p1, v0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$mnotifyPackAdded(Lcom/aefyr/tsg/g2/TelegramStickersService;Lcom/aefyr/tsg/g2/TelegramStickersPack;I)V

    :cond_1
    return-void
.end method

.method public onAllPacksLoaded(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/aefyr/tsg/g2/TelegramStickersPack;",
            ">;)V"
        }
    .end annotation

    .line 84
    iget-object p1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$1;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$fputready(Lcom/aefyr/tsg/g2/TelegramStickersService;Z)V

    .line 86
    iget-boolean p1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$1;->val$notify:Z

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$1;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    invoke-static {p1}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$mnotifyActivePacksListChanged(Lcom/aefyr/tsg/g2/TelegramStickersService;)V

    .line 88
    iget-object p1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$1;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    invoke-static {p1}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$mnotifyInactivePacksListChanged(Lcom/aefyr/tsg/g2/TelegramStickersService;)V

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$1;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    invoke-static {v0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$fgetqueuedTasks(Lcom/aefyr/tsg/g2/TelegramStickersService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "Packs list loaded, running %d queued tasks..."

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "TGStickersService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_0
    iget-object p1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$1;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    invoke-static {p1}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$fgetqueuedTasks(Lcom/aefyr/tsg/g2/TelegramStickersService;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 93
    iget-object p1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$1;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    invoke-static {p1}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$fgetqueuedTasks(Lcom/aefyr/tsg/g2/TelegramStickersService;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPackLoaded(Lcom/aefyr/tsg/g2/TelegramStickersPack;)V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$1;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    iget-boolean v1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$1;->val$notify:Z

    new-instance v2, Lcom/aefyr/tsg/g2/TelegramStickersService$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v1}, Lcom/aefyr/tsg/g2/TelegramStickersService$1$$ExternalSyntheticLambda0;-><init>(Lcom/aefyr/tsg/g2/TelegramStickersService$1;Lcom/aefyr/tsg/g2/TelegramStickersPack;Z)V

    invoke-static {v0, v2}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$mrunOnUiThread(Lcom/aefyr/tsg/g2/TelegramStickersService;Ljava/lang/Runnable;)V

    return-void
.end method
