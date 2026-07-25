.class public final synthetic Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lru/vtosters/lite/ui/fragments/ThemesFragment;

.field public final synthetic f$1:Lb/h/g/k/VKProgressDialog;

.field public final synthetic f$2:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lru/vtosters/lite/ui/fragments/ThemesFragment;Lb/h/g/k/VKProgressDialog;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda13;->f$0:Lru/vtosters/lite/ui/fragments/ThemesFragment;

    iput-object p2, p0, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda13;->f$1:Lb/h/g/k/VKProgressDialog;

    iput-object p3, p0, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda13;->f$2:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda13;->f$0:Lru/vtosters/lite/ui/fragments/ThemesFragment;

    iget-object v1, p0, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda13;->f$1:Lb/h/g/k/VKProgressDialog;

    iget-object v2, p0, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda13;->f$2:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->lambda$setAccentColor$18$ru-vtosters-lite-ui-fragments-ThemesFragment(Lb/h/g/k/VKProgressDialog;Ljava/lang/Throwable;)V

    return-void
.end method
