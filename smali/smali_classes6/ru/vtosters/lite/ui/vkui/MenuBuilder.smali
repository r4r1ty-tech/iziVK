.class public Lru/vtosters/lite/ui/vkui/MenuBuilder;
.super Ljava/lang/Object;
.source "MenuBuilder.java"


# static fields
.field private static apMethod:Ljava/lang/reflect/Method;

.field private static apView:Ljava/lang/reflect/Field;

.field private static cfambObject:Ljava/lang/reflect/Field;

.field private static pfambObject:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "b"

    .line 39
    :try_start_0
    const-class v1, Lcom/vk/core/dialogs/actionspopup/ActionsPopup$b;

    const-string v2, "g"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lru/vtosters/lite/ui/vkui/MenuBuilder;->apView:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 42
    const-class v1, Lcom/vk/core/dialogs/actionspopup/ActionsPopup$b;

    const-string v3, "a"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v2

    const-class v5, Lkotlin/jvm/b/Functions;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lru/vtosters/lite/ui/vkui/MenuBuilder;->apMethod:Ljava/lang/reflect/Method;

    .line 44
    const-class v1, Lcom/vk/profile/ui/components/ProfileFragmentActionsMenuBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lru/vtosters/lite/ui/vkui/MenuBuilder;->pfambObject:Ljava/lang/reflect/Field;

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 47
    const-class v1, Lcom/vk/profile/ui/components/CommunityFragmentActionsMenuBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/ui/vkui/MenuBuilder;->cfambObject:Ljava/lang/reflect/Field;

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "MenuBuilder"

    const-string v2, "Reflection failed"

    .line 50
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addItem(Lcom/vk/core/dialogs/actionspopup/ActionsPopup$b;Ljava/lang/String;Lkotlin/jvm/b/Functions;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 145
    sget-object v0, Lru/vtosters/lite/ui/vkui/MenuBuilder;->apMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    const/4 v2, 0x0

    aput-object v2, v1, p1

    const/4 p1, 0x2

    aput-object p2, v1, p1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static copy(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "clipboard"

    .line 137
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    const-string v0, "MBH-ST"

    .line 138
    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 139
    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const p0, 0x7f1216a3

    .line 141
    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    return-void
.end method

.method public static injectAP(Lcom/vk/profile/ui/components/CommunityFragmentActionsMenuBuilder;Lcom/vk/core/dialogs/actionspopup/ActionsPopup$b;)V
    .locals 6

    .line 96
    :try_start_0
    sget-object v0, Lru/vtosters/lite/ui/vkui/MenuBuilder;->cfambObject:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vtosters/lite/api/ExtendedCommunityProfile;

    .line 97
    sget-object v0, Lru/vtosters/lite/ui/vkui/MenuBuilder;->apView:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    invoke-static {p0}, Lru/vtosters/lite/ui/vkui/MenuBuilder;->isWhitelistedFilter(Lcom/vtosters/lite/api/ExtendedCommunityProfile;)Z

    move-result v1

    .line 99
    invoke-static {p0}, Lru/vtosters/lite/ui/vkui/MenuBuilder;->isWhitelistedAd(Lcom/vtosters/lite/api/ExtendedCommunityProfile;)Z

    move-result v2

    .line 100
    invoke-static {p0}, Lru/vtosters/lite/ui/vkui/MenuBuilder;->isWhitelistedAdStories(Lcom/vtosters/lite/api/ExtendedCommunityProfile;)Z

    move-result v3

    const v4, 0x7f1216a4

    .line 102
    invoke-static {v4}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lru/vtosters/lite/ui/vkui/MenuBuilder$$ExternalSyntheticLambda5;

    invoke-direct {v5, v0, p0}, Lru/vtosters/lite/ui/vkui/MenuBuilder$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;Lcom/vtosters/lite/api/ExtendedCommunityProfile;)V

    invoke-static {p1, v4, v5}, Lru/vtosters/lite/ui/vkui/MenuBuilder;->addItem(Lcom/vk/core/dialogs/actionspopup/ActionsPopup$b;Ljava/lang/String;Lkotlin/jvm/b/Functions;)V

    .line 107
    invoke-static {}, Lru/vtosters/hooks/RenameHook;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f1216a2

    .line 108
    invoke-static {v4}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lru/vtosters/lite/ui/vkui/MenuBuilder$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0, v0}, Lru/vtosters/lite/ui/vkui/MenuBuilder$$ExternalSyntheticLambda6;-><init>(Lcom/vtosters/lite/api/ExtendedCommunityProfile;Landroid/content/Context;)V

    invoke-static {p1, v4, v5}, Lru/vtosters/lite/ui/vkui/MenuBuilder;->addItem(Lcom/vk/core/dialogs/actionspopup/ActionsPopup$b;Ljava/lang/String;Lkotlin/jvm/b/Functions;)V

    :cond_0
    if-eqz v1, :cond_1

    const v0, 0x7f121715

    goto :goto_0

    :cond_1
    const v0, 0x7f121512

    .line 114
    :goto_0
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lru/vtosters/lite/ui/vkui/MenuBuilder$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0, v1}, Lru/vtosters/lite/ui/vkui/MenuBuilder$$ExternalSyntheticLambda7;-><init>(Lcom/vtosters/lite/api/ExtendedCommunityProfile;Z)V

    invoke-static {p1, v0, v4}, Lru/vtosters/lite/ui/vkui/MenuBuilder;->addItem(Lcom/vk/core/dialogs/actionspopup/ActionsPopup$b;Ljava/lang/String;Lkotlin/jvm/b/Functions;)V

    if-eqz v2, :cond_2

    const v0, 0x7f121712

    goto :goto_1

    :cond_2
    const v0, 0x7f12150f

    .line 120
    :goto_1
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/ui/vkui/MenuBuilder$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, v2}, Lru/vtosters/lite/ui/vkui/MenuBuilder$$ExternalSyntheticLambda8;-><init>(Lcom/vtosters/lite/api/ExtendedCommunityProfile;Z)V

    invoke-static {p1, v0, v1}, Lru/vtosters/lite/ui/vkui/MenuBuilder;->addItem(Lcom/vk/core/dialogs/actionspopup/ActionsPopup$b;Ljava/lang/String;Lkotlin/jvm/b/Functions;)V

    if-eqz v3, :cond_3

    const v0, 0x7f121871

    goto :goto_2

    :cond_3
    const v0, 0x7f12183f

    .line 126
    :goto_2
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/ui/vkui/MenuBuilder$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, v3}, Lru/vtosters/lite/ui/vkui/MenuBuilder$$ExternalSyntheticLambda9;-><init>(Lcom/vtosters/lite/api/ExtendedCommunityProfile;Z)V

    invoke-static {p1, v0, v1}, Lru/vtosters/lite/ui/vkui/MenuBuilder;->addItem(Lcom/vk/core/dialogs/actionspopup/ActionsPopup$b;Ljava/lang/String;Lkotlin/jvm/b/Functions;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    .line 132
    :goto_3
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->fillInStackTrace()Ljava/lang/Throwable;

    :goto_4
    return-void
.end method

.method public static injectAP(Lcom/vk/profile/ui/components/ProfileFragmentActionsMenuBuilder;Lcom/vk/core/dialogs/actionspopup/ActionsPopup$b;)V
    .locals 5

    .line 57
    :try_start_0
    sget-object v0, Lru/vtosters/lite/ui/vkui/MenuBuilder;->pfambObject:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vtosters/lite/api/ExtendedUserProfile;

    .line 58
    sget-object v0, Lru/vtosters/lite/ui/vkui/MenuBuilder;->apView:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 59
    invoke-static {p0}, Lru/vtosters/lite/ui/vkui/MenuBuilder;->isWhitelistedFilter(Lcom/vtosters/lite/api/ExtendedUserProfile;)Z

    move-result v1

    .line 60
    invoke-static {p0}, Lru/vtosters/lite/ui/vkui/MenuBuilder;->isWhitelistedAdStories(Lcom/vtosters/lite/api/ExtendedUserProfile;)Z

    move-result v2

    const v3, 0x7f1216a4

    .line 61
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lru/vtosters/lite/ui/vkui/MenuBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, p0}, Lru/vtosters/lite/ui/vkui/MenuBuilder$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lcom/vtosters/lite/api/ExtendedUserProfile;)V

    invoke-static {p1, v3, v4}, Lru/vtosters/lite/ui/vkui/MenuBuilder;->addItem(Lcom/vk/core/dialogs/actionspopup/ActionsPopup$b;Ljava/lang/String;Lkotlin/jvm/b/Functions;)V

    const v3, 0x7f1216a1

    .line 66
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lru/vtosters/lite/ui/vkui/MenuBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, p0}, Lru/vtosters/lite/ui/vkui/MenuBuilder$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Lcom/vtosters/lite/api/ExtendedUserProfile;)V

    invoke-static {p1, v3, v4}, Lru/vtosters/lite/ui/vkui/MenuBuilder;->addItem(Lcom/vk/core/dialogs/actionspopup/ActionsPopup$b;Ljava/lang/String;Lkotlin/jvm/b/Functions;)V

    .line 71
    invoke-static {}, Lru/vtosters/hooks/RenameHook;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f1216a2

    .line 72
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lru/vtosters/lite/ui/vkui/MenuBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v0}, Lru/vtosters/lite/ui/vkui/MenuBuilder$$ExternalSyntheticLambda2;-><init>(Lcom/vtosters/lite/api/ExtendedUserProfile;Landroid/content/Context;)V

    invoke-static {p1, v3, v4}, Lru/vtosters/lite/ui/vkui/MenuBuilder;->addItem(Lcom/vk/core/dialogs/actionspopup/ActionsPopup$b;Ljava/lang/String;Lkotlin/jvm/b/Functions;)V

    :cond_0
    if-eqz v1, :cond_1

    const v0, 0x7f121715

    goto :goto_0

    :cond_1
    const v0, 0x7f121512

    .line 78
    :goto_0
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lru/vtosters/lite/ui/vkui/MenuBuilder$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1}, Lru/vtosters/lite/ui/vkui/MenuBuilder$$ExternalSyntheticLambda3;-><init>(Lcom/vtosters/lite/api/ExtendedUserProfile;Z)V

    invoke-static {p1, v0, v3}, Lru/vtosters/lite/ui/vkui/MenuBuilder;->addItem(Lcom/vk/core/dialogs/actionspopup/ActionsPopup$b;Ljava/lang/String;Lkotlin/jvm/b/Functions;)V

    if-eqz v2, :cond_2

    const v0, 0x7f121871

    goto :goto_1

    :cond_2
    const v0, 0x7f12183f

    .line 84
    :goto_1
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/ui/vkui/MenuBuilder$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v2}, Lru/vtosters/lite/ui/vkui/MenuBuilder$$ExternalSyntheticLambda4;-><init>(Lcom/vtosters/lite/api/ExtendedUserProfile;Z)V

    invoke-static {p1, v0, v1}, Lru/vtosters/lite/ui/vkui/MenuBuilder;->addItem(Lcom/vk/core/dialogs/actionspopup/ActionsPopup$b;Ljava/lang/String;Lkotlin/jvm/b/Functions;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 90
    :goto_2
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->fillInStackTrace()Ljava/lang/Throwable;

    :goto_3
    return-void
.end method

.method public static isWhitelistedAd(Lcom/vtosters/lite/api/ExtendedCommunityProfile;)Z
    .locals 3

    .line 155
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "whitelisted_ad_groups"

    .line 157
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 155
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 158
    invoke-static {p0}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserID(Lcom/vtosters/lite/api/ExtendedUserProfile;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isWhitelistedAdStories(Lcom/vtosters/lite/api/ExtendedCommunityProfile;)Z
    .locals 3

    .line 162
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "whitelisted_stories_ad"

    .line 164
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 162
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 165
    invoke-static {p0}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserID(Lcom/vtosters/lite/api/ExtendedUserProfile;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isWhitelistedAdStories(Lcom/vtosters/lite/api/ExtendedUserProfile;)Z
    .locals 3

    .line 175
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "whitelisted_stories_ad"

    .line 177
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 175
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 178
    invoke-static {p0}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserID(Lcom/vtosters/lite/api/ExtendedUserProfile;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isWhitelistedFilter(Lcom/vtosters/lite/api/ExtendedCommunityProfile;)Z
    .locals 3

    .line 149
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "whitelisted_filters_groups"

    .line 150
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 149
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 151
    invoke-static {p0}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserID(Lcom/vtosters/lite/api/ExtendedUserProfile;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isWhitelistedFilter(Lcom/vtosters/lite/api/ExtendedUserProfile;)Z
    .locals 3

    .line 169
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "whitelisted_filters_groups"

    .line 170
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 169
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 171
    invoke-static {p0}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserID(Lcom/vtosters/lite/api/ExtendedUserProfile;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$injectAP$0(Landroid/content/Context;Lcom/vtosters/lite/api/ExtendedUserProfile;)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-static {p1}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserID(Lcom/vtosters/lite/api/ExtendedUserProfile;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lru/vtosters/lite/ui/vkui/MenuBuilder;->copy(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic lambda$injectAP$1(Landroid/content/Context;Lcom/vtosters/lite/api/ExtendedUserProfile;)Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-static {p1}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserID(Lcom/vtosters/lite/api/ExtendedUserProfile;)I

    move-result p1

    invoke-static {p0, p1}, Lru/vtosters/lite/foaf/FoafBase;->loadAndShow(Landroid/content/Context;I)V

    .line 68
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic lambda$injectAP$2(Lcom/vtosters/lite/api/ExtendedUserProfile;Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-static {p0, p1}, Lru/vtosters/lite/utils/RenameTool;->createDialog(Lcom/vtosters/lite/api/ExtendedUserProfile;Landroid/content/Context;)V

    .line 74
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic lambda$injectAP$3(Lcom/vtosters/lite/api/ExtendedUserProfile;Z)Ljava/lang/Object;
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    .line 79
    invoke-static {p0, v0}, Lru/vtosters/lite/ui/vkui/MenuBuilder;->setWhitelistedFilter(Lcom/vtosters/lite/api/ExtendedUserProfile;Z)V

    if-eqz p1, :cond_0

    const p0, 0x7f121716

    goto :goto_0

    :cond_0
    const p0, 0x7f121513

    .line 80
    :goto_0
    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    .line 81
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic lambda$injectAP$4(Lcom/vtosters/lite/api/ExtendedUserProfile;Z)Ljava/lang/Object;
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    .line 85
    invoke-static {p0, v0}, Lru/vtosters/lite/ui/vkui/MenuBuilder;->setWhitelistedAdStories(Lcom/vtosters/lite/api/ExtendedUserProfile;Z)V

    if-eqz p1, :cond_0

    const p0, 0x7f121716

    goto :goto_0

    :cond_0
    const p0, 0x7f121513

    .line 86
    :goto_0
    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    .line 87
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic lambda$injectAP$5(Landroid/content/Context;Lcom/vtosters/lite/api/ExtendedCommunityProfile;)Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-static {p1}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserID(Lcom/vtosters/lite/api/ExtendedUserProfile;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lru/vtosters/lite/ui/vkui/MenuBuilder;->copy(Landroid/content/Context;Ljava/lang/String;)V

    .line 104
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic lambda$injectAP$6(Lcom/vtosters/lite/api/ExtendedCommunityProfile;Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-static {p0, p1}, Lru/vtosters/lite/utils/RenameTool;->createDialogGroup(Lcom/vtosters/lite/api/ExtendedCommunityProfile;Landroid/content/Context;)V

    .line 110
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic lambda$injectAP$7(Lcom/vtosters/lite/api/ExtendedCommunityProfile;Z)Ljava/lang/Object;
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    .line 115
    invoke-static {p0, v0}, Lru/vtosters/lite/ui/vkui/MenuBuilder;->setWhitelistedFilter(Lcom/vtosters/lite/api/ExtendedCommunityProfile;Z)V

    if-eqz p1, :cond_0

    const p0, 0x7f121716

    goto :goto_0

    :cond_0
    const p0, 0x7f121513

    .line 116
    :goto_0
    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    .line 117
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic lambda$injectAP$8(Lcom/vtosters/lite/api/ExtendedCommunityProfile;Z)Ljava/lang/Object;
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    .line 121
    invoke-static {p0, v0}, Lru/vtosters/lite/ui/vkui/MenuBuilder;->setWhitelistedAd(Lcom/vtosters/lite/api/ExtendedCommunityProfile;Z)V

    if-eqz p1, :cond_0

    const p0, 0x7f121716

    goto :goto_0

    :cond_0
    const p0, 0x7f121513

    .line 122
    :goto_0
    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    .line 123
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic lambda$injectAP$9(Lcom/vtosters/lite/api/ExtendedCommunityProfile;Z)Ljava/lang/Object;
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    .line 127
    invoke-static {p0, v0}, Lru/vtosters/lite/ui/vkui/MenuBuilder;->setWhitelistedAdStories(Lcom/vtosters/lite/api/ExtendedCommunityProfile;Z)V

    if-eqz p1, :cond_0

    const p0, 0x7f121716

    goto :goto_0

    :cond_0
    const p0, 0x7f121513

    .line 128
    :goto_0
    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    .line 129
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static setWhitelistedAd(Lcom/vtosters/lite/api/ExtendedCommunityProfile;Z)V
    .locals 4

    .line 198
    invoke-static {p0}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserID(Lcom/vtosters/lite/api/ExtendedUserProfile;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 200
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 202
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "whitelisted_ad_groups"

    .line 200
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_0

    .line 205
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 210
    :goto_0
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setWhitelistedAdStories(Lcom/vtosters/lite/api/ExtendedCommunityProfile;Z)V
    .locals 4

    .line 214
    invoke-static {p0}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserID(Lcom/vtosters/lite/api/ExtendedUserProfile;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 216
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 218
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "whitelisted_stories_ad"

    .line 216
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 226
    :goto_0
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setWhitelistedAdStories(Lcom/vtosters/lite/api/ExtendedUserProfile;Z)V
    .locals 4

    .line 246
    invoke-static {p0}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserID(Lcom/vtosters/lite/api/ExtendedUserProfile;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 248
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 250
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "whitelisted_stories_ad"

    .line 248
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_0

    .line 253
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 258
    :goto_0
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setWhitelistedFilter(Lcom/vtosters/lite/api/ExtendedCommunityProfile;Z)V
    .locals 4

    .line 182
    invoke-static {p0}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserID(Lcom/vtosters/lite/api/ExtendedUserProfile;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 184
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 186
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "whitelisted_filters_groups"

    .line 184
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 194
    :goto_0
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setWhitelistedFilter(Lcom/vtosters/lite/api/ExtendedUserProfile;Z)V
    .locals 4

    .line 230
    invoke-static {p0}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserID(Lcom/vtosters/lite/api/ExtendedUserProfile;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 232
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 234
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "whitelisted_filters_groups"

    .line 232
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_0

    .line 237
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 242
    :goto_0
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
