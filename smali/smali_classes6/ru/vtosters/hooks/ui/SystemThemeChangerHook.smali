.class public Lru/vtosters/hooks/ui/SystemThemeChangerHook;
.super Ljava/lang/Object;
.source "SystemThemeChangerHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onThemeChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x1

    .line 12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lru/vtosters/hooks/ui/SystemThemeChangerHook;->onThemeChanged(Landroid/content/res/Configuration;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static onThemeChanged(Landroid/content/res/Configuration;Ljava/lang/Boolean;)V
    .locals 1

    .line 16
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->systemtheme()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    .line 21
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getDarkTheme()Lcom/vk/core/ui/themes/VKTheme;

    move-result-object p0

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_2

    const/16 v0, 0x10

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    .line 24
    :cond_2
    :goto_0
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getLightTheme()Lcom/vk/core/ui/themes/VKTheme;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_3

    .line 26
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getCurrentTheme()Lcom/vk/core/ui/themes/VKTheme;

    move-result-object v0

    if-eq p0, v0, :cond_3

    .line 27
    invoke-static {p0, p1}, Lru/vtosters/hooks/other/ThemesUtils;->applyTheme(Lcom/vk/core/ui/themes/VKTheme;Ljava/lang/Boolean;)V

    :cond_3
    return-void
.end method

.method public static themeOnStart(Landroid/app/Activity;)V
    .locals 1

    if-nez p0, :cond_0

    .line 33
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p0

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lru/vtosters/hooks/ui/SystemThemeChangerHook;->onThemeChanged(Landroid/content/res/Configuration;Ljava/lang/Boolean;)V

    return-void
.end method
