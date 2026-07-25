.class public Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder$VBSContent$VBSButton;
.super Ljava/lang/Object;
.source "VBottomSheetBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder$VBSContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VBSButton"
.end annotation


# instance fields
.field public action:Ljava/lang/Runnable;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder$VBSContent$VBSButton;->title:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder$VBSContent$VBSButton;->action:Ljava/lang/Runnable;

    return-void
.end method
