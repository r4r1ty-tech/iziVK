.class public final synthetic Lru/vtosters/lite/themes/ViewInjector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/themes/ViewInjector$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    iput p2, p0, Lru/vtosters/lite/themes/ViewInjector$$ExternalSyntheticLambda0;->f$1:I

    iput-boolean p3, p0, Lru/vtosters/lite/themes/ViewInjector$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lru/vtosters/lite/themes/ViewInjector$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    iget v1, p0, Lru/vtosters/lite/themes/ViewInjector$$ExternalSyntheticLambda0;->f$1:I

    iget-boolean v2, p0, Lru/vtosters/lite/themes/ViewInjector$$ExternalSyntheticLambda0;->f$2:Z

    check-cast p1, Lru/vtosters/lite/themes/hooks/BaseHook;

    invoke-static {v0, v1, v2, p1}, Lru/vtosters/lite/themes/ViewInjector;->lambda$inject$0(Landroid/view/View;IZLru/vtosters/lite/themes/hooks/BaseHook;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
