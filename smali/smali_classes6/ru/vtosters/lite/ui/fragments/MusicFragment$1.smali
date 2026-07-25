.class Lru/vtosters/lite/ui/fragments/MusicFragment$1;
.super Landroid/widget/ArrayAdapter;
.source "MusicFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/vtosters/lite/ui/fragments/MusicFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/vtosters/lite/ui/fragments/MusicFragment;


# direct methods
.method constructor <init>(Lru/vtosters/lite/ui/fragments/MusicFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lru/vtosters/lite/ui/fragments/MusicFragment$1;->this$0:Lru/vtosters/lite/ui/fragments/MusicFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 128
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 129
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTextAttr()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p1
.end method
