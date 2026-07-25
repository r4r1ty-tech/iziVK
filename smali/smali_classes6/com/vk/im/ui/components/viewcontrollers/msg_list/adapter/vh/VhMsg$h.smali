.class Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$h;
.super Ljava/lang/Object;
.source "VhMsg.java"

# interfaces
.implements Lkotlin/jvm/b/Functions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/b/Functions<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;


# direct methods
.method private constructor <init>(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;)V
    .locals 1

    .line 1052
    iput-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$h;->this$0:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xc

    .line 1053
    invoke-static {p1}, Lcom/vk/core/util/Screen;->a(I)I

    move-result p1

    iput p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$h;->a:I

    .line 1054
    new-instance p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$h$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$h$a;-><init>(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$h;Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$h$a-IA;)V

    iput-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$h;->b:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$h-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$h;-><init>(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1048
    invoke-virtual {p0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$h;->invoke()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public invoke()Lkotlin/Unit;
    .locals 5

    .line 1058
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$h;->this$0:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;

    invoke-static {v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->-$$Nest$fgete(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;)Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->getMeasuredWidth()I

    move-result v0

    sget v1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->h0:I

    if-ge v0, v1, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$h;->this$0:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;

    invoke-static {v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->-$$Nest$fgete(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;)Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    sget v1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->h0:I

    iget-object v2, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$h;->this$0:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;

    invoke-static {v2}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->-$$Nest$fgete(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;)Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$h;->a:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1060
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$h;->this$0:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;

    invoke-static {v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->-$$Nest$fgete(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;)Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->invalidate()V

    .line 1061
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$h;->this$0:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;

    invoke-static {v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->-$$Nest$fgete(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;)Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->requestLayout()V

    goto :goto_0

    .line 1063
    :cond_0
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$h;->this$0:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;

    invoke-static {v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->-$$Nest$fgete(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;)Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$h;->this$0:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;

    invoke-static {v1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->-$$Nest$fgetG(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$h;->this$0:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;

    invoke-static {v2}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->-$$Nest$fgetG(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$h;->this$0:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;

    invoke-static {v3}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->-$$Nest$fgetG(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$h;->this$0:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;

    invoke-static {v4}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->-$$Nest$fgetG(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vk/extensions/ViewExtKt;->a(Landroid/view/View;IIII)V

    .line 1066
    :goto_0
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$h;->this$0:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;

    invoke-static {v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->-$$Nest$fgetf(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;)Lcom/vk/im/ui/views/msg/MsgStatusView;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$h;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/vk/im/ui/views/msg/MsgStatusView;->post(Ljava/lang/Runnable;)Z

    .line 1067
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
