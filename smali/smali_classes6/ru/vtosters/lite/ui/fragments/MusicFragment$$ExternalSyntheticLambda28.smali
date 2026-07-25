.class public final synthetic Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(ZLandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda28;->f$0:Z

    iput-object p2, p0, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda28;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda28;->f$0:Z

    iget-object v1, p0, Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda28;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Lru/vtosters/lite/ui/fragments/MusicFragment;->lambda$delcache$24(ZLandroid/content/Context;)V

    return-void
.end method
