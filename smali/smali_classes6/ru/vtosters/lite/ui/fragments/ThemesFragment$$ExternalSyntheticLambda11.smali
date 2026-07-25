.class public final synthetic Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lru/vtosters/lite/ui/fragments/ThemesFragment;


# direct methods
.method public synthetic constructor <init>(Lru/vtosters/lite/ui/fragments/ThemesFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda11;->f$0:Lru/vtosters/lite/ui/fragments/ThemesFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lru/vtosters/lite/ui/fragments/ThemesFragment$$ExternalSyntheticLambda11;->f$0:Lru/vtosters/lite/ui/fragments/ThemesFragment;

    invoke-virtual {v0}, Lru/vtosters/lite/ui/fragments/ThemesFragment;->restart()V

    return-void
.end method
