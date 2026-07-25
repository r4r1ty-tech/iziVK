.class public final synthetic Lru/vtosters/lite/ui/fragments/MediaFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lru/vtosters/lite/ui/fragments/MediaFragment;


# direct methods
.method public synthetic constructor <init>(Lru/vtosters/lite/ui/fragments/MediaFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/ui/fragments/MediaFragment$$ExternalSyntheticLambda1;->f$0:Lru/vtosters/lite/ui/fragments/MediaFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lru/vtosters/lite/ui/fragments/MediaFragment$$ExternalSyntheticLambda1;->f$0:Lru/vtosters/lite/ui/fragments/MediaFragment;

    invoke-virtual {v0}, Lru/vtosters/lite/ui/fragments/MediaFragment;->lambda$deleteVideoHistory$6$ru-vtosters-lite-ui-fragments-MediaFragment()V

    return-void
.end method
