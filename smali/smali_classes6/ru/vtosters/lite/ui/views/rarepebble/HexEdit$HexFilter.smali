.class Lru/vtosters/lite/ui/views/rarepebble/HexEdit$HexFilter;
.super Ljava/lang/Object;
.source "HexEdit.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/lite/ui/views/rarepebble/HexEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HexFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lru/vtosters/lite/ui/views/rarepebble/HexEdit$HexFilter-IA;)V
    .locals 0

    invoke-direct {p0}, Lru/vtosters/lite/ui/views/rarepebble/HexEdit$HexFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    move p4, p2

    :goto_0
    if-ge p4, p3, :cond_4

    .line 103
    invoke-interface {p1, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p5

    const/16 p6, 0x30

    if-lt p5, p6, :cond_3

    const/16 p6, 0x39

    if-le p5, p6, :cond_0

    const/16 p6, 0x41

    if-lt p5, p6, :cond_3

    :cond_0
    const/16 p6, 0x46

    if-le p5, p6, :cond_1

    const/16 p6, 0x61

    if-lt p5, p6, :cond_3

    :cond_1
    const/16 p6, 0x66

    if-le p5, p6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p4, 0x0

    goto :goto_2

    :cond_4
    const/4 p4, 0x1

    :goto_2
    if-eqz p4, :cond_5

    .line 109
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_3

    :cond_5
    const-string p1, ""

    :goto_3
    return-object p1
.end method
