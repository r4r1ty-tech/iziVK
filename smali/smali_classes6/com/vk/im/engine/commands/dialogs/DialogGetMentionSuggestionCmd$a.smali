.class public final Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd$a;
.super Ljava/lang/Object;
.source "DialogGetMentionSuggestionCmd.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/vk/im/engine/models/Member;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public compare(Lcom/vk/im/engine/models/Member;Lcom/vk/im/engine/models/Member;)I
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 226
    iget-object v0, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd$a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const v0, 0x7fffffff

    if-gez p1, :cond_0

    const p1, 0x7fffffff

    :cond_0
    if-gez p2, :cond_1

    const p2, 0x7fffffff

    .line 235
    :cond_1
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 215
    check-cast p1, Lcom/vk/im/engine/models/Member;

    check-cast p2, Lcom/vk/im/engine/models/Member;

    invoke-virtual {p0, p1, p2}, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd$a;->compare(Lcom/vk/im/engine/models/Member;Lcom/vk/im/engine/models/Member;)I

    move-result p1

    return p1
.end method
