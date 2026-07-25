.class public final enum Lcom/vk/libvideo/VideoTracker$PlayerType;
.super Ljava/lang/Enum;
.source "VideoTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/libvideo/VideoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vk/libvideo/VideoTracker$PlayerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vk/libvideo/VideoTracker$PlayerType;

.field public static final enum CAROUSEL:Lcom/vk/libvideo/VideoTracker$PlayerType;

.field public static final enum FULLSCREEN:Lcom/vk/libvideo/VideoTracker$PlayerType;

.field public static final enum INLINE:Lcom/vk/libvideo/VideoTracker$PlayerType;


# direct methods
.method private static synthetic $values()[Lcom/vk/libvideo/VideoTracker$PlayerType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vk/libvideo/VideoTracker$PlayerType;

    const/4 v1, 0x0

    .line 55
    sget-object v2, Lcom/vk/libvideo/VideoTracker$PlayerType;->INLINE:Lcom/vk/libvideo/VideoTracker$PlayerType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/vk/libvideo/VideoTracker$PlayerType;->CAROUSEL:Lcom/vk/libvideo/VideoTracker$PlayerType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/vk/libvideo/VideoTracker$PlayerType;->FULLSCREEN:Lcom/vk/libvideo/VideoTracker$PlayerType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 56
    new-instance v0, Lcom/vk/libvideo/VideoTracker$PlayerType;

    const-string v1, "INLINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vk/libvideo/VideoTracker$PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/libvideo/VideoTracker$PlayerType;->INLINE:Lcom/vk/libvideo/VideoTracker$PlayerType;

    .line 57
    new-instance v0, Lcom/vk/libvideo/VideoTracker$PlayerType;

    const-string v1, "CAROUSEL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/vk/libvideo/VideoTracker$PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/libvideo/VideoTracker$PlayerType;->CAROUSEL:Lcom/vk/libvideo/VideoTracker$PlayerType;

    .line 58
    new-instance v0, Lcom/vk/libvideo/VideoTracker$PlayerType;

    const-string v1, "FULLSCREEN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/vk/libvideo/VideoTracker$PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/libvideo/VideoTracker$PlayerType;->FULLSCREEN:Lcom/vk/libvideo/VideoTracker$PlayerType;

    .line 55
    invoke-static {}, Lcom/vk/libvideo/VideoTracker$PlayerType;->$values()[Lcom/vk/libvideo/VideoTracker$PlayerType;

    move-result-object v0

    sput-object v0, Lcom/vk/libvideo/VideoTracker$PlayerType;->$VALUES:[Lcom/vk/libvideo/VideoTracker$PlayerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vk/libvideo/VideoTracker$PlayerType;
    .locals 1

    .line 55
    const-class v0, Lcom/vk/libvideo/VideoTracker$PlayerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vk/libvideo/VideoTracker$PlayerType;

    return-object p0
.end method

.method public static values()[Lcom/vk/libvideo/VideoTracker$PlayerType;
    .locals 1

    .line 55
    sget-object v0, Lcom/vk/libvideo/VideoTracker$PlayerType;->$VALUES:[Lcom/vk/libvideo/VideoTracker$PlayerType;

    invoke-virtual {v0}, [Lcom/vk/libvideo/VideoTracker$PlayerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vk/libvideo/VideoTracker$PlayerType;

    return-object v0
.end method
