.class public final synthetic Lru/vtosters/lite/ui/dialogs/Translate$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lru/vtosters/lite/translators/BaseTranslator;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lru/vtosters/lite/translators/BaseTranslator;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/ui/dialogs/Translate$$ExternalSyntheticLambda3;->f$0:Lru/vtosters/lite/translators/BaseTranslator;

    iput-object p2, p0, Lru/vtosters/lite/ui/dialogs/Translate$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lru/vtosters/lite/ui/dialogs/Translate$$ExternalSyntheticLambda3;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lru/vtosters/lite/ui/dialogs/Translate$$ExternalSyntheticLambda3;->f$0:Lru/vtosters/lite/translators/BaseTranslator;

    iget-object v1, p0, Lru/vtosters/lite/ui/dialogs/Translate$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lru/vtosters/lite/ui/dialogs/Translate$$ExternalSyntheticLambda3;->f$2:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lru/vtosters/lite/ui/dialogs/Translate;->lambda$showTranslatedText$1(Lru/vtosters/lite/translators/BaseTranslator;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
