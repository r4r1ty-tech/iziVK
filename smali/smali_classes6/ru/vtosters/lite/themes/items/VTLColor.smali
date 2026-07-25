.class public Lru/vtosters/lite/themes/items/VTLColor;
.super Ljava/lang/Object;
.source "VTLColor.java"


# instance fields
.field public color:I

.field public id:I

.field public resName:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lru/vtosters/lite/themes/items/VTLColor;->id:I

    .line 11
    iput p2, p0, Lru/vtosters/lite/themes/items/VTLColor;->color:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lru/vtosters/lite/themes/items/VTLColor;->resName:Ljava/lang/String;

    .line 16
    iput p2, p0, Lru/vtosters/lite/themes/items/VTLColor;->id:I

    .line 17
    iput p3, p0, Lru/vtosters/lite/themes/items/VTLColor;->color:I

    return-void
.end method

.method public static create(II)Lru/vtosters/lite/themes/items/VTLColor;
    .locals 1

    .line 21
    new-instance v0, Lru/vtosters/lite/themes/items/VTLColor;

    invoke-direct {v0, p0, p1}, Lru/vtosters/lite/themes/items/VTLColor;-><init>(II)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;II)Lru/vtosters/lite/themes/items/VTLColor;
    .locals 1

    .line 25
    new-instance v0, Lru/vtosters/lite/themes/items/VTLColor;

    invoke-direct {v0, p0, p1, p2}, Lru/vtosters/lite/themes/items/VTLColor;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method
