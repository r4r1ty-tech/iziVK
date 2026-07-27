.class public Lru/vtosters/hooks/ProxyHook;
.super Ljava/lang/Object;
.source "ProxyHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs areProxyHostsEmpty([Ljava/lang/String;)Z
    .locals 5

    .line 70
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 71
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Proxy is not set: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "iziVK"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static callProxyDialog(Landroid/content/Context;)V
    .locals 8

    .line 119
    new-instance v0, Landroid/widget/RadioGroup;

    invoke-direct {v0, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 121
    new-instance v1, Landroid/widget/RadioButton;

    new-instance v2, Landroidx/appcompat/view/ContextThemeWrapper;

    const v3, 0x7f1303e6

    invoke-direct {v2, p0, v3}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 122
    new-instance v2, Landroid/widget/RadioButton;

    new-instance v4, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v4, p0, v3}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v4}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance v4, Landroid/widget/RadioButton;

    new-instance v5, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v5, p0, v3}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v4, v5}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-static {v1}, Lru/vtosters/hooks/SwitchHook;->setCompoundButton(Landroid/widget/CompoundButton;)V

    .line 126
    invoke-static {v2}, Lru/vtosters/hooks/SwitchHook;->setCompoundButton(Landroid/widget/CompoundButton;)V

    .line 127
    invoke-static {v4}, Lru/vtosters/hooks/SwitchHook;->setCompoundButton(Landroid/widget/CompoundButton;)V

    .line 129
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 130
    invoke-virtual {v0, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 131
    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    const/high16 v3, 0x41600000    # 14.0f

    .line 133
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5}, Landroid/widget/RadioButton;->setTextSize(IF)V

    .line 134
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v6, v5}, Landroid/widget/RadioButton;->setTextSize(IF)V

    .line 135
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v4, v6, v3}, Landroid/widget/RadioButton;->setTextSize(IF)V

    const/high16 v3, 0x41900000    # 18.0f

    .line 137
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v5

    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {v7}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v7

    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v3

    invoke-virtual {v0, v5, v7, v3, v6}, Landroid/widget/RadioGroup;->setPadding(IIII)V

    const v3, 0x7f1216f7

    .line 139
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTextAttr()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f1216f8

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " (Zaborona)"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTextAttr()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (Vika Mobile)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTextAttr()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 148
    invoke-static {}, Lru/vtosters/lite/proxy/ProxyUtils;->isZaboronaEnabled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 149
    invoke-static {}, Lru/vtosters/lite/proxy/ProxyUtils;->isZaboronaEnabled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lru/vtosters/lite/proxy/ProxyUtils;->isVikaProxyEnabled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v6, 0x1

    :cond_0
    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 150
    invoke-static {}, Lru/vtosters/lite/proxy/ProxyUtils;->isVikaProxyEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 152
    new-instance v1, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1217fc

    .line 153
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f121701

    .line 154
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n\n\u0422\u0430\u043a \u0436\u0435 \u043c\u043e\u0436\u043d\u043e \u0432\u043a\u043b\u044e\u0447\u0438\u0442\u044c \u0432\u0441\u0442\u0440\u043e\u0435\u043d\u043d\u044b\u0439 \u043f\u0440\u043e\u043a\u0441\u0438 \u043e\u0442 \u0412\u041a\u043e\u043d\u0442\u0430\u043a\u0442\u0435 \u043f\u0435\u0440\u0435\u0439\u0434\u044f \u0432 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u043f\u0440\u043e\u043a\u0441\u0438"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v1

    .line 155
    invoke-virtual {v1, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1217c8

    .line 156
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lru/vtosters/hooks/ProxyHook$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2, v4}, Lru/vtosters/hooks/ProxyHook$$ExternalSyntheticLambda2;-><init>(Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    invoke-virtual {v0, v1, v3}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1216fc

    .line 168
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lru/vtosters/hooks/ProxyHook$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lru/vtosters/hooks/ProxyHook$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p0

    .line 171
    invoke-virtual {p0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public static getAwayPhpCom()Ljava/lang/String;
    .locals 2

    const-string v0, "proxyapi"

    .line 94
    invoke-static {v0}, Lru/vtosters/hooks/other/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {}, Lru/vtosters/lite/proxy/ProxyUtils;->isVikaProxyEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-static {}, Lru/vtosters/lite/proxy/api/VikaMobile;->getApiHost()Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_0
    invoke-static {}, Lru/vtosters/lite/proxy/ProxyUtils;->isAnyProxyEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, "m.vk.com"

    return-object v0
.end method

.method private static getProxyHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 57
    invoke-static {}, Lru/vtosters/lite/proxy/ProxyUtils;->isVikaProxyEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_3

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "proxyapi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "proxystatic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "proxyoauth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 59
    :pswitch_0
    invoke-static {}, Lru/vtosters/lite/proxy/api/VikaMobile;->getApiHost()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 61
    :pswitch_1
    invoke-static {}, Lru/vtosters/lite/proxy/api/VikaMobile;->getStaticHost()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 60
    :pswitch_2
    invoke-static {}, Lru/vtosters/lite/proxy/api/VikaMobile;->getOauthHost()Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_1
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e126717 -> :sswitch_2
        -0x4c6471a4 -> :sswitch_1
        -0x3ab88f14 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static hookAuth(Landroid/view/View;)V
    .locals 3

    const-string v0, "already_have_account"

    const-string v1, "id"

    .line 108
    invoke-static {v0, v1}, Lru/vtosters/lite/utils/AndroidUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vk/auth/ui/VkAuthTextView;

    const v2, 0x7f1216fd

    .line 109
    invoke-virtual {v0, v2}, Lcom/vk/auth/ui/VkAuthTextView;->setText(I)V

    .line 110
    new-instance v2, Lru/vtosters/hooks/ProxyHook$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lru/vtosters/hooks/ProxyHook$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v2}, Lcom/vk/auth/ui/VkAuthTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "account_backup_view"

    .line 112
    invoke-static {v0, v1}, Lru/vtosters/lite/utils/AndroidUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vk/auth/ui/VkAuthTextView;

    const-string v1, "restore_accounts"

    .line 113
    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/auth/ui/VkAuthTextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    new-instance v1, Lru/vtosters/hooks/ProxyHook$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lru/vtosters/hooks/ProxyHook$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/vk/auth/ui/VkAuthTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$callProxyDialog$2(Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 157
    invoke-virtual {p0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p0

    const-string p2, "proxy"

    if-eqz p0, :cond_0

    .line 158
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "zaborona"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 159
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->restartApplication()V

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 161
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "vika"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 162
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->restartApplication()V

    goto :goto_0

    .line 164
    :cond_1
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "noproxy"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 165
    invoke-static {}, Lru/vtosters/lite/utils/LifecycleUtils;->restartApplication()V

    :goto_0
    return-void
.end method

.method static synthetic lambda$callProxyDialog$3(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 169
    const-class p1, Lru/vtosters/lite/ui/fragments/ProxySettingsFragment;

    invoke-static {p0, p1}, Lru/vtosters/lite/utils/NavigatorUtils;->switchFragment(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic lambda$hookAuth$0(Landroid/view/View;)V
    .locals 0

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/hooks/ProxyHook;->callProxyDialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic lambda$hookAuth$1(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class p1, Lru/vtosters/lite/ui/fragments/DataSettingsFragment;

    invoke-static {p0, p1}, Lru/vtosters/lite/utils/NavigatorUtils;->switchFragment(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public static linkReplacer(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "proxyapi"

    .line 33
    invoke-static {v0}, Lru/vtosters/hooks/ProxyHook;->getProxyHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "proxyoauth"

    .line 34
    invoke-static {v1}, Lru/vtosters/hooks/ProxyHook;->getProxyHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "proxystatic"

    .line 35
    invoke-static {v2}, Lru/vtosters/hooks/ProxyHook;->getProxyHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-static {}, Lru/vtosters/lite/proxy/ProxyUtils;->isAnyProxyEnabled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-static {v3}, Lru/vtosters/hooks/ProxyHook;->areProxyHostsEmpty([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "api.vk.com"

    .line 41
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 42
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "oauth.vk.com"

    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 46
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "static.vk.com"

    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    :goto_0
    return-object p0
.end method

.method public static staticFix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "proxystatic"

    .line 80
    invoke-static {v0}, Lru/vtosters/hooks/other/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {}, Lru/vtosters/lite/proxy/ProxyUtils;->isVikaProxyEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-static {}, Lru/vtosters/lite/proxy/api/VikaMobile;->getStaticHost()Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_0
    invoke-static {}, Lru/vtosters/lite/proxy/ProxyUtils;->isAnyProxyEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "static.vk.com"

    .line 87
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method
