.class public Lru/vtosters/lite/ui/items/DockBarTab;
.super Ljava/lang/Object;
.source "DockBarTab.java"


# instance fields
.field public fragmentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/vk/core/fragments/FragmentImpl;",
            ">;"
        }
    .end annotation
.end field

.field public iconID:I

.field public id:I

.field public tag:Ljava/lang/String;

.field public titleID:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lru/vtosters/lite/ui/items/DockBarTab;->tag:Ljava/lang/String;

    .line 20
    iput p2, p0, Lru/vtosters/lite/ui/items/DockBarTab;->iconID:I

    .line 21
    iput p3, p0, Lru/vtosters/lite/ui/items/DockBarTab;->titleID:I

    .line 22
    iput p4, p0, Lru/vtosters/lite/ui/items/DockBarTab;->id:I

    .line 23
    iput-object p5, p0, Lru/vtosters/lite/ui/items/DockBarTab;->fragmentClass:Ljava/lang/Class;

    return-void
.end method

.method public static valuesOf(Ljava/lang/String;IIILjava/lang/Class;)Lru/vtosters/lite/ui/items/DockBarTab;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/Class<",
            "*>;)",
            "Lru/vtosters/lite/ui/items/DockBarTab;"
        }
    .end annotation

    .line 32
    new-instance v6, Lru/vtosters/lite/ui/items/DockBarTab;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lru/vtosters/lite/ui/items/DockBarTab;-><init>(Ljava/lang/String;IIILjava/lang/Class;)V

    return-object v6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 37
    iget v0, p0, Lru/vtosters/lite/ui/items/DockBarTab;->id:I

    check-cast p1, Lru/vtosters/lite/ui/items/DockBarTab;

    iget p1, p1, Lru/vtosters/lite/ui/items/DockBarTab;->id:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
