.class public Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder$VBSContent;
.super Ljava/lang/Object;
.source "VBottomSheetBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VBSContent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder$VBSContent$VBSButton;
    }
.end annotation


# instance fields
.field public button:Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder$VBSContent$VBSButton;

.field public title:Ljava/lang/String;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View;Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder$VBSContent$VBSButton;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder$VBSContent;->title:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder$VBSContent;->view:Landroid/view/View;

    .line 35
    iput-object p3, p0, Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder$VBSContent;->button:Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder$VBSContent$VBSButton;

    return-void
.end method
