.class Lcom/aefyr/tsg/g2/TelegramStickersService$2;
.super Ljava/lang/Object;
.source "TelegramStickersService.java"

# interfaces
.implements Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aefyr/tsg/g2/TelegramStickersService;->requestPackDownload(Ljava/lang/String;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

.field final synthetic val$isUpdate:Z

.field final synthetic val$newPack:Lcom/aefyr/tsg/g2/TelegramStickersPack;


# direct methods
.method constructor <init>(Lcom/aefyr/tsg/g2/TelegramStickersService;Lcom/aefyr/tsg/g2/TelegramStickersPack;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    iput-object p2, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->val$newPack:Lcom/aefyr/tsg/g2/TelegramStickersPack;

    iput-boolean p3, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->val$isUpdate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onGotPackInfo$2$com-aefyr-tsg-g2-TelegramStickersService$2(Lcom/aefyr/tsg/g2/TelegramStickersPack;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;)V
    .locals 1

    .line 256
    iget-object v0, p2, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;->title:Ljava/lang/String;

    iput-object v0, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->title:Ljava/lang/String;

    .line 257
    iget v0, p2, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;->stickersCount:I

    iput v0, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->stickersCount:I

    .line 258
    iget-object p2, p2, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;->version:Ljava/lang/String;

    iput-object p2, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->version:Ljava/lang/String;

    .line 259
    iget-object p2, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    invoke-static {p2}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$fgetpacks(Lcom/aefyr/tsg/g2/TelegramStickersService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p2, p1, v0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$mnotifyPackChanged(Lcom/aefyr/tsg/g2/TelegramStickersService;Lcom/aefyr/tsg/g2/TelegramStickersPack;I)V

    return-void
.end method

.method synthetic lambda$onPackDownloadError$1$com-aefyr-tsg-g2-TelegramStickersService$2(Lcom/aefyr/tsg/g2/TelegramStickersPack;Ljava/lang/Exception;Z)V
    .locals 2

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error while downloading pack "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TGStickersService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    if-nez p3, :cond_0

    .line 239
    iget-object p3, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    invoke-static {p3}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$fgetpacks(Lcom/aefyr/tsg/g2/TelegramStickersService;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p3

    .line 240
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    invoke-static {v0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$fgetpacks(Lcom/aefyr/tsg/g2/TelegramStickersService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    invoke-static {v0, p1, p3}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$mnotifyPackRemoved(Lcom/aefyr/tsg/g2/TelegramStickersService;Lcom/aefyr/tsg/g2/TelegramStickersPack;I)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 243
    iput p3, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->state:I

    .line 244
    iget-object p3, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    invoke-static {p3}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$fgetpacks(Lcom/aefyr/tsg/g2/TelegramStickersService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p3, p1, v0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$mnotifyPackChanged(Lcom/aefyr/tsg/g2/TelegramStickersService;Lcom/aefyr/tsg/g2/TelegramStickersPack;I)V

    .line 247
    :goto_0
    iget-object p3, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    invoke-static {p3, p1, p2}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$mnotifyPackDownloadError(Lcom/aefyr/tsg/g2/TelegramStickersService;Lcom/aefyr/tsg/g2/TelegramStickersPack;Ljava/lang/Exception;)V

    .line 248
    iget-object p2, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    invoke-static {p2}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$fgetcurrentlyDownloading(Lcom/aefyr/tsg/g2/TelegramStickersService;)Ljava/util/HashSet;

    move-result-object p2

    iget-object p1, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->id:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic lambda$onPackDownloaded$0$com-aefyr-tsg-g2-TelegramStickersService$2(Lcom/aefyr/tsg/g2/TelegramStickersPack;Z)V
    .locals 2

    const/4 v0, 0x0

    .line 216
    iput v0, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->state:I

    .line 217
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    invoke-static {v0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$fgetpacks(Lcom/aefyr/tsg/g2/TelegramStickersService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$mnotifyPackChanged(Lcom/aefyr/tsg/g2/TelegramStickersService;Lcom/aefyr/tsg/g2/TelegramStickersPack;I)V

    .line 218
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    invoke-static {v0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$fgetcurrentlyDownloading(Lcom/aefyr/tsg/g2/TelegramStickersService;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 219
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    invoke-static {v0, p1}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$msyncPack(Lcom/aefyr/tsg/g2/TelegramStickersService;Lcom/aefyr/tsg/g2/TelegramStickersPack;)V

    if-eqz p2, :cond_0

    .line 222
    iget-boolean p1, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->enabled:Z

    if-eqz p1, :cond_1

    .line 223
    iget-object p1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    invoke-static {p1}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$mnotifyActivePacksListChanged(Lcom/aefyr/tsg/g2/TelegramStickersService;)V

    goto :goto_0

    .line 225
    :cond_0
    iget-object p2, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    invoke-static {p2}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$fgetactivePacks(Lcom/aefyr/tsg/g2/TelegramStickersService;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object p1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    invoke-static {p1}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$mnotifyActivePacksListChanged(Lcom/aefyr/tsg/g2/TelegramStickersService;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onGotPackInfo(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;)V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    iget-object v1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->val$newPack:Lcom/aefyr/tsg/g2/TelegramStickersPack;

    new-instance v2, Lcom/aefyr/tsg/g2/TelegramStickersService$2$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, p1}, Lcom/aefyr/tsg/g2/TelegramStickersService$2$$ExternalSyntheticLambda1;-><init>(Lcom/aefyr/tsg/g2/TelegramStickersService$2;Lcom/aefyr/tsg/g2/TelegramStickersPack;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;)V

    invoke-static {v0, v2}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$mrunOnUiThread(Lcom/aefyr/tsg/g2/TelegramStickersService;Ljava/lang/Runnable;)V

    .line 262
    iget-object p1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    invoke-static {p1}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$fgetnotificationsHelper(Lcom/aefyr/tsg/g2/TelegramStickersService;)Lcom/aefyr/tsg/g2/NotificationsHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->val$newPack:Lcom/aefyr/tsg/g2/TelegramStickersPack;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/aefyr/tsg/g2/NotificationsHelper;->packDownloadUpdated(Lcom/aefyr/tsg/g2/TelegramStickersPack;I)V

    return-void
.end method

.method public onPackDownloadError(Ljava/lang/Exception;)V
    .locals 4

    .line 234
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    iget-object v1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->val$newPack:Lcom/aefyr/tsg/g2/TelegramStickersPack;

    iget-boolean v2, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->val$isUpdate:Z

    new-instance v3, Lcom/aefyr/tsg/g2/TelegramStickersService$2$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1, p1, v2}, Lcom/aefyr/tsg/g2/TelegramStickersService$2$$ExternalSyntheticLambda2;-><init>(Lcom/aefyr/tsg/g2/TelegramStickersService$2;Lcom/aefyr/tsg/g2/TelegramStickersPack;Ljava/lang/Exception;Z)V

    invoke-static {v0, v3}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$mrunOnUiThread(Lcom/aefyr/tsg/g2/TelegramStickersService;Ljava/lang/Runnable;)V

    .line 250
    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    invoke-static {v0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$fgetnotificationsHelper(Lcom/aefyr/tsg/g2/TelegramStickersService;)Lcom/aefyr/tsg/g2/NotificationsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->val$newPack:Lcom/aefyr/tsg/g2/TelegramStickersPack;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->val$isUpdate:Z

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/aefyr/tsg/g2/NotificationsHelper;->packDoneDownloading(Lcom/aefyr/tsg/g2/TelegramStickersPack;ZZLjava/lang/Exception;)V

    return-void
.end method

.method public onPackDownloaded(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;Z)V
    .locals 3

    .line 215
    iget-object p1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    iget-object p2, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->val$newPack:Lcom/aefyr/tsg/g2/TelegramStickersPack;

    iget-boolean v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->val$isUpdate:Z

    new-instance v1, Lcom/aefyr/tsg/g2/TelegramStickersService$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, v0}, Lcom/aefyr/tsg/g2/TelegramStickersService$2$$ExternalSyntheticLambda0;-><init>(Lcom/aefyr/tsg/g2/TelegramStickersService$2;Lcom/aefyr/tsg/g2/TelegramStickersPack;Z)V

    invoke-static {p1, v1}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$mrunOnUiThread(Lcom/aefyr/tsg/g2/TelegramStickersService;Ljava/lang/Runnable;)V

    .line 229
    iget-object p1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    invoke-static {p1}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$fgetnotificationsHelper(Lcom/aefyr/tsg/g2/TelegramStickersService;)Lcom/aefyr/tsg/g2/NotificationsHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->val$newPack:Lcom/aefyr/tsg/g2/TelegramStickersPack;

    iget-boolean v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->val$isUpdate:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, p2, v2, v0, v1}, Lcom/aefyr/tsg/g2/NotificationsHelper;->packDoneDownloading(Lcom/aefyr/tsg/g2/TelegramStickersPack;ZZLjava/lang/Exception;)V

    return-void
.end method

.method public onStickerDownloaded(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;III)V
    .locals 0

    add-int/lit8 p4, p4, -0x1

    .line 269
    iget-object p1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->val$newPack:Lcom/aefyr/tsg/g2/TelegramStickersPack;

    iget-object p1, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->emojis:Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 270
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 271
    :cond_0
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object p2, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->val$newPack:Lcom/aefyr/tsg/g2/TelegramStickersPack;

    iget-object p2, p2, Lcom/aefyr/tsg/g2/TelegramStickersPack;->emojis:Ljava/util/HashMap;

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object p1, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->this$0:Lcom/aefyr/tsg/g2/TelegramStickersService;

    invoke-static {p1}, Lcom/aefyr/tsg/g2/TelegramStickersService;->-$$Nest$fgetnotificationsHelper(Lcom/aefyr/tsg/g2/TelegramStickersService;)Lcom/aefyr/tsg/g2/NotificationsHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/aefyr/tsg/g2/TelegramStickersService$2;->val$newPack:Lcom/aefyr/tsg/g2/TelegramStickersPack;

    invoke-virtual {p1, p2, p5}, Lcom/aefyr/tsg/g2/NotificationsHelper;->packDownloadUpdated(Lcom/aefyr/tsg/g2/TelegramStickersPack;I)V

    return-void
.end method
