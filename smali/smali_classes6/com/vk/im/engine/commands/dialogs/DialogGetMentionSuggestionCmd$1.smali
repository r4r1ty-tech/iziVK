.class Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd$1;
.super Ljava/lang/Object;
.source "DialogGetMentionSuggestionCmd.java"

# interfaces
.implements Lkotlin/jvm/b/Functions2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;->a(Lcom/vk/im/engine/ImEnvironment;)Lcom/vk/im/engine/models/Suggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/b/Functions2<",
        "Lcom/vk/im/engine/models/Member;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;

.field final synthetic val$Z:Lcom/vk/im/engine/models/Member;


# direct methods
.method constructor <init>(Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;Lcom/vk/im/engine/models/Member;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd$1;->this$0:Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd;

    iput-object p2, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd$1;->val$Z:Lcom/vk/im/engine/models/Member;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/vk/im/engine/models/Member;)Ljava/lang/Boolean;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd$1;->val$Z:Lcom/vk/im/engine/models/Member;

    invoke-virtual {p1, v0}, Lcom/vk/im/engine/models/Member;->e(Lcom/vk/im/engine/models/Member;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vk/im/engine/models/MemberType;->USER:Lcom/vk/im/engine/models/MemberType;

    invoke-virtual {p1, v0}, Lcom/vk/im/engine/models/Member;->a(Lcom/vk/im/engine/models/MemberType;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/vk/im/engine/models/MemberType;->GROUP:Lcom/vk/im/engine/models/MemberType;

    invoke-virtual {p1, v0}, Lcom/vk/im/engine/models/Member;->a(Lcom/vk/im/engine/models/MemberType;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 157
    check-cast p1, Lcom/vk/im/engine/models/Member;

    invoke-virtual {p0, p1}, Lcom/vk/im/engine/commands/dialogs/DialogGetMentionSuggestionCmd$1;->invoke(Lcom/vk/im/engine/models/Member;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
