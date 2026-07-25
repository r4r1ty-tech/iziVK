.class public final synthetic Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda25;->f$0:Landroid/widget/EditText;

    iput-object p2, p0, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda25;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda25;->f$0:Landroid/widget/EditText;

    iget-object v1, p0, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda25;->f$1:Landroid/widget/EditText;

    invoke-static {v0, v1, p1, p2}, Lru/vtosters/lite/ui/fragments/MusicFragment;->lambda$lastfmAuth$20(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method
