.class public final synthetic Lru/vtosters/hooks/CryptImHook$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lru/vtosters/lite/encryption/base/IMProcessor;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Lcom/vk/im/engine/models/dialogs/Dialog;


# direct methods
.method public synthetic constructor <init>(Lru/vtosters/lite/encryption/base/IMProcessor;ILjava/util/List;Lcom/vk/im/engine/models/dialogs/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/hooks/CryptImHook$$ExternalSyntheticLambda0;->f$0:Lru/vtosters/lite/encryption/base/IMProcessor;

    iput p2, p0, Lru/vtosters/hooks/CryptImHook$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lru/vtosters/hooks/CryptImHook$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    iput-object p4, p0, Lru/vtosters/hooks/CryptImHook$$ExternalSyntheticLambda0;->f$3:Lcom/vk/im/engine/models/dialogs/Dialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lru/vtosters/hooks/CryptImHook$$ExternalSyntheticLambda0;->f$0:Lru/vtosters/lite/encryption/base/IMProcessor;

    iget v1, p0, Lru/vtosters/hooks/CryptImHook$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lru/vtosters/hooks/CryptImHook$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    iget-object v3, p0, Lru/vtosters/hooks/CryptImHook$$ExternalSyntheticLambda0;->f$3:Lcom/vk/im/engine/models/dialogs/Dialog;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lru/vtosters/hooks/CryptImHook;->lambda$hook$0(Lru/vtosters/lite/encryption/base/IMProcessor;ILjava/util/List;Lcom/vk/im/engine/models/dialogs/Dialog;Landroid/content/DialogInterface;I)V

    return-void
.end method
