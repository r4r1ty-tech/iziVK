.class public final synthetic Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lru/vtosters/lite/ui/fragments/ThemesFragment;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lb/h/g/k/VKProgressDialog;


# direct methods
.method public synthetic constructor <init>(Lru/vtosters/lite/ui/fragments/ThemesFragment;ILb/h/g/k/VKProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda18;->f$0:Lru/vtosters/lite/ui/fragments/ThemesFragment;

    iput p2, p0, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda18;->f$1:I

    iput-object p3, p0, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda18;->f$2:Lb/h/g/k/VKProgressDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda18;->f$0:Lru/vtosters/lite/ui/fragments/ThemesFragment;

    iget v1, p0, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda18;->f$1:I

    iget-object v2, p0, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda18;->f$2:Lb/h/g/k/VKProgressDialog;

    invoke-virtual {v0, v1, v2}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->lambda$setAccentColor$19$ru-vtosters-lite-ui-fragments-ThemesFragment(ILb/h/g/k/VKProgressDialog;)V

    return-void
.end method
