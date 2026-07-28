.class public Lru/vtosters/hooks/other/ThemesUtils;
.super Ljava/lang/Object;
.source "ThemesUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyTheme(Lcom/vk/core/ui/themes/VKTheme;Ljava/lang/Boolean;)V
    .locals 1

    .line 46
    :try_start_0
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lru/vtosters/hooks/other/ThemesUtils;->setTheme(Lcom/vk/core/ui/themes/VKTheme;Landroid/app/Activity;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    :goto_0
    return-void
.end method

.method public static colorHandles(Landroid/widget/TextView;)V
    .locals 10

    .line 167
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 168
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 169
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSelectHandle()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 170
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSelectHandleRight()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 171
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSelectHandleLeft()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_1

    .line 172
    :cond_0
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isMIUI()Z

    move-result v0

    if-nez v0, :cond_6

    .line 173
    const-class v0, Landroid/widget/TextView;

    const-string v1, "mEditor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 177
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 182
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "mSelectHandleLeft"

    const-string v4, "mSelectHandleRight"

    const-string v5, "mSelectHandleCenter"

    .line 184
    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "mTextSelectHandleLeftRes"

    const-string v5, "mTextSelectHandleRightRes"

    const-string v6, "mTextSelectHandleRes"

    .line 185
    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x3

    if-ge v5, v6, :cond_6

    .line 188
    aget-object v6, v3, v5

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 189
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v7

    if-nez v7, :cond_2

    .line 190
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 193
    :cond_2
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_4

    .line 196
    const-class v7, Landroid/widget/TextView;

    aget-object v8, v4, v5

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 197
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v8

    if-nez v8, :cond_3

    .line 198
    invoke-virtual {v7, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 200
    :cond_3
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    .line 201
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :cond_4
    if-eqz v7, :cond_5

    .line 205
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 206
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 207
    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ThemesUtils"

    const-string v1, "colorHandles: "

    .line 213
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_1
    return-void
.end method

.method public static colorTextView(Landroid/widget/TextView;)V
    .locals 0

    .line 123
    :try_start_0
    invoke-static {p0}, Lru/vtosters/hooks/other/ThemesUtils;->colorHandles(Landroid/widget/TextView;)V

    .line 124
    check-cast p0, Landroid/widget/EditText;

    invoke-static {p0}, Lru/vtosters/hooks/other/ThemesUtils;->setCursorColor(Landroid/widget/EditText;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static colorWriteBar(Landroid/view/View;)V
    .locals 1

    .line 300
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTabbarBackground()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public static darken(IF)I
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 332
    invoke-static {p0, v0}, Landroidx/core/graphics/ColorUtils;->colorToHSL(I[F)V

    const/4 p0, 0x2

    aget v1, v0, p0

    sub-float/2addr v1, p1

    aput v1, v0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 334
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    aput p1, v0, p0

    .line 335
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->HSLToColor([F)I

    move-result p0

    return p0
.end method

.method public static fixSeparator(F)I
    .locals 2

    .line 339
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMonetTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 342
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p0, p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public static getAccenedColorStateList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 53
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getAccentColor()I
    .locals 1

    const v0, 0x7f040022

    .line 99
    invoke-static {v0}, Lru/vtosters/hooks/other/ThemesUtils;->getColorFromAttr(I)I

    move-result v0

    return v0
.end method

.method public static getAlertStyle()I
    .locals 2

    .line 362
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isDarkTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VkAlertDialogThemeDark"

    goto :goto_0

    :cond_0
    const-string v0, "VkAlertDialogTheme"

    :goto_0
    const-string v1, "style"

    invoke-static {v0, v1}, Lru/vtosters/lite/utils/AndroidUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getAttrId(Ljava/lang/String;)I
    .locals 1

    const-string v0, "attr"

    .line 256
    invoke-static {p0, v0}, Lru/vtosters/lite/utils/AndroidUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getBackgroundContent()I
    .locals 1

    const v0, 0x7f040095

    .line 240
    invoke-static {v0}, Lru/vtosters/hooks/other/ThemesUtils;->getColorFromAttr(I)I

    move-result v0

    return v0
.end method

.method public static getBackgroundPage()I
    .locals 1

    const v0, 0x7f040099

    .line 244
    invoke-static {v0}, Lru/vtosters/hooks/other/ThemesUtils;->getColorFromAttr(I)I

    move-result v0

    return v0
.end method

.method public static getBackgroundStickers()Ljava/lang/String;
    .locals 1

    .line 366
    const-string v0, "images"

    return-object v0
.end method

.method public static getCSTDock(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 7

    .line 410
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    new-array v2, v1, [[I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x10100a0

    const/4 v6, 0x0

    aput v5, v4, v6

    aput-object v4, v2, v6

    new-array v4, v3, [I

    const v5, -0x10100a0

    aput v5, v4, v6

    aput-object v4, v2, v3

    new-array v1, v1, [I

    .line 416
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->dockbar_accent()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result p0

    goto :goto_1

    :cond_0
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isDarkTheme()Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f06030c

    goto :goto_0

    :cond_1
    const v4, 0x7f0600ea

    :goto_0
    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    :goto_1
    aput p0, v1, v6

    const p0, 0x7f040567

    .line 417
    invoke-static {p0}, Lru/vtosters/hooks/other/ThemesUtils;->getColorFromAttr(I)I

    move-result p0

    aput p0, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method public static getColor(I)I
    .locals 1

    .line 358
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getColorFromAttr(I)I
    .locals 0

    .line 296
    invoke-static {p0}, Lcom/vk/core/ui/themes/VKThemeHelper;->d(I)I

    move-result p0

    return p0
.end method

.method public static getCurrentTheme()Lcom/vk/core/ui/themes/VKTheme;
    .locals 1

    .line 370
    invoke-static {}, Lcom/vk/core/ui/themes/VKThemeHelper;->l()Lcom/vk/core/ui/themes/VKTheme;

    move-result-object v0

    return-object v0
.end method

.method public static getDarkTheme()Lcom/vk/core/ui/themes/VKTheme;
    .locals 1

    .line 288
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMilkshake()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vk/core/ui/themes/VKTheme;->VKAPP_MILK_DARK:Lcom/vk/core/ui/themes/VKTheme;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/vk/core/ui/themes/VKTheme;->VKAPP_DARK:Lcom/vk/core/ui/themes/VKTheme;

    :goto_0
    return-object v0
.end method

.method public static getDarkThemeRes()I
    .locals 2

    .line 264
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMonetTheme()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isAmoledTheme()Z

    move-result v0

    const-string v1, "style"

    if-eqz v0, :cond_1

    .line 266
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMilkshake()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VkMilkAmoledMonetStyle"

    goto :goto_0

    :cond_0
    const-string v0, "VkAmoledMonetStyle"

    :goto_0
    invoke-static {v0, v1}, Lru/vtosters/lite/utils/AndroidUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 268
    :cond_1
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMilkshake()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "VkMilkDarkMonetStyle"

    goto :goto_1

    :cond_2
    const-string v0, "VkDarkMonetStyle"

    :goto_1
    invoke-static {v0, v1}, Lru/vtosters/lite/utils/AndroidUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 271
    :cond_3
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isAmoledTheme()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 272
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMilkshake()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f130473

    goto :goto_2

    :cond_4
    const v0, 0x7f130471

    :goto_2
    return v0

    .line 274
    :cond_5
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMilkshake()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f1303c6

    goto :goto_3

    :cond_6
    const v0, 0x7f130337

    :goto_3
    return v0
.end method

.method public static getDialogTheme()Lcom/vk/im/engine/models/dialogs/DialogTheme;
    .locals 2

    .line 79
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMonetTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Lcom/vk/im/ui/themes/DefaultThemeProvider;

    sget-object v1, Lcom/vk/core/ui/themes/VKThemeHelper;->k:Lcom/vk/core/ui/themes/VKThemeHelper;

    invoke-direct {v0, v1}, Lcom/vk/im/ui/themes/DefaultThemeProvider;-><init>(Lcom/vk/core/ui/themes/VKThemeHelper;)V

    invoke-virtual {v0}, Lcom/vk/im/ui/themes/DefaultThemeProvider;->b()Lcom/vk/im/engine/models/dialogs/DialogTheme;

    move-result-object v0

    return-object v0

    .line 82
    :cond_0
    sget-object v0, Lcom/vk/im/engine/models/dialogs/DialogTheme;->d:Lcom/vk/im/engine/models/dialogs/DialogTheme$b;

    invoke-virtual {v0}, Lcom/vk/im/engine/models/dialogs/DialogTheme$b;->a()Lcom/vk/im/engine/models/dialogs/DialogTheme;

    move-result-object v0

    return-object v0
.end method

.method public static getHeaderBackground()I
    .locals 1

    const v0, 0x7f040224

    .line 248
    invoke-static {v0}, Lru/vtosters/hooks/other/ThemesUtils;->getColorFromAttr(I)I

    move-result v0

    return v0
.end method

.method public static getHeaderText()I
    .locals 1

    const v0, 0x7f04022d

    .line 252
    invoke-static {v0}, Lru/vtosters/hooks/other/ThemesUtils;->getColorFromAttr(I)I

    move-result v0

    return v0
.end method

.method public static getLightTheme()Lcom/vk/core/ui/themes/VKTheme;
    .locals 1

    .line 292
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMilkshake()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vk/core/ui/themes/VKTheme;->VKAPP_MILK_LIGHT:Lcom/vk/core/ui/themes/VKTheme;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/vk/core/ui/themes/VKTheme;->VKAPP_LIGHT:Lcom/vk/core/ui/themes/VKTheme;

    :goto_0
    return-object v0
.end method

.method public static getLightThemeRes()I
    .locals 2

    .line 280
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMonetTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMilkshake()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VkMilkLightMonetStyle"

    goto :goto_0

    :cond_0
    const-string v0, "VkLightMonetStyle"

    :goto_0
    const-string v1, "style"

    invoke-static {v0, v1}, Lru/vtosters/lite/utils/AndroidUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 283
    :cond_1
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMilkshake()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f1303c8

    goto :goto_1

    :cond_2
    const v0, 0x7f1303bf

    :goto_1
    return v0
.end method

.method public static getMutedAccentColor()I
    .locals 1

    .line 118
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v0

    invoke-static {v0}, Lru/vtosters/hooks/other/ThemesUtils;->getMutedColor(I)I

    move-result v0

    return v0
.end method

.method public static getMutedColor(I)I
    .locals 2

    .line 218
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isDarkTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMilkshake()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_1
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isDarkTheme()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x3ea3d70a    # 0.32f

    goto :goto_1

    :cond_2
    const v1, 0x3dcccccd    # 0.1f

    :goto_1
    invoke-static {p0, v0, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    return p0
.end method

.method public static getNavigationHeight(I)I
    .locals 1

    .line 402
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->vkme()Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f0700b9

    :cond_0
    return p0
.end method

.method public static getNavigationWidth(I)I
    .locals 1

    .line 406
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->vkme()Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f070057

    :cond_0
    return p0
.end method

.method public static getNeededColorNavbar()I
    .locals 3

    .line 260
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isDarkTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v2, 0x10

    :cond_0
    return v2
.end method

.method public static getReservedAccent()I
    .locals 3

    .line 105
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "reserved_accent_color"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSTextAttr()I
    .locals 1

    const v0, 0x7f04059b

    .line 232
    invoke-static {v0}, Lru/vtosters/hooks/other/ThemesUtils;->getColorFromAttr(I)I

    move-result v0

    return v0
.end method

.method public static getTabbarBackground()I
    .locals 1

    const v0, 0x7f040566

    .line 236
    invoke-static {v0}, Lru/vtosters/hooks/other/ThemesUtils;->getColorFromAttr(I)I

    move-result v0

    return v0
.end method

.method public static getTextAttr()I
    .locals 1

    const v0, 0x7f04059a

    .line 228
    invoke-static {v0}, Lru/vtosters/hooks/other/ThemesUtils;->getColorFromAttr(I)I

    move-result v0

    return v0
.end method

.method public static halfAlpha(I)I
    .locals 1

    const/16 v0, 0xa9

    .line 354
    invoke-static {p0, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    return p0
.end method

.method public static hex(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0xffffff

    and-int/2addr p0, v1

    .line 393
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "#%06X"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hexx(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0xffffff

    and-int/2addr p0, v1

    .line 398
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "%06X"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isAmoledTheme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isDarkTheme()Z
    .locals 1

    .line 87
    invoke-static {}, Lcom/vk/core/ui/themes/VKThemeHelper;->r()Z

    move-result v0

    return v0
.end method

.method public static isMilkshake()Z
    .locals 1

    .line 304
    invoke-static {}, Lcom/vk/core/ui/themes/MilkshakeHelper;->e()Z

    move-result v0

    return v0
.end method

.method public static isMonetTheme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static lighten(IF)I
    .locals 5

    .line 347
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float v0, v0, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v0, v2

    add-float/2addr v0, p1

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 348
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    div-float/2addr v3, v2

    add-float/2addr v3, p1

    mul-float v3, v3, v2

    float-to-int v3, v3

    .line 349
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    div-float/2addr v4, v2

    add-float/2addr v4, p1

    mul-float v4, v4, v2

    float-to-int p1, v4

    .line 350
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    invoke-static {p0, v0, v3, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static recolorBGView(Landroid/view/View;)V
    .locals 2

    .line 327
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static recolorDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 313
    :cond_0
    new-instance v0, Lcom/vk/core/drawable/RecoloredDrawable;

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/vk/core/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-object v0
.end method

.method public static recolorTextView(Landroid/widget/TextView;)V
    .locals 2

    .line 323
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static recolorToolbarDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 317
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMonetTheme()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 319
    :cond_1
    new-instance v0, Lcom/vk/core/drawable/RecoloredDrawable;

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMilkshake()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isDarkTheme()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getHeaderText()I

    move-result v1

    :goto_0
    invoke-direct {v0, p0, v1}, Lcom/vk/core/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-object v0
.end method

.method public static reserveAccentColor(IZ)V
    .locals 2

    .line 109
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "reserved_accent_color"

    .line 110
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_0

    .line 111
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 112
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return-void
.end method

.method public static setCursorColor(Landroid/widget/EditText;)V
    .locals 4

    .line 132
    :try_start_0
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getMutedAccentColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 135
    invoke-virtual {p0}, Landroid/widget/EditText;->getTextCursorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 136
    :cond_0
    invoke-static {}, Lru/vtosters/lite/deviceinfo/OEMDetector;->isMIUI()Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    const-class v0, Landroid/widget/TextView;

    const-string v1, "mCursorDrawableRes"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 139
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 141
    const-class v2, Landroid/widget/TextView;

    const-string v3, "mEditor"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 142
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 143
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 146
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 147
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object p0, v0, v3

    aput-object p0, v0, v1

    .line 150
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt p0, v3, :cond_1

    .line 151
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v3, "mCursorDrawable"

    invoke-virtual {p0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v3, "mDrawableForCursor"

    invoke-virtual {p0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 155
    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 156
    invoke-virtual {p0, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "ThemesUtils"

    const-string v1, "setCursorColor: "

    .line 160
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public static setCustomAccentColor(IZ)V
    .locals 2

    .line 222
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "accent_color"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 223
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 224
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return-void
.end method

.method public static setImageViewColored(Landroid/widget/ImageView;)V
    .locals 2

    .line 308
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static setNavbarColor(Landroid/view/Window;I)V
    .locals 0

    .line 374
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->navbar()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 375
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTabbarBackground()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 376
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getNeededColorNavbar()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public static setStatusBarColor(Landroid/view/Window;)V
    .locals 2

    .line 381
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 382
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isDarkTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 384
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, -0x2001

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 386
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 387
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setTheme(Lcom/vk/core/ui/themes/VKTheme;Landroid/app/Activity;Ljava/lang/Boolean;)V
    .locals 1

    .line 57
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getCenterScreenCoords()[F

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lru/vtosters/hooks/other/ThemesUtils;->setThemeFL(Lcom/vk/core/ui/themes/VKTheme;Landroid/app/Activity;[FLjava/lang/Boolean;)V

    return-void
.end method

.method public static setThemeFL(Lcom/vk/core/ui/themes/VKTheme;Landroid/app/Activity;[FLjava/lang/Boolean;)V
    .locals 1

    if-nez p1, :cond_0

    .line 62
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    .line 64
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/vk/core/ui/themes/VKThemeHelper;->theme(Lcom/vk/core/ui/themes/VKTheme;Landroid/app/Activity;[F)V

    .line 65
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMonetTheme()Z

    move-result p0

    .line 70
    :cond_2
    invoke-static {}, Lcom/vtosters/lite/data/ThemeTracker;->a()V

    .line 71
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 72
    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    .line 74
    :cond_3
    new-instance p0, Landroid/webkit/WebView;

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 75
    invoke-static {}, Lcom/vk/articles/preload/WebCachePreloader;->e()V

    return-void
.end method
