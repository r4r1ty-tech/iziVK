.class public Lru/vtosters/hooks/ShortcutBadgerHook;
.super Ljava/lang/Object;
.source "ShortcutBadgerHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lme/leolin/shortcutbadger/Badger;",
            ">;>;)V"
        }
    .end annotation

    .line 11
    const-class v0, Lme/leolin/shortcutbadger/impl/AdwHomeBadger;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    const-class v0, Lme/leolin/shortcutbadger/impl/ApexHomeBadger;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    const-class v0, Lme/leolin/shortcutbadger/impl/DefaultBadger;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    const-class v0, Lme/leolin/shortcutbadger/impl/NewHtcHomeBadger;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    const-class v0, Lme/leolin/shortcutbadger/impl/NovaHomeBadger;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    const-class v0, Lme/leolin/shortcutbadger/impl/AsusHomeBadger;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    const-class v0, Lme/leolin/shortcutbadger/impl/HuaweiHomeBadger;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    const-class v0, Lme/leolin/shortcutbadger/impl/OPPOHomeBader;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    const-class v0, Lme/leolin/shortcutbadger/impl/SamsungHomeBadger;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    const-class v0, Lme/leolin/shortcutbadger/impl/ZukHomeBadger;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    const-class v0, Lme/leolin/shortcutbadger/impl/VivoHomeBadger;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    const-class v0, Lme/leolin/shortcutbadger/impl/ZTEHomeBadger;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    const-class v0, Lme/leolin/shortcutbadger/impl/EverythingMeHomeBadger;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_0

    .line 26
    const-class v0, Lme/leolin/shortcutbadger/impl/SonyHomeBadger;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
