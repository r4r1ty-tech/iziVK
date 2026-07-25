.class public final Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;
.super Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;
.source "MsgPartCallHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase<",
        "Lcom/vk/im/engine/models/attaches/AttachCall;",
        ">;"
    }
.end annotation


# static fields
.field public static final I:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder$a;


# instance fields
.field private final C:Landroid/content/Context;

.field private final D:Lcom/vk/core/util/DurationFormatter;

.field private final E:Ljava/lang/StringBuilder;

.field private final F:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/utils/MsgTimeFormatter;

.field private final G:Ljava/lang/StringBuilder;

.field private final H:Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;

.field private incoming:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder$a;-><init>(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder$a-IA;)V

    sput-object v0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->I:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder$a;

    return-void
.end method

.method public constructor <init>(Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->H:Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;

    .line 40
    invoke-virtual {p1}, Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->C:Landroid/content/Context;

    .line 41
    invoke-virtual {p1}, Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "view.context"

    .line 42
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/vk/core/util/DurationFormatter;

    invoke-direct {v0, p1}, Lcom/vk/core/util/DurationFormatter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->D:Lcom/vk/core/util/DurationFormatter;

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->E:Ljava/lang/StringBuilder;

    .line 45
    sget-object p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/utils/MsgTimeFormatter;->f:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/utils/MsgTimeFormatter;

    iput-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->F:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/utils/MsgTimeFormatter;

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->G:Ljava/lang/StringBuilder;

    return-void
.end method

.method private a(Lcom/vk/im/engine/models/messages/Msg;)V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->G:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 51
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->F:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/utils/MsgTimeFormatter;

    .line 52
    iget-object v1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->C:Landroid/content/Context;

    const-string v2, "context"

    .line 53
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->G:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, v1, v2}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/utils/MsgTimeFormatter;->a(Lcom/vk/im/engine/models/messages/Msg;Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 55
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->H:Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;

    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->G:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;->setTimeText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->H:Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;

    if-eqz p1, :cond_0

    const p1, 0x7f080aed

    goto :goto_0

    :cond_0
    const p1, 0x7f080ae4

    .line 67
    :goto_0
    invoke-virtual {v0, p1}, Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;->setIcon(I)V

    return-void
.end method

.method private a(ZLcom/vk/im/engine/models/attaches/AttachCall;)V
    .locals 3

    .line 72
    invoke-virtual {p2}, Lcom/vk/im/engine/models/attaches/AttachCall;->h()Lcom/vk/im/engine/models/CallState;

    move-result-object v0

    sget-object v1, Lcom/vk/im/engine/models/CallState;->ERROR:Lcom/vk/im/engine/models/CallState;

    const v2, 0x7f130359

    if-ne v0, v1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->H:Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;

    const p2, 0x7f12130e

    invoke-virtual {p1, p2}, Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;->setSubtitleText(I)V

    .line 74
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->H:Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;

    invoke-virtual {p1, v2}, Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;->setSubtitleTextAppearance(I)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p2}, Lcom/vk/im/engine/models/attaches/AttachCall;->h()Lcom/vk/im/engine/models/CallState;

    move-result-object v0

    sget-object v1, Lcom/vk/im/engine/models/CallState;->DONE:Lcom/vk/im/engine/models/CallState;

    if-ne v0, v1, :cond_1

    .line 76
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->E:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 77
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->D:Lcom/vk/core/util/DurationFormatter;

    invoke-virtual {p2}, Lcom/vk/im/engine/models/attaches/AttachCall;->a()I

    move-result p2

    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->E:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, v0}, Lcom/vk/core/util/DurationFormatter;->a(ILjava/lang/StringBuilder;)V

    .line 78
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->H:Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;

    iget-object p2, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->E:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;->setSubtitleText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->H:Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;

    const p2, 0x7f130358

    invoke-virtual {p1, p2}, Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;->setSubtitleTextAppearance(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 81
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->H:Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;

    const p2, 0x7f121310

    invoke-virtual {p1, p2}, Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;->setSubtitleText(I)V

    .line 82
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->H:Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;

    invoke-virtual {p1, v2}, Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;->setSubtitleTextAppearance(I)V

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p2}, Lcom/vk/im/engine/models/attaches/AttachCall;->h()Lcom/vk/im/engine/models/CallState;

    move-result-object p1

    sget-object v0, Lcom/vk/im/engine/models/CallState;->CANCELLED:Lcom/vk/im/engine/models/CallState;

    if-ne p1, v0, :cond_3

    .line 84
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->H:Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;

    const p2, 0x7f12130c

    invoke-virtual {p1, p2}, Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;->setSubtitleText(I)V

    .line 85
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->H:Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;

    invoke-virtual {p1, v2}, Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;->setSubtitleTextAppearance(I)V

    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {p2}, Lcom/vk/im/engine/models/attaches/AttachCall;->h()Lcom/vk/im/engine/models/CallState;

    move-result-object p1

    sget-object p2, Lcom/vk/im/engine/models/CallState;->DECLINED:Lcom/vk/im/engine/models/CallState;

    if-ne p1, p2, :cond_4

    .line 87
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->H:Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;

    const p2, 0x7f12130d

    invoke-virtual {p1, p2}, Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;->setSubtitleText(I)V

    .line 88
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->H:Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;

    invoke-virtual {p1, v2}, Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;->setSubtitleTextAppearance(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private b(Z)V
    .locals 1

    .line 94
    iput-boolean p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->incoming:Z

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->H:Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;

    const v0, 0x7f12130f

    invoke-virtual {p1, v0}, Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;->setTitleText(I)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->H:Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;

    const v0, 0x7f121311

    invoke-virtual {p1, v0}, Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;->setTitleText(I)V

    :goto_0
    return-void
.end method

.method private c()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->H:Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;->setTimeText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private c(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;)V
    .locals 1

    .line 107
    iget-object v0, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->H:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgListAdapterCallback;

    iput-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;->f:Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgListAdapterCallback;

    .line 108
    iget-object v0, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->a:Lcom/vk/im/engine/models/messages/Msg;

    iput-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;->g:Lcom/vk/im/engine/models/messages/Msg;

    .line 109
    iget-object v0, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->b:Lcom/vk/im/engine/models/messages/NestedMsg;

    iput-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;->h:Lcom/vk/im/engine/models/messages/NestedMsg;

    .line 110
    iget-object p1, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->d:Lcom/vk/im/engine/models/attaches/Attach;

    if-eqz p1, :cond_0

    .line 112
    check-cast p1, Lcom/vk/im/engine/models/attaches/AttachCall;

    iput-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;->B:Lcom/vk/im/engine/models/attaches/Attach;

    return-void

    .line 114
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.vk.im.engine.models.attaches.AttachCall"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 119
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->H:Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;

    new-instance p2, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder$$ExternalSyntheticLambda0;-><init>(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;)V

    invoke-virtual {p1, p2}, Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->H:Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;

    return-object p1
.end method

.method protected b(Lcom/vk/im/engine/models/dialogs/BubbleColors;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->H:Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;

    invoke-virtual {p0, v0, p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->a(Lcom/vk/im/ui/views/msg/MsgPartIconTwoRowView;Lcom/vk/im/engine/models/dialogs/BubbleColors;)V

    return-void
.end method

.method protected b(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;)V
    .locals 5

    .line 134
    iget-object v0, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->a:Lcom/vk/im/engine/models/messages/Msg;

    if-eqz v0, :cond_2

    .line 136
    iget-object v1, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->d:Lcom/vk/im/engine/models/attaches/Attach;

    if-eqz v1, :cond_1

    .line 138
    check-cast v1, Lcom/vk/im/engine/models/attaches/AttachCall;

    .line 139
    invoke-virtual {v1}, Lcom/vk/im/engine/models/attaches/AttachCall;->f()Lcom/vk/im/engine/models/Member;

    move-result-object v2

    .line 140
    iget-object v3, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->m:Lcom/vk/im/engine/models/Member;

    const-string v4, "bindArgs.currentMember"

    .line 141
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v2, v3}, Lcom/vk/im/engine/models/Member;->e(Lcom/vk/im/engine/models/Member;)Z

    move-result v2

    .line 143
    invoke-virtual {v1}, Lcom/vk/im/engine/models/attaches/AttachCall;->i()Z

    move-result v3

    .line 144
    invoke-direct {p0, p1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->c(Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;)V

    .line 145
    invoke-direct {p0, v2}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->b(Z)V

    .line 146
    invoke-direct {p0, v2, v1}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->a(ZLcom/vk/im/engine/models/attaches/AttachCall;)V

    .line 147
    invoke-direct {p0, v3}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->a(Z)V

    .line 148
    iget-boolean p1, p1, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBindArgs;->f:Z

    if-eqz p1, :cond_0

    .line 149
    invoke-direct {p0, v0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->a(Lcom/vk/im/engine/models/messages/Msg;)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->c()V

    :goto_0
    return-void

    .line 155
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.vk.im.engine.models.attaches.AttachCall"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 158
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    const/4 p1, 0x0

    .line 159
    throw p1
.end method

.method synthetic lambda$b$0$com-vk-im-ui-components-viewcontrollers-msg_list-adapter-msgparts-MsgPartCallHolder(Landroid/view/View;)V
    .locals 1

    .line 120
    iget-boolean p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->incoming:Z

    if-eqz p1, :cond_0

    .line 121
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->C:Landroid/content/Context;

    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;->B:Lcom/vk/im/engine/models/attaches/Attach;

    check-cast v0, Lcom/vk/im/engine/models/attaches/AttachCall;

    invoke-virtual {v0}, Lcom/vk/im/engine/models/attaches/AttachCall;->f()Lcom/vk/im/engine/models/Member;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/im/engine/models/Member;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lru/vtosters/hooks/CallsHook;->forwardToVkOffApps(Landroid/content/Context;I)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/msgparts/MsgPartCallHolder;->C:Landroid/content/Context;

    iget-object v0, p0, Lcom/vk/im/ui/components/viewcontrollers/msg_list/adapter/MsgPartHolderBase;->B:Lcom/vk/im/engine/models/attaches/Attach;

    check-cast v0, Lcom/vk/im/engine/models/attaches/AttachCall;

    invoke-virtual {v0}, Lcom/vk/im/engine/models/attaches/AttachCall;->g()Lcom/vk/im/engine/models/Member;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/im/engine/models/Member;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lru/vtosters/hooks/CallsHook;->forwardToVkOffApps(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method
