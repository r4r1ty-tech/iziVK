.class Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$1;
.super Ljava/lang/Object;
.source "LibVKXClientImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->requestServiceInit(Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXAction;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;

.field final synthetic val$runAfterBind:Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXAction;


# direct methods
.method constructor <init>(Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$1;->this$0:Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;

    iput-object p2, p0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$1;->val$runAfterBind:Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 72
    iget-object p1, p0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$1;->this$0:Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;

    invoke-static {p2}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->asInterface(Landroid/os/IBinder;)Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    move-result-object p2

    invoke-static {p1, p2}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->-$$Nest$fputserviceInstance(Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)V

    .line 73
    iget-object p1, p0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$1;->this$0:Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;

    invoke-static {p1}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->-$$Nest$fgetserviceInstance(Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;)Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    move-result-object p1

    if-nez p1, :cond_0

    .line 75
    iget-object p1, p0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$1;->this$0:Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->-$$Nest$fputisBindFailed(Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;Z)V

    goto :goto_0

    .line 78
    :cond_0
    :try_start_0
    iget-object p1, p0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$1;->this$0:Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;

    invoke-static {p1}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->-$$Nest$fgetserviceInstance(Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;)Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    move-result-object p1

    invoke-interface {p1}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService;->getUserId()I

    move-result p1

    invoke-static {}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserId()I

    move-result p2

    if-eq p1, p2, :cond_1

    return-void

    .line 79
    :cond_1
    iget-object p1, p0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$1;->val$runAfterBind:Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXAction;

    iget-object p2, p0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$1;->this$0:Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;

    invoke-static {p2}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->-$$Nest$fgetserviceInstance(Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;)Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    move-result-object p2

    invoke-interface {p1, p2}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXAction;->run(Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 81
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 88
    iget-object p1, p0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$1;->this$0:Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->-$$Nest$fputserviceInstance(Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)V

    return-void
.end method
