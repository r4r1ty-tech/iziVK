.class final enum Lru/vtosters/lite/ui/wallpapers/ImageEffects$3;
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

    .line 67
    invoke-direct/range {v0 .. v6}, Lru/vtosters/lite/ui/wallpapers/ImageEffects;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lru/vtosters/lite/ui/wallpapers/ImageEffects-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lru/vtosters/lite/ui/wallpapers/ImageEffects$3-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lru/vtosters/lite/ui/wallpapers/ImageEffects$3;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public applyEffect(Ljava/nio/ByteBuffer;II)V
    .locals 3

    .line 73
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->Mosaic:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    invoke-virtual {v1}, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "disabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "high"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "med"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "low"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 v0, 0x32

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x19

    goto :goto_1

    :pswitch_2
    const/16 v0, 0xa

    .line 81
    :goto_1
    invoke-static {p1, p2, p3, v0}, Lru/vtosters/lite/ui/wallpapers/NativeEffects;->mosaic(Ljava/nio/ByteBuffer;III)Ljava/lang/String;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x1a354 -> :sswitch_2
        0x1a5cc -> :sswitch_1
        0x30dda2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSummary()Ljava/lang/String;
    .locals 3

    .line 86
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->Mosaic:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    invoke-virtual {v1}, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "disabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "high"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "med"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "low"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    const v0, 0x7f12182a

    .line 90
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    const v0, 0x7f12182b

    .line 89
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    const v0, 0x7f12182d

    .line 88
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    const v0, 0x7f12182c

    .line 87
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1a354 -> :sswitch_2
        0x1a5cc -> :sswitch_1
        0x30dda2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
