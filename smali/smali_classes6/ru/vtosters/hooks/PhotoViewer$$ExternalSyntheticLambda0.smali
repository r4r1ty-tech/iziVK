.class public final synthetic Lru/vtosters/hooks/PhotoViewer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/b/Functions;


# instance fields
.field public final synthetic f$0:Lcom/vk/dto/common/AttachmentWithMedia;


# direct methods
.method public synthetic constructor <init>(Lcom/vk/dto/common/AttachmentWithMedia;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/hooks/PhotoViewer$$ExternalSyntheticLambda0;->f$0:Lcom/vk/dto/common/AttachmentWithMedia;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lru/vtosters/hooks/PhotoViewer$$ExternalSyntheticLambda0;->f$0:Lcom/vk/dto/common/AttachmentWithMedia;

    invoke-static {v0}, Lru/vtosters/hooks/PhotoViewer;->lambda$addMenuItems$0(Lcom/vk/dto/common/AttachmentWithMedia;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
