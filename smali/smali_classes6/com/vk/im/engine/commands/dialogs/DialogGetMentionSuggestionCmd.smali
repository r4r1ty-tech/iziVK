.class public final Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;
.super Lcom/vk/im/engine/i/BaseImEngineCmd;
.source "DialogGetMentionSuggestionCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vk/im/engine/i/BaseImEngineCmd<",
        "Lcom/vk/im/engine/models/Suggestion;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Lcom/vk/im/engine/models/Source;

.field private final e:Z

.field private final f:Ljava/lang/Object;

.field private final f2365b:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/vk/im/engine/models/Source;ZLjava/lang/Object;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/vk/im/engine/i/BaseImEngineCmd;-><init>()V

    .line 35
    iput p1, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->f2365b:I

    .line 36
    iput-object p2, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->c:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->d:Lcom/vk/im/engine/models/Source;

    .line 38
    iput-boolean p4, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->e:Z

    .line 39
    iput-object p5, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->f:Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/vk/im/engine/ImEnvironment;Ljava/util/Collection;Lcom/vk/im/engine/models/Source;ZLjava/lang/Object;)Lcom/vk/im/engine/models/ProfilesInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/im/engine/ImEnvironment;",
            "Ljava/util/Collection<",
            "Lcom/vk/im/engine/models/Member;",
            ">;",
            "Lcom/vk/im/engine/models/Source;",
            "Z",
            "Ljava/lang/Object;",
            ")",
            "Lcom/vk/im/engine/models/ProfilesInfo;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/vk/im/engine/commands/etc/ProfilesInfoGetArgs$a;

    invoke-direct {v0}, Lcom/vk/im/engine/commands/etc/ProfilesInfoGetArgs$a;-><init>()V

    .line 44
    invoke-virtual {v0, p2}, Lcom/vk/im/engine/commands/etc/ProfilesInfoGetArgs$a;->a(Ljava/util/Collection;)Lcom/vk/im/engine/commands/etc/ProfilesInfoGetArgs$a;

    .line 45
    invoke-virtual {v0, p3}, Lcom/vk/im/engine/commands/etc/ProfilesInfoGetArgs$a;->a(Lcom/vk/im/engine/models/Source;)Lcom/vk/im/engine/commands/etc/ProfilesInfoGetArgs$a;

    .line 46
    invoke-virtual {v0, p4}, Lcom/vk/im/engine/commands/etc/ProfilesInfoGetArgs$a;->a(Z)Lcom/vk/im/engine/commands/etc/ProfilesInfoGetArgs$a;

    .line 47
    invoke-virtual {v0, p5}, Lcom/vk/im/engine/commands/etc/ProfilesInfoGetArgs$a;->a(Ljava/lang/Object;)Lcom/vk/im/engine/commands/etc/ProfilesInfoGetArgs$a;

    .line 50
    :try_start_0
    new-instance p2, Lcom/vk/im/engine/commands/etc/ProfilesGetCmd;

    invoke-virtual {v0}, Lcom/vk/im/engine/commands/etc/ProfilesInfoGetArgs$a;->a()Lcom/vk/im/engine/commands/etc/ProfilesInfoGetArgs;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/vk/im/engine/commands/etc/ProfilesGetCmd;-><init>(Lcom/vk/im/engine/commands/etc/ProfilesInfoGetArgs;)V

    invoke-interface {p1, p0, p2}, Lcom/vk/im/engine/ImEnvironment;->a(Ljava/lang/Object;Lcom/vk/im/engine/i/ImEngineCmd;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "env.submitCommandDirect(this, cmd)"

    .line 54
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    check-cast p1, Lcom/vk/im/engine/models/ProfilesInfo;

    return-object p1

    :catch_0
    move-exception p1

    .line 52
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 59
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\\W*"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-gt v3, v0, :cond_5

    if-nez v4, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    .line 64
    :goto_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-gt v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-eqz v4, :cond_3

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    add-int/2addr v0, v1

    .line 76
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/vk/im/engine/ImEnvironment;I)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/im/engine/ImEnvironment;",
            "I)",
            "Ljava/util/Collection<",
            "Lcom/vk/im/engine/models/Member;",
            ">;"
        }
    .end annotation

    .line 80
    invoke-interface {p1}, Lcom/vk/im/engine/ImEnvironment;->a0()Lcom/vk/im/engine/internal/storage/StorageManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vk/im/engine/internal/storage/StorageManager;->f()Lcom/vk/im/engine/internal/storage/delegates/dialogs/DialogsStorageManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vk/im/engine/internal/storage/delegates/dialogs/DialogsStorageManager;->b()Lcom/vk/im/engine/internal/storage/delegates/dialogs/DialogsEntryStorageManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/vk/im/engine/internal/storage/delegates/dialogs/DialogsEntryStorageManager;->d(I)Lcom/vk/im/engine/models/dialogs/DialogMembersList;

    move-result-object p1

    .line 81
    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/l;->a(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    invoke-virtual {p1}, Lcom/vk/im/engine/models/dialogs/DialogMembersList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/im/engine/models/dialogs/DialogMember;

    .line 83
    invoke-virtual {v0}, Lcom/vk/im/engine/models/dialogs/DialogMember;->Z()Lcom/vk/im/engine/models/Member;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_0
    new-instance p1, Lcom/vk/im/engine/models/Member;

    invoke-direct {p1}, Lcom/vk/im/engine/models/Member;-><init>()V

    .line 87
    sget-object v0, Lcom/vk/im/engine/models/MemberType;->CUSTOM_BOT:Lcom/vk/im/engine/models/MemberType;

    invoke-virtual {p1, v0}, Lcom/vk/im/engine/models/Member;->b(Lcom/vk/im/engine/models/MemberType;)Z

    .line 88
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method private a(Lcom/vk/im/engine/ImEnvironment;ILjava/lang/String;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/im/engine/ImEnvironment;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/vk/im/engine/models/Member;",
            ">;"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p3}, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-static {}, Lkotlin/collections/l;->a()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 96
    sget-object v1, Lb/h/g/p/Transliteration;->a:Lb/h/g/p/Transliteration;

    invoke-virtual {v1, p3}, Lb/h/g/p/Transliteration;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lb/h/g/p/Transliteration;->a:Lb/h/g/p/Transliteration;

    invoke-virtual {v1, p3}, Lb/h/g/p/Transliteration;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-static {v0}, Lkotlin/collections/l;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 97
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    .line 98
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    invoke-interface {p1}, Lcom/vk/im/engine/ImEnvironment;->a0()Lcom/vk/im/engine/internal/storage/StorageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/im/engine/internal/storage/StorageManager;->m()Lcom/vk/im/engine/internal/storage/delegates/search/SearchStorageManager;

    move-result-object v2

    sget-object v3, Lcom/vk/im/engine/internal/storage/utils/StringMatchStrategy;->STARTING_WITH:Lcom/vk/im/engine/internal/storage/utils/StringMatchStrategy;

    invoke-virtual {v2, p2, v1, v3}, Lcom/vk/im/engine/internal/storage/delegates/search/SearchStorageManager;->a(ILjava/lang/String;Lcom/vk/im/engine/internal/storage/utils/StringMatchStrategy;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 102
    :cond_1
    new-instance p1, Lcom/vk/im/engine/models/Member;

    invoke-direct {p1}, Lcom/vk/im/engine/models/Member;-><init>()V

    .line 103
    sget-object p2, Lcom/vk/im/engine/models/MemberType;->CUSTOM_BOT:Lcom/vk/im/engine/models/MemberType;

    invoke-virtual {p1, p2}, Lcom/vk/im/engine/models/Member;->b(Lcom/vk/im/engine/models/MemberType;)Z

    .line 104
    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vk/im/engine/models/Member;",
            ">;)",
            "Ljava/util/Comparator<",
            "Lcom/vk/im/engine/models/Member;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd$a;

    invoke-direct {v0, p1}, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd$a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private a(Lcom/vk/im/engine/ImEnvironment;ILcom/vk/im/engine/models/Source;ZLjava/lang/Object;)V
    .locals 1

    .line 114
    :try_start_0
    new-instance v0, Lcom/vk/im/engine/commands/dialogs/DialogGetMembersCmd;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/vk/im/engine/commands/dialogs/DialogGetMembersCmd;-><init>(ILcom/vk/im/engine/models/Source;ZLjava/lang/Object;)V

    invoke-interface {p1, p0, v0}, Lcom/vk/im/engine/ImEnvironment;->a(Ljava/lang/Object;Lcom/vk/im/engine/i/ImEngineCmd;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 116
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private b(Lcom/vk/im/engine/ImEnvironment;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/im/engine/ImEnvironment;",
            "I)",
            "Ljava/util/List<",
            "Lcom/vk/im/engine/models/Member;",
            ">;"
        }
    .end annotation

    .line 121
    invoke-interface {p1}, Lcom/vk/im/engine/ImEnvironment;->a0()Lcom/vk/im/engine/internal/storage/StorageManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vk/im/engine/internal/storage/StorageManager;->j()Lcom/vk/im/engine/internal/storage/delegates/messages/MsgStorageManager;

    move-result-object p1

    sget-object v0, Lcom/vk/im/engine/models/Weight;->d:Lcom/vk/im/engine/models/Weight$a;

    invoke-virtual {v0}, Lcom/vk/im/engine/models/Weight$a;->c()Lcom/vk/im/engine/models/Weight;

    move-result-object v0

    sget-object v1, Lcom/vk/im/engine/models/Direction;->BEFORE:Lcom/vk/im/engine/models/Direction;

    const/16 v2, 0x64

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/vk/im/engine/internal/storage/delegates/messages/MsgStorageManager;->a(ILcom/vk/im/engine/models/Weight;Lcom/vk/im/engine/models/Direction;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lcom/vk/im/engine/ImEnvironment;)Lcom/vk/im/engine/models/Suggestion;
    .locals 13

    .line 128
    iget v0, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->f2365b:I

    invoke-static {v0}, Lcom/vk/im/engine/utils/ImDialogsUtils;->d(I)Lcom/vk/im/engine/models/PeerType;

    move-result-object v0

    sget-object v1, Lcom/vk/im/engine/models/PeerType;->CHAT:Lcom/vk/im/engine/models/PeerType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 129
    new-instance p1, Lcom/vk/im/engine/models/Suggestion;

    invoke-direct {p1, v2, v2}, Lcom/vk/im/engine/models/Suggestion;-><init>(Lcom/vk/im/engine/models/EntityValue;Lcom/vk/im/engine/models/ProfilesInfo;)V

    return-object p1

    .line 131
    :cond_0
    invoke-interface {p1}, Lcom/vk/im/engine/ImEnvironment;->Z()Lcom/vk/im/engine/models/Member;

    move-result-object v0

    .line 132
    invoke-interface {p1}, Lcom/vk/im/engine/ImEnvironment;->a0()Lcom/vk/im/engine/internal/storage/StorageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/im/engine/internal/storage/StorageManager;->n()Lcom/vk/im/engine/internal/storage/f/c/SystemStorageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/im/engine/internal/storage/f/c/SystemStorageManager;->d()I

    move-result v1

    .line 133
    invoke-interface {p1}, Lcom/vk/im/engine/ImEnvironment;->a0()Lcom/vk/im/engine/internal/storage/StorageManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vk/im/engine/internal/storage/StorageManager;->f()Lcom/vk/im/engine/internal/storage/delegates/dialogs/DialogsStorageManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vk/im/engine/internal/storage/delegates/dialogs/DialogsStorageManager;->b()Lcom/vk/im/engine/internal/storage/delegates/dialogs/DialogsEntryStorageManager;

    move-result-object v3

    iget v4, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->f2365b:I

    invoke-virtual {v3, v4}, Lcom/vk/im/engine/internal/storage/delegates/dialogs/DialogsEntryStorageManager;->e(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 136
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-nez v6, :cond_5

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v3, 0x1

    .line 138
    :goto_4
    iget-object v7, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->d:Lcom/vk/im/engine/models/Source;

    .line 139
    sget-object v8, Lcom/vk/im/engine/models/Source;->NETWORK:Lcom/vk/im/engine/models/Source;

    if-eq v7, v8, :cond_7

    if-eqz v3, :cond_6

    sget-object v3, Lcom/vk/im/engine/models/Source;->ACTUAL:Lcom/vk/im/engine/models/Source;

    if-ne v7, v3, :cond_6

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v3, 0x1

    :goto_6
    if-eqz v3, :cond_8

    .line 141
    iget v9, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->f2365b:I

    iget-object v10, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->d:Lcom/vk/im/engine/models/Source;

    iget-boolean v11, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->e:Z

    iget-object v12, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->f:Ljava/lang/Object;

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v7 .. v12}, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->a(Lcom/vk/im/engine/ImEnvironment;ILcom/vk/im/engine/models/Source;ZLjava/lang/Object;)V

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 145
    :cond_8
    iget v3, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->f2365b:I

    invoke-direct {p0, p1, v3}, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->b(Lcom/vk/im/engine/ImEnvironment;I)Ljava/util/List;

    move-result-object v3

    .line 146
    iget-object v7, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->c:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_9

    const/4 v5, 0x1

    :cond_9
    if-eqz v5, :cond_a

    .line 150
    iget v5, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->f2365b:I

    invoke-direct {p0, p1, v5}, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->a(Lcom/vk/im/engine/ImEnvironment;I)Ljava/util/Collection;

    move-result-object v5

    goto :goto_7

    :cond_a
    if-nez v5, :cond_f

    .line 154
    iget v5, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->f2365b:I

    iget-object v7, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v5, v7}, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->a(Lcom/vk/im/engine/ImEnvironment;ILjava/lang/String;)Ljava/util/Collection;

    move-result-object v5

    .line 156
    :goto_7
    invoke-static {v5}, Lkotlin/collections/l;->d(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v5

    .line 157
    new-instance v7, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd$1;

    invoke-direct {v7, p0, v0}, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd$1;-><init>(Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;Lcom/vk/im/engine/models/Member;)V

    invoke-static {v5, v7}, Lkotlin/sequences/m;->b(Lkotlin/sequences/Sequence;Lkotlin/jvm/b/Functions2;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 163
    invoke-direct {p0, v3}, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->a(Ljava/util/List;)Ljava/util/Comparator;

    move-result-object v3

    .line 157
    invoke-static {v0, v3}, Lkotlin/sequences/m;->a(Lkotlin/sequences/Sequence;Ljava/util/Comparator;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/m;->l(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v9

    .line 164
    new-instance v0, Lcom/vk/im/engine/models/EntityValue;

    if-eqz v6, :cond_b

    goto :goto_8

    :cond_b
    move-object v2, v9

    :goto_8
    invoke-direct {v0, v2, v1}, Lcom/vk/im/engine/models/EntityValue;-><init>(Ljava/lang/Object;Z)V

    .line 165
    sget-object v1, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd$2;->$SwitchMap$com$vk$im$engine$models$Source:[I

    iget-object v2, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->d:Lcom/vk/im/engine/models/Source;

    invoke-virtual {v2}, Lcom/vk/im/engine/models/Source;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v4, :cond_e

    const/4 v2, 0x2

    if-eq v1, v2, :cond_d

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    .line 173
    sget-object v1, Lcom/vk/im/engine/models/Source;->NETWORK:Lcom/vk/im/engine/models/Source;

    goto :goto_9

    .line 176
    :cond_c
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 170
    :cond_d
    sget-object v1, Lcom/vk/im/engine/models/Source;->ACTUAL:Lcom/vk/im/engine/models/Source;

    goto :goto_9

    .line 167
    :cond_e
    sget-object v1, Lcom/vk/im/engine/models/Source;->CACHE:Lcom/vk/im/engine/models/Source;

    :goto_9
    move-object v10, v1

    .line 178
    new-instance v1, Lcom/vk/im/engine/models/Suggestion;

    iget-boolean v11, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->e:Z

    iget-object v12, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->f:Ljava/lang/Object;

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v7 .. v12}, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->a(Lcom/vk/im/engine/ImEnvironment;Ljava/util/Collection;Lcom/vk/im/engine/models/Source;ZLjava/lang/Object;)Lcom/vk/im/engine/models/ProfilesInfo;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/vk/im/engine/models/Suggestion;-><init>(Lcom/vk/im/engine/models/EntityValue;Lcom/vk/im/engine/models/ProfilesInfo;)V

    return-object v1

    .line 152
    :cond_f
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public bridge synthetic a(Lcom/vk/im/engine/ImEnvironment;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->a(Lcom/vk/im/engine/ImEnvironment;)Lcom/vk/im/engine/models/Suggestion;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    .line 183
    instance-of v1, p1, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 184
    check-cast p1, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;

    .line 185
    iget v1, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->f2365b:I

    iget v3, p1, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->f2365b:I

    if-ne v1, v3, :cond_0

    iget-boolean v1, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->e:Z

    iget-boolean p1, p1, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->e:Z

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 193
    iget v0, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->f2365b:I

    .line 194
    iget-object v1, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->c:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 197
    :goto_0
    iget-object v3, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->d:Lcom/vk/im/engine/models/Source;

    if-eqz v3, :cond_1

    .line 198
    invoke-virtual {v3}, Lcom/vk/im/engine/models/Source;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 199
    :goto_1
    iget-boolean v4, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->e:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    .line 204
    :cond_2
    iget-object v5, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->f:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 206
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_3
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DialogGetMentionSuggestionCmd(dialogId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->f2365b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", query="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->d:Lcom/vk/im/engine/models/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAwaitNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", changerTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
