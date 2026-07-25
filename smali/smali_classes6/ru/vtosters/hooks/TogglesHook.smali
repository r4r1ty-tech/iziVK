.class public Lru/vtosters/hooks/TogglesHook;
.super Ljava/lang/Object;
.source "TogglesHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static redirect(Lcom/vk/toggle/Features$Type;)Z
    .locals 3

    .line 21
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    invoke-virtual {p0}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_6

    const/4 v2, 0x2

    if-eq p0, v2, :cond_6

    const/4 v2, 0x4

    if-eq p0, v2, :cond_5

    const/4 v2, 0x7

    if-eq p0, v2, :cond_5

    const/16 v2, 0xc

    if-eq p0, v2, :cond_4

    const/16 v2, 0x13

    if-eq p0, v2, :cond_3

    const/16 v2, 0x14

    if-eq p0, v2, :cond_2

    const/16 v2, 0x56

    if-eq p0, v2, :cond_1

    const/16 v2, 0x57

    if-eq p0, v2, :cond_0

    packed-switch p0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 22
    :pswitch_0
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->feedcache()Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    .line 25
    :pswitch_1
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->disableForceTrafficSaver()Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    .line 23
    :cond_1
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->superapp()Z

    move-result v0

    goto :goto_1

    .line 24
    :cond_2
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v0

    goto :goto_1

    .line 29
    :cond_3
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->miniapps()Z

    move-result v0

    goto :goto_1

    .line 28
    :cond_4
    invoke-static {}, Lcom/vk/medianative/MediaImageEncoder;->needToCompress()Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    .line 27
    :cond_5
    :pswitch_2
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->postsredesign()Z

    move-result v0

    goto :goto_1

    :cond_6
    const-string p0, "batchmessages"

    .line 31
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    :cond_7
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x5e
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static redirectStrings(Lcom/vk/toggle/Features$Type;)Lcom/vk/toggle/FeatureManager$b;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static shouldPatch(Lcom/vk/toggle/Features$Type;)Z
    .locals 1

    .line 12
    sget-object v0, Lru/vtosters/hooks/TogglesHook$1;->$SwitchMap$com$vk$toggle$Features$Type:[I

    invoke-virtual {p0}, Lcom/vk/toggle/Features$Type;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x1

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
