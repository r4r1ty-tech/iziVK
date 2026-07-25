.class public final Lcom/vk/im/ui/components/common/DialogActionsHelper;
.super Ljava/lang/Object;
.source "DialogActionsHelper.java"


# static fields
.field public static final a:Lcom/vk/im/ui/components/common/DialogActionsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/vk/im/ui/components/common/DialogActionsHelper;

    invoke-direct {v0}, Lcom/vk/im/ui/components/common/DialogActionsHelper;-><init>()V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogActionsHelper;->a:Lcom/vk/im/ui/components/common/DialogActionsHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/vk/im/engine/ImConfig;Lcom/vk/im/engine/models/dialogs/Dialog;Lcom/vk/im/engine/models/ProfilesSimpleInfo;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/im/engine/ImConfig;",
            "Lcom/vk/im/engine/models/dialogs/Dialog;",
            "Lcom/vk/im/engine/models/ProfilesSimpleInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/vk/im/ui/components/common/DialogAction;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    .line 24
    sget-object p1, Lcom/vk/core/network/TimeProvider;->f:Lcom/vk/core/network/TimeProvider;

    invoke-virtual {p1}, Lcom/vk/core/network/TimeProvider;->b()J

    move-result-wide v0

    .line 25
    invoke-virtual {p2}, Lcom/vk/im/engine/models/dialogs/Dialog;->z1()Lcom/vk/im/engine/models/dialogs/ChatSettings;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p1}, Lcom/vk/im/engine/models/dialogs/ChatSettings;->I1()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-static {p2, v4}, Lru/vtosters/hooks/DialogMenuInjectors;->inject(Lcom/vk/im/engine/models/dialogs/Dialog;Ljava/util/List;)V

    .line 32
    sget-object v5, Lcom/vk/im/ui/components/common/DialogAction;->SEARCH:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {p2}, Lcom/vk/im/engine/models/dialogs/Dialog;->S1()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 35
    sget-object v5, Lcom/vk/im/ui/components/common/DialogAction;->SHOW_ATTACHES:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez p1, :cond_2

    .line 38
    invoke-virtual {p2}, Lcom/vk/im/engine/models/dialogs/Dialog;->W1()Z

    move-result v5

    if-nez v5, :cond_2

    .line 39
    sget-object v5, Lcom/vk/im/ui/components/common/DialogAction;->CLEAR_HISTORY:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p1, :cond_3

    .line 43
    sget-object v5, Lcom/vk/im/ui/components/common/DialogAction;->CHANNEL_INVITE_LINK:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_3
    invoke-virtual {p2}, Lcom/vk/im/engine/models/dialogs/Dialog;->K1()Lcom/vk/im/engine/models/messages/PinnedMsg;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 47
    sget-object v5, Lcom/vk/im/ui/components/common/DialogAction;->PINNED_MSG_DETACH:Lcom/vk/im/ui/components/common/DialogAction;

    xor-int/2addr p1, v3

    invoke-static {v4, v5, p1}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    .line 48
    sget-object p1, Lcom/vk/im/ui/components/common/DialogAction;->PINNED_MSG_SHOW:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-virtual {p2}, Lcom/vk/im/engine/models/dialogs/Dialog;->L1()Z

    move-result v5

    xor-int/2addr v5, v3

    invoke-static {v4, p1, v5}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    .line 49
    sget-object p1, Lcom/vk/im/ui/components/common/DialogAction;->PINNED_MSG_HIDE:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-virtual {p2}, Lcom/vk/im/engine/models/dialogs/Dialog;->L1()Z

    move-result v5

    invoke-static {v4, p1, v5}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    .line 52
    :cond_4
    sget-object p1, Lcom/vk/im/engine/models/MemberType;->USER:Lcom/vk/im/engine/models/MemberType;

    invoke-virtual {p2, p1}, Lcom/vk/im/engine/models/dialogs/Dialog;->a(Lcom/vk/im/engine/models/MemberType;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 53
    sget-object p1, Lcom/vk/im/ui/components/common/DialogAction;->OPEN_USER_PROFILE:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_5
    sget-object p1, Lcom/vk/im/engine/models/MemberType;->GROUP:Lcom/vk/im/engine/models/MemberType;

    invoke-virtual {p2, p1}, Lcom/vk/im/engine/models/dialogs/Dialog;->a(Lcom/vk/im/engine/models/MemberType;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 57
    sget-object p1, Lcom/vk/im/ui/components/common/DialogAction;->OPEN_GROUP_PROFILE:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {p3}, Lcom/vk/im/engine/models/ProfilesSimpleInfo;->w1()Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p2}, Lcom/vk/im/engine/models/dialogs/Dialog;->I1()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vk/im/engine/models/groups/Group;

    if-eqz p1, :cond_7

    .line 60
    invoke-virtual {p1}, Lcom/vk/im/engine/models/groups/Group;->v1()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 61
    sget-object p1, Lcom/vk/im/ui/components/common/DialogAction;->GROUP_RECEIVE_MSGS_DISABLE:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 63
    :cond_6
    sget-object p3, Lcom/vk/im/ui/components/common/DialogAction;->GROUP_RECEIVE_NOTIFY_DISABLE:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-virtual {p1}, Lcom/vk/im/engine/models/groups/Group;->w1()Z

    move-result v5

    invoke-static {v4, p3, v5}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    .line 64
    sget-object p3, Lcom/vk/im/ui/components/common/DialogAction;->GROUP_RECEIVE_MSGS_ENABLE:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-virtual {p1}, Lcom/vk/im/engine/models/groups/Group;->w1()Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-static {v4, p3, p1}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    .line 69
    :cond_7
    :goto_1
    invoke-virtual {p2}, Lcom/vk/im/engine/models/dialogs/Dialog;->W1()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 70
    sget-object p1, Lcom/vk/im/ui/components/common/DialogAction;->ADD_CHAT_MEMBER:Lcom/vk/im/ui/components/common/DialogAction;

    .line 71
    invoke-virtual {p2}, Lcom/vk/im/engine/models/dialogs/Dialog;->z1()Lcom/vk/im/engine/models/dialogs/ChatSettings;

    move-result-object p3

    if-eqz p3, :cond_8

    .line 73
    invoke-virtual {p3}, Lcom/vk/im/engine/models/dialogs/ChatSettings;->y1()Z

    move-result v2

    .line 75
    :cond_8
    invoke-static {v4, p1, v2}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    .line 76
    sget-object p1, Lcom/vk/im/ui/components/common/DialogAction;->CHAT_SETTINGS:Lcom/vk/im/ui/components/common/DialogAction;

    sget-object p3, Lcom/vk/im/engine/utils/DialogPermissionHelper;->a:Lcom/vk/im/engine/utils/DialogPermissionHelper;

    invoke-virtual {p3, p2}, Lcom/vk/im/engine/utils/DialogPermissionHelper;->a(Lcom/vk/im/engine/models/dialogs/Dialog;)Z

    move-result p3

    invoke-static {v4, p1, p3}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    .line 79
    :cond_9
    sget-object p1, Lcom/vk/im/ui/components/common/DialogAction;->NOTIFICATIONS_ON:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-virtual {p2, v0, v1}, Lcom/vk/im/engine/models/dialogs/Dialog;->b(J)Z

    move-result p3

    xor-int/2addr p3, v3

    invoke-static {v4, p1, p3}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    .line 80
    sget-object p1, Lcom/vk/im/ui/components/common/DialogAction;->NOTIFICATIONS_OFF:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-virtual {p2, v0, v1}, Lcom/vk/im/engine/models/dialogs/Dialog;->b(J)Z

    move-result p2

    invoke-static {v4, p1, p2}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    return-object v4

    .line 84
    :cond_a
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public a(Lcom/vk/im/engine/models/dialogs/Dialog;Lcom/vk/im/engine/models/ProfilesSimpleInfo;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/im/engine/models/dialogs/Dialog;",
            "Lcom/vk/im/engine/models/ProfilesSimpleInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/vk/im/ui/components/common/DialogAction;",
            ">;"
        }
    .end annotation

    .line 88
    sget-object v0, Lcom/vk/core/network/TimeProvider;->f:Lcom/vk/core/network/TimeProvider;

    invoke-virtual {v0}, Lcom/vk/core/network/TimeProvider;->b()J

    move-result-wide v0

    .line 89
    invoke-virtual {p1}, Lcom/vk/im/engine/models/dialogs/Dialog;->getId()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/vk/im/engine/models/ProfilesSimpleInfo;->get(I)Lcom/vk/im/engine/models/Profile;

    move-result-object p2

    .line 91
    instance-of v2, p2, Lcom/vk/im/engine/models/groups/Group;

    if-nez v2, :cond_0

    const/4 p2, 0x0

    .line 95
    :cond_0
    check-cast p2, Lcom/vk/im/engine/models/groups/Group;

    .line 96
    invoke-virtual {p1}, Lcom/vk/im/engine/models/dialogs/Dialog;->z1()Lcom/vk/im/engine/models/dialogs/ChatSettings;

    move-result-object v2

    .line 97
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-static {p1, v3}, Lru/vtosters/hooks/DialogMenuInjectors;->inject(Lcom/vk/im/engine/models/dialogs/Dialog;Ljava/util/List;)V

    .line 102
    sget-object v4, Lcom/vk/im/ui/components/common/DialogAction;->MARK_AS_READ:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {p1}, Lcom/vk/im/engine/models/dialogs/Dialog;->W1()Z

    move-result v4

    if-nez v4, :cond_1

    .line 106
    sget-object v4, Lcom/vk/im/ui/components/common/DialogAction;->CREATE_SHORTCUT:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v4, Lcom/vk/im/ui/components/common/DialogAction;->CLEAR_HISTORY:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v4, Lcom/vk/im/ui/components/common/DialogAction;->NOTIFICATIONS_OFF:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-virtual {p1, v0, v1}, Lcom/vk/im/engine/models/dialogs/Dialog;->b(J)Z

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    .line 109
    sget-object v4, Lcom/vk/im/ui/components/common/DialogAction;->NOTIFICATIONS_ON:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-virtual {p1, v0, v1}, Lcom/vk/im/engine/models/dialogs/Dialog;->b(J)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    .line 112
    :cond_1
    sget-object v4, Lcom/vk/im/engine/models/MemberType;->GROUP:Lcom/vk/im/engine/models/MemberType;

    invoke-virtual {p1, v4}, Lcom/vk/im/engine/models/dialogs/Dialog;->a(Lcom/vk/im/engine/models/MemberType;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p2, :cond_3

    .line 113
    invoke-virtual {p2}, Lcom/vk/im/engine/models/groups/Group;->v1()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    sget-object p2, Lcom/vk/im/ui/components/common/DialogAction;->GROUP_RECEIVE_MSGS_DISABLE:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_2
    sget-object v4, Lcom/vk/im/ui/components/common/DialogAction;->GROUP_RECEIVE_NOTIFY_DISABLE:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-virtual {p2}, Lcom/vk/im/engine/models/groups/Group;->w1()Z

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    .line 117
    sget-object v4, Lcom/vk/im/ui/components/common/DialogAction;->GROUP_RECEIVE_MSGS_ENABLE:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-virtual {p2}, Lcom/vk/im/engine/models/groups/Group;->w1()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {v3, v4, p2}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    .line 121
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/vk/im/engine/models/dialogs/Dialog;->W1()Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz v2, :cond_6

    .line 122
    invoke-virtual {v2}, Lcom/vk/im/engine/models/dialogs/ChatSettings;->L1()Z

    move-result p2

    if-nez p2, :cond_4

    .line 123
    sget-object p2, Lcom/vk/im/ui/components/common/DialogAction;->CREATE_SHORTCUT:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object p2, Lcom/vk/im/ui/components/common/DialogAction;->NOTIFICATIONS_OFF:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-virtual {p1, v0, v1}, Lcom/vk/im/engine/models/dialogs/Dialog;->b(J)Z

    move-result v4

    invoke-static {v3, p2, v4}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    .line 125
    sget-object p2, Lcom/vk/im/ui/components/common/DialogAction;->NOTIFICATIONS_ON:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-virtual {p1, v0, v1}, Lcom/vk/im/engine/models/dialogs/Dialog;->b(J)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v3, p2, p1}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    .line 127
    :cond_4
    sget-object p1, Lcom/vk/im/ui/components/common/DialogAction;->CLEAR_HISTORY:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-virtual {v2}, Lcom/vk/im/engine/models/dialogs/ChatSettings;->L1()Z

    move-result p2

    invoke-static {v3, p1, p2}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    .line 128
    invoke-virtual {v2}, Lcom/vk/im/engine/models/dialogs/ChatSettings;->I1()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 129
    sget-object p1, Lcom/vk/im/ui/components/common/DialogAction;->LEAVE_CHANNEL:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-virtual {v2}, Lcom/vk/im/engine/models/dialogs/ChatSettings;->L1()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {v3, p1, p2}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    .line 130
    sget-object p1, Lcom/vk/im/ui/components/common/DialogAction;->RETURN_TO_CHANNEL:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-virtual {v2}, Lcom/vk/im/engine/models/dialogs/ChatSettings;->L1()Z

    move-result p2

    invoke-static {v3, p1, p2}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    goto :goto_1

    .line 132
    :cond_5
    sget-object p1, Lcom/vk/im/ui/components/common/DialogAction;->RETURN:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-virtual {v2}, Lcom/vk/im/engine/models/dialogs/ChatSettings;->L1()Z

    move-result p2

    invoke-static {v3, p1, p2}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    .line 133
    sget-object p1, Lcom/vk/im/ui/components/common/DialogAction;->LEAVE:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-virtual {v2}, Lcom/vk/im/engine/models/dialogs/ChatSettings;->L1()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {v3, p1, p2}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    .line 134
    sget-object p1, Lcom/vk/im/ui/components/common/DialogAction;->CLEAR_HISTORY_AND_LEAVE:Lcom/vk/im/ui/components/common/DialogAction;

    invoke-virtual {v2}, Lcom/vk/im/engine/models/dialogs/ChatSettings;->L1()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {v3, p1, p2}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    :cond_6
    :goto_1
    return-object v3
.end method

.method public a(Lcom/vk/im/engine/models/dialogs/Dialog;)Z
    .locals 2

    .line 142
    invoke-virtual {p1}, Lcom/vk/im/engine/models/dialogs/Dialog;->V1()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/vk/im/engine/models/dialogs/Dialog;->y1()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p1}, Lcom/vk/im/engine/models/dialogs/Dialog;->U1()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/vk/im/ui/p/ImBridge7;->a()Lcom/vk/im/ui/p/ImBridge8;

    move-result-object p1

    invoke-interface {p1}, Lcom/vk/im/ui/p/ImBridge8;->a()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method
