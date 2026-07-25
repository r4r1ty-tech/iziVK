.class final enum Lru/vtosters/lite/ui/wallpapers/ImageEffects$8;
.super Lru/vtosters/lite/ui/wallpapers/ImageEffects;
.source "ImageEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/lite/ui/wallpapers/ImageEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 135
    invoke-direct/range {v0 .. v6}, Lru/vtosters/lite/ui/wallpapers/ImageEffects;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lru/vtosters/lite/ui/wallpapers/ImageEffects-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lru/vtosters/lite/ui/wallpapers/ImageEffects$8-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lru/vtosters/lite/ui/wallpapers/ImageEffects$8;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public applyEffect(Ljava/nio/ByteBuffer;II)V
    .locals 1

    .line 144
    invoke-virtual {p0}, Lru/vtosters/lite/ui/wallpapers/ImageEffects$8;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {p1, p2, p3}, Lru/vtosters/lite/ui/wallpapers/NativeEffects;->engrave(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    .line 139
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12163b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
