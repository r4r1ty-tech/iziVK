.class public Lcom/vk/stories/view/StoryCircleImageView$b;
.super Ljava/lang/Object;
.source "StoryCircleImageView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/stories/view/StoryCircleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/stories/view/StoryCircleImageView;


# direct methods
.method constructor <init>(Lcom/vk/stories/view/StoryCircleImageView;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/vk/stories/view/StoryCircleImageView$b;->this$0:Lcom/vk/stories/view/StoryCircleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 437
    iget-object p1, p0, Lcom/vk/stories/view/StoryCircleImageView$b;->this$0:Lcom/vk/stories/view/StoryCircleImageView;

    invoke-virtual {p1}, Lcom/vk/stories/view/StoryCircleImageView;->invalidate()V

    return-void
.end method
