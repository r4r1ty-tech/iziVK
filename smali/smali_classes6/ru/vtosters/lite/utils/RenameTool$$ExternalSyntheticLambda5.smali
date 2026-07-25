.class public final synthetic Lru/vtosters/lite/utils/RenameTool$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/utils/RenameTool$$ExternalSyntheticLambda5;->f$0:Landroid/content/Context;

    iput p2, p0, Lru/vtosters/lite/utils/RenameTool$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lru/vtosters/lite/utils/RenameTool$$ExternalSyntheticLambda5;->f$0:Landroid/content/Context;

    iget v1, p0, Lru/vtosters/lite/utils/RenameTool$$ExternalSyntheticLambda5;->f$1:I

    invoke-static {v0, v1, p1, p2}, Lru/vtosters/lite/utils/RenameTool;->lambda$createDialogGroup$5(Landroid/content/Context;ILandroid/content/DialogInterface;I)V

    return-void
.end method
