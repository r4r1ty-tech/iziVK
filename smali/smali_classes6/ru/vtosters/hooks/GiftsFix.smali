.class public Lru/vtosters/hooks/GiftsFix;
.super Ljava/lang/Object;
.source "GiftsFix.java"


# static fields
.field public static staticBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBundle()Landroid/os/Bundle;
    .locals 1

    .line 30
    sget-object v0, Lru/vtosters/hooks/GiftsFix;->staticBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public static openGiftCategoryFragment(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/vk/dto/gift/GiftCategory;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/vk/dto/gift/GiftCategory;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 18
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "uids"

    .line 19
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p1, "data"

    .line 20
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "balance"

    .line 21
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "ref"

    .line 22
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sput-object v0, Lru/vtosters/hooks/GiftsFix;->staticBundle:Landroid/os/Bundle;

    .line 26
    const-class p1, Lcom/vtosters/lite/fragments/gifts/GiftCategoryFragment;

    invoke-static {p0, p1}, Lru/vtosters/lite/utils/NavigatorUtils;->switchFragment(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method
