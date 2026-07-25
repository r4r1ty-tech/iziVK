.class Lru/vtosters/lite/ui/fragments/ProxyChangeListener;
.super Ljava/lang/Object;
.source "ProxySettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/vtosters/lite/ui/fragments/ProxyChangeListener$ProxyPreferences;,
        Lru/vtosters/lite/ui/fragments/ProxyChangeListener$OnDismissListener;
    }
.end annotation


# instance fields
.field private final networkProxy:Lcom/vk/core/network/proxy/NetworkProxy;

.field private final switchPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetnetworkProxy(Lru/vtosters/lite/ui/fragments/ProxyChangeListener;)Lcom/vk/core/network/proxy/NetworkProxy;
    .locals 0

    iget-object p0, p0, Lru/vtosters/lite/ui/fragments/ProxyChangeListener;->networkProxy:Lcom/vk/core/network/proxy/NetworkProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetswitchPreference(Lru/vtosters/lite/ui/fragments/ProxyChangeListener;)Landroidx/preference/SwitchPreference;
    .locals 0

    iget-object p0, p0, Lru/vtosters/lite/ui/fragments/ProxyChangeListener;->switchPreference:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method constructor <init>(Lcom/vk/core/network/proxy/NetworkProxy;Landroidx/preference/SwitchPreference;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lru/vtosters/lite/ui/fragments/ProxyChangeListener;->networkProxy:Lcom/vk/core/network/proxy/NetworkProxy;

    .line 45
    iput-object p2, p0, Lru/vtosters/lite/ui/fragments/ProxyChangeListener;->switchPreference:Landroidx/preference/SwitchPreference;

    return-void
.end method

.method private createProgressDialog(Landroid/content/Context;)Lb/h/g/k/VKProgressDialog;
    .locals 2

    .line 74
    new-instance v0, Lb/h/g/k/VKProgressDialog;

    invoke-direct {v0, p1}, Lb/h/g/k/VKProgressDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1206b4

    .line 75
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/h/g/k/VKProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 76
    new-instance p1, Lru/vtosters/lite/ui/fragments/ProxyChangeListener$OnDismissListener;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lru/vtosters/lite/ui/fragments/ProxyChangeListener$OnDismissListener;-><init>(Lru/vtosters/lite/ui/fragments/ProxyChangeListener;Lru/vtosters/lite/ui/fragments/ProxyChangeListener$OnDismissListener-IA;)V

    invoke-virtual {v0, p1}, Lb/h/g/k/VKProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 77
    invoke-static {v0}, Lcom/vtosters/lite/ViewUtils;->b(Landroid/app/Dialog;)V

    return-object v0
.end method

.method private disableProxy()V
    .locals 2

    .line 69
    sget-object v0, Lcom/vk/core/network/Network;->l:Lcom/vk/core/network/Network;

    invoke-virtual {v0}, Lcom/vk/core/network/Network;->b()Lcom/vk/core/network/proxy/NetworkProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vk/core/network/proxy/NetworkProxy;->a(Z)V

    .line 70
    iget-object v0, p0, Lru/vtosters/lite/ui/fragments/ProxyChangeListener;->switchPreference:Landroidx/preference/SwitchPreference;

    iget-object v1, p0, Lru/vtosters/lite/ui/fragments/ProxyChangeListener;->networkProxy:Lcom/vk/core/network/proxy/NetworkProxy;

    invoke-virtual {v1}, Lcom/vk/core/network/proxy/NetworkProxy;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method private enableProxy(Landroidx/preference/Preference;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lru/vtosters/lite/ui/fragments/ProxyChangeListener;->networkProxy:Lcom/vk/core/network/proxy/NetworkProxy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vk/core/network/proxy/NetworkProxy;->a(Z)V

    .line 64
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lru/vtosters/lite/ui/fragments/ProxyChangeListener;->createProgressDialog(Landroid/content/Context;)Lb/h/g/k/VKProgressDialog;

    move-result-object p1

    .line 65
    iget-object v0, p0, Lru/vtosters/lite/ui/fragments/ProxyChangeListener;->networkProxy:Lcom/vk/core/network/proxy/NetworkProxy;

    new-instance v1, Lru/vtosters/lite/ui/fragments/ProxyChangeListener$ProxyPreferences;

    invoke-direct {v1, p0, p1}, Lru/vtosters/lite/ui/fragments/ProxyChangeListener$ProxyPreferences;-><init>(Lru/vtosters/lite/ui/fragments/ProxyChangeListener;Lb/h/g/k/VKProgressDialog;)V

    invoke-virtual {v0, v1}, Lcom/vk/core/network/proxy/NetworkProxy;->a(Lcom/vk/core/network/proxy/NetworkProxy$c;)V

    return-void
.end method

.method private handleProxyChange(Landroidx/preference/Preference;Ljava/lang/Boolean;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lru/vtosters/lite/ui/fragments/ProxyChangeListener;->networkProxy:Lcom/vk/core/network/proxy/NetworkProxy;

    invoke-virtual {v0}, Lcom/vk/core/network/proxy/NetworkProxy;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 56
    invoke-direct {p0, p1}, Lru/vtosters/lite/ui/fragments/ProxyChangeListener;->enableProxy(Landroidx/preference/Preference;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/ProxyChangeListener;->disableProxy()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 50
    check-cast p2, Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Lru/vtosters/lite/ui/fragments/ProxyChangeListener;->handleProxyChange(Landroidx/preference/Preference;Ljava/lang/Boolean;)V

    const/4 p1, 0x0

    return p1
.end method
