.class public final enum Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;
.super Ljava/lang/Enum;
.source "AndroidUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/lite/utils/AndroidUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;

.field public static final enum large:Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;

.field public static final enum normal:Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;

.field public static final enum small:Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;

.field public static final enum xlarge:Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;


# direct methods
.method private static synthetic $values()[Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;

    const/4 v1, 0x0

    .line 217
    sget-object v2, Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;->small:Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;->normal:Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;->large:Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;->xlarge:Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 218
    new-instance v0, Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;

    const-string v1, "small"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;->small:Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;

    .line 219
    new-instance v0, Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;

    const-string v1, "normal"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;->normal:Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;

    .line 220
    new-instance v0, Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;

    const-string v1, "large"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;->large:Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;

    .line 221
    new-instance v0, Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;

    const-string v1, "xlarge"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;->xlarge:Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;

    .line 217
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;->$values()[Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;->$VALUES:[Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 217
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;
    .locals 1

    .line 217
    const-class v0, Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;

    return-object p0
.end method

.method public static values()[Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;
    .locals 1

    .line 217
    sget-object v0, Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;->$VALUES:[Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;

    invoke-virtual {v0}, [Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/vtosters/lite/utils/AndroidUtils$ScreenSize;

    return-object v0
.end method
