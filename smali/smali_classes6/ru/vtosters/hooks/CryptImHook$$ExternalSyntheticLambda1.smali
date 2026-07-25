.class public final synthetic Lru/vtosters/hooks/CryptImHook$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:Lru/vtosters/lite/encryption/base/IMProcessor;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Lru/vtosters/lite/encryption/base/IMProcessor;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/hooks/CryptImHook$$ExternalSyntheticLambda1;->f$0:Landroid/widget/EditText;

    iput-object p2, p0, Lru/vtosters/hooks/CryptImHook$$ExternalSyntheticLambda1;->f$1:Lru/vtosters/lite/encryption/base/IMProcessor;

    iput p3, p0, Lru/vtosters/hooks/CryptImHook$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lru/vtosters/hooks/CryptImHook$$ExternalSyntheticLambda1;->f$0:Landroid/widget/EditText;

    iget-object v1, p0, Lru/vtosters/hooks/CryptImHook$$ExternalSyntheticLambda1;->f$1:Lru/vtosters/lite/encryption/base/IMProcessor;

    iget v2, p0, Lru/vtosters/hooks/CryptImHook$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2, p1, p2}, Lru/vtosters/hooks/CryptImHook;->lambda$hookPref$1(Landroid/widget/EditText;Lru/vtosters/lite/encryption/base/IMProcessor;ILandroid/content/DialogInterface;I)V

    return-void
.end method
