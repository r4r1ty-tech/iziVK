.class public Lru/vtosters/hooks/AppVerHook;
.super Ljava/lang/Object;
.source "AppVerHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appBuild()I
    .locals 2

    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "useOldAppVer"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19a1

    goto :goto_0

    :cond_0
    sget-object v0, Lb/h/g/g/BuildInfo;->i:Lb/h/g/g/BuildInfo;

    invoke-virtual {v0}, Lb/h/g/g/BuildInfo;->e()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static appVer()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "useOldAppVer"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "6.18.1"

    goto :goto_0

    :cond_0
    sget-object v0, Lb/h/g/g/BuildInfo;->i:Lb/h/g/g/BuildInfo;

    invoke-virtual {v0}, Lb/h/g/g/BuildInfo;->d()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
