.class public final synthetic Lru/vtosters/hooks/ProxyHook$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/RadioButton;

.field public final synthetic f$1:Landroid/widget/RadioButton;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/hooks/ProxyHook$$ExternalSyntheticLambda2;->f$0:Landroid/widget/RadioButton;

    iput-object p2, p0, Lru/vtosters/hooks/ProxyHook$$ExternalSyntheticLambda2;->f$1:Landroid/widget/RadioButton;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lru/vtosters/hooks/ProxyHook$$ExternalSyntheticLambda2;->f$0:Landroid/widget/RadioButton;

    iget-object v1, p0, Lru/vtosters/hooks/ProxyHook$$ExternalSyntheticLambda2;->f$1:Landroid/widget/RadioButton;

    invoke-static {v0, v1, p1, p2}, Lru/vtosters/hooks/ProxyHook;->lambda$callProxyDialog$2(Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/content/DialogInterface;I)V

    return-void
.end method
