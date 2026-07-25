.class Lru/vtosters/lite/ui/views/rarepebble/HexEdit;
.super Ljava/lang/Object;
.source "HexEdit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/vtosters/lite/ui/views/rarepebble/HexEdit$ColorPasteLengthFilter;,
        Lru/vtosters/lite/ui/views/rarepebble/HexEdit$HexFilter;
    }
.end annotation


# static fields
.field private static final withAlphaDigits:[Landroid/text/InputFilter;

.field private static final withoutAlphaDigits:[Landroid/text/InputFilter;


# direct methods
.method static bridge synthetic -$$Nest$sfgetwithoutAlphaDigits()[Landroid/text/InputFilter;
    .locals 1

    sget-object v0, Lru/vtosters/lite/ui/views/rarepebble/HexEdit;->withoutAlphaDigits:[Landroid/text/InputFilter;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smparseHexColor(Ljava/lang/CharSequence;)I
    .locals 0

    invoke-static {p0}, Lru/vtosters/lite/ui/views/rarepebble/HexEdit;->parseHexColor(Ljava/lang/CharSequence;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/text/InputFilter;

    .line 12
    new-instance v2, Lru/vtosters/lite/ui/views/rarepebble/HexEdit$ColorPasteLengthFilter;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lru/vtosters/lite/ui/views/rarepebble/HexEdit$ColorPasteLengthFilter;-><init>(Lru/vtosters/lite/ui/views/rarepebble/HexEdit$ColorPasteLengthFilter-IA;)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    new-instance v2, Lru/vtosters/lite/ui/views/rarepebble/HexEdit$HexFilter;

    invoke-direct {v2, v3}, Lru/vtosters/lite/ui/views/rarepebble/HexEdit$HexFilter;-><init>(Lru/vtosters/lite/ui/views/rarepebble/HexEdit$HexFilter-IA;)V

    const/4 v5, 0x1

    aput-object v2, v1, v5

    sput-object v1, Lru/vtosters/lite/ui/views/rarepebble/HexEdit;->withoutAlphaDigits:[Landroid/text/InputFilter;

    new-array v0, v0, [Landroid/text/InputFilter;

    .line 16
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v4

    new-instance v1, Lru/vtosters/lite/ui/views/rarepebble/HexEdit$HexFilter;

    invoke-direct {v1, v3}, Lru/vtosters/lite/ui/views/rarepebble/HexEdit$HexFilter;-><init>(Lru/vtosters/lite/ui/views/rarepebble/HexEdit$HexFilter-IA;)V

    aput-object v1, v0, v5

    sput-object v0, Lru/vtosters/lite/ui/views/rarepebble/HexEdit;->withAlphaDigits:[Landroid/text/InputFilter;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseHexColor(Ljava/lang/CharSequence;)I
    .locals 4

    .line 67
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int p0, v0

    return p0

    :catch_0
    const p0, -0x777778

    return p0
.end method

.method public static setShowAlphaDigits(Landroid/widget/EditText;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 74
    sget-object p1, Lru/vtosters/lite/ui/views/rarepebble/HexEdit;->withAlphaDigits:[Landroid/text/InputFilter;

    goto :goto_0

    :cond_0
    sget-object p1, Lru/vtosters/lite/ui/views/rarepebble/HexEdit;->withoutAlphaDigits:[Landroid/text/InputFilter;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 75
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setUpListeners(Landroid/widget/EditText;Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;)V
    .locals 1

    .line 59
    new-instance v0, Lru/vtosters/lite/ui/views/rarepebble/HexEdit$1MultiObserver;

    invoke-direct {v0, p0, p1}, Lru/vtosters/lite/ui/views/rarepebble/HexEdit$1MultiObserver;-><init>(Landroid/widget/EditText;Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;)V

    .line 60
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 61
    invoke-virtual {p1, v0}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->addObserver(Lru/vtosters/lite/ui/views/rarepebble/ColorObserver;)V

    const/4 p1, 0x1

    .line 62
    invoke-static {p0, p1}, Lru/vtosters/lite/ui/views/rarepebble/HexEdit;->setShowAlphaDigits(Landroid/widget/EditText;Z)V

    return-void
.end method
