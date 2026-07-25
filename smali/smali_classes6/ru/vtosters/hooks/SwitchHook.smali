.class public Lru/vtosters/hooks/SwitchHook;
.super Ljava/lang/Object;
.source "SwitchHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createColorStateList()[[I
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 72
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v4, [I

    const v5, -0x10100a0

    aput v5, v2, v3

    aput-object v2, v0, v1

    new-array v1, v4, [I

    const v2, 0x10100a0

    aput v2, v1, v3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0

    :array_0
    .array-data 4
        -0x101009e
        -0x10100a0
    .end array-data

    :array_1
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data
.end method

.method private static getCustomThumb()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 91
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "custom_thumb_selector"

    const-string v2, "drawable"

    invoke-static {v1, v2}, Lru/vtosters/lite/utils/AndroidUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static getCustomTrack()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 87
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "custom_track_selector"

    const-string v2, "drawable"

    invoke-static {v1, v2}, Lru/vtosters/lite/utils/AndroidUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static getSwitchColors(Landroid/content/Context;)[I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 22
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isDarkTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0600ec

    goto :goto_0

    :cond_0
    const v1, 0x7f06030c

    :goto_0
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 23
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isDarkTheme()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f060232

    goto :goto_1

    :cond_1
    const v1, 0x7f060233

    :goto_1
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const v1, 0x7f0600e1

    .line 24
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    const/4 v1, 0x2

    aput p0, v0, v1

    const/4 p0, 0x3

    .line 25
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v1

    aput v1, v0, p0

    return-object v0
.end method

.method private static getTrackColors()[I
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [I

    const v1, 0x7f0403aa

    .line 31
    invoke-static {v1}, Lru/vtosters/hooks/other/ThemesUtils;->getColorFromAttr(I)I

    move-result v2

    const v3, 0x3ecccccd    # 0.4f

    invoke-static {v2, v3}, Lcom/vk/core/util/ColorUtils;->b(IF)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 32
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v2

    const v3, 0x3df5c28f    # 0.12f

    invoke-static {v2, v3}, Lcom/vk/core/util/ColorUtils;->b(IF)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v2, 0x2

    .line 33
    invoke-static {v1}, Lru/vtosters/hooks/other/ThemesUtils;->getColorFromAttr(I)I

    move-result v1

    aput v1, v0, v2

    .line 34
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v1

    const v2, 0x3ef5c28f    # 0.48f

    invoke-static {v1, v2}, Lcom/vk/core/util/ColorUtils;->b(IF)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    return-object v0
.end method

.method public static setCompoundButton(Landroid/widget/CompoundButton;)V
    .locals 7

    .line 60
    new-instance v0, Landroid/content/res/ColorStateList;

    .line 63
    invoke-static {}, Lru/vtosters/hooks/SwitchHook;->createColorStateList()[[I

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [I

    const v3, 0x7f0404cb

    .line 65
    invoke-static {v3}, Lru/vtosters/hooks/other/ThemesUtils;->getColorFromAttr(I)I

    move-result v4

    const v5, 0x3ecccccd    # 0.4f

    invoke-static {v4, v5}, Lcom/vk/core/util/ColorUtils;->b(IF)I

    move-result v4

    const/4 v6, 0x0

    aput v4, v2, v6

    .line 66
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v4

    invoke-static {v4, v5}, Lcom/vk/core/util/ColorUtils;->b(IF)I

    move-result v4

    const/4 v5, 0x1

    aput v4, v2, v5

    const/4 v4, 0x2

    .line 67
    invoke-static {v3}, Lru/vtosters/hooks/other/ThemesUtils;->getColorFromAttr(I)I

    move-result v3

    aput v3, v2, v4

    const/4 v3, 0x3

    .line 68
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v4

    aput v4, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 60
    invoke-static {p0, v0}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static setSwitchColors(Landroid/widget/Switch;Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    .line 50
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "useCustomPrefsStyle"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {}, Lru/vtosters/hooks/SwitchHook;->getCustomThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-static {}, Lru/vtosters/hooks/SwitchHook;->createColorStateList()[[I

    move-result-object v2

    invoke-static {p1}, Lru/vtosters/hooks/SwitchHook;->getSwitchColors(Landroid/content/Context;)[I

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-static {v0, v1}, Lru/vtosters/hooks/SwitchHook;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-static {}, Lru/vtosters/hooks/SwitchHook;->getCustomTrack()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-static {}, Lru/vtosters/hooks/SwitchHook;->createColorStateList()[[I

    move-result-object v1

    invoke-static {}, Lru/vtosters/hooks/SwitchHook;->getTrackColors()[I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-static {p1, v0}, Lru/vtosters/hooks/SwitchHook;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-static {}, Lru/vtosters/hooks/SwitchHook;->createColorStateList()[[I

    move-result-object v2

    invoke-static {p1}, Lru/vtosters/hooks/SwitchHook;->getSwitchColors(Landroid/content/Context;)[I

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-static {v0, v1}, Lru/vtosters/hooks/SwitchHook;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    .line 55
    invoke-virtual {p0}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-static {}, Lru/vtosters/hooks/SwitchHook;->createColorStateList()[[I

    move-result-object v0

    invoke-static {}, Lru/vtosters/hooks/SwitchHook;->getTrackColors()[I

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-static {p0, p1}, Lru/vtosters/hooks/SwitchHook;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public static setSwitchCompatColors(Landroidx/appcompat/widget/SwitchCompat;Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    .line 40
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "useCustomPrefsStyle"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Lru/vtosters/hooks/SwitchHook;->getCustomThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-static {}, Lru/vtosters/hooks/SwitchHook;->createColorStateList()[[I

    move-result-object v2

    invoke-static {p1}, Lru/vtosters/hooks/SwitchHook;->getSwitchColors(Landroid/content/Context;)[I

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-static {v0, v1}, Lru/vtosters/hooks/SwitchHook;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    invoke-static {}, Lru/vtosters/hooks/SwitchHook;->getCustomTrack()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-static {}, Lru/vtosters/hooks/SwitchHook;->createColorStateList()[[I

    move-result-object v1

    invoke-static {}, Lru/vtosters/hooks/SwitchHook;->getTrackColors()[I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-static {p1, v0}, Lru/vtosters/hooks/SwitchHook;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-static {}, Lru/vtosters/hooks/SwitchHook;->createColorStateList()[[I

    move-result-object v2

    invoke-static {p1}, Lru/vtosters/hooks/SwitchHook;->getSwitchColors(Landroid/content/Context;)[I

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-static {v0, v1}, Lru/vtosters/hooks/SwitchHook;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    .line 45
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-static {}, Lru/vtosters/hooks/SwitchHook;->createColorStateList()[[I

    move-result-object v0

    invoke-static {}, Lru/vtosters/hooks/SwitchHook;->getTrackColors()[I

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-static {p0, p1}, Lru/vtosters/hooks/SwitchHook;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public static setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 81
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 82
    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-object p0
.end method
