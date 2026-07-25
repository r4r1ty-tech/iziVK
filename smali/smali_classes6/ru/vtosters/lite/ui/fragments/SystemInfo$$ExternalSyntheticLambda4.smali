.class public final synthetic Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lru/vtosters/lite/ui/fragments/SystemInfo;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lru/vtosters/lite/ui/fragments/SystemInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda4;->f$0:Lru/vtosters/lite/ui/fragments/SystemInfo;

    iput-object p2, p0, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda4;->f$0:Lru/vtosters/lite/ui/fragments/SystemInfo;

    iget-object v1, p0, Lru/vtosters/lite/ui/fragments/SystemInfo$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lru/vtosters/lite/ui/fragments/SystemInfo;->lambda$onCreate$5$ru-vtosters-lite-ui-fragments-SystemInfo(Ljava/lang/String;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
