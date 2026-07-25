.class Lru/vtosters/lite/ui/fragments/VTSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "VTSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/lite/ui/fragments/VTSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/vtosters/lite/ui/fragments/VTSettings;


# direct methods
.method constructor <init>(Lru/vtosters/lite/ui/fragments/VTSettings;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lru/vtosters/lite/ui/fragments/VTSettings$1;->this$0:Lru/vtosters/lite/ui/fragments/VTSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 62
    sget-object p1, Lru/vtosters/lite/ui/fragments/VTSettings;->ACTION_INVALIDATE_TGS_COUNT:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p0, Lru/vtosters/lite/ui/fragments/VTSettings$1;->this$0:Lru/vtosters/lite/ui/fragments/VTSettings;

    const-string p2, "tgs_stickers"

    invoke-virtual {p1, p2}, Lru/vtosters/lite/ui/fragments/VTSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {}, Lru/vtosters/lite/ui/fragments/VTSettings;->getTGSsumm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
