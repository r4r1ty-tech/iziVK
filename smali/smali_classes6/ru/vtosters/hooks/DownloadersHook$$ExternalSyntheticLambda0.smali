.class public final synthetic Lru/vtosters/hooks/DownloadersHook$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/vk/dto/stories/model/StoryEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/vk/dto/stories/model/StoryEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/hooks/DownloadersHook$$ExternalSyntheticLambda0;->f$0:Lcom/vk/dto/stories/model/StoryEntry;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lru/vtosters/hooks/DownloadersHook$$ExternalSyntheticLambda0;->f$0:Lcom/vk/dto/stories/model/StoryEntry;

    invoke-static {v0}, Lru/vtosters/hooks/DownloadersHook;->lambda$injectActionStory$0(Lcom/vk/dto/stories/model/StoryEntry;)V

    return-void
.end method
