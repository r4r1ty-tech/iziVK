.class public Lru/vtosters/hooks/MessagesHook;
.super Ljava/lang/Object;
.source "MessagesHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static expireTime()I
    .locals 4

    .line 102
    sget-object v0, Lru/vtosters/lite/ui/dialogs/MessageSettings;->bombCount:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "24h"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "15s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "5m"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "1m"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "1h"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const v2, 0x15180

    goto :goto_1

    :pswitch_1
    const/16 v2, 0xf

    goto :goto_1

    :pswitch_2
    const/16 v2, 0x12c

    goto :goto_1

    :pswitch_3
    const/16 v2, 0x3c

    goto :goto_1

    :pswitch_4
    const/16 v2, 0xe10

    :goto_1
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x657 -> :sswitch_4
        0x65c -> :sswitch_3
        0x6d8 -> :sswitch_2
        0xbecf -> :sswitch_1
        0xc266 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static fixCTX(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    if-nez p0, :cond_0

    .line 80
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static injRequest(Lcom/vk/api/internal/MethodCall$a;)V
    .locals 2

    .line 87
    invoke-static {}, Lru/vtosters/hooks/MessagesHook;->expireTime()I

    move-result v0

    if-lez v0, :cond_0

    const-string v1, "expire_ttl"

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/vk/api/internal/MethodCall$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vk/api/internal/MethodCall$a;

    .line 91
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->savemsgsett()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    sput-object v0, Lru/vtosters/lite/ui/dialogs/MessageSettings;->bombCount:Ljava/lang/String;

    .line 94
    :cond_0
    sget-object v0, Lru/vtosters/lite/ui/dialogs/MessageSettings;->isSilentEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "silent"

    invoke-virtual {p0, v1, v0}, Lcom/vk/api/internal/MethodCall$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/vk/api/internal/MethodCall$a;

    .line 96
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->savemsgsett()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lru/vtosters/lite/ui/dialogs/MessageSettings;->isSilentEnabled:Ljava/lang/Boolean;

    :cond_1
    return-void
.end method

.method public static injectOwnText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 24
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->autotranslate()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->serverFeaturesDisable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Lru/vtosters/lite/translators/BaseTranslator;->getInstance()Lru/vtosters/lite/translators/BaseTranslator;

    move-result-object v0

    .line 28
    invoke-static {p0, v0}, Lru/vtosters/hooks/MessagesHook;->replaceMentions(Ljava/lang/String;Lru/vtosters/lite/translators/BaseTranslator;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static injectOwnTextAll(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 32
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->autoalltranslate()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->serverFeaturesDisable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    invoke-static {}, Lru/vtosters/lite/translators/BaseTranslator;->getInstance()Lru/vtosters/lite/translators/BaseTranslator;

    move-result-object v0

    .line 37
    invoke-static {p0, v0}, Lru/vtosters/hooks/MessagesHook;->replaceMentions(Ljava/lang/String;Lru/vtosters/lite/translators/BaseTranslator;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method static synthetic lambda$onLongClick$0(Landroid/view/View;)Z
    .locals 0

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/lite/ui/dialogs/MessageSettings;->argDialog(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static onLongClick(Landroid/view/View;)V
    .locals 1

    .line 72
    new-instance v0, Lru/vtosters/hooks/MessagesHook$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lru/vtosters/hooks/MessagesHook$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public static reloadMessages()V
    .locals 2

    .line 113
    invoke-static {}, Lcom/vtosters/lite/im/ImEngineProvider;->b()Lcom/vk/im/engine/ImEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/im/engine/ImEngine;->a()Ljava/util/concurrent/Future;

    .line 114
    invoke-static {}, Lcom/vk/im/ui/providers/audiomsg/ImAudioMsgPlayerProvider;->b()Lcom/vk/audiomsg/player/AudioMsgPlayer;

    move-result-object v0

    sget-object v1, Lcom/vk/im/ui/providers/audiomsg/PlayerActionSources;->a:Lcom/vk/im/ui/providers/audiomsg/PlayerActionSource;

    invoke-interface {v0, v1}, Lcom/vk/audiomsg/player/AudioMsgPlayer;->e(Lcom/vk/audiomsg/player/Source;)V

    .line 115
    invoke-static {}, Lcom/vk/im/ui/providers/audiomsg/ImAudioMsgPlayerProvider;->b()Lcom/vk/audiomsg/player/AudioMsgPlayer;

    move-result-object v0

    sget-object v1, Lcom/vk/im/ui/providers/audiomsg/PlayerActionSources;->a:Lcom/vk/im/ui/providers/audiomsg/PlayerActionSource;

    invoke-interface {v0, v1}, Lcom/vk/audiomsg/player/AudioMsgPlayer;->d(Lcom/vk/audiomsg/player/Source;)V

    return-void
.end method

.method public static replaceMentions(Ljava/lang/String;Lru/vtosters/lite/translators/BaseTranslator;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "(\\[(?:club|id|public)\\d+\\|[^]]+\\])|(@[^\\s]+)"

    .line 42
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 45
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 47
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 48
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vtl_mention"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/vtosters/lite/translators/BaseTranslator;->getTranslation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vtl_mention(\\d+)"

    .line 55
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 56
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 57
    :goto_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 59
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 58
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    invoke-virtual {p1, p0}, Lru/vtosters/lite/translators/BaseTranslator;->getTranslation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
