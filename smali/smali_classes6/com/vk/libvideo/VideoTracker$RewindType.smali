.class public final enum Lcom/vk/libvideo/VideoTracker$RewindType;
.super Ljava/lang/Enum;
.source "VideoTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/libvideo/VideoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RewindType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vk/libvideo/VideoTracker$RewindType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vk/libvideo/VideoTracker$RewindType;

.field public static final enum DOUBLE_TAP:Lcom/vk/libvideo/VideoTracker$RewindType;

.field public static final enum SLIDER:Lcom/vk/libvideo/VideoTracker$RewindType;


# direct methods
.method private static synthetic $values()[Lcom/vk/libvideo/VideoTracker$RewindType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/vk/libvideo/VideoTracker$RewindType;

    const/4 v1, 0x0

    .line 68
    sget-object v2, Lcom/vk/libvideo/VideoTracker$RewindType;->SLIDER:Lcom/vk/libvideo/VideoTracker$RewindType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/vk/libvideo/VideoTracker$RewindType;->DOUBLE_TAP:Lcom/vk/libvideo/VideoTracker$RewindType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 69
    new-instance v0, Lcom/vk/libvideo/VideoTracker$RewindType;

    const-string v1, "SLIDER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vk/libvideo/VideoTracker$RewindType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/libvideo/VideoTracker$RewindType;->SLIDER:Lcom/vk/libvideo/VideoTracker$RewindType;

    .line 70
    new-instance v0, Lcom/vk/libvideo/VideoTracker$RewindType;

    const-string v1, "DOUBLE_TAP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/vk/libvideo/VideoTracker$RewindType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/libvideo/VideoTracker$RewindType;->DOUBLE_TAP:Lcom/vk/libvideo/VideoTracker$RewindType;

    .line 68
    invoke-static {}, Lcom/vk/libvideo/VideoTracker$RewindType;->$values()[Lcom/vk/libvideo/VideoTracker$RewindType;

    move-result-object v0

    sput-object v0, Lcom/vk/libvideo/VideoTracker$RewindType;->$VALUES:[Lcom/vk/libvideo/VideoTracker$RewindType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vk/libvideo/VideoTracker$RewindType;
    .locals 1

    .line 68
    const-class v0, Lcom/vk/libvideo/VideoTracker$RewindType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vk/libvideo/VideoTracker$RewindType;

    return-object p0
.end method

.method public static values()[Lcom/vk/libvideo/VideoTracker$RewindType;
    .locals 1

    .line 68
    sget-object v0, Lcom/vk/libvideo/VideoTracker$RewindType;->$VALUES:[Lcom/vk/libvideo/VideoTracker$RewindType;

    invoke-virtual {v0}, [Lcom/vk/libvideo/VideoTracker$RewindType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vk/libvideo/VideoTracker$RewindType;

    return-object v0
.end method
