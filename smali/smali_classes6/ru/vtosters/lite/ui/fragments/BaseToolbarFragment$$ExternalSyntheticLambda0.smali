.class public final synthetic Lru/vtosters/lite/ui/fragments/BaseToolbarFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;


# direct methods
.method public synthetic constructor <init>(Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/ui/fragments/BaseToolbarFragment$$ExternalSyntheticLambda0;->f$0:Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lru/vtosters/lite/ui/fragments/BaseToolbarFragment$$ExternalSyntheticLambda0;->f$0:Lru/vtosters/lite/ui/fragments/BaseToolbarFragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
