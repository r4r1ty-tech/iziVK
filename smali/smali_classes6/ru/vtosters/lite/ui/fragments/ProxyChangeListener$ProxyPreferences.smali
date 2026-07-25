.class Lru/vtosters/lite/ui/fragments/ProxyChangeListener$ProxyPreferences;
.super Lcom/vtosters/lite/NetworkProxyPreferences;
.source "ProxySettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/lite/ui/fragments/ProxyChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyPreferences"
.end annotation


# instance fields
.field private final progressDialog:Lb/h/g/k/VKProgressDialog;

.field final synthetic this$0:Lru/vtosters/lite/ui/fragments/ProxyChangeListener;


# direct methods
.method constructor <init>(Lru/vtosters/lite/ui/fragments/ProxyChangeListener;Lb/h/g/k/VKProgressDialog;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lru/vtosters/lite/ui/fragments/ProxyChangeListener$ProxyPreferences;->this$0:Lru/vtosters/lite/ui/fragments/ProxyChangeListener;

    invoke-direct {p0}, Lcom/vtosters/lite/NetworkProxyPreferences;-><init>()V

    .line 92
    iput-object p2, p0, Lru/vtosters/lite/ui/fragments/ProxyChangeListener$ProxyPreferences;->progressDialog:Lb/h/g/k/VKProgressDialog;

    return-void
.end method

.method private dismissProgressDialog()V
    .locals 1

    .line 111
    iget-object v0, p0, Lru/vtosters/lite/ui/fragments/ProxyChangeListener$ProxyPreferences;->progressDialog:Lb/h/g/k/VKProgressDialog;

    invoke-static {v0}, Lcom/vtosters/lite/ViewUtils;->a(Landroid/app/Dialog;)V

    return-void
.end method

.method private showToast(Lcom/vk/core/network/proxy/NetworkProxy$Reason;)V
    .locals 1

    .line 115
    sget-object v0, Lcom/vk/core/network/proxy/NetworkProxy$Reason;->PROXY_NOT_AVAILABLE:Lcom/vk/core/network/proxy/NetworkProxy$Reason;

    if-ne p1, v0, :cond_0

    const p1, 0x7f120d4f

    .line 116
    invoke-static {p1}, Lcom/vk/core/util/ToastUtils;->a(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f120d38

    .line 118
    invoke-static {p1}, Lcom/vk/core/util/ToastUtils;->a(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public b(Lcom/vk/core/network/proxy/NetworkProxy$Reason;)V
    .locals 2

    .line 97
    invoke-super {p0, p1}, Lcom/vtosters/lite/NetworkProxyPreferences;->b(Lcom/vk/core/network/proxy/NetworkProxy$Reason;)V

    .line 98
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/ProxyChangeListener$ProxyPreferences;->dismissProgressDialog()V

    .line 99
    iget-object v0, p0, Lru/vtosters/lite/ui/fragments/ProxyChangeListener$ProxyPreferences;->this$0:Lru/vtosters/lite/ui/fragments/ProxyChangeListener;

    invoke-static {v0}, Lru/vtosters/lite/ui/fragments/ProxyChangeListener;->-$$Nest$fgetswitchPreference(Lru/vtosters/lite/ui/fragments/ProxyChangeListener;)Landroidx/preference/SwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lru/vtosters/lite/ui/fragments/ProxyChangeListener$ProxyPreferences;->this$0:Lru/vtosters/lite/ui/fragments/ProxyChangeListener;

    invoke-static {v1}, Lru/vtosters/lite/ui/fragments/ProxyChangeListener;->-$$Nest$fgetnetworkProxy(Lru/vtosters/lite/ui/fragments/ProxyChangeListener;)Lcom/vk/core/network/proxy/NetworkProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/core/network/proxy/NetworkProxy;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 100
    invoke-direct {p0, p1}, Lru/vtosters/lite/ui/fragments/ProxyChangeListener$ProxyPreferences;->showToast(Lcom/vk/core/network/proxy/NetworkProxy$Reason;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 105
    invoke-super {p0}, Lcom/vtosters/lite/NetworkProxyPreferences;->e()V

    .line 106
    invoke-direct {p0}, Lru/vtosters/lite/ui/fragments/ProxyChangeListener$ProxyPreferences;->dismissProgressDialog()V

    .line 107
    iget-object v0, p0, Lru/vtosters/lite/ui/fragments/ProxyChangeListener$ProxyPreferences;->this$0:Lru/vtosters/lite/ui/fragments/ProxyChangeListener;

    invoke-static {v0}, Lru/vtosters/lite/ui/fragments/ProxyChangeListener;->-$$Nest$fgetswitchPreference(Lru/vtosters/lite/ui/fragments/ProxyChangeListener;)Landroidx/preference/SwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lru/vtosters/lite/ui/fragments/ProxyChangeListener$ProxyPreferences;->this$0:Lru/vtosters/lite/ui/fragments/ProxyChangeListener;

    invoke-static {v1}, Lru/vtosters/lite/ui/fragments/ProxyChangeListener;->-$$Nest$fgetnetworkProxy(Lru/vtosters/lite/ui/fragments/ProxyChangeListener;)Lcom/vk/core/network/proxy/NetworkProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/core/network/proxy/NetworkProxy;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method
