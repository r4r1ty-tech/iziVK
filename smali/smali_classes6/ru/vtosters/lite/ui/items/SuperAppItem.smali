.class public Lru/vtosters/lite/ui/items/SuperAppItem;
.super Ljava/lang/Object;
.source "SuperAppItem.java"


# instance fields
.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lru/vtosters/lite/ui/items/SuperAppItem;->type:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lru/vtosters/lite/ui/items/SuperAppItem;->title:Ljava/lang/String;

    return-void
.end method

.method public static valuesOf(Ljava/lang/String;Ljava/lang/String;)Lru/vtosters/lite/ui/items/SuperAppItem;
    .locals 1

    .line 14
    new-instance v0, Lru/vtosters/lite/ui/items/SuperAppItem;

    invoke-direct {v0, p0, p1}, Lru/vtosters/lite/ui/items/SuperAppItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 19
    check-cast p1, Lru/vtosters/lite/ui/items/SuperAppItem;

    .line 20
    iget-object v0, p0, Lru/vtosters/lite/ui/items/SuperAppItem;->type:Ljava/lang/String;

    iget-object v1, p1, Lru/vtosters/lite/ui/items/SuperAppItem;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/vtosters/lite/ui/items/SuperAppItem;->title:Ljava/lang/String;

    iget-object p1, p1, Lru/vtosters/lite/ui/items/SuperAppItem;->title:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
