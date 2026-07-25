.class public final enum Lcom/vk/libvideo/VideoTracker$ResizeAction;
.super Ljava/lang/Enum;
.source "VideoTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/libvideo/VideoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResizeAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vk/libvideo/VideoTracker$ResizeAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vk/libvideo/VideoTracker$ResizeAction;

.field public static final enum BUTTON:Lcom/vk/libvideo/VideoTracker$ResizeAction;

.field public static final enum GESTURE:Lcom/vk/libvideo/VideoTracker$ResizeAction;


# direct methods
.method private static synthetic $values()[Lcom/vk/libvideo/VideoTracker$ResizeAction;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/vk/libvideo/VideoTracker$ResizeAction;

    const/4 v1, 0x0

    .line 62
    sget-object v2, Lcom/vk/libvideo/VideoTracker$ResizeAction;->BUTTON:Lcom/vk/libvideo/VideoTracker$ResizeAction;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/vk/libvideo/VideoTracker$ResizeAction;->GESTURE:Lcom/vk/libvideo/VideoTracker$ResizeAction;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 63
    new-instance v0, Lcom/vk/libvideo/VideoTracker$ResizeAction;

    const-string v1, "BUTTON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vk/libvideo/VideoTracker$ResizeAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/libvideo/VideoTracker$ResizeAction;->BUTTON:Lcom/vk/libvideo/VideoTracker$ResizeAction;

    .line 64
    new-instance v0, Lcom/vk/libvideo/VideoTracker$ResizeAction;

    const-string v1, "GESTURE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/vk/libvideo/VideoTracker$ResizeAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/libvideo/VideoTracker$ResizeAction;->GESTURE:Lcom/vk/libvideo/VideoTracker$ResizeAction;

    .line 62
    invoke-static {}, Lcom/vk/libvideo/VideoTracker$ResizeAction;->$values()[Lcom/vk/libvideo/VideoTracker$ResizeAction;

    move-result-object v0

    sput-object v0, Lcom/vk/libvideo/VideoTracker$ResizeAction;->$VALUES:[Lcom/vk/libvideo/VideoTracker$ResizeAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vk/libvideo/VideoTracker$ResizeAction;
    .locals 1

    .line 62
    const-class v0, Lcom/vk/libvideo/VideoTracker$ResizeAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vk/libvideo/VideoTracker$ResizeAction;

    return-object p0
.end method

.method public static values()[Lcom/vk/libvideo/VideoTracker$ResizeAction;
    .locals 1

    .line 62
    sget-object v0, Lcom/vk/libvideo/VideoTracker$ResizeAction;->$VALUES:[Lcom/vk/libvideo/VideoTracker$ResizeAction;

    invoke-virtual {v0}, [Lcom/vk/libvideo/VideoTracker$ResizeAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vk/libvideo/VideoTracker$ResizeAction;

    return-object v0
.end method
