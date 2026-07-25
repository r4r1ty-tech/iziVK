.class abstract enum Lru/vtosters/lite/ui/wallpapers/ImageEffects;
.super Ljava/lang/Enum;
.source "ImageEffect.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/vtosters/lite/ui/wallpapers/ImageEffects;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lru/vtosters/lite/ui/wallpapers/ImageEffects;

.field public static final enum Blur:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

.field public static final enum Dim:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

.field public static final enum Emboss:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

.field public static final enum Engrave:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

.field public static final enum Flea:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

.field public static final enum Invert:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

.field public static final enum Monochrome:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

.field public static final enum Mosaic:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

.field public static final enum Sepia:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

.field public static final enum Snow:Lru/vtosters/lite/ui/wallpapers/ImageEffects;


# instance fields
.field private final entries:[Ljava/lang/String;

.field private final entryValues:[Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lru/vtosters/lite/ui/wallpapers/ImageEffects;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    const/4 v1, 0x0

    .line 13
    sget-object v2, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->Blur:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->Dim:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->Mosaic:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->Monochrome:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->Invert:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->Sepia:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->Emboss:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->Engrave:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->Flea:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->Snow:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 20

    .line 14
    new-instance v7, Lru/vtosters/lite/ui/wallpapers/ImageEffects$1;

    const-string v1, "Blur"

    const/4 v2, 0x0

    const v8, 0x7f030063

    invoke-static {v8}, Lru/vtosters/lite/utils/AndroidUtils;->getArray(I)[Ljava/lang/String;

    move-result-object v3

    const-string v9, "disabled"

    const-string v10, "low"

    const-string v11, "med"

    const-string v12, "high"

    filled-new-array {v9, v10, v11, v12}, [Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    const v5, 0x7f121635

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lru/vtosters/lite/ui/wallpapers/ImageEffects$1;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lru/vtosters/lite/ui/wallpapers/ImageEffects$1-IA;)V

    sput-object v7, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->Blur:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    .line 42
    new-instance v0, Lru/vtosters/lite/ui/wallpapers/ImageEffects$2;

    const-string v14, "Dim"

    const/4 v15, 0x1

    const v1, 0x7f030062

    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->getArray(I)[Ljava/lang/String;

    move-result-object v16

    const-string v1, "dim_black"

    const-string v2, "dim_white"

    filled-new-array {v9, v1, v2}, [Ljava/lang/String;

    move-result-object v17

    .line 44
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f121636

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object v13, v0

    invoke-direct/range {v13 .. v19}, Lru/vtosters/lite/ui/wallpapers/ImageEffects$2;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lru/vtosters/lite/ui/wallpapers/ImageEffects$2-IA;)V

    sput-object v0, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->Dim:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    .line 67
    new-instance v0, Lru/vtosters/lite/ui/wallpapers/ImageEffects$3;

    const-string v2, "Mosaic"

    const/4 v3, 0x2

    invoke-static {v8}, Lru/vtosters/lite/utils/AndroidUtils;->getArray(I)[Ljava/lang/String;

    move-result-object v4

    filled-new-array {v9, v10, v11, v12}, [Ljava/lang/String;

    move-result-object v5

    .line 69
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    const v6, 0x7f12163d

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lru/vtosters/lite/ui/wallpapers/ImageEffects$3;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lru/vtosters/lite/ui/wallpapers/ImageEffects$3-IA;)V

    sput-object v0, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->Mosaic:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    .line 94
    new-instance v0, Lru/vtosters/lite/ui/wallpapers/ImageEffects$4;

    const-string v9, "Monochrome"

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 95
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12163c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lru/vtosters/lite/ui/wallpapers/ImageEffects$4;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lru/vtosters/lite/ui/wallpapers/ImageEffects$4-IA;)V

    sput-object v0, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->Monochrome:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    .line 103
    new-instance v0, Lru/vtosters/lite/ui/wallpapers/ImageEffects$5;

    const-string v2, "Invert"

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 104
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    const v6, 0x7f12163a

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lru/vtosters/lite/ui/wallpapers/ImageEffects$5;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lru/vtosters/lite/ui/wallpapers/ImageEffects$5-IA;)V

    sput-object v0, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->Invert:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    .line 112
    new-instance v0, Lru/vtosters/lite/ui/wallpapers/ImageEffects$6;

    const-string v9, "Sepia"

    const/4 v10, 0x5

    .line 113
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12163e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lru/vtosters/lite/ui/wallpapers/ImageEffects$6;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lru/vtosters/lite/ui/wallpapers/ImageEffects$6-IA;)V

    sput-object v0, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->Sepia:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    .line 121
    new-instance v0, Lru/vtosters/lite/ui/wallpapers/ImageEffects$7;

    const-string v2, "Emboss"

    const/4 v3, 0x6

    .line 122
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    const v6, 0x7f121637

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lru/vtosters/lite/ui/wallpapers/ImageEffects$7;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lru/vtosters/lite/ui/wallpapers/ImageEffects$7-IA;)V

    sput-object v0, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->Emboss:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    .line 135
    new-instance v0, Lru/vtosters/lite/ui/wallpapers/ImageEffects$8;

    const-string v9, "Engrave"

    const/4 v10, 0x7

    .line 136
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f121638

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lru/vtosters/lite/ui/wallpapers/ImageEffects$8;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lru/vtosters/lite/ui/wallpapers/ImageEffects$8-IA;)V

    sput-object v0, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->Engrave:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    .line 149
    new-instance v0, Lru/vtosters/lite/ui/wallpapers/ImageEffects$9;

    const-string v2, "Flea"

    const/16 v3, 0x8

    .line 150
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    const v6, 0x7f121639

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lru/vtosters/lite/ui/wallpapers/ImageEffects$9;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lru/vtosters/lite/ui/wallpapers/ImageEffects$9-IA;)V

    sput-object v0, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->Flea:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    .line 158
    new-instance v0, Lru/vtosters/lite/ui/wallpapers/ImageEffects$10;

    const-string v9, "Snow"

    const/16 v10, 0x9

    .line 159
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12163f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lru/vtosters/lite/ui/wallpapers/ImageEffects$10;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lru/vtosters/lite/ui/wallpapers/ImageEffects$10-IA;)V

    sput-object v0, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->Snow:Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    .line 13
    invoke-static {}, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->$values()[Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->$VALUES:[Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 175
    iput-object p3, p0, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->entries:[Ljava/lang/String;

    .line 176
    iput-object p4, p0, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->entryValues:[Ljava/lang/String;

    .line 177
    iput-object p5, p0, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->title:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lru/vtosters/lite/ui/wallpapers/ImageEffects-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lru/vtosters/lite/ui/wallpapers/ImageEffects;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static hasEffects()Ljava/lang/Boolean;
    .locals 3

    const-string v0, "msg_Blur"

    .line 181
    invoke-static {v0}, Lru/vtosters/hooks/other/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "disabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lru/vtosters/hooks/other/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const-string v0, "msg_Dim"

    .line 182
    invoke-static {v0}, Lru/vtosters/hooks/other/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lru/vtosters/hooks/other/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "msg_Mosaic"

    .line 183
    invoke-static {v0}, Lru/vtosters/hooks/other/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lru/vtosters/hooks/other/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "msg_Emboss"

    const/4 v1, 0x0

    .line 184
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "msg_Sepia"

    .line 185
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "msg_Invert"

    .line 186
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "msg_Snow"

    .line 187
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "msg_Flea"

    .line 188
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "msg_Engrave"

    .line 189
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "msg_Monochrome"

    .line 190
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    .line 181
    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lru/vtosters/lite/ui/wallpapers/ImageEffects;
    .locals 1

    .line 13
    const-class v0, Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    return-object p0
.end method

.method public static values()[Lru/vtosters/lite/ui/wallpapers/ImageEffects;
    .locals 1

    .line 13
    sget-object v0, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->$VALUES:[Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    invoke-virtual {v0}, [Lru/vtosters/lite/ui/wallpapers/ImageEffects;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/vtosters/lite/ui/wallpapers/ImageEffects;

    return-object v0
.end method


# virtual methods
.method public abstract applyEffect(Ljava/nio/ByteBuffer;II)V
.end method

.method public getEntries()[Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->entries:[Ljava/lang/String;

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->entryValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->title:Ljava/lang/String;

    return-object v0
.end method

.method protected isApplied()Z
    .locals 3

    .line 222
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isList()Ljava/lang/Boolean;
    .locals 1

    .line 202
    iget-object v0, p0, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->entryValues:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isSwitch()Ljava/lang/Boolean;
    .locals 1

    .line 198
    iget-object v0, p0, Lru/vtosters/lite/ui/wallpapers/ImageEffects;->entryValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "msg_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
