.class Lru/vtosters/lite/ui/fragments/ProxyChangeListener$OnDismissListener;
.super Ljava/lang/Object;
.source "ProxySettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/lite/ui/fragments/ProxyChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDismissListener"
.end annotation


# instance fields
.field final synthetic this$0:Lru/vtosters/lite/ui/fragments/ProxyChangeListener;


# direct methods
.method private constructor <init>(Lru/vtosters/lite/ui/fragments/ProxyChangeListener;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lru/vtosters/lite/ui/fragments/ProxyChangeListener$OnDismissListener;->this$0:Lru/vtosters/lite/ui/fragments/ProxyChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lru/vtosters/lite/ui/fragments/ProxyChangeListener;Lru/vtosters/lite/ui/fragments/ProxyChangeListener$OnDismissListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lru/vtosters/lite/ui/fragments/ProxyChangeListener$OnDismissListener;-><init>(Lru/vtosters/lite/ui/fragments/ProxyChangeListener;)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 84
    iget-object p1, p0, Lru/vtosters/lite/ui/fragments/ProxyChangeListener$OnDismissListener;->this$0:Lru/vtosters/lite/ui/fragments/ProxyChangeListener;

    invoke-static {p1}, Lru/vtosters/lite/ui/fragments/ProxyChangeListener;->-$$Nest$fgetswitchPreference(Lru/vtosters/lite/ui/fragments/ProxyChangeListener;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    iget-object v0, p0, Lru/vtosters/lite/ui/fragments/ProxyChangeListener$OnDismissListener;->this$0:Lru/vtosters/lite/ui/fragments/ProxyChangeListener;

    invoke-static {v0}, Lru/vtosters/lite/ui/fragments/ProxyChangeListener;->-$$Nest$fgetnetworkProxy(Lru/vtosters/lite/ui/fragments/ProxyChangeListener;)Lcom/vk/core/network/proxy/NetworkProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/core/network/proxy/NetworkProxy;->d()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method
