.class public final synthetic Lru/vtosters/lite/utils/RenameTool$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/utils/RenameTool$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lru/vtosters/lite/utils/RenameTool$$ExternalSyntheticLambda2;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lru/vtosters/lite/utils/RenameTool$$ExternalSyntheticLambda2;->f$2:Landroid/widget/EditText;

    iput p4, p0, Lru/vtosters/lite/utils/RenameTool$$ExternalSyntheticLambda2;->f$3:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lru/vtosters/lite/utils/RenameTool$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lru/vtosters/lite/utils/RenameTool$$ExternalSyntheticLambda2;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lru/vtosters/lite/utils/RenameTool$$ExternalSyntheticLambda2;->f$2:Landroid/widget/EditText;

    iget v3, p0, Lru/vtosters/lite/utils/RenameTool$$ExternalSyntheticLambda2;->f$3:I

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lru/vtosters/lite/utils/RenameTool;->lambda$createDialog$2(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;ILandroid/content/DialogInterface;I)V

    return-void
.end method
