.class Lru/vtosters/lite/themes/utils/RecolorUtils$ColorStateListCacheEntry;
.super Ljava/lang/Object;
.source "RecolorUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/lite/themes/utils/RecolorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ColorStateListCacheEntry"
.end annotation


# instance fields
.field final configuration:Landroid/content/res/Configuration;

.field final value:Landroid/content/res/ColorStateList;


# direct methods
.method constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/Configuration;)V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p1, p0, Lru/vtosters/lite/themes/utils/RecolorUtils$ColorStateListCacheEntry;->value:Landroid/content/res/ColorStateList;

    .line 192
    iput-object p2, p0, Lru/vtosters/lite/themes/utils/RecolorUtils$ColorStateListCacheEntry;->configuration:Landroid/content/res/Configuration;

    return-void
.end method
