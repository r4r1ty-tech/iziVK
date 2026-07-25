.class public Lcom/vk/stories/view/StoryCircleImageView$a$ViewTreeObserver$OnGlobalLayoutListenerC0393a;
.super Ljava/lang/Object;
.source "StoryCircleImageView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/stories/view/StoryCircleImageView$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewTreeObserver$OnGlobalLayoutListenerC0393a"
.end annotation


# instance fields
.field final a:Lcom/airbnb/lottie/LottieComposition;

.field final synthetic this$1:Lcom/vk/stories/view/StoryCircleImageView$a;


# direct methods
.method constructor <init>(Lcom/vk/stories/view/StoryCircleImageView$a;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/vk/stories/view/StoryCircleImageView$a$ViewTreeObserver$OnGlobalLayoutListenerC0393a;->this$1:Lcom/vk/stories/view/StoryCircleImageView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-object p2, p0, Lcom/vk/stories/view/StoryCircleImageView$a$ViewTreeObserver$OnGlobalLayoutListenerC0393a;->a:Lcom/airbnb/lottie/LottieComposition;

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 424
    iget-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView$a$ViewTreeObserver$OnGlobalLayoutListenerC0393a;->this$1:Lcom/vk/stories/view/StoryCircleImageView$a;

    iget-object v0, v0, Lcom/vk/stories/view/StoryCircleImageView$a;->this$0:Lcom/vk/stories/view/StoryCircleImageView;

    invoke-virtual {v0}, Lcom/vk/stories/view/StoryCircleImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 425
    iget-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView$a$ViewTreeObserver$OnGlobalLayoutListenerC0393a;->this$1:Lcom/vk/stories/view/StoryCircleImageView$a;

    .line 426
    iget-object v1, v0, Lcom/vk/stories/view/StoryCircleImageView$a;->this$0:Lcom/vk/stories/view/StoryCircleImageView;

    iget-object v0, v0, Lcom/vk/stories/view/StoryCircleImageView$a;->a:Lcom/vk/dto/stories/model/StoriesContainer;

    iget-object v2, p0, Lcom/vk/stories/view/StoryCircleImageView$a$ViewTreeObserver$OnGlobalLayoutListenerC0393a;->a:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1, v0, v2}, Lcom/vk/stories/view/StoryCircleImageView;->a(Lcom/vk/dto/stories/model/StoriesContainer;Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
