.class public Lru/vtosters/hooks/DockBarInjector$TabInfo;
.super Ljava/lang/Object;
.source "DockBarInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/hooks/DockBarInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabInfo"
.end annotation


.field public final fragmentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/vk/core/fragments/FragmentImpl;",
            ">;"
        }
    .end annotation
.end field

.field public final iconID:I

.field public final id:I

.field public final tag:Ljava/lang/String;

.field public final titleID:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/Class<",
            "+",
            "Lcom/vk/core/fragments/FragmentImpl;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lru/vtosters/hooks/DockBarInjector$TabInfo;->tag:Ljava/lang/String;

    .line 42
    iput p2, p0, Lru/vtosters/hooks/DockBarInjector$TabInfo;->id:I

    .line 43
    iput p3, p0, Lru/vtosters/hooks/DockBarInjector$TabInfo;->titleID:I

    .line 44
    iput p4, p0, Lru/vtosters/hooks/DockBarInjector$TabInfo;->iconID:I

    .line 45
    iput-object p5, p0, Lru/vtosters/hooks/DockBarInjector$TabInfo;->fragmentClass:Ljava/lang/Class;

    return-void
.end method
