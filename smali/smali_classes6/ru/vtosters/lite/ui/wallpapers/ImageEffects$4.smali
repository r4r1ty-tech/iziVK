.class final enum Lru/vtosters/lite/ui/wallpapers/ImageEffects$4;
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

    .line 94
    invoke-direct/range {v0 .. v6}, Lru/vtosters/lite/ui/wallpapers/ImageEffects;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lru/vtosters/lite/ui/wallpapers/ImageEffects-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lru/vtosters/lite/ui/wallpapers/ImageEffects$4-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lru/vtosters/lite/ui/wallpapers/ImageEffects$4;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public applyEffect(Ljava/nio/ByteBuffer;II)V
    .locals 0

    .line 98
    invoke-virtual {p0}, Lru/vtosters/lite/ui/wallpapers/ImageEffects$4;->isApplied()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 99
    invoke-static {p1}, Lru/vtosters/lite/ui/wallpapers/NativeEffects;->monochrome(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    :cond_0
    return-void
.end method
