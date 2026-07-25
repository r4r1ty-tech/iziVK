.class public final Lcom/vk/im/ui/components/common/MsgActionHelper;
.super Ljava/lang/Object;
.source "MsgActionHelper.java"


# static fields
.field public static final a:Lcom/vk/im/ui/components/common/MsgActionHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/vk/im/ui/components/common/MsgActionHelper;

    invoke-direct {v0}, Lcom/vk/im/ui/components/common/MsgActionHelper;-><init>()V

    sput-object v0, Lcom/vk/im/ui/components/common/MsgActionHelper;->a:Lcom/vk/im/ui/components/common/MsgActionHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/vk/im/engine/ImConfig;Lcom/vk/im/engine/models/dialogs/Dialog;Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/im/engine/ImConfig;",
            "Lcom/vk/im/engine/models/dialogs/Dialog;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/vk/im/engine/models/messages/Msg;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/vk/im/ui/components/common/MsgAction;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 25
    new-instance v0, Lcom/vk/im/engine/utils/MsgPermissionHelper$a;

    invoke-direct {v0, p1, p2, p3}, Lcom/vk/im/engine/utils/MsgPermissionHelper$a;-><init>(Lcom/vk/im/engine/ImConfig;Lcom/vk/im/engine/models/dialogs/Dialog;Ljava/util/Collection;)V

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    sget-object p2, Lcom/vk/im/ui/components/common/MsgAction;->RETRY:Lcom/vk/im/ui/components/common/MsgAction;

    sget-object p3, Lcom/vk/im/engine/utils/MsgPermissionHelper;->b:Lcom/vk/im/engine/utils/MsgPermissionHelper;

    invoke-virtual {p3, v0}, Lcom/vk/im/engine/utils/MsgPermissionHelper;->g(Lcom/vk/im/engine/utils/MsgPermissionHelper$a;)Z

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    .line 29
    sget-object p2, Lcom/vk/im/ui/components/common/MsgAction;->REPLY:Lcom/vk/im/ui/components/common/MsgAction;

    sget-object p3, Lcom/vk/im/engine/utils/MsgPermissionHelper;->b:Lcom/vk/im/engine/utils/MsgPermissionHelper;

    invoke-virtual {p3, v0}, Lcom/vk/im/engine/utils/MsgPermissionHelper;->f(Lcom/vk/im/engine/utils/MsgPermissionHelper$a;)Z

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    .line 30
    sget-object p2, Lcom/vk/im/ui/components/common/MsgAction;->FORWARD:Lcom/vk/im/ui/components/common/MsgAction;

    sget-object p3, Lcom/vk/im/engine/utils/MsgPermissionHelper;->b:Lcom/vk/im/engine/utils/MsgPermissionHelper;

    invoke-virtual {p3, v0}, Lcom/vk/im/engine/utils/MsgPermissionHelper;->d(Lcom/vk/im/engine/utils/MsgPermissionHelper$a;)Z

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    .line 31
    sget-object p2, Lcom/vk/im/ui/components/common/MsgAction;->COPY:Lcom/vk/im/ui/components/common/MsgAction;

    sget-object p3, Lcom/vk/im/engine/utils/MsgPermissionHelper;->b:Lcom/vk/im/engine/utils/MsgPermissionHelper;

    invoke-virtual {p3, v0}, Lcom/vk/im/engine/utils/MsgPermissionHelper;->a(Lcom/vk/im/engine/utils/MsgPermissionHelper$a;)Z

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    .line 32
    sget-object p2, Lcom/vk/im/ui/components/common/MsgAction;->EDIT:Lcom/vk/im/ui/components/common/MsgAction;

    sget-object p3, Lcom/vk/im/engine/utils/MsgPermissionHelper;->b:Lcom/vk/im/engine/utils/MsgPermissionHelper;

    invoke-virtual {p3, v0}, Lcom/vk/im/engine/utils/MsgPermissionHelper;->c(Lcom/vk/im/engine/utils/MsgPermissionHelper$a;)Z

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    .line 33
    sget-object p2, Lcom/vk/im/ui/components/common/MsgAction;->DELETE:Lcom/vk/im/ui/components/common/MsgAction;

    sget-object p3, Lcom/vk/im/engine/utils/MsgPermissionHelper;->b:Lcom/vk/im/engine/utils/MsgPermissionHelper;

    invoke-virtual {p3, v0}, Lcom/vk/im/engine/utils/MsgPermissionHelper;->b(Lcom/vk/im/engine/utils/MsgPermissionHelper$a;)Z

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    .line 34
    sget-object p2, Lcom/vk/im/ui/components/common/MsgAction;->SPAM:Lcom/vk/im/ui/components/common/MsgAction;

    sget-object p3, Lcom/vk/im/engine/utils/MsgPermissionHelper;->b:Lcom/vk/im/engine/utils/MsgPermissionHelper;

    invoke-virtual {p3, v0}, Lcom/vk/im/engine/utils/MsgPermissionHelper;->h(Lcom/vk/im/engine/utils/MsgPermissionHelper$a;)Z

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    .line 35
    sget-object p2, Lcom/vk/im/ui/components/common/MsgAction;->PIN:Lcom/vk/im/ui/components/common/MsgAction;

    sget-object p3, Lcom/vk/im/engine/utils/MsgPermissionHelper;->b:Lcom/vk/im/engine/utils/MsgPermissionHelper;

    invoke-virtual {p3, v0}, Lcom/vk/im/engine/utils/MsgPermissionHelper;->e(Lcom/vk/im/engine/utils/MsgPermissionHelper$a;)Z

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    .line 36
    sget-object p2, Lcom/vk/im/ui/components/common/MsgAction;->UNPIN:Lcom/vk/im/ui/components/common/MsgAction;

    sget-object p3, Lcom/vk/im/engine/utils/MsgPermissionHelper;->b:Lcom/vk/im/engine/utils/MsgPermissionHelper;

    invoke-virtual {p3, v0}, Lcom/vk/im/engine/utils/MsgPermissionHelper;->i(Lcom/vk/im/engine/utils/MsgPermissionHelper$a;)Z

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    .line 37
    sget-object p2, Lcom/vk/im/ui/components/common/MsgAction;->TRANSLATE:Lcom/vk/im/ui/components/common/MsgAction;

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    .line 38
    sget-object p2, Lcom/vk/im/ui/components/common/MsgAction;->READTO:Lcom/vk/im/ui/components/common/MsgAction;

    invoke-static {p1, p2, p3}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    const/4 p2, 0x0

    .line 43
    :try_start_0
    invoke-virtual {v0}, Lcom/vk/im/engine/utils/MsgPermissionHelper$a;->a()Lcom/vk/im/engine/models/dialogs/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/im/engine/models/dialogs/Dialog;->z1()Lcom/vk/im/engine/models/dialogs/ChatSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/im/engine/models/dialogs/ChatSettings;->L0()Lcom/vk/im/engine/models/Member;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/im/engine/models/Member;->t1()I

    move-result v1

    invoke-static {}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserId()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0}, Lcom/vk/im/engine/utils/MsgPermissionHelper$a;->a()Lcom/vk/im/engine/models/dialogs/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/im/engine/models/dialogs/Dialog;->z1()Lcom/vk/im/engine/models/dialogs/ChatSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/im/engine/models/dialogs/ChatSettings;->K1()Z

    move-result v1

    if-nez v1, :cond_2

    .line 46
    invoke-virtual {v0}, Lcom/vk/im/engine/utils/MsgPermissionHelper$a;->a()Lcom/vk/im/engine/models/dialogs/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/im/engine/models/dialogs/Dialog;->z1()Lcom/vk/im/engine/models/dialogs/ChatSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/im/engine/models/dialogs/ChatSettings;->t1()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/im/engine/models/Member;

    .line 47
    invoke-virtual {v1}, Lcom/vk/im/engine/models/Member;->t1()I

    move-result v1

    invoke-static {}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserId()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    move p2, p3

    .line 56
    :catch_0
    sget-object p3, Lcom/vk/im/ui/components/common/MsgAction;->KICK:Lcom/vk/im/ui/components/common/MsgAction;

    invoke-static {p1, p3, p2}, Lcom/vk/core/extensions/CollectionExt;->a(Ljava/util/Collection;Ljava/lang/Object;Z)V

    return-object p1

    .line 61
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public a(Lcom/vk/im/engine/ImEngine;Lcom/vk/im/engine/models/dialogs/Dialog;Ljava/util/Collection;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/im/engine/ImEngine;",
            "Lcom/vk/im/engine/models/dialogs/Dialog;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/vk/im/engine/models/messages/Msg;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/vk/im/ui/components/common/MsgAction;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p1}, Lcom/vk/im/engine/ImEngine;->g()Lcom/vk/im/engine/ImConfig;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/vk/im/ui/components/common/MsgActionHelper;->a(Lcom/vk/im/engine/ImConfig;Lcom/vk/im/engine/models/dialogs/Dialog;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
