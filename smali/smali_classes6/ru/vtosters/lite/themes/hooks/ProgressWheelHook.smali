.class public Lru/vtosters/lite/themes/hooks/ProgressWheelHook;
.super Ljava/lang/Object;
.source "ProgressWheelHook.java"

# interfaces
.implements Lru/vtosters/lite/themes/hooks/BaseHook;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inject(Landroid/view/View;IZ)V
    .locals 0

    .line 11
    instance-of p2, p1, Lcom/pnikosis/materialishprogress/ProgressWheel;

    if-eqz p2, :cond_0

    .line 12
    invoke-static {}, Lru/vtosters/lite/themes/ThemesCore;->isCachedAccents()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 13
    check-cast p1, Lcom/pnikosis/materialishprogress/ProgressWheel;

    .line 14
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setBarColor(I)V

    :cond_0
    return-void
.end method
