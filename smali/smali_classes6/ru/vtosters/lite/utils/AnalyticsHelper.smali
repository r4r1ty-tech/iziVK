.class public Lru/vtosters/lite/utils/AnalyticsHelper;
.super Ljava/lang/Object;
.source "AnalyticsHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setAnalyticsStatus(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public static start(Landroid/app/Application;)V
    .locals 0

    return-void
.end method

.method public static trackError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public static trackSettingsFragment(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lru/vtosters/lite/ui/fragments/TrackedMaterialPreferenceToolbarFragment;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
