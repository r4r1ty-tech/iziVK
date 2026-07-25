.class public Lru/vtosters/hooks/FragAnimationHook;
.super Ljava/lang/Object;
.source "FragAnimationHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animateClose(Landroidx/fragment/app/FragmentTransaction;)V
    .locals 0

    .line 16
    invoke-static {p0}, Lru/vtosters/lite/ui/components/FragAnimationKit;->setAnimations(Landroidx/fragment/app/FragmentTransaction;)V

    return-void
.end method

.method public static animateOpen(Landroidx/fragment/app/FragmentTransaction;)Z
    .locals 2

    .line 10
    invoke-static {p0}, Lru/vtosters/lite/ui/components/FragAnimationKit;->setAnimations(Landroidx/fragment/app/FragmentTransaction;)V

    const-string p0, "anim_rtrn_type"

    .line 12
    invoke-static {p0}, Lru/vtosters/hooks/other/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "noanim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lru/vtosters/hooks/other/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
