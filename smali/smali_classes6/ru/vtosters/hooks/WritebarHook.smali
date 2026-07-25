.class public Lru/vtosters/hooks/WritebarHook;
.super Ljava/lang/Object;
.source "WritebarHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIconsColors(I)I
    .locals 1

    .line 14
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->wbios()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result p0

    :cond_0
    return p0
.end method

.method public static getWriteBar()I
    .locals 1

    .line 10
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->wbios()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d06e0

    goto :goto_0

    :cond_0
    const v0, 0x7f0d06da

    :goto_0
    return v0
.end method
