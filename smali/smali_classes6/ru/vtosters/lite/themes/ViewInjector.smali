.class public Lru/vtosters/lite/themes/ViewInjector;
.super Ljava/lang/Object;
.source "ViewInjector.java"


# static fields
.field public static hooks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lru/vtosters/lite/themes/hooks/BaseHook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lru/vtosters/lite/themes/ViewInjector;->hooks:Ljava/util/ArrayList;

    .line 16
    new-instance v1, Lru/vtosters/lite/themes/hooks/ButtonHook;

    invoke-direct {v1}, Lru/vtosters/lite/themes/hooks/ButtonHook;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v0, Lru/vtosters/lite/themes/ViewInjector;->hooks:Ljava/util/ArrayList;

    new-instance v1, Lru/vtosters/lite/themes/hooks/ImageViewHook;

    invoke-direct {v1}, Lru/vtosters/lite/themes/hooks/ImageViewHook;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lru/vtosters/lite/themes/ViewInjector;->hooks:Ljava/util/ArrayList;

    new-instance v1, Lru/vtosters/lite/themes/hooks/TabLayoutHook;

    invoke-direct {v1}, Lru/vtosters/lite/themes/hooks/TabLayoutHook;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lru/vtosters/lite/themes/ViewInjector;->hooks:Ljava/util/ArrayList;

    new-instance v1, Lru/vtosters/lite/themes/hooks/TextViewHook;

    invoke-direct {v1}, Lru/vtosters/lite/themes/hooks/TextViewHook;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lru/vtosters/lite/themes/ViewInjector;->hooks:Ljava/util/ArrayList;

    new-instance v1, Lru/vtosters/lite/themes/hooks/ToolbarHook;

    invoke-direct {v1}, Lru/vtosters/lite/themes/hooks/ToolbarHook;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lru/vtosters/lite/themes/ViewInjector;->hooks:Ljava/util/ArrayList;

    new-instance v1, Lru/vtosters/lite/themes/hooks/VKImageViewHook;

    invoke-direct {v1}, Lru/vtosters/lite/themes/hooks/VKImageViewHook;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lru/vtosters/lite/themes/ViewInjector;->hooks:Ljava/util/ArrayList;

    new-instance v1, Lru/vtosters/lite/themes/hooks/ProgressWheelHook;

    invoke-direct {v1}, Lru/vtosters/lite/themes/hooks/ProgressWheelHook;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Landroid/view/View;IZ)Landroid/view/View;
    .locals 2

    .line 26
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMonetTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 28
    sget-object v0, Lru/vtosters/lite/themes/ViewInjector;->hooks:Ljava/util/ArrayList;

    new-instance v1, Lru/vtosters/lite/themes/ViewInjector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lru/vtosters/lite/themes/ViewInjector$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;IZ)V

    invoke-static {v0, v1}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    goto :goto_1

    .line 30
    :cond_0
    sget-object v0, Lru/vtosters/lite/themes/ViewInjector;->hooks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/vtosters/lite/themes/hooks/BaseHook;

    .line 31
    invoke-interface {v1, p0, p1, p2}, Lru/vtosters/lite/themes/hooks/BaseHook;->inject(Landroid/view/View;IZ)V

    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    instance-of p2, p0, Landroid/view/ViewGroup;

    if-eqz p2, :cond_2

    .line 36
    move-object p2, p0

    check-cast p2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-static {v0, v1}, Lj$/util/stream/IntStream$-CC;->range(II)Lj$/util/stream/IntStream;

    move-result-object v0

    .line 38
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lru/vtosters/lite/themes/ViewInjector$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lru/vtosters/lite/themes/ViewInjector$$ExternalSyntheticLambda1;-><init>(Landroid/view/ViewGroup;)V

    invoke-interface {v0, v1}, Lj$/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Lj$/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lru/vtosters/lite/themes/ViewInjector$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lru/vtosters/lite/themes/ViewInjector$$ExternalSyntheticLambda2;-><init>(I)V

    .line 39
    invoke-interface {p2, v0}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    return-object p0
.end method

.method static synthetic lambda$inject$0(Landroid/view/View;IZLru/vtosters/lite/themes/hooks/BaseHook;)V
    .locals 0

    .line 28
    invoke-interface {p3, p0, p1, p2}, Lru/vtosters/lite/themes/hooks/BaseHook;->inject(Landroid/view/View;IZ)V

    return-void
.end method

.method static synthetic lambda$inject$1(ILandroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-static {p1, p0, v0}, Lru/vtosters/lite/themes/ViewInjector;->inject(Landroid/view/View;IZ)Landroid/view/View;

    return-void
.end method
