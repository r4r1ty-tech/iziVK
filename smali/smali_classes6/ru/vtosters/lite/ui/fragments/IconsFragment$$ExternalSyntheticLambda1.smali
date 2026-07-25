.class public final synthetic Lru/vtosters/lite/ui/fragments/IconsFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/RadioButton;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/widget/RadioButton;

.field public final synthetic f$3:Landroid/widget/RadioButton;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/RadioButton;Ljava/lang/String;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/ui/fragments/IconsFragment$$ExternalSyntheticLambda1;->f$0:Landroid/widget/RadioButton;

    iput-object p2, p0, Lru/vtosters/lite/ui/fragments/IconsFragment$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lru/vtosters/lite/ui/fragments/IconsFragment$$ExternalSyntheticLambda1;->f$2:Landroid/widget/RadioButton;

    iput-object p4, p0, Lru/vtosters/lite/ui/fragments/IconsFragment$$ExternalSyntheticLambda1;->f$3:Landroid/widget/RadioButton;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lru/vtosters/lite/ui/fragments/IconsFragment$$ExternalSyntheticLambda1;->f$0:Landroid/widget/RadioButton;

    iget-object v1, p0, Lru/vtosters/lite/ui/fragments/IconsFragment$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lru/vtosters/lite/ui/fragments/IconsFragment$$ExternalSyntheticLambda1;->f$2:Landroid/widget/RadioButton;

    iget-object v3, p0, Lru/vtosters/lite/ui/fragments/IconsFragment$$ExternalSyntheticLambda1;->f$3:Landroid/widget/RadioButton;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lru/vtosters/lite/ui/fragments/IconsFragment;->lambda$callSelectDialog$0(Landroid/widget/RadioButton;Ljava/lang/String;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/content/DialogInterface;I)V

    return-void
.end method
