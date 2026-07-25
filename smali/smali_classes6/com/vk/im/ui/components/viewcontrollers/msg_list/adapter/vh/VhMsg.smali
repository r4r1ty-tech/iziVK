.class public Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;
.super Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBase;
.source "VhMsg.java"

# interfaces
.implements Lcom/vk/im/ui/components/viewcontrollers/msg_list/SwipeToReplyItemTouchCallback$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$h;,
        Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;
    }
.end annotation


# static fields
.field public static final h0:I

.field private static final i0:[[I

.field private static final j0:[[I

.field private static final k0:[[I

.field private static final l0:[[I


# instance fields
.field private final B:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;

.field private final C:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;

.field private final D:Landroid/graphics/Rect;

.field private final E:Landroid/graphics/Rect;

.field private final F:Landroid/graphics/Rect;

.field private final G:Landroid/graphics/Rect;

.field private final H:Landroid/graphics/drawable/ColorDrawable;

.field private final I:I

.field private final J:I

.field private final K:I

.field private final L:I

.field private final M:I

.field private N:Landroid/graphics/drawable/Drawable;

.field private O:Landroid/graphics/drawable/Drawable;

.field private final P:Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView;

.field private final Q:Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView$d;

.field private final R:I

.field private final S:I

.field private final T:Lcom/vk/im/ui/formatters/DisplayNameFormatter;

.field private final U:Ljava/lang/StringBuilder;

.field private final V:Ljava/lang/StringBuilder;

.field private final W:Ljava/lang/String;

.field private final X:Ljava/lang/String;

.field private final Y:Ljava/lang/String;

.field private Z:Z

.field private a0:Lcom/vk/im/engine/models/dialogs/BubbleColors;

.field private final b:Lcom/vk/core/widget/FluidHorizontalLayout;

.field private b0:I

.field private final c:Lcom/vk/im/ui/views/avatars/AvatarView;

.field private c0:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgListAdapterCallback;

.field private final d:Landroid/widget/Space;

.field private d0:Lcom/vk/im/engine/models/messages/Msg;

.field private final e:Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;

.field private e0:Lcom/vk/im/engine/models/dialogs/Dialog;

.field private final f:Lcom/vk/im/ui/views/msg/MsgStatusView;

.field private f0:I

.field private final g:Landroid/widget/ImageView;

.field private final g0:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$h;

.field private final h:Landroid/widget/Space;


# direct methods
.method static bridge synthetic -$$Nest$fgetG(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->G:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgete(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;)Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;
    .locals 0

    iget-object p0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->e:Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetf(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;)Lcom/vk/im/ui/views/msg/MsgStatusView;
    .locals 0

    iget-object p0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->f:Lcom/vk/im/ui/views/msg/MsgStatusView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mp(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->p(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 16

    const/16 v0, 0x7c

    .line 55
    invoke-static {v0}, Lcom/vk/core/util/Screen;->a(I)I

    move-result v0

    sput v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->h0:I

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 62
    fill-array-data v1, :array_0

    new-array v2, v0, [I

    .line 63
    fill-array-data v2, :array_1

    new-array v3, v0, [I

    .line 64
    fill-array-data v3, :array_2

    new-array v4, v0, [I

    .line 65
    fill-array-data v4, :array_3

    new-array v5, v0, [I

    .line 66
    fill-array-data v5, :array_4

    const/16 v6, 0x8

    new-array v7, v6, [[I

    new-array v8, v0, [I

    .line 67
    fill-array-data v8, :array_5

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x1

    aput-object v1, v7, v8

    const/4 v1, 0x2

    aput-object v2, v7, v1

    const/4 v2, 0x3

    aput-object v3, v7, v2

    new-array v3, v0, [I

    fill-array-data v3, :array_6

    aput-object v3, v7, v0

    new-array v3, v0, [I

    fill-array-data v3, :array_7

    const/4 v10, 0x5

    aput-object v3, v7, v10

    const/4 v3, 0x6

    aput-object v4, v7, v3

    const/4 v4, 0x7

    aput-object v5, v7, v4

    sput-object v7, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->i0:[[I

    new-array v5, v0, [I

    .line 68
    fill-array-data v5, :array_8

    new-array v7, v0, [I

    .line 69
    fill-array-data v7, :array_9

    new-array v11, v0, [I

    .line 70
    fill-array-data v11, :array_a

    new-array v12, v0, [I

    .line 71
    fill-array-data v12, :array_b

    new-array v13, v0, [I

    .line 72
    fill-array-data v13, :array_c

    new-array v14, v0, [I

    .line 73
    fill-array-data v14, :array_d

    new-array v15, v0, [I

    .line 74
    fill-array-data v15, :array_e

    new-array v4, v6, [[I

    aput-object v5, v4, v9

    aput-object v7, v4, v8

    aput-object v11, v4, v1

    aput-object v12, v4, v2

    new-array v5, v0, [I

    .line 75
    fill-array-data v5, :array_f

    aput-object v5, v4, v0

    aput-object v13, v4, v10

    aput-object v14, v4, v3

    const/4 v5, 0x7

    aput-object v15, v4, v5

    sput-object v4, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->j0:[[I

    new-array v4, v6, [[I

    new-array v5, v6, [I

    .line 76
    fill-array-data v5, :array_10

    aput-object v5, v4, v9

    new-array v5, v6, [I

    fill-array-data v5, :array_11

    aput-object v5, v4, v8

    new-array v5, v6, [I

    fill-array-data v5, :array_12

    aput-object v5, v4, v1

    new-array v5, v6, [I

    fill-array-data v5, :array_13

    aput-object v5, v4, v2

    new-array v5, v6, [I

    fill-array-data v5, :array_14

    aput-object v5, v4, v0

    new-array v5, v6, [I

    fill-array-data v5, :array_15

    aput-object v5, v4, v10

    new-array v5, v6, [I

    fill-array-data v5, :array_16

    aput-object v5, v4, v3

    new-array v5, v6, [I

    fill-array-data v5, :array_17

    const/4 v7, 0x7

    aput-object v5, v4, v7

    sput-object v4, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->k0:[[I

    new-array v4, v6, [I

    .line 77
    fill-array-data v4, :array_18

    new-array v5, v6, [I

    .line 78
    fill-array-data v5, :array_19

    new-array v7, v6, [I

    .line 79
    fill-array-data v7, :array_1a

    new-array v11, v6, [[I

    aput-object v4, v11, v9

    new-array v4, v6, [I

    .line 80
    fill-array-data v4, :array_1b

    aput-object v4, v11, v8

    aput-object v5, v11, v1

    aput-object v7, v11, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_1c

    aput-object v1, v11, v0

    new-array v0, v6, [I

    fill-array-data v0, :array_1d

    aput-object v0, v11, v10

    new-array v0, v6, [I

    fill-array-data v0, :array_1e

    aput-object v0, v11, v3

    new-array v0, v6, [I

    fill-array-data v0, :array_1f

    const/4 v1, 0x7

    aput-object v0, v11, v1

    sput-object v11, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->l0:[[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x8
        0x3
        0x8
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x2
        0x8
        0x2
    .end array-data

    :array_8
    .array-data 4
        0x8
        0x0
        0x8
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x8
        0x0
        0x8
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x4
        0x0
        0x4
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x4
        0x0
        0x4
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_d
    .array-data 4
        0x8
        0x0
        0x8
        0x0
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x4
        0x0
        0x4
        0x0
    .end array-data

    :array_10
    .array-data 4
        0x0
        0x8
        0x4
        0x4
        0x4
        0x0
        0x8
        0x0
    .end array-data

    :array_11
    .array-data 4
        0x6
        0x4
        0x0
        0x0
        0x0
        0x0
        0x8
        0x0
    .end array-data

    :array_12
    .array-data 4
        0x4
        0x4
        0x0
        0x0
        0x0
        0x0
        0x8
        0x0
    .end array-data

    :array_13
    .array-data 4
        0x4
        0x4
        0x0
        0x0
        0x0
        0x0
        0x8
        0x0
    .end array-data

    :array_14
    .array-data 4
        0x4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x8
        0x0
    .end array-data

    :array_15
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x8
        0x0
    .end array-data

    :array_16
    .array-data 4
        0x8
        0x4
        0x0
        0x0
        0x0
        0x0
        0x8
        0x0
    .end array-data

    :array_17
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_18
    .array-data 4
        0x0
        0x4
        0x4
        0x4
        0x8
        0x2
        0x8
        0x0
    .end array-data

    :array_19
    .array-data 4
        0x4
        0x0
        0x0
        0x0
        0x0
        0x2
        0x8
        0x0
    .end array-data

    :array_1a
    .array-data 4
        0x4
        0x0
        0x0
        0x0
        0x0
        0x2
        0x8
        0x0
    .end array-data

    :array_1b
    .array-data 4
        0x4
        0x4
        0x0
        0x0
        0x0
        0x2
        0x8
        0x0
    .end array-data

    :array_1c
    .array-data 4
        0x4
        0x0
        0x0
        0x0
        0x0
        0x2
        0x8
        0x0
    .end array-data

    :array_1d
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x8
        0x0
    .end array-data

    :array_1e
    .array-data 4
        0x4
        0x4
        0x0
        0x0
        0x0
        0x2
        0x8
        0x0
    .end array-data

    :array_1f
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/view/View;Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;)V
    .locals 8

    .line 125
    invoke-direct {p0, p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBase;-><init>(Landroid/view/View;)V

    .line 84
    new-instance v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;

    invoke-direct {v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;-><init>()V

    iput-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->C:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->D:Landroid/graphics/Rect;

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->E:Landroid/graphics/Rect;

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->F:Landroid/graphics/Rect;

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->G:Landroid/graphics/Rect;

    .line 94
    new-instance v1, Lcom/vk/im/ui/formatters/DisplayNameFormatter;

    invoke-direct {v1}, Lcom/vk/im/ui/formatters/DisplayNameFormatter;-><init>()V

    iput-object v1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->T:Lcom/vk/im/ui/formatters/DisplayNameFormatter;

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->U:Ljava/lang/StringBuilder;

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->V:Ljava/lang/StringBuilder;

    .line 122
    new-instance v1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$h;-><init>(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$h-IA;)V

    iput-object v1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->g0:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$h;

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 127
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 128
    move-object v4, p1

    check-cast v4, Lcom/vk/core/widget/FluidHorizontalLayout;

    iput-object v4, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->b:Lcom/vk/core/widget/FluidHorizontalLayout;

    const v4, 0x7f0a014b

    .line 129
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/vk/im/ui/views/avatars/AvatarView;

    iput-object v4, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->c:Lcom/vk/im/ui/views/avatars/AvatarView;

    const v5, 0x7f0a0151

    .line 130
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Space;

    iput-object v5, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->d:Landroid/widget/Space;

    const v5, 0x7f0a01e1

    .line 131
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;

    iput-object v5, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->e:Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;

    const v6, 0x7f0a0c84

    .line 132
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/vk/im/ui/views/msg/MsgStatusView;

    iput-object v6, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->f:Lcom/vk/im/ui/views/msg/MsgStatusView;

    const v6, 0x7f0a0f11

    .line 133
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->g:Landroid/widget/ImageView;

    const v7, 0x7f0a0c87

    .line 134
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Space;

    iput-object v7, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->h:Landroid/widget/Space;

    const v7, 0x7f0a018f

    .line 135
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView;

    iput-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->P:Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView;

    .line 136
    iput-object p2, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->B:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;

    .line 137
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const v7, 0x7f060138

    invoke-static {v1, v7}, Lru/vtosters/lite/themes/ThemesHacks;->getColors(Landroid/content/Context;I)I

    move-result v7

    invoke-direct {p1, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->H:Landroid/graphics/drawable/ColorDrawable;

    const p1, 0x7f070147

    .line 138
    invoke-static {v1, p1}, Lcom/vk/core/util/ContextExtKt;->b(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->I:I

    const p1, 0x7f07014a

    .line 139
    invoke-static {v1, p1}, Lcom/vk/core/util/ContextExtKt;->b(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->J:I

    const p1, 0x7f07014c

    .line 140
    invoke-static {v1, p1}, Lcom/vk/core/util/ContextExtKt;->b(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->K:I

    const p1, 0x7f0402e1

    .line 141
    invoke-static {v1, p1}, Lcom/vk/core/util/ContextExtKt;->i(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->L:I

    const p1, 0x7f0402e2

    .line 142
    invoke-static {v1, p1}, Lcom/vk/core/util/ContextExtKt;->i(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->M:I

    const p1, 0x7f121171

    .line 143
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->W:Ljava/lang/String;

    const p1, 0x7f12116f

    .line 144
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->Y:Ljava/lang/String;

    const p1, 0x7f121170

    .line 145
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->X:Ljava/lang/String;

    .line 147
    invoke-virtual {p2, v3, v5}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->setContentView(Landroid/view/View;)V

    .line 148
    invoke-virtual {v5}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 150
    iget p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 151
    iget p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput p2, v0, Landroid/graphics/Rect;->right:I

    .line 152
    iget p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 153
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 154
    new-instance p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$$ExternalSyntheticLambda0;-><init>(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;)V

    invoke-static {v4, p1}, Lcom/vk/extensions/ViewExtKt;->b(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 160
    new-instance p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$$ExternalSyntheticLambda1;-><init>(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;)V

    invoke-virtual {v4, p1}, Lcom/vk/im/ui/views/avatars/AvatarView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 168
    new-instance p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$$ExternalSyntheticLambda2;-><init>(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;)V

    invoke-static {v6, p1}, Lcom/vk/extensions/ViewExtKt;->b(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->itemView:Landroid/view/View;

    new-instance p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$$ExternalSyntheticLambda3;-><init>(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;)V

    invoke-static {p1, p2}, Lcom/vk/extensions/ViewExtKt;->b(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->itemView:Landroid/view/View;

    new-instance p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$$ExternalSyntheticLambda4;-><init>(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const p1, 0x7f0402e5

    .line 187
    invoke-static {v1, p1}, Lcom/vk/core/util/ContextExtKt;->i(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->R:I

    const p1, 0x7f0402e4

    .line 188
    invoke-static {v1, p1}, Lcom/vk/core/util/ContextExtKt;->i(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->S:I

    .line 189
    iput-object v2, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->c0:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgListAdapterCallback;

    .line 190
    iput-object v2, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->d0:Lcom/vk/im/engine/models/messages/Msg;

    .line 191
    new-instance p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$1;

    invoke-direct {p1, p0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$1;-><init>(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;)V

    iput-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->Q:Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView$d;

    return-void
.end method

.method private a(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;Z)I
    .locals 0

    if-eqz p3, :cond_0

    .line 205
    sget-object p3, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->k0:[[I

    iget p1, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->index:I

    aget-object p1, p3, p1

    iget p2, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->index:I

    aget p1, p1, p2

    goto :goto_0

    .line 207
    :cond_0
    sget-object p3, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->l0:[[I

    iget p1, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->index:I

    aget-object p1, p3, p1

    iget p2, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->index:I

    aget p1, p1, p2

    .line 210
    :goto_0
    invoke-static {p1}, Lcom/vk/core/util/Screen;->a(I)I

    move-result p1

    return p1
.end method

.method private a(Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;)Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;
    .locals 2

    .line 214
    iget v0, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;->a:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown viewType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 284
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :pswitch_0
    sget-object p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->EMPTY:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    return-object p1

    .line 275
    :pswitch_1
    sget-object p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->SNIPPET:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    return-object p1

    .line 259
    :pswitch_2
    sget-object p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->BUTTON:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    return-object p1

    .line 257
    :pswitch_3
    sget-object p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->IMAGE:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    return-object p1

    .line 240
    :pswitch_4
    sget-object p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->TEXT:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    return-object p1

    .line 232
    :pswitch_5
    sget-object p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->FWD_TIME:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    return-object p1

    .line 230
    :pswitch_6
    sget-object p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->FWD_SENDER:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    return-object p1

    .line 288
    :cond_0
    :pswitch_7
    sget-object p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->TWO_LINE:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_1
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;)Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;
    .locals 3

    .line 199
    new-instance v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;

    const v1, 0x7f0d0656

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;-><init>(Landroid/view/View;Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;)V

    return-object v0
.end method

.method private a(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;Landroid/graphics/Rect;)V
    .locals 8

    .line 292
    iget-object v0, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->b:Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;

    invoke-direct {p0, v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->a(Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;)Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    move-result-object v0

    .line 293
    iget-object v1, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->b:Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;

    invoke-virtual {v1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;->f()Z

    move-result v1

    .line 294
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->C()Z

    move-result v2

    .line 295
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->z()Z

    move-result v3

    .line 296
    iget-object v4, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->F:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1, v4}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->a(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;ZLandroid/graphics/Rect;)V

    .line 297
    iget-object v1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->F:Landroid/graphics/Rect;

    .line 298
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 299
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 300
    iget v6, v1, Landroid/graphics/Rect;->right:I

    .line 301
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    const/4 v7, 0x0

    if-eqz v2, :cond_1

    .line 304
    iget-object v2, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->a:Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;

    .line 305
    iget v5, v2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;->i:I

    if-lez v5, :cond_0

    iget-object v5, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->b:Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;

    iget v5, v5, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;->i:I

    if-nez v5, :cond_0

    .line 306
    invoke-direct {p0, v2}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->a(Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;)Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    move-result-object v2

    invoke-direct {p0, v2, v0, v7}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->a(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;Z)I

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :cond_1
    :goto_0
    if-eqz v3, :cond_4

    .line 314
    iget-object v1, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->b:Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;

    iget v1, v1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;->i:I

    .line 315
    iget-object v2, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->c:Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;

    .line 316
    iget v3, v2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;->i:I

    if-ne v1, v3, :cond_2

    .line 318
    invoke-direct {p0, v2}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->a(Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;)Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->a(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;Z)I

    move-result v1

    goto :goto_1

    :cond_2
    if-ge v1, v3, :cond_3

    .line 320
    invoke-direct {p0, v2}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->a(Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;)Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    move-result-object v1

    invoke-direct {p0, v0, v1, v7}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->a(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;Z)I

    move-result v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 327
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->w()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 329
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 332
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->G()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p1, 0x4

    .line 333
    invoke-static {p1}, Lcom/vk/core/util/Screen;->a(I)I

    move-result p1

    goto :goto_2

    .line 336
    :cond_5
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->e()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    const/16 p1, 0x8

    .line 340
    invoke-static {p1}, Lcom/vk/core/util/Screen;->a(I)I

    move-result p1

    :goto_2
    add-int/2addr v1, p1

    .line 348
    :cond_7
    :goto_3
    invoke-virtual {p2, v4, v5, v6, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private a(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;)V
    .locals 1

    .line 352
    iget v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->R:I

    .line 353
    iput v0, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->k:I

    .line 354
    iput v0, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->i:I

    .line 355
    iput v0, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->j:I

    .line 356
    iget-object p1, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->b:Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;

    iget p1, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;->i:I

    if-lez p1, :cond_0

    .line 357
    iput v0, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->i:I

    .line 358
    iput v0, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->j:I

    goto :goto_2

    .line 360
    :cond_0
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBase;->a:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;

    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->C()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 361
    iget p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->R:I

    goto :goto_0

    .line 363
    :cond_1
    iget p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->S:I

    .line 366
    :goto_0
    iput p1, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->i:I

    .line 367
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBase;->a:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;

    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->z()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 368
    iget p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->R:I

    goto :goto_1

    .line 370
    :cond_2
    iget p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->S:I

    .line 373
    :goto_1
    iput p1, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->j:I

    .line 376
    :goto_2
    iget p1, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->i:I

    iget v0, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->j:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->h:I

    return-void
.end method

.method private a(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;Z)V
    .locals 6

    .line 380
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->l()Z

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 381
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    iget-object p2, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->f:Lcom/vk/im/ui/views/msg/MsgStatusView;

    invoke-virtual {p2, v2}, Lcom/vk/im/ui/views/msg/MsgStatusView;->setVisibility(I)V

    .line 383
    iget-object p2, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->h:Landroid/widget/Space;

    invoke-virtual {p2, v2}, Landroid/widget/Space;->setVisibility(I)V

    .line 384
    iget-object p2, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->g:Landroid/widget/ImageView;

    .line 386
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 387
    iget-boolean p1, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->k:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->a(Ljava/lang/Boolean;)V

    goto/16 :goto_7

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->h:Landroid/widget/Space;

    invoke-virtual {v0, v3}, Landroid/widget/Space;->setVisibility(I)V

    .line 391
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->z()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 396
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->f:Lcom/vk/im/ui/views/msg/MsgStatusView;

    invoke-virtual {p1, v1}, Lcom/vk/im/ui/views/msg/MsgStatusView;->setVisibility(I)V

    goto/16 :goto_6

    .line 399
    :cond_2
    iget-object v0, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->b:Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;

    if-eqz v0, :cond_b

    .line 402
    iget-object v0, v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;->c:Lcom/vk/im/engine/models/messages/Msg;

    if-eqz v0, :cond_b

    .line 405
    invoke-virtual {v0}, Lcom/vk/im/engine/models/messages/Msg;->v1()I

    move-result v4

    iget-object v5, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->g:Lcom/vk/im/engine/models/Member;

    invoke-virtual {v5}, Lcom/vk/im/engine/models/Member;->t1()I

    move-result v5

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 407
    :goto_1
    invoke-virtual {v0}, Lcom/vk/im/engine/models/messages/Msg;->O1()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 408
    invoke-virtual {v0}, Lcom/vk/im/engine/models/messages/Msg;->d()Lcom/vk/im/engine/models/messages/MsgSyncState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/im/engine/models/messages/MsgSyncState;->ordinal()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    const/4 v0, 0x3

    if-eq v1, v0, :cond_4

    .line 412
    sget-object v0, Lcom/vk/im/ui/views/msg/MsgStatus;->ERROR:Lcom/vk/im/ui/views/msg/MsgStatus;

    goto :goto_4

    :cond_4
    if-nez v4, :cond_5

    .line 414
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->J()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 415
    sget-object p2, Lcom/vk/im/ui/views/msg/MsgStatus;->UNREAD:Lcom/vk/im/ui/views/msg/MsgStatus;

    goto :goto_2

    .line 417
    :cond_5
    sget-object p2, Lcom/vk/im/ui/views/msg/MsgStatus;->SENDING:Lcom/vk/im/ui/views/msg/MsgStatus;

    :goto_2
    move-object v0, p2

    .line 420
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->I()Z

    move-result p2

    goto :goto_4

    .line 423
    :cond_6
    invoke-virtual {v0}, Lcom/vk/im/engine/models/messages/Msg;->C1()I

    move-result v0

    iget v1, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->i:I

    if-gt v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_8

    if-nez v4, :cond_8

    .line 426
    sget-object v0, Lcom/vk/im/ui/views/msg/MsgStatus;->UNREAD:Lcom/vk/im/ui/views/msg/MsgStatus;

    goto :goto_4

    .line 428
    :cond_8
    sget-object v0, Lcom/vk/im/ui/views/msg/MsgStatus;->READ:Lcom/vk/im/ui/views/msg/MsgStatus;

    .line 432
    :goto_4
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->F()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 433
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->f:Lcom/vk/im/ui/views/msg/MsgStatusView;

    iget-object v1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->g0:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$h;

    invoke-static {p1, v1}, Lcom/vk/extensions/ViewExtKt;->g(Landroid/view/View;Lkotlin/jvm/b/Functions;)Ljava/lang/Object;

    goto :goto_5

    .line 436
    :cond_9
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->f:Lcom/vk/im/ui/views/msg/MsgStatusView;

    invoke-virtual {p1, v3}, Lcom/vk/im/ui/views/msg/MsgStatusView;->setVisibility(I)V

    const/4 v3, 0x1

    .line 440
    :goto_5
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->f:Lcom/vk/im/ui/views/msg/MsgStatusView;

    invoke-virtual {p1, v0, p2}, Lcom/vk/im/ui/views/msg/MsgStatusView;->a(Lcom/vk/im/ui/views/msg/MsgStatus;Z)V

    move v2, v3

    goto :goto_6

    .line 442
    :cond_a
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->f:Lcom/vk/im/ui/views/msg/MsgStatusView;

    invoke-virtual {p1, v1}, Lcom/vk/im/ui/views/msg/MsgStatusView;->setVisibility(I)V

    :cond_b
    :goto_6
    if-eqz v2, :cond_c

    .line 450
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->e:Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;

    .line 451
    iget-object p2, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->G:Landroid/graphics/Rect;

    .line 452
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, v0, v1, v2, p2}, Lcom/vk/extensions/ViewExtKt;->a(Landroid/view/View;IIII)V

    :cond_c
    :goto_7
    return-void
.end method

.method private a(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;ZLandroid/graphics/Rect;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 461
    sget-object p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->j0:[[I

    iget p1, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->index:I

    aget-object p1, p2, p1

    goto :goto_0

    .line 463
    :cond_0
    sget-object p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->i0:[[I

    iget p1, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->index:I

    aget-object p1, p2, p1

    :goto_0
    const/4 p2, 0x0

    .line 466
    aget p2, p1, p2

    invoke-static {p2}, Lcom/vk/core/util/Screen;->a(I)I

    move-result p2

    const/4 v0, 0x1

    aget v0, p1, v0

    invoke-static {v0}, Lcom/vk/core/util/Screen;->a(I)I

    move-result v0

    const/4 v1, 0x2

    aget v1, p1, v1

    invoke-static {v1}, Lcom/vk/core/util/Screen;->a(I)I

    move-result v1

    const/4 v2, 0x3

    aget p1, p1, v2

    invoke-static {p1}, Lcom/vk/core/util/Screen;->a(I)I

    move-result p1

    invoke-virtual {p3, p2, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 2

    .line 470
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 471
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->g:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->h0()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 472
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->g:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 473
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->g:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 475
    :cond_0
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->g:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->g0()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 476
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->g:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/vk/core/util/Screen;->a(I)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 477
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->g:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {v0}, Lcom/vk/core/util/Screen;->a(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    return-void
.end method

.method private b(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;)Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;
    .locals 5

    .line 483
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->C()Z

    move-result v0

    .line 484
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->z()Z

    move-result v1

    .line 485
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->B()Z

    move-result v2

    .line 486
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->A()Z

    move-result v3

    .line 487
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->x()Z

    move-result v4

    .line 489
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->D()Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 491
    sget-object p1, Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;->FULL:Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;

    goto :goto_0

    .line 493
    :cond_0
    sget-object p1, Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;->FULL_TAIL:Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;

    :goto_0
    return-object p1

    :cond_1
    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    if-eqz v0, :cond_2

    .line 499
    sget-object p1, Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;->BOTTOM:Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 501
    sget-object p1, Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;->FULL:Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;

    goto :goto_1

    .line 503
    :cond_3
    sget-object p1, Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;->FULL_TAIL:Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;

    :goto_1
    return-object p1

    :cond_4
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 508
    sget-object p1, Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;->MIDDLE:Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;

    return-object p1

    :cond_5
    if-eqz v0, :cond_6

    .line 510
    sget-object p1, Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;->BOTTOM:Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;

    return-object p1

    :cond_6
    if-eqz v1, :cond_8

    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    .line 513
    sget-object p1, Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;->TOP:Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;

    goto :goto_2

    .line 515
    :cond_7
    sget-object p1, Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;->TOP_TAIL:Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;

    :goto_2
    return-object p1

    :cond_8
    if-eqz v2, :cond_9

    if-eqz v3, :cond_9

    .line 521
    sget-object p1, Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;->FULL:Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;

    goto :goto_3

    .line 523
    :cond_9
    sget-object p1, Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;->FULL_TAIL:Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;

    :goto_3
    return-object p1
.end method

.method private b(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;Landroid/graphics/Rect;)V
    .locals 2

    .line 531
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 532
    iget-object v0, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->b:Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;

    invoke-virtual {v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0402af

    invoke-static {v0, v1}, Lcom/vk/core/util/ContextExtKt;->i(Landroid/content/Context;I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 536
    :cond_0
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->C()Z

    move-result v0

    if-nez v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0402b0

    invoke-static {v0, v1}, Lcom/vk/core/util/ContextExtKt;->i(Landroid/content/Context;I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 540
    :cond_1
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    .line 541
    invoke-static {p1}, Lcom/vk/core/util/Screen;->a(I)I

    move-result p1

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    :cond_2
    return-void
.end method

.method private b(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;)V
    .locals 3

    .line 547
    iget-object v0, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->b:Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;

    .line 548
    invoke-direct {p0, p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->c(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;)Lcom/vk/im/ui/views/msg/bubble/MsgBubbleStyle;

    move-result-object v1

    .line 549
    iget-object v2, v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;->c:Lcom/vk/im/engine/models/messages/Msg;

    iput-object v2, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->a:Lcom/vk/im/engine/models/messages/Msg;

    .line 550
    iget-object v2, v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;->d:Lcom/vk/im/engine/models/messages/NestedMsg;

    iput-object v2, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->b:Lcom/vk/im/engine/models/messages/NestedMsg;

    .line 551
    iget-object v2, v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;->e:Ljava/lang/CharSequence;

    iput-object v2, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->c:Ljava/lang/CharSequence;

    .line 552
    iget-object v2, v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;->f:Lcom/vk/im/engine/models/attaches/Attach;

    iput-object v2, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->d:Lcom/vk/im/engine/models/attaches/Attach;

    .line 553
    iget-object v2, v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;->g:Ljava/util/List;

    iput-object v2, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->e:Ljava/util/List;

    .line 554
    invoke-direct {p0, p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->m(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;)Z

    move-result v2

    iput-boolean v2, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->f:Z

    .line 555
    iget v2, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->p:I

    iput v2, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->g:I

    .line 556
    iget-object v2, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->g:Lcom/vk/im/engine/models/Member;

    iput-object v2, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->m:Lcom/vk/im/engine/models/Member;

    .line 557
    iget-object v2, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->h:Lcom/vk/im/engine/models/ProfilesSimpleInfo;

    iput-object v2, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->n:Lcom/vk/im/engine/models/ProfilesSimpleInfo;

    .line 558
    iget-object v2, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->n:Lcom/vk/im/engine/models/ImExperimentsProvider;

    iput-object v2, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->o:Lcom/vk/im/engine/models/ImExperimentsProvider;

    .line 559
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->v()Z

    move-result v2

    iput-boolean v2, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->s:Z

    .line 560
    iget-boolean v2, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->q:Z

    iput-boolean v2, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->t:Z

    .line 561
    invoke-virtual {v1}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleStyle;->b()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->u:Z

    .line 563
    iget v0, v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;->i:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 565
    :goto_0
    iput-boolean v0, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->v:Z

    .line 566
    iget-boolean v0, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->k:Z

    iput-boolean v0, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->w:Z

    .line 567
    iget-boolean v0, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->l:Z

    iput-boolean v0, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->x:Z

    .line 568
    iget-boolean v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->Z:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->y:Z

    .line 569
    iget-object v0, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->s:Landroid/util/SparseIntArray;

    iput-object v0, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->z:Landroid/util/SparseIntArray;

    .line 570
    iget-object v0, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->t:Landroid/util/SparseIntArray;

    iput-object v0, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->A:Landroid/util/SparseIntArray;

    .line 571
    iget v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->b0:I

    iput v0, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->l:I

    .line 572
    iget-object v0, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->u:Lcom/vk/im/ui/media/audio/AudioTrack;

    iput-object v0, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->B:Lcom/vk/im/ui/media/audio/AudioTrack;

    .line 573
    iget-object v0, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->v:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/AudioMsgInfo;

    iput-object v0, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->C:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/AudioMsgInfo;

    .line 574
    iget-object v0, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->w:Lcom/vk/im/ui/views/sticker/StickerAnimationState;

    iput-object v0, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->D:Lcom/vk/im/ui/views/sticker/StickerAnimationState;

    .line 575
    iget-object v0, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->x:Lcom/vk/im/engine/j/StickersAnimationLoader;

    iput-object v0, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->E:Lcom/vk/im/engine/j/StickersAnimationLoader;

    .line 576
    iget-object v0, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->y:Lcom/vk/im/ui/views/span/OnSpanClickListener;

    iput-object v0, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->F:Lcom/vk/im/ui/views/span/OnSpanClickListener;

    .line 577
    iget-object v0, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->z:Lcom/vk/im/ui/views/span/OnSpanLongPressListener;

    iput-object v0, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->G:Lcom/vk/im/ui/views/span/OnSpanLongPressListener;

    .line 578
    iget-object v0, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->A:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgListAdapterCallback;

    iput-object v0, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->H:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgListAdapterCallback;

    .line 579
    iget-object v0, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->B:Lcom/vk/im/ui/q/h/VideoAutoPlayer;

    iput-object v0, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->I:Lcom/vk/im/ui/q/h/VideoAutoPlayer;

    .line 580
    invoke-static {}, Lcom/vk/core/util/Screen;->i()I

    move-result v0

    iget v1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->I:I

    sub-int/2addr v0, v1

    const/16 v1, 0x46

    invoke-static {v1}, Lcom/vk/core/util/Screen;->a(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->p:I

    .line 582
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBase;->a:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;

    invoke-virtual {v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    .line 583
    invoke-static {v0}, Lcom/vk/core/util/Screen;->a(I)I

    move-result v0

    iget v1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->M:I

    add-int/2addr v0, v1

    goto :goto_1

    .line 585
    :cond_1
    iget v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->L:I

    .line 588
    :goto_1
    iput v0, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->q:I

    .line 589
    invoke-static {}, Lcom/vk/core/util/Screen;->i()I

    move-result v0

    iget v1, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->p:I

    sub-int/2addr v0, v1

    iget v1, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->q:I

    sub-int/2addr v0, v1

    iput v0, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->r:I

    .line 591
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->isSelected()Z

    move-result p1

    iput-boolean p1, p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->isSelected:Z

    return-void
.end method

.method private c(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;)Lcom/vk/im/ui/views/msg/bubble/MsgBubbleStyle;
    .locals 2

    .line 595
    iget-object v0, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->b:Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;

    .line 596
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->t()Z

    move-result p1

    iget-boolean v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->Z:Z

    invoke-static {p1, v0}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleStyle;->b(ZZ)Lcom/vk/im/ui/views/msg/bubble/MsgBubbleStyle;

    move-result-object p1

    return-object p1

    .line 598
    :cond_0
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->E()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->r()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 615
    :cond_1
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->t()Z

    move-result p1

    iget-boolean v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->Z:Z

    invoke-static {p1, v0}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleStyle;->a(ZZ)Lcom/vk/im/ui/views/msg/bubble/MsgBubbleStyle;

    move-result-object p1

    return-object p1

    .line 599
    :cond_2
    :goto_0
    iget v0, v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;->a:I

    const/16 v1, 0x53

    if-eq v0, v1, :cond_7

    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->E()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->F()Z

    move-result v0

    if-nez v0, :cond_7

    .line 600
    :cond_3
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->C()Z

    move-result v0

    .line 601
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->z()Z

    move-result v1

    if-nez v0, :cond_6

    if-nez v1, :cond_6

    .line 603
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 604
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->t()Z

    move-result p1

    invoke-static {p1}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleStyle;->a(Z)Lcom/vk/im/ui/views/msg/bubble/MsgBubbleStyle;

    move-result-object p1

    return-object p1

    .line 606
    :cond_4
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->o()Z

    move-result v0

    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->t()Z

    move-result p1

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleStyle;->a(Z)Lcom/vk/im/ui/views/msg/bubble/MsgBubbleStyle;

    move-result-object p1

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->Z:Z

    invoke-static {p1, v0}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleStyle;->b(ZZ)Lcom/vk/im/ui/views/msg/bubble/MsgBubbleStyle;

    move-result-object p1

    :goto_1
    return-object p1

    .line 609
    :cond_6
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->t()Z

    move-result p1

    iget-boolean v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->Z:Z

    invoke-static {p1, v0}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleStyle;->b(ZZ)Lcom/vk/im/ui/views/msg/bubble/MsgBubbleStyle;

    move-result-object p1

    return-object p1

    .line 612
    :cond_7
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->t()Z

    move-result p1

    invoke-static {p1}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleStyle;->a(Z)Lcom/vk/im/ui/views/msg/bubble/MsgBubbleStyle;

    move-result-object p1

    return-object p1
.end method

.method private d(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;)V
    .locals 5

    .line 620
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->U:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 621
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->T:Lcom/vk/im/ui/formatters/DisplayNameFormatter;

    iget-object v2, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->b:Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;

    iget-object v2, v2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;->c:Lcom/vk/im/engine/models/messages/Msg;

    invoke-virtual {v2}, Lcom/vk/im/engine/models/messages/Msg;->getFrom()Lcom/vk/im/engine/models/Member;

    move-result-object v2

    iget-object v3, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->h:Lcom/vk/im/engine/models/ProfilesSimpleInfo;

    iget-object v4, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->U:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/vk/im/ui/formatters/DisplayNameFormatter;->a(Lcom/vk/im/engine/models/Member;Lcom/vk/im/engine/models/ProfilesSimpleInfo;Ljava/lang/StringBuilder;Z)V

    .line 622
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->c:Lcom/vk/im/ui/views/avatars/AvatarView;

    iget-object v1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->U:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/vk/im/ui/views/avatars/AvatarView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 623
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->e:Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->setImportantForAccessibility(I)V

    goto :goto_0

    .line 626
    :cond_0
    invoke-direct {p0, p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->h(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;)V

    :goto_0
    return-void
.end method

.method private e(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;)V
    .locals 4

    .line 632
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->i()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 633
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->j()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->c:Lcom/vk/im/ui/views/avatars/AvatarView;

    iget-object v3, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->b:Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;

    iget-object v3, v3, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;->c:Lcom/vk/im/engine/models/messages/Msg;

    invoke-virtual {v3}, Lcom/vk/im/engine/models/messages/Msg;->getFrom()Lcom/vk/im/engine/models/Member;

    move-result-object v3

    iget-object p1, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->h:Lcom/vk/im/engine/models/ProfilesSimpleInfo;

    invoke-virtual {v0, v3, p1}, Lcom/vk/im/ui/views/avatars/AvatarView;->a(Lcom/vk/im/engine/models/Member;Lcom/vk/im/engine/models/ProfilesSimpleInfo;)V

    .line 635
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->c:Lcom/vk/im/ui/views/avatars/AvatarView;

    invoke-virtual {p1, v2}, Lcom/vk/im/ui/views/avatars/AvatarView;->setVisibility(I)V

    .line 636
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->d:Landroid/widget/Space;

    invoke-virtual {p1, v1}, Landroid/widget/Space;->setVisibility(I)V

    goto :goto_0

    .line 638
    :cond_0
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->c:Lcom/vk/im/ui/views/avatars/AvatarView;

    invoke-virtual {p1}, Lcom/vk/im/ui/views/avatars/AvatarView;->e()V

    .line 639
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->c:Lcom/vk/im/ui/views/avatars/AvatarView;

    invoke-virtual {p1, v1}, Lcom/vk/im/ui/views/avatars/AvatarView;->setVisibility(I)V

    .line 640
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->d:Landroid/widget/Space;

    invoke-virtual {p1, v2}, Landroid/widget/Space;->setVisibility(I)V

    goto :goto_0

    .line 643
    :cond_1
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->c:Lcom/vk/im/ui/views/avatars/AvatarView;

    invoke-virtual {p1}, Lcom/vk/im/ui/views/avatars/AvatarView;->e()V

    .line 644
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->c:Lcom/vk/im/ui/views/avatars/AvatarView;

    invoke-virtual {p1, v1}, Lcom/vk/im/ui/views/avatars/AvatarView;->setVisibility(I)V

    .line 645
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->d:Landroid/widget/Space;

    invoke-virtual {p1, v1}, Landroid/widget/Space;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private f(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;)V
    .locals 8

    .line 651
    iget-object v0, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->b:Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;

    iget-object v0, v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;->c:Lcom/vk/im/engine/models/messages/Msg;

    if-eqz v0, :cond_7

    .line 653
    iget-object v1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->P:Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView;->setStateListener(Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView$d;)V

    .line 654
    invoke-virtual {v0}, Lcom/vk/im/engine/models/messages/Msg;->M1()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/vk/im/engine/models/messages/Msg;->E1()Z

    move-result v1

    if-nez v1, :cond_0

    .line 655
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->P:Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView;->setVisibility(I)V

    goto/16 :goto_3

    .line 657
    :cond_0
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->z()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 658
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->P:Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView;

    invoke-virtual {v0, v2}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView;->setVisibility(I)V

    goto :goto_0

    .line 660
    :cond_1
    iget-object v1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->P:Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView;

    invoke-virtual {v1, v3}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView;->setVisibility(I)V

    .line 661
    invoke-virtual {v0}, Lcom/vk/im/engine/models/messages/Msg;->u1()Ljava/lang/Long;

    move-result-object v1

    .line 662
    invoke-virtual {v0}, Lcom/vk/im/engine/models/messages/Msg;->w1()Ljava/lang/Long;

    move-result-object v4

    .line 663
    iget-object v5, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->P:Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView;

    .line 664
    invoke-virtual {v0}, Lcom/vk/im/engine/models/messages/Msg;->getTime()J

    move-result-wide v6

    if-nez v1, :cond_2

    move-object v1, v4

    .line 670
    :cond_2
    invoke-virtual {v0}, Lcom/vk/im/engine/models/messages/Msg;->d()Lcom/vk/im/engine/models/messages/MsgSyncState;

    move-result-object v0

    invoke-virtual {v5, v6, v7, v1, v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView;->a(JLjava/lang/Long;Lcom/vk/im/engine/models/messages/MsgSyncState;)V

    .line 671
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 672
    invoke-direct {p0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->i0()V

    .line 676
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->c(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;)Lcom/vk/im/ui/views/msg/bubble/MsgBubbleStyle;

    move-result-object v0

    const/16 v1, -0xc

    .line 677
    invoke-static {v1}, Lcom/vk/core/util/Screen;->a(I)I

    move-result v1

    .line 678
    invoke-static {v2}, Lcom/vk/core/util/Screen;->a(I)I

    move-result v2

    .line 679
    invoke-virtual {v0}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleStyle;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, -0x4

    .line 680
    invoke-static {p1}, Lcom/vk/core/util/Screen;->a(I)I

    move-result v1

    goto :goto_2

    .line 682
    :cond_4
    iget-object v0, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->b:Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;

    invoke-direct {p0, v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->a(Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;)Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    .line 683
    sget-object v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$2;->$SwitchMap$com$vk$im$ui$components$viewcontrollers$msg_list$adapter$vh$VhMsg$Style:[I

    iget-object p1, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->b:Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;

    invoke-direct {p0, p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->a(Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;)Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg$Style;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 p1, 0x6

    .line 686
    invoke-static {p1}, Lcom/vk/core/util/Screen;->a(I)I

    move-result p1

    goto :goto_1

    :cond_5
    const/16 p1, 0x9

    .line 685
    invoke-static {p1}, Lcom/vk/core/util/Screen;->a(I)I

    move-result p1

    goto :goto_1

    :cond_6
    const/16 p1, 0xc

    .line 684
    invoke-static {p1}, Lcom/vk/core/util/Screen;->a(I)I

    move-result p1

    :goto_1
    move v2, p1

    .line 690
    :goto_2
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->P:Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView;

    invoke-static {p1, v1, v3, v3, v2}, Lcom/vk/extensions/ViewExtKt;->a(Landroid/view/View;IIII)V

    :cond_7
    :goto_3
    return-void
.end method

.method private g(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;)V
    .locals 3

    .line 696
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->e:Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;

    invoke-direct {p0, p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->c(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;)Lcom/vk/im/ui/views/msg/bubble/MsgBubbleStyle;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->b(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;)Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;

    move-result-object p1

    iget v2, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->b0:I

    invoke-virtual {v0, v1, p1, v2}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->a(Lcom/vk/im/ui/views/msg/bubble/MsgBubbleStyle;Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;I)V

    .line 697
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->e:Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;

    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->a0:Lcom/vk/im/engine/models/dialogs/BubbleColors;

    iget v0, v0, Lcom/vk/im/engine/models/dialogs/BubbleColors;->F:I

    invoke-virtual {p1, v0}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->setFwdNestLineColor(I)V

    return-void
.end method

.method private g0()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 701
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->O:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080767

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->O:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f040022

    .line 703
    invoke-static {v1}, Lcom/vk/core/ui/themes/VKThemeHelper;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->O:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private h(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;)V
    .locals 5

    .line 710
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->V:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 711
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->T:Lcom/vk/im/ui/formatters/DisplayNameFormatter;

    iget-object v2, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->b:Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;

    iget-object v2, v2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;->c:Lcom/vk/im/engine/models/messages/Msg;

    invoke-virtual {v2}, Lcom/vk/im/engine/models/messages/Msg;->getFrom()Lcom/vk/im/engine/models/Member;

    move-result-object v2

    iget-object v3, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->h:Lcom/vk/im/engine/models/ProfilesSimpleInfo;

    iget-object v4, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->V:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/vk/im/ui/formatters/DisplayNameFormatter;->a(Lcom/vk/im/engine/models/Member;Lcom/vk/im/engine/models/ProfilesSimpleInfo;Ljava/lang/StringBuilder;Z)V

    .line 712
    iget-object v0, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->b:Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;

    .line 713
    iget-object v1, v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;->c:Lcom/vk/im/engine/models/messages/Msg;

    .line 714
    iget-object v2, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->V:Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    iget-object v2, v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;->e:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 717
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->V:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 718
    :cond_0
    iget-object v2, v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;->g:Ljava/util/List;

    if-nez v2, :cond_1

    iget-object v0, v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;->f:Lcom/vk/im/engine/models/attaches/Attach;

    if-eqz v0, :cond_2

    .line 719
    :cond_1
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->V:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->W:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->V:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4

    .line 724
    iget-object p1, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->e:Lcom/vk/im/engine/models/dialogs/Dialog;

    if-eqz p1, :cond_4

    .line 726
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->V:Ljava/lang/StringBuilder;

    .line 728
    invoke-virtual {v1, p1}, Lcom/vk/im/engine/models/messages/Msg;->b(Lcom/vk/im/engine/models/dialogs/Dialog;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 729
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->Y:Ljava/lang/String;

    goto :goto_1

    .line 731
    :cond_3
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->X:Ljava/lang/String;

    .line 734
    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    :cond_4
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->e:Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;

    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->V:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private h0()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 742
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->N:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080b0c

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->N:Landroid/graphics/drawable/Drawable;

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->N:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private i(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;)V
    .locals 4

    .line 750
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->c:Lcom/vk/im/ui/views/avatars/AvatarView;

    invoke-virtual {v0}, Lcom/vk/im/ui/views/avatars/AvatarView;->e()V

    .line 751
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->c:Lcom/vk/im/ui/views/avatars/AvatarView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vk/im/ui/views/avatars/AvatarView;->setVisibility(I)V

    .line 752
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->d:Landroid/widget/Space;

    invoke-virtual {v0, v1}, Landroid/widget/Space;->setVisibility(I)V

    .line 753
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->f:Lcom/vk/im/ui/views/msg/MsgStatusView;

    invoke-virtual {v0, v1}, Lcom/vk/im/ui/views/msg/MsgStatusView;->setVisibility(I)V

    .line 754
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->h:Landroid/widget/Space;

    invoke-virtual {v0, v1}, Landroid/widget/Space;->setVisibility(I)V

    .line 755
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 756
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->P:Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView;

    invoke-virtual {v0, v1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView;->setVisibility(I)V

    .line 757
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->B:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;

    iget-object v1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->C:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;

    invoke-virtual {v0, v1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;->a(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;)V

    .line 758
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->b:Lcom/vk/core/widget/FluidHorizontalLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/vk/core/widget/FluidHorizontalLayout;->setPaddingRelative(IIII)V

    .line 759
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->e:Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;

    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->t()Z

    move-result v2

    invoke-static {v2}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleStyle;->a(Z)Lcom/vk/im/ui/views/msg/bubble/MsgBubbleStyle;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->b(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;)Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;

    move-result-object p1

    iget v3, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->b0:I

    invoke-virtual {v0, v2, p1, v3}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->a(Lcom/vk/im/ui/views/msg/bubble/MsgBubbleStyle;Lcom/vk/im/ui/views/msg/bubble/MsgBubblePart;I)V

    .line 760
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->e:Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;

    invoke-virtual {p1, v1}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->setClipToPadding(Z)V

    .line 761
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->e:Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;

    invoke-virtual {p1, v1}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->setClipChildren(Z)V

    .line 762
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->e:Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;

    invoke-virtual {p1, v1}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->setFwdNestLevel(I)V

    .line 763
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->e:Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;

    invoke-virtual {p1, v1, v1, v1, v1}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->a(IIII)V

    .line 764
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->e:Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->setMaximumWidth(I)V

    return-void
.end method

.method private i0()V
    .locals 2

    .line 768
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->P:Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView;

    invoke-virtual {v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView;->getCurrentState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->u(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->P:Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView;->setVisibility(I)V

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->P:Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView;

    iget-object v1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->Q:Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView$d;

    invoke-virtual {v0, v1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView;->setStateListener(Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView$d;)V

    return-void
.end method

.method private j(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;)V
    .locals 5

    .line 777
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    iget v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->M:I

    goto :goto_0

    .line 780
    :cond_0
    iget v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->L:I

    .line 783
    :goto_0
    iget-object v1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->b:Lcom/vk/core/widget/FluidHorizontalLayout;

    const/4 v2, 0x0

    .line 785
    invoke-virtual {v1, v0, v2, v2, v2}, Lcom/vk/core/widget/FluidHorizontalLayout;->setPaddingRelative(IIII)V

    .line 786
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->D:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->b(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;Landroid/graphics/Rect;)V

    .line 787
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->E:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->a(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;Landroid/graphics/Rect;)V

    .line 788
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->e:Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;

    iget-object v1, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->b:Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;

    iget v1, v1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;->i:I

    invoke-virtual {v0, v1}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->setFwdNestLevel(I)V

    .line 789
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->e:Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;

    iget-object v1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->D:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->setFwdPadding(Landroid/graphics/Rect;)V

    .line 790
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->e:Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;

    iget-object v1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->E:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->setContentPadding(Landroid/graphics/Rect;)V

    .line 792
    iget-object v0, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->b:Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;

    iget v0, v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;->a:I

    const/16 v1, 0x53

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 795
    :goto_1
    iget-object v4, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->a:Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;

    iget v4, v4, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;->a:I

    if-ne v4, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 797
    :goto_2
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->F()Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v1, 0x1

    .line 799
    :goto_4
    iget-object v4, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->e:Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;

    if-eqz v1, :cond_7

    .line 804
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->C()Z

    move-result v1

    if-nez v1, :cond_6

    .line 806
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->z()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_5

    .line 811
    :cond_5
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->x()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    const/4 v2, 0x1

    .line 820
    :cond_7
    :goto_5
    invoke-virtual {v4, v2}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->setContentFitAllWidth(Z)V

    .line 821
    iget-object v1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->C:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;

    invoke-direct {p0, p1, v1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->b(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;)V

    .line 822
    iget-object v1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->C:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;

    invoke-direct {p0, p1, v1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->a(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;)V

    .line 823
    iget-object v1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->B:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;

    iget-object v2, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->C:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;

    invoke-virtual {v1, v2}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;->a(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;)V

    .line 824
    iget-object v1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->B:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;

    iget-object v2, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->a0:Lcom/vk/im/engine/models/dialogs/BubbleColors;

    invoke-virtual {v1, v2}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;->a(Lcom/vk/im/engine/models/dialogs/BubbleColors;)V

    .line 825
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 826
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->e:Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;

    iget v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->I:I

    invoke-virtual {p1, v0}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->setMaximumWidth(I)V

    goto :goto_6

    .line 827
    :cond_8
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->E()Z

    move-result v1

    if-eqz v1, :cond_9

    if-nez v0, :cond_9

    .line 828
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->e:Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;

    iget v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->K:I

    invoke-virtual {p1, v0}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->setMaximumWidth(I)V

    goto :goto_6

    .line 830
    :cond_9
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->h()Z

    move-result v1

    if-eqz v1, :cond_b

    if-nez v0, :cond_b

    .line 831
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->a()I

    move-result v0

    invoke-static {v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartAudioMsgHolder;->d(I)I

    move-result v0

    .line 832
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->g()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 833
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->e:Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;

    iget v1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->J:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->setMaximumWidth(I)V

    goto :goto_6

    .line 835
    :cond_a
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->e:Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;

    invoke-virtual {p1, v0}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->setMaximumWidth(I)V

    goto :goto_6

    .line 838
    :cond_b
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->e:Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;

    iget v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->I:I

    invoke-virtual {p1, v0}, Lcom/vk/im/ui/views/msg/bubble/MsgBubbleView;->setMaximumWidth(I)V

    :goto_6
    return-void
.end method

.method private k(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;)V
    .locals 2

    .line 845
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 846
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->H:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 848
    :cond_0
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private l(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;)V
    .locals 1

    .line 854
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->u()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 855
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->b:Lcom/vk/core/widget/FluidHorizontalLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/vk/core/widget/FluidHorizontalLayout;->setOrder(I)V

    .line 856
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->b:Lcom/vk/core/widget/FluidHorizontalLayout;

    const v0, 0x800005

    invoke-virtual {p1, v0}, Lcom/vk/core/widget/FluidHorizontalLayout;->setGravity(I)V

    .line 857
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->P:Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView;

    const v0, 0x800055

    invoke-virtual {p1, v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView;->setBombGravity(I)V

    goto :goto_0

    .line 859
    :cond_0
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->b:Lcom/vk/core/widget/FluidHorizontalLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/vk/core/widget/FluidHorizontalLayout;->setOrder(I)V

    .line 860
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->b:Lcom/vk/core/widget/FluidHorizontalLayout;

    const v0, 0x800003

    invoke-virtual {p1, v0}, Lcom/vk/core/widget/FluidHorizontalLayout;->setGravity(I)V

    .line 861
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->P:Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView;

    const v0, 0x800053

    invoke-virtual {p1, v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView;->setBombGravity(I)V

    :goto_0
    return-void
.end method

.method private m(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;)Z
    .locals 5

    .line 867
    iget-object v0, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->b:Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;

    .line 868
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->k()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 874
    :cond_0
    iget v1, v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;->a:I

    const/16 v3, 0x32

    const/4 v4, 0x1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 877
    :goto_0
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->z()Z

    move-result v3

    if-nez v3, :cond_2

    iget v0, v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;->i:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v1, :cond_3

    if-nez v0, :cond_3

    .line 879
    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->y()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->x()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method private p(I)V
    .locals 1

    .line 888
    invoke-direct {p0, p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->u(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 889
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->P:Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/BombView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private u(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public L()I
    .locals 1

    .line 902
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->d0:Lcom/vk/im/engine/models/messages/Msg;

    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {v0}, Lcom/vk/im/engine/models/messages/Msg;->getLocalId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Z()Z
    .locals 4

    .line 914
    invoke-virtual {p0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->f0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->d0:Lcom/vk/im/engine/models/messages/Msg;

    if-eqz v0, :cond_0

    .line 917
    iget-object v2, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->e0:Lcom/vk/im/engine/models/dialogs/Dialog;

    if-eqz v2, :cond_0

    .line 918
    sget-object v3, Lcom/vk/im/engine/utils/MsgPermissionHelper;->b:Lcom/vk/im/engine/utils/MsgPermissionHelper;

    invoke-virtual {v3, v2, v0}, Lcom/vk/im/engine/utils/MsgPermissionHelper;->a(Lcom/vk/im/engine/models/dialogs/Dialog;Lcom/vk/im/engine/models/messages/Msg;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public a(III)V
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->B:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;->a(III)V

    return-void
.end method

.method public a(Lcom/vk/im/engine/models/Profile;)V
    .locals 3

    .line 929
    invoke-virtual {p0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->f0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->d0:Lcom/vk/im/engine/models/messages/Msg;

    if-eqz v0, :cond_0

    .line 931
    invoke-interface {p1}, Lcom/vk/im/engine/models/Profile;->S()Lcom/vk/im/engine/models/MemberType;

    move-result-object v1

    invoke-interface {p1}, Lcom/vk/im/engine/models/Profile;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vk/im/engine/models/messages/Msg;->a(Lcom/vk/im/engine/models/MemberType;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBase;->a:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;

    invoke-direct {p0, v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->e(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;)V

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->C:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;

    iget-object v1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBase;->a:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;

    iget-object v1, v1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->h:Lcom/vk/im/engine/models/ProfilesSimpleInfo;

    iput-object v1, v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->n:Lcom/vk/im/engine/models/ProfilesSimpleInfo;

    .line 937
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->B:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;

    invoke-virtual {v0, p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;->a(Lcom/vk/im/engine/models/Profile;)V

    return-void
.end method

.method public a(Lcom/vk/im/engine/models/messages/Msg;I)V
    .locals 1

    .line 941
    invoke-virtual {p0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->f0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->B:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;

    check-cast v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/carousel/MsgPartCarouselHolder;

    invoke-virtual {v0, p1, p2}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/carousel/MsgPartCarouselHolder;->a(Lcom/vk/im/engine/models/messages/Msg;I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/AudioMsgInfo;)V
    .locals 1

    .line 948
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->B:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;

    invoke-virtual {v0, p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;->a(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/AudioMsgInfo;)V

    return-void
.end method

.method public a(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 953
    invoke-static {}, Lcom/vk/core/ui/themes/VKThemeHelper;->l()Lcom/vk/core/ui/themes/VKTheme;

    move-result-object v2

    sget-object v3, Lcom/vk/core/ui/themes/VKTheme;->VKAPP_LIGHT:Lcom/vk/core/ui/themes/VKTheme;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 955
    :goto_0
    iput-boolean v2, v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->Z:Z

    .line 956
    iget-object v2, v1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->b:Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;

    .line 957
    iget v3, v2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;->a:I

    iput v3, v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->f0:I

    .line 958
    iget-object v3, v1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->A:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgListAdapterCallback;

    iput-object v3, v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->c0:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgListAdapterCallback;

    .line 959
    iget-object v2, v2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/entry/AdapterEntry;->c:Lcom/vk/im/engine/models/messages/Msg;

    iput-object v2, v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->d0:Lcom/vk/im/engine/models/messages/Msg;

    .line 960
    iget-object v2, v1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->e:Lcom/vk/im/engine/models/dialogs/Dialog;

    iput-object v2, v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->e0:Lcom/vk/im/engine/models/dialogs/Dialog;

    .line 961
    iget-object v5, v1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->f:Lcom/vk/im/engine/models/dialogs/DialogTheme;

    invoke-virtual/range {p1 .. p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->b()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->t()Z

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->H()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->q()Z

    move-result v9

    iget-boolean v10, v1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->k:Z

    invoke-static/range {v5 .. v10}, Lcom/vk/im/ui/themes/DialogThemesExt;->a(Lcom/vk/im/engine/models/dialogs/DialogTheme;IZIZZ)Lcom/vk/im/engine/models/dialogs/BubbleColors;

    move-result-object v11

    iput-object v11, v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->a0:Lcom/vk/im/engine/models/dialogs/BubbleColors;

    .line 962
    invoke-virtual/range {p1 .. p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->p()Z

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->v()Z

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->H()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->q()Z

    move-result v15

    iget-boolean v2, v1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;->k:Z

    move/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Lcom/vk/im/engine/models/dialogs/BubbleColors;->a(ZZIZZ)I

    move-result v2

    iput v2, v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->b0:I

    .line 963
    iget-object v2, v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->f:Lcom/vk/im/ui/views/msg/MsgStatusView;

    iget-object v3, v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->a0:Lcom/vk/im/engine/models/dialogs/BubbleColors;

    iget v3, v3, Lcom/vk/im/engine/models/dialogs/BubbleColors;->Q:I

    invoke-virtual {v2, v3}, Lcom/vk/im/ui/views/msg/MsgStatusView;->setSendingIconsColor(I)V

    .line 964
    iget-object v2, v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->f:Lcom/vk/im/ui/views/msg/MsgStatusView;

    iget-object v3, v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->a0:Lcom/vk/im/engine/models/dialogs/BubbleColors;

    iget v3, v3, Lcom/vk/im/engine/models/dialogs/BubbleColors;->Q:I

    invoke-virtual {v2, v3}, Lcom/vk/im/ui/views/msg/MsgStatusView;->setUnreadIconsColor(I)V

    .line 965
    iget-object v2, v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->C:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->b(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;)V

    .line 966
    invoke-direct/range {p0 .. p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->l(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;)V

    .line 967
    invoke-virtual/range {p0 .. p0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->f0()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 968
    invoke-direct/range {p0 .. p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->i(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;)V

    goto :goto_1

    .line 970
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->e(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;)V

    .line 971
    invoke-direct/range {p0 .. p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->g(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;)V

    .line 972
    invoke-direct/range {p0 .. p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->k(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;)V

    .line 973
    invoke-direct {v0, v1, v4}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->a(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;Z)V

    .line 974
    invoke-direct/range {p0 .. p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->j(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;)V

    .line 975
    invoke-direct/range {p0 .. p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->d(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;)V

    .line 976
    invoke-direct/range {p0 .. p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->f(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;)V

    :goto_1
    return-void
.end method

.method public a(Lcom/vk/im/ui/media/audio/AudioTrack;)V
    .locals 1

    .line 982
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->B:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;

    invoke-virtual {v0, p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;->a(Lcom/vk/im/ui/media/audio/AudioTrack;)V

    return-void
.end method

.method public a(Lcom/vk/im/ui/views/sticker/StickerAnimationState;)V
    .locals 1

    .line 986
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->B:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;

    invoke-virtual {v0, p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;->a(Lcom/vk/im/ui/views/sticker/StickerAnimationState;)V

    return-void
.end method

.method public a0()Landroid/view/View;
    .locals 1

    .line 991
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->itemView:Landroid/view/View;

    return-object v0
.end method

.method public c0()V
    .locals 2

    .line 995
    invoke-virtual {p0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->f0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 996
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBase;->a:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->a(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/VhBindArgs;Z)V

    :cond_0
    return-void
.end method

.method public d0()V
    .locals 2

    const/4 v0, 0x0

    .line 1002
    iput-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->c0:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgListAdapterCallback;

    .line 1003
    iget-object v1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->C:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;

    iput-object v0, v1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->H:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgListAdapterCallback;

    .line 1004
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->B:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;

    invoke-virtual {v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;->b()V

    return-void
.end method

.method public e0()Lcom/vk/im/engine/models/messages/Msg;
    .locals 1

    .line 1009
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->d0:Lcom/vk/im/engine/models/messages/Msg;

    return-object v0
.end method

.method public f0()Z
    .locals 2

    .line 1014
    iget v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->f0:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i(I)Landroid/view/View;
    .locals 1

    .line 1020
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->B:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;

    invoke-virtual {v0, p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;->a(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public l(I)V
    .locals 1

    .line 1024
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->B:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;

    invoke-virtual {v0, p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;->b(I)V

    return-void
.end method

.method synthetic lambda$new$0$com-vk-im-ui-components-viewcontrollers-msg_list-adapter-vh-VhMsg(Landroid/view/View;)V
    .locals 1

    .line 155
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->c0:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgListAdapterCallback;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->d0:Lcom/vk/im/engine/models/messages/Msg;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lcom/vk/im/engine/models/messages/Msg;->getFrom()Lcom/vk/im/engine/models/Member;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgListAdapterCallback;->a(Lcom/vk/im/engine/models/Member;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$new$1$com-vk-im-ui-components-viewcontrollers-msg_list-adapter-vh-VhMsg(Landroid/view/View;)Z
    .locals 1

    .line 161
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->c0:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgListAdapterCallback;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->d0:Lcom/vk/im/engine/models/messages/Msg;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/vk/im/engine/models/messages/Msg;->getFrom()Lcom/vk/im/engine/models/Member;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgListAdapterCallback;->a(Lcom/vk/im/engine/models/Member;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$new$2$com-vk-im-ui-components-viewcontrollers-msg_list-adapter-vh-VhMsg(Landroid/view/View;)V
    .locals 1

    .line 169
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->c0:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgListAdapterCallback;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->d0:Lcom/vk/im/engine/models/messages/Msg;

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {p1, v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgListAdapterCallback;->a(Lcom/vk/im/engine/models/messages/Msg;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$new$3$com-vk-im-ui-components-viewcontrollers-msg_list-adapter-vh-VhMsg(Landroid/view/View;)V
    .locals 1

    .line 175
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->c0:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgListAdapterCallback;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->d0:Lcom/vk/im/engine/models/messages/Msg;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Lcom/vk/im/engine/models/messages/Msg;->getLocalId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgListAdapterCallback;->a(I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$new$4$com-vk-im-ui-components-viewcontrollers-msg_list-adapter-vh-VhMsg(Landroid/view/View;)Z
    .locals 1

    .line 181
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->c0:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgListAdapterCallback;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->d0:Lcom/vk/im/engine/models/messages/Msg;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/vk/im/engine/models/messages/Msg;->getLocalId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgListAdapterCallback;->b(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public m(I)V
    .locals 1

    .line 1028
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/vh/VhMsg;->B:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;

    invoke-virtual {v0, p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;->c(I)V

    return-void
.end method
