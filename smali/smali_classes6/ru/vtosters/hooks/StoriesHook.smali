.class public Lru/vtosters/hooks/StoriesHook;
.super Ljava/lang/Object;
.source "StoriesHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ads()Ljava/lang/String;
    .locals 1

    .line 7
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->adsstories()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    const-string v0, "ads"

    :goto_0
    return-object v0
.end method

.method public static getStoriesRead()Z
    .locals 2

    const/4 v0, 0x0

    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "read_s"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static showstories()Z
    .locals 1

    .line 11
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->stories()Z

    move-result v0

    return v0
.end method
