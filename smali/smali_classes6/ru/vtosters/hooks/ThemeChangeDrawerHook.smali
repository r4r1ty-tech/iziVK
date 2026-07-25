.class public Lru/vtosters/hooks/ThemeChangeDrawerHook;
.super Ljava/lang/Object;
.source "ThemeChangeDrawerHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeTheme(Landroid/app/Activity;[F)V
    .locals 2

    .line 11
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->systemtheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    new-instance v0, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12182f

    .line 13
    invoke-virtual {v0, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(I)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f121777

    .line 14
    invoke-virtual {v0, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setMessage(I)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setCancelable(Z)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lru/vtosters/hooks/ThemeChangeDrawerHook$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lru/vtosters/hooks/ThemeChangeDrawerHook$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;[F)V

    const p0, 0x7f1216f7

    .line 16
    invoke-virtual {v0, p0, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f12018a

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_1

    .line 23
    :cond_0
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isDarkTheme()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getDarkTheme()Lcom/vk/core/ui/themes/VKTheme;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getLightTheme()Lcom/vk/core/ui/themes/VKTheme;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, p0, p1, v1}, Lru/vtosters/hooks/other/ThemesUtils;->setThemeFL(Lcom/vk/core/ui/themes/VKTheme;Landroid/app/Activity;[FLjava/lang/Boolean;)V

    :goto_1
    return-void
.end method

.method static synthetic lambda$changeTheme$0(Landroid/app/Activity;[FLandroid/content/DialogInterface;I)V
    .locals 0

    .line 17
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isDarkTheme()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getDarkTheme()Lcom/vk/core/ui/themes/VKTheme;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getLightTheme()Lcom/vk/core/ui/themes/VKTheme;

    move-result-object p2

    :goto_0
    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p2, p0, p1, p3}, Lru/vtosters/hooks/other/ThemesUtils;->setThemeFL(Lcom/vk/core/ui/themes/VKTheme;Landroid/app/Activity;[FLjava/lang/Boolean;)V

    .line 18
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "system_theme"

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
