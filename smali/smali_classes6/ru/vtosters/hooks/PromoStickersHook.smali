.class public Lru/vtosters/hooks/PromoStickersHook;
.super Ljava/lang/Object;
.source "PromoStickersHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hook()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "promotedstickers"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "purchased,active"

    goto :goto_0

    :cond_0
    const-string v0, "purchased,active,promoted"

    :goto_0
    return-object v0
.end method
