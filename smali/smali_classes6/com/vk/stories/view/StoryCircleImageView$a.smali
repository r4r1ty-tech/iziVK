.class public Lcom/vk/stories/view/StoryCircleImageView$a;
.super Ljava/lang/Object;
.source "StoryCircleImageView.java"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/stories/view/StoryCircleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/stories/view/StoryCircleImageView$a$ViewTreeObserver$OnGlobalLayoutListenerC0393a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/LottieListener<",
        "Lcom/airbnb/lottie/LottieComposition;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/vk/dto/stories/model/StoriesContainer;

.field final synthetic this$0:Lcom/vk/stories/view/StoryCircleImageView;


# direct methods
.method constructor <init>(Lcom/vk/stories/view/StoryCircleImageView;Lcom/vk/dto/stories/model/StoriesContainer;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/vk/stories/view/StoryCircleImageView$a;->this$0:Lcom/vk/stories/view/StoryCircleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    iput-object p2, p0, Lcom/vk/stories/view/StoryCircleImageView$a;->a:Lcom/vk/dto/stories/model/StoriesContainer;

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView$a;->this$0:Lcom/vk/stories/view/StoryCircleImageView;

    invoke-virtual {v0}, Lcom/vk/stories/view/StoryCircleImageView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView$a;->this$0:Lcom/vk/stories/view/StoryCircleImageView;

    iget-object v1, p0, Lcom/vk/stories/view/StoryCircleImageView$a;->a:Lcom/vk/dto/stories/model/StoriesContainer;

    invoke-virtual {v0, v1, p1}, Lcom/vk/stories/view/StoryCircleImageView;->a(Lcom/vk/dto/stories/model/StoriesContainer;Lcom/airbnb/lottie/LottieComposition;)V

    goto :goto_0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView$a;->this$0:Lcom/vk/stories/view/StoryCircleImageView;

    invoke-virtual {v0}, Lcom/vk/stories/view/StoryCircleImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/vk/stories/view/StoryCircleImageView$a$ViewTreeObserver$OnGlobalLayoutListenerC0393a;

    invoke-direct {v1, p0, p1}, Lcom/vk/stories/view/StoryCircleImageView$a$ViewTreeObserver$OnGlobalLayoutListenerC0393a;-><init>(Lcom/vk/stories/view/StoryCircleImageView$a;Lcom/airbnb/lottie/LottieComposition;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 399
    check-cast p1, Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {p0, p1}, Lcom/vk/stories/view/StoryCircleImageView$a;->a(Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
