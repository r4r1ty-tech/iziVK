.class public final synthetic Lru/vtosters/lite/downloaders/VideoDownloader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lcom/vk/dto/common/VideoFile;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/vk/dto/common/VideoFile;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/downloaders/VideoDownloader$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-object p2, p0, Lru/vtosters/lite/downloaders/VideoDownloader$$ExternalSyntheticLambda0;->f$1:Lcom/vk/dto/common/VideoFile;

    iput-object p3, p0, Lru/vtosters/lite/downloaders/VideoDownloader$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lru/vtosters/lite/downloaders/VideoDownloader$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-object v1, p0, Lru/vtosters/lite/downloaders/VideoDownloader$$ExternalSyntheticLambda0;->f$1:Lcom/vk/dto/common/VideoFile;

    iget-object v2, p0, Lru/vtosters/lite/downloaders/VideoDownloader$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    invoke-static {v0, v1, v2, p1, p2}, Lru/vtosters/lite/downloaders/VideoDownloader;->lambda$downloadVideo$0(Ljava/util/List;Lcom/vk/dto/common/VideoFile;Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method
