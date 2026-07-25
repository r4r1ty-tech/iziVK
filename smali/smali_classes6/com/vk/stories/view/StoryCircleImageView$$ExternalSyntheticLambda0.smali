.class public final synthetic Lcom/vk/stories/view/StoryCircleImageView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/common/internal/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/vk/stories/view/StoryCircleImageView;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/vk/stories/view/StoryCircleImageView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/stories/view/StoryCircleImageView$$ExternalSyntheticLambda0;->f$0:Lcom/vk/stories/view/StoryCircleImageView;

    iput-object p2, p0, Lcom/vk/stories/view/StoryCircleImageView$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView$$ExternalSyntheticLambda0;->f$0:Lcom/vk/stories/view/StoryCircleImageView;

    iget-object v1, p0, Lcom/vk/stories/view/StoryCircleImageView$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/vk/stories/view/StoryCircleImageView;->lambda$a$0$com-vk-stories-view-StoryCircleImageView(Ljava/util/List;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    return-object v0
.end method
