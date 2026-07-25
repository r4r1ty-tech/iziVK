.class public Lru/vtosters/lite/ui/vkui/VBListBuilder$VBListItem;
.super Ljava/lang/Object;
.source "VBListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/lite/ui/vkui/VBListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VBListItem"
.end annotation


# instance fields
.field public checked:Z

.field public id:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lru/vtosters/lite/ui/vkui/VBListBuilder$VBListItem;->id:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lru/vtosters/lite/ui/vkui/VBListBuilder$VBListItem;->title:Ljava/lang/String;

    .line 48
    iput-boolean p3, p0, Lru/vtosters/lite/ui/vkui/VBListBuilder$VBListItem;->checked:Z

    return-void
.end method
