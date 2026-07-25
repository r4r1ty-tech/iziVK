.class public final synthetic Lru/vtosters/hooks/MainActivityInjector$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Lb/h/g/k/VKProgressDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lb/h/g/k/VKProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/hooks/MainActivityInjector$$ExternalSyntheticLambda2;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lru/vtosters/hooks/MainActivityInjector$$ExternalSyntheticLambda2;->f$1:Lb/h/g/k/VKProgressDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lru/vtosters/hooks/MainActivityInjector$$ExternalSyntheticLambda2;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lru/vtosters/hooks/MainActivityInjector$$ExternalSyntheticLambda2;->f$1:Lb/h/g/k/VKProgressDialog;

    invoke-static {v0, v1}, Lru/vtosters/hooks/MainActivityInjector;->lambda$updateBinsAndTmpArchive$2(Landroid/app/Activity;Lb/h/g/k/VKProgressDialog;)V

    return-void
.end method
