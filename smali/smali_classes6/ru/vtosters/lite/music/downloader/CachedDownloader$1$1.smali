.class Lru/vtosters/lite/music/downloader/CachedDownloader$1$1;
.super Ljava/lang/Object;
.source "CachedDownloader.java"

# interfaces
.implements Lru/vtosters/lite/music/interfaces/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/vtosters/lite/music/downloader/CachedDownloader$1;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/vtosters/lite/music/downloader/CachedDownloader$1;


# direct methods
.method constructor <init>(Lru/vtosters/lite/music/downloader/CachedDownloader$1;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lru/vtosters/lite/music/downloader/CachedDownloader$1$1;->this$1:Lru/vtosters/lite/music/downloader/CachedDownloader$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lru/vtosters/lite/music/downloader/CachedDownloader$1$1;->this$1:Lru/vtosters/lite/music/downloader/CachedDownloader$1;

    iget-object v0, v0, Lru/vtosters/lite/music/downloader/CachedDownloader$1;->val$callback:Lru/vtosters/lite/music/interfaces/Callback;

    invoke-interface {v0, p1}, Lru/vtosters/lite/music/interfaces/Callback;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onProgress(I)V
    .locals 0

    return-void
.end method

.method public onSizeReceived(JJ)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method
