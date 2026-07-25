.class public final synthetic Lru/vtosters/lite/utils/ExternalLinkParser$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/utils/ExternalLinkParser$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lru/vtosters/lite/utils/ExternalLinkParser$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lru/vtosters/lite/utils/ExternalLinkParser$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lru/vtosters/lite/utils/ExternalLinkParser$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    invoke-static {v0, v1, p1, p2}, Lru/vtosters/lite/utils/ExternalLinkParser;->lambda$parseVideoFile$0(Landroid/content/Context;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method
