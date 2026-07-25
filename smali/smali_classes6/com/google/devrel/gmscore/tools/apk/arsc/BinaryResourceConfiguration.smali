.class public Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;
.super Ljava/lang/Object;
.source "BinaryResourceConfiguration.java"

# interfaces
.implements Lcom/google/devrel/gmscore/tools/apk/arsc/SerializableResource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;
    }
.end annotation


# static fields
.field private static final DENSITY_DPI_ANY:I = 0xfffe

.field private static final DENSITY_DPI_HDPI:I = 0xf0

.field private static final DENSITY_DPI_LDPI:I = 0x78

.field private static final DENSITY_DPI_MDPI:I = 0xa0

.field private static final DENSITY_DPI_NONE:I = 0xffff

.field private static final DENSITY_DPI_TVDPI:I = 0xd5

.field private static final DENSITY_DPI_UNDEFINED:I = 0x0

.field private static final DENSITY_DPI_VALUES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DENSITY_DPI_XHDPI:I = 0x140

.field private static final DENSITY_DPI_XXHDPI:I = 0x1e0

.field private static final DENSITY_DPI_XXXHDPI:I = 0x280

.field private static final KEYBOARDHIDDEN_MASK:I = 0x3

.field private static final KEYBOARDHIDDEN_NO:I = 0x1

.field private static final KEYBOARDHIDDEN_SOFT:I = 0x3

.field private static final KEYBOARDHIDDEN_VALUES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEYBOARDHIDDEN_YES:I = 0x2

.field private static final KEYBOARD_12KEY:I = 0x3

.field private static final KEYBOARD_NOKEYS:I = 0x1

.field private static final KEYBOARD_QWERTY:I = 0x2

.field private static final KEYBOARD_VALUES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCALE_MIN_SIZE:I = 0x30

.field private static final NAVIGATIONHIDDEN_MASK:I = 0xc

.field private static final NAVIGATIONHIDDEN_NO:I = 0x4

.field private static final NAVIGATIONHIDDEN_VALUES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NAVIGATIONHIDDEN_YES:I = 0x8

.field private static final NAVIGATION_DPAD:I = 0x2

.field private static final NAVIGATION_NONAV:I = 0x1

.field private static final NAVIGATION_TRACKBALL:I = 0x3

.field private static final NAVIGATION_VALUES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NAVIGATION_WHEEL:I = 0x4

.field private static final ORIENTATION_LANDSCAPE:I = 0x2

.field private static final ORIENTATION_PORTRAIT:I = 0x1

.field private static final ORIENTATION_VALUES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCREENLAYOUT_LAYOUTDIR_LTR:I = 0x40

.field private static final SCREENLAYOUT_LAYOUTDIR_MASK:I = 0xc0

.field private static final SCREENLAYOUT_LAYOUTDIR_RTL:I = 0x80

.field private static final SCREENLAYOUT_LAYOUTDIR_VALUES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCREENLAYOUT_LONG_MASK:I = 0x30

.field private static final SCREENLAYOUT_LONG_NO:I = 0x10

.field private static final SCREENLAYOUT_LONG_VALUES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCREENLAYOUT_LONG_YES:I = 0x20

.field private static final SCREENLAYOUT_ROUND_MASK:I = 0x3

.field private static final SCREENLAYOUT_ROUND_NO:I = 0x1

.field private static final SCREENLAYOUT_ROUND_VALUES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCREENLAYOUT_ROUND_YES:I = 0x2

.field private static final SCREENLAYOUT_SIZE_LARGE:I = 0x3

.field private static final SCREENLAYOUT_SIZE_MASK:I = 0xf

.field private static final SCREENLAYOUT_SIZE_NORMAL:I = 0x2

.field private static final SCREENLAYOUT_SIZE_SMALL:I = 0x1

.field private static final SCREENLAYOUT_SIZE_VALUES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCREENLAYOUT_SIZE_XLARGE:I = 0x4

.field private static final SCREEN_CONFIG_EXTENSION_MIN_SIZE:I = 0x34

.field private static final SCREEN_CONFIG_MIN_SIZE:I = 0x20

.field private static final SCREEN_DP_MIN_SIZE:I = 0x24

.field private static final TOUCHSCREEN_FINGER:I = 0x3

.field private static final TOUCHSCREEN_NOTOUCH:I = 0x1

.field private static final TOUCHSCREEN_VALUES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final UI_MODE_NIGHT_MASK:I = 0x30

.field private static final UI_MODE_NIGHT_NO:I = 0x10

.field private static final UI_MODE_NIGHT_VALUES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final UI_MODE_NIGHT_YES:I = 0x20

.field private static final UI_MODE_TYPE_APPLIANCE:I = 0x5

.field private static final UI_MODE_TYPE_CAR:I = 0x3

.field private static final UI_MODE_TYPE_DESK:I = 0x2

.field private static final UI_MODE_TYPE_GODZILLAUI:I = 0xb

.field private static final UI_MODE_TYPE_HUGEUI:I = 0xf

.field private static final UI_MODE_TYPE_LARGEUI:I = 0xe

.field private static final UI_MODE_TYPE_MASK:I = 0xf

.field private static final UI_MODE_TYPE_MEDIUMUI:I = 0xd

.field private static final UI_MODE_TYPE_SMALLUI:I = 0xc

.field private static final UI_MODE_TYPE_TELEVISION:I = 0x4

.field private static final UI_MODE_TYPE_VALUES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final UI_MODE_TYPE_VR_HEADSET:I = 0x7

.field private static final UI_MODE_TYPE_WATCH:I = 0x6


# instance fields
.field private final density:I

.field private final inputFlags:I

.field private final keyboard:I

.field private final language:[B

.field private final localeScript:[B

.field private final localeVariant:[B

.field private final mcc:I

.field private final minorVersion:I

.field private final mnc:I

.field private final navigation:I

.field private final orientation:I

.field private final region:[B

.field private final screenHeight:I

.field private final screenHeightDp:I

.field private final screenLayout:I

.field private final screenLayout2:I

.field private final screenWidth:I

.field private final screenWidthDp:I

.field private final sdkVersion:I

.field private final size:I

.field private final smallestScreenWidthDp:I

.field private final touchscreen:I

.field private final uiMode:I

.field private final unknown:[B


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 48
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x78

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ldpi"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0xa0

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mdpi"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0xd5

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tvdpi"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0xf0

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hdpi"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x140

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "xhdpi"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x1e0

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "xxhdpi"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x280

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "xxxhdpi"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const v1, 0xfffe

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "anydpi"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const v1, 0xffff

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "nodpi"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->DENSITY_DPI_VALUES:Ljava/util/Map;

    const/4 v0, 0x1

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "nokeys"

    const/4 v1, 0x2

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v4, "qwerty"

    const/4 v1, 0x3

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v6, "12key"

    move-object v1, v0

    move-object v3, v9

    move-object v5, v10

    .line 63
    invoke-static/range {v1 .. v6}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    sput-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->KEYBOARD_VALUES:Ljava/util/Map;

    const-string v2, "keysexposed"

    const-string v4, "keyshidden"

    const-string v6, "keyssoft"

    move-object v1, v0

    .line 71
    invoke-static/range {v1 .. v6}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    sput-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->KEYBOARDHIDDEN_VALUES:Ljava/util/Map;

    const-string v2, "nonav"

    const-string v4, "dpad"

    const-string v6, "trackball"

    const/4 v1, 0x4

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v8, "wheel"

    move-object v1, v0

    move-object v7, v11

    .line 79
    invoke-static/range {v1 .. v8}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    sput-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->NAVIGATION_VALUES:Ljava/util/Map;

    const/16 v1, 0x8

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "navhidden"

    const-string v3, "navexposed"

    .line 87
    invoke-static {v11, v3, v1, v2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    sput-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->NAVIGATIONHIDDEN_VALUES:Ljava/util/Map;

    const-string v1, "land"

    const-string v2, "port"

    .line 92
    invoke-static {v0, v2, v9, v1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    sput-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->ORIENTATION_VALUES:Ljava/util/Map;

    const/16 v1, 0x40

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x80

    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ldrtl"

    const-string v4, "ldltr"

    .line 98
    invoke-static {v1, v4, v2, v3}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    sput-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->SCREENLAYOUT_LAYOUTDIR_VALUES:Ljava/util/Map;

    const/16 v1, 0x10

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v1, 0x20

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v1, "long"

    const-string v2, "notlong"

    .line 104
    invoke-static {v12, v2, v13, v1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    sput-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->SCREENLAYOUT_LONG_VALUES:Ljava/util/Map;

    const-string v1, "round"

    const-string v2, "notround"

    .line 110
    invoke-static {v0, v2, v9, v1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    sput-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->SCREENLAYOUT_ROUND_VALUES:Ljava/util/Map;

    const-string v2, "small"

    const-string v4, "normal"

    const-string v6, "large"

    const-string v8, "xlarge"

    move-object v1, v0

    move-object v3, v9

    .line 118
    invoke-static/range {v1 .. v8}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    sput-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->SCREENLAYOUT_SIZE_VALUES:Ljava/util/Map;

    const-string v1, "finger"

    const-string v2, "notouch"

    .line 125
    invoke-static {v0, v2, v10, v1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->TOUCHSCREEN_VALUES:Ljava/util/Map;

    const-string v0, "night"

    const-string v1, "notnight"

    .line 131
    invoke-static {v12, v1, v13, v0}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->UI_MODE_NIGHT_VALUES:Ljava/util/Map;

    .line 148
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "desk"

    .line 149
    invoke-virtual {v0, v9, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "car"

    .line 150
    invoke-virtual {v0, v10, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "television"

    .line 151
    invoke-virtual {v0, v11, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 152
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "appliance"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x6

    .line 153
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "watch"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x7

    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "vrheadset"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0xb

    .line 155
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "godzillaui"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0xc

    .line 156
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "smallui"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 157
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mediumui"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0xe

    .line 158
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "largeui"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0xf

    .line 159
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hugeui"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->UI_MODE_TYPE_VALUES:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(III[B[BIIIIIIIIIIIIIII[B[BI[B)V
    .locals 2

    move-object v0, p0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 226
    iput v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->size:I

    move v1, p2

    .line 227
    iput v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->mcc:I

    move v1, p3

    .line 228
    iput v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->mnc:I

    move-object v1, p4

    .line 229
    iput-object v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->language:[B

    move-object v1, p5

    .line 230
    iput-object v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->region:[B

    move v1, p6

    .line 231
    iput v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->orientation:I

    move v1, p7

    .line 232
    iput v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->touchscreen:I

    move v1, p8

    .line 233
    iput v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->density:I

    move v1, p9

    .line 234
    iput v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->keyboard:I

    move v1, p10

    .line 235
    iput v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->navigation:I

    move v1, p11

    .line 236
    iput v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->inputFlags:I

    move v1, p12

    .line 237
    iput v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenWidth:I

    move v1, p13

    .line 238
    iput v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenHeight:I

    move/from16 v1, p14

    .line 239
    iput v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->sdkVersion:I

    move/from16 v1, p15

    .line 240
    iput v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->minorVersion:I

    move/from16 v1, p16

    .line 241
    iput v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenLayout:I

    move/from16 v1, p17

    .line 242
    iput v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->uiMode:I

    move/from16 v1, p18

    .line 243
    iput v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->smallestScreenWidthDp:I

    move/from16 v1, p19

    .line 244
    iput v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenWidthDp:I

    move/from16 v1, p20

    .line 245
    iput v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenHeightDp:I

    move-object/from16 v1, p21

    .line 246
    iput-object v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->localeScript:[B

    move-object/from16 v1, p22

    .line 247
    iput-object v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->localeVariant:[B

    move/from16 v1, p23

    .line 248
    iput v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenLayout2:I

    move-object/from16 v1, p24

    .line 249
    iput-object v1, v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->unknown:[B

    return-void
.end method

.method static create(Ljava/nio/ByteBuffer;)Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;
    .locals 30

    move-object/from16 v0, p0

    .line 253
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 254
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 255
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const v4, 0xffff

    and-int v5, v2, v4

    .line 256
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    and-int v6, v2, v4

    const/4 v2, 0x2

    new-array v7, v2, [B

    .line 258
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-array v8, v2, [B

    .line 260
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 261
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v9

    .line 262
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v10

    .line 263
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    and-int v11, v2, v4

    .line 264
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v12

    .line 265
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v13

    .line 266
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v14

    .line 267
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 268
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    and-int v15, v2, v4

    .line 269
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    and-int v16, v2, v4

    .line 270
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    and-int v17, v2, v4

    .line 271
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    and-int v18, v2, v4

    const/4 v2, 0x4

    new-array v2, v2, [B

    const/16 v4, 0x8

    new-array v4, v4, [B

    move/from16 v20, v15

    const/16 v15, 0x20

    const/16 v21, 0x0

    if-lt v3, v15, :cond_0

    .line 285
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v15

    invoke-static {v15}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v15

    .line 286
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v22

    .line 287
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v23

    const v19, 0xffff

    and-int v23, v23, v19

    move/from16 v24, v23

    move/from16 v23, v22

    move/from16 v22, v15

    goto :goto_0

    :cond_0
    const v19, 0xffff

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    :goto_0
    const/16 v15, 0x24

    if-lt v3, v15, :cond_1

    .line 291
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v15

    and-int v15, v15, v19

    .line 292
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v25

    and-int v19, v25, v19

    move/from16 v25, v15

    move/from16 v27, v19

    goto :goto_1

    :cond_1
    const/16 v25, 0x0

    const/16 v27, 0x0

    :goto_1
    const/16 v15, 0x30

    if-lt v3, v15, :cond_2

    .line 296
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 297
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :cond_2
    const/16 v15, 0x34

    if-lt v3, v15, :cond_3

    .line 301
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v15

    invoke-static {v15}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v15

    .line 302
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 303
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move/from16 v28, v15

    goto :goto_2

    :cond_3
    const/16 v28, 0x0

    .line 307
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v15

    sub-int/2addr v15, v1

    sub-int v1, v3, v15

    .line 308
    new-array v1, v1, [B

    move-object/from16 v26, v1

    .line 309
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 311
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;

    move-object v1, v2

    move-object v2, v0

    move-object/from16 v29, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move/from16 v14, v20

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v22

    move/from16 v19, v23

    move/from16 v20, v24

    move/from16 v21, v25

    move/from16 v22, v27

    move-object/from16 v23, v1

    move-object/from16 v24, v29

    move/from16 v25, v28

    invoke-direct/range {v2 .. v26}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;-><init>(III[B[BIIIIIIIIIIIIIII[B[BI[B)V

    return-object v0
.end method

.method private getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;)TV;"
        }
    .end annotation

    .line 696
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p3, p1

    :cond_0
    return-object p3
.end method

.method private unpackLanguage()Ljava/lang/String;
    .locals 2

    .line 504
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->language()[B

    move-result-object v0

    const/16 v1, 0x61

    invoke-direct {p0, v0, v1}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->unpackLanguageOrRegion([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private unpackLanguageOrRegion([BI)Ljava/lang/String;
    .locals 7

    .line 512
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v4, "Language or region value must be 2 bytes."

    invoke-static {v0, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 513
    aget-byte v0, p1, v2

    if-nez v0, :cond_1

    aget-byte v4, p1, v1

    if-nez v4, :cond_1

    const-string p1, ""

    return-object p1

    .line 516
    :cond_1
    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    new-array v4, v0, [B

    .line 518
    aget-byte v5, p1, v1

    and-int/lit8 v6, v5, 0x1f

    add-int/2addr v6, p2

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    and-int/lit16 v5, v5, 0xe0

    ushr-int/lit8 v5, v5, 0x5

    add-int/2addr v5, p2

    .line 519
    aget-byte p1, p1, v2

    and-int/lit8 v2, p1, 0x3

    shl-int/lit8 v0, v2, 0x3

    add-int/2addr v5, v0

    int-to-byte v0, v5

    aput-byte v0, v4, v1

    and-int/lit8 p1, p1, 0x7c

    ushr-int/2addr p1, v3

    add-int/2addr p2, p1

    int-to-byte p1, p2

    aput-byte p1, v4, v3

    .line 521
    new-instance p1, Ljava/lang/String;

    sget-object p2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p1, v4, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    .line 523
    :cond_2
    new-instance p2, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p2
.end method

.method private unpackRegion()Ljava/lang/String;
    .locals 2

    .line 508
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->region()[B

    move-result-object v0

    const/16 v1, 0x30

    invoke-direct {p0, v0, v1}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->unpackLanguageOrRegion([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public density()I
    .locals 1

    .line 371
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->density:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 607
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 608
    :cond_1
    check-cast p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;

    .line 609
    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->size:I

    iget v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->size:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->mcc:I

    iget v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->mcc:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->mnc:I

    iget v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->mnc:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->orientation:I

    iget v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->orientation:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->touchscreen:I

    iget v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->touchscreen:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->density:I

    iget v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->density:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->keyboard:I

    iget v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->keyboard:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->navigation:I

    iget v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->navigation:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->inputFlags:I

    iget v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->inputFlags:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenWidth:I

    iget v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenWidth:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenHeight:I

    iget v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenHeight:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->sdkVersion:I

    iget v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->sdkVersion:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->minorVersion:I

    iget v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->minorVersion:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenLayout:I

    iget v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenLayout:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->uiMode:I

    iget v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->uiMode:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->smallestScreenWidthDp:I

    iget v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->smallestScreenWidthDp:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenWidthDp:I

    iget v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenWidthDp:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenHeightDp:I

    iget v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenHeightDp:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenLayout2:I

    iget v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenLayout2:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->language:[B

    iget-object v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->language:[B

    .line 628
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->region:[B

    iget-object v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->region:[B

    .line 629
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->localeScript:[B

    iget-object v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->localeScript:[B

    .line 630
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->localeVariant:[B

    iget-object v3, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->localeVariant:[B

    .line 631
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->unknown:[B

    iget-object p1, p1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->unknown:[B

    .line 632
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/Object;

    .line 637
    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->size:I

    .line 638
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->mcc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->mnc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->language:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->region:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->orientation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->touchscreen:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->density:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->keyboard:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->navigation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->inputFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenHeight:I

    .line 639
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->sdkVersion:I

    .line 640
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->minorVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenLayout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->uiMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->smallestScreenWidthDp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenWidthDp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenHeightDp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->localeScript:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->localeVariant:[B

    .line 641
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenLayout2:I

    .line 642
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->unknown:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 638
    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public inputFlags()I
    .locals 1

    .line 383
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->inputFlags:I

    return v0
.end method

.method public final isDefault()Z
    .locals 3

    .line 530
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->mcc()I

    move-result v0

    if-nez v0, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->mnc()I

    move-result v0

    if-nez v0, :cond_0

    .line 532
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->language()[B

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->region()[B

    move-result-object v0

    new-array v1, v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->orientation()I

    move-result v0

    if-nez v0, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->touchscreen()I

    move-result v0

    if-nez v0, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->density()I

    move-result v0

    if-nez v0, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->keyboard()I

    move-result v0

    if-nez v0, :cond_0

    .line 538
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->navigation()I

    move-result v0

    if-nez v0, :cond_0

    .line 539
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->inputFlags()I

    move-result v0

    if-nez v0, :cond_0

    .line 540
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenWidth()I

    move-result v0

    if-nez v0, :cond_0

    .line 541
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenHeight()I

    move-result v0

    if-nez v0, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->sdkVersion()I

    move-result v0

    if-nez v0, :cond_0

    .line 543
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->minorVersion()I

    move-result v0

    if-nez v0, :cond_0

    .line 544
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenLayout()I

    move-result v0

    if-nez v0, :cond_0

    .line 545
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->uiMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->smallestScreenWidthDp()I

    move-result v0

    if-nez v0, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenWidthDp()I

    move-result v0

    if-nez v0, :cond_0

    .line 548
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenHeightDp()I

    move-result v0

    if-nez v0, :cond_0

    .line 549
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->localeScript()[B

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->localeVariant()[B

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenLayout2()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keyboard()I
    .locals 1

    .line 375
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->keyboard:I

    return v0
.end method

.method public final keyboardHidden()I
    .locals 1

    .line 387
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->inputFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public language()[B
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->language:[B

    return-object v0
.end method

.method public final languageString()Ljava/lang/String;
    .locals 1

    .line 344
    invoke-direct {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->unpackLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public localeScript()[B
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->localeScript:[B

    return-object v0
.end method

.method public localeVariant()[B
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->localeVariant:[B

    return-object v0
.end method

.method public mcc()I
    .locals 1

    .line 325
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->mcc:I

    return v0
.end method

.method public minorVersion()I
    .locals 1

    .line 425
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->minorVersion:I

    return v0
.end method

.method public mnc()I
    .locals 1

    .line 329
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->mnc:I

    return v0
.end method

.method public navigation()I
    .locals 1

    .line 379
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->navigation:I

    return v0
.end method

.method public final navigationHidden()I
    .locals 1

    .line 391
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->inputFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public orientation()I
    .locals 1

    .line 363
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->orientation:I

    return v0
.end method

.method public region()[B
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->region:[B

    return-object v0
.end method

.method public final regionString()Ljava/lang/String;
    .locals 1

    .line 359
    invoke-direct {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->unpackRegion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public screenHeight()I
    .locals 1

    .line 399
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenHeight:I

    return v0
.end method

.method public screenHeightDp()I
    .locals 1

    .line 469
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenHeightDp:I

    return v0
.end method

.method public screenLayout()I
    .locals 1

    .line 429
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenLayout:I

    return v0
.end method

.method public screenLayout2()I
    .locals 1

    .line 492
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenLayout2:I

    return v0
.end method

.method public final screenLayoutDirection()I
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenLayout()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    return v0
.end method

.method public final screenLayoutLong()I
    .locals 1

    .line 441
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenLayout()I

    move-result v0

    and-int/lit8 v0, v0, 0x30

    return v0
.end method

.method public final screenLayoutRound()I
    .locals 1

    .line 445
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenLayout2()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final screenLayoutSize()I
    .locals 1

    .line 437
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenLayout()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public screenWidth()I
    .locals 1

    .line 395
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenWidth:I

    return v0
.end method

.method public screenWidthDp()I
    .locals 1

    .line 465
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenWidthDp:I

    return v0
.end method

.method public sdkVersion()I
    .locals 1

    .line 403
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->sdkVersion:I

    return v0
.end method

.method public size()I
    .locals 1

    .line 321
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->size:I

    return v0
.end method

.method public smallestScreenWidthDp()I
    .locals 1

    .line 461
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->smallestScreenWidthDp:I

    return v0
.end method

.method public final toByteArray()[B
    .locals 1

    const/4 v0, 0x0

    .line 556
    invoke-virtual {p0, v0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->toByteArray(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public final toByteArray(Z)[B
    .locals 2

    .line 561
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->size()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 562
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 563
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->mcc()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 564
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->mnc()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 565
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->language()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 566
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->region()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 567
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->orientation()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 568
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->touchscreen()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 569
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->density()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 570
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->keyboard()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 571
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->navigation()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 572
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->inputFlags()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 573
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 574
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenWidth()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 575
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenHeight()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 576
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->sdkVersion()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 577
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->minorVersion()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 579
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->size()I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    .line 580
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenLayout()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 581
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->uiMode()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 582
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->smallestScreenWidthDp()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 585
    :cond_0
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->size()I

    move-result v0

    const/16 v1, 0x24

    if-lt v0, v1, :cond_1

    .line 586
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenWidthDp()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 587
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenHeightDp()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 590
    :cond_1
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->size()I

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_2

    .line 591
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->localeScript()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 592
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->localeVariant()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 595
    :cond_2
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->size()I

    move-result v0

    const/16 v1, 0x34

    if-lt v0, v1, :cond_3

    .line 596
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenLayout2()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 599
    :cond_3
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->unknown()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 601
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 647
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "default"

    return-object v0

    .line 650
    :cond_0
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->toStringParts()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, ""

    .line 651
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    const/16 v1, 0x2d

    .line 652
    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toStringParts()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 662
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 663
    sget-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;->MCC:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->mcc()I

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "mcc"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->mcc()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    sget-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;->MNC:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->mnc()I

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "mnc"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->mnc()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    sget-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;->LANGUAGE_STRING:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->languageString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->languageString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    sget-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;->REGION_STRING:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->regionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "r"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->regionString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v3

    :goto_3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    sget-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;->SCREEN_LAYOUT_DIRECTION:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->SCREENLAYOUT_LAYOUTDIR_VALUES:Ljava/util/Map;

    .line 668
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenLayoutDirection()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v4, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 667
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    sget-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;->SMALLEST_SCREEN_WIDTH_DP:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;

    .line 670
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->smallestScreenWidthDp()I

    move-result v2

    const-string v4, "dp"

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "sw"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->smallestScreenWidthDp()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v3

    .line 669
    :goto_4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    sget-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;->SCREEN_WIDTH_DP:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenWidthDp()I

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "w"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenWidthDp()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_5
    move-object v2, v3

    :goto_5
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    sget-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;->SCREEN_HEIGHT_DP:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenHeightDp()I

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "h"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenHeightDp()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_6
    move-object v2, v3

    :goto_6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    sget-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;->SCREEN_LAYOUT_SIZE:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->SCREENLAYOUT_SIZE_VALUES:Ljava/util/Map;

    .line 674
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenLayoutSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v4, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 673
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    sget-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;->SCREEN_LAYOUT_LONG:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->SCREENLAYOUT_LONG_VALUES:Ljava/util/Map;

    .line 676
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenLayoutLong()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v4, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 675
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    sget-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;->SCREEN_LAYOUT_ROUND:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->SCREENLAYOUT_ROUND_VALUES:Ljava/util/Map;

    .line 678
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenLayoutRound()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v4, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 677
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    sget-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;->ORIENTATION:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->ORIENTATION_VALUES:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->orientation()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v4, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    sget-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;->UI_MODE_TYPE:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->UI_MODE_TYPE_VALUES:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->uiModeType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v4, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    sget-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;->UI_MODE_NIGHT:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->UI_MODE_NIGHT_VALUES:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->uiModeNight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v4, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    sget-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;->DENSITY_DPI:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->DENSITY_DPI_VALUES:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->density()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->density()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "dpi"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    sget-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;->TOUCHSCREEN:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->TOUCHSCREEN_VALUES:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->touchscreen()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v4, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    sget-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;->KEYBOARD_HIDDEN:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->KEYBOARDHIDDEN_VALUES:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->keyboardHidden()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v4, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    sget-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;->KEYBOARD:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->KEYBOARD_VALUES:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->keyboard()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v4, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    sget-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;->NAVIGATION_HIDDEN:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->NAVIGATIONHIDDEN_VALUES:Ljava/util/Map;

    .line 687
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->navigationHidden()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v4, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 686
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    sget-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;->NAVIGATION:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;

    sget-object v2, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->NAVIGATION_VALUES:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->navigation()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v4, v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    sget-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;->SDK_VERSION:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration$Type;

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->sdkVersion()I

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "v"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->sdkVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_7
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public touchscreen()I
    .locals 1

    .line 367
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->touchscreen:I

    return v0
.end method

.method public uiMode()I
    .locals 1

    .line 449
    iget v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->uiMode:I

    return v0
.end method

.method public final uiModeNight()I
    .locals 1

    .line 457
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->uiMode()I

    move-result v0

    and-int/lit8 v0, v0, 0x30

    return v0
.end method

.method public final uiModeType()I
    .locals 1

    .line 453
    invoke-virtual {p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->uiMode()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public unknown()[B
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->unknown:[B

    return-object v0
.end method

.method public final withSdkVersion(I)Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;
    .locals 26

    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->sdkVersion()I

    move-result v0

    move/from16 v15, p1

    if-ne v15, v0, :cond_0

    return-object p0

    .line 417
    :cond_0
    new-instance v0, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;

    move-object v1, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->size()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->mcc()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->mnc()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->language()[B

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->region()[B

    move-result-object v6

    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->orientation()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->touchscreen()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->density()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->keyboard()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->navigation()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->inputFlags()I

    move-result v12

    .line 419
    invoke-virtual/range {p0 .. p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenHeight()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->minorVersion()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenLayout()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->uiMode()I

    move-result v18

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->smallestScreenWidthDp()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenWidthDp()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenHeightDp()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->localeScript()[B

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->localeVariant()[B

    move-result-object v23

    .line 421
    invoke-virtual/range {p0 .. p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->screenLayout2()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;->unknown()[B

    move-result-object v25

    move/from16 v15, p1

    invoke-direct/range {v1 .. v25}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceConfiguration;-><init>(III[B[BIIIIIIIIIIIIIII[B[BI[B)V

    return-object v0
.end method
