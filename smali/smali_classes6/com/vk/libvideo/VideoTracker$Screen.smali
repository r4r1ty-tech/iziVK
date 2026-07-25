.class public final enum Lcom/vk/libvideo/VideoTracker$Screen;
.super Ljava/lang/Enum;
.source "VideoTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/libvideo/VideoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Screen"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vk/libvideo/VideoTracker$Screen;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vk/libvideo/VideoTracker$Screen;

.field public static final enum CAROUSEL:Lcom/vk/libvideo/VideoTracker$Screen;

.field public static final enum INLINE:Lcom/vk/libvideo/VideoTracker$Screen;

.field public static final enum LANDSCAPE:Lcom/vk/libvideo/VideoTracker$Screen;

.field public static final enum PORTRAIT:Lcom/vk/libvideo/VideoTracker$Screen;


# direct methods
.method private static synthetic $values()[Lcom/vk/libvideo/VideoTracker$Screen;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/vk/libvideo/VideoTracker$Screen;

    const/4 v1, 0x0

    .line 74
    sget-object v2, Lcom/vk/libvideo/VideoTracker$Screen;->INLINE:Lcom/vk/libvideo/VideoTracker$Screen;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/vk/libvideo/VideoTracker$Screen;->CAROUSEL:Lcom/vk/libvideo/VideoTracker$Screen;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/vk/libvideo/VideoTracker$Screen;->PORTRAIT:Lcom/vk/libvideo/VideoTracker$Screen;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/vk/libvideo/VideoTracker$Screen;->LANDSCAPE:Lcom/vk/libvideo/VideoTracker$Screen;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 75
    new-instance v0, Lcom/vk/libvideo/VideoTracker$Screen;

    const-string v1, "INLINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vk/libvideo/VideoTracker$Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/libvideo/VideoTracker$Screen;->INLINE:Lcom/vk/libvideo/VideoTracker$Screen;

    .line 76
    new-instance v0, Lcom/vk/libvideo/VideoTracker$Screen;

    const-string v1, "CAROUSEL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/vk/libvideo/VideoTracker$Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/libvideo/VideoTracker$Screen;->CAROUSEL:Lcom/vk/libvideo/VideoTracker$Screen;

    .line 77
    new-instance v0, Lcom/vk/libvideo/VideoTracker$Screen;

    const-string v1, "PORTRAIT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/vk/libvideo/VideoTracker$Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/libvideo/VideoTracker$Screen;->PORTRAIT:Lcom/vk/libvideo/VideoTracker$Screen;

    .line 78
    new-instance v0, Lcom/vk/libvideo/VideoTracker$Screen;

    const-string v1, "LANDSCAPE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/vk/libvideo/VideoTracker$Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/libvideo/VideoTracker$Screen;->LANDSCAPE:Lcom/vk/libvideo/VideoTracker$Screen;

    .line 74
    invoke-static {}, Lcom/vk/libvideo/VideoTracker$Screen;->$values()[Lcom/vk/libvideo/VideoTracker$Screen;

    move-result-object v0

    sput-object v0, Lcom/vk/libvideo/VideoTracker$Screen;->$VALUES:[Lcom/vk/libvideo/VideoTracker$Screen;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vk/libvideo/VideoTracker$Screen;
    .locals 1

    .line 74
    const-class v0, Lcom/vk/libvideo/VideoTracker$Screen;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vk/libvideo/VideoTracker$Screen;

    return-object p0
.end method

.method public static values()[Lcom/vk/libvideo/VideoTracker$Screen;
    .locals 1

    .line 74
    sget-object v0, Lcom/vk/libvideo/VideoTracker$Screen;->$VALUES:[Lcom/vk/libvideo/VideoTracker$Screen;

    invoke-virtual {v0}, [Lcom/vk/libvideo/VideoTracker$Screen;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vk/libvideo/VideoTracker$Screen;

    return-object v0
.end method
