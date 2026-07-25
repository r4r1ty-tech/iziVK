.class Lru/vtosters/lite/ui/views/rarepebble/HexEdit$ColorPasteLengthFilter;
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
    name = "ColorPasteLengthFilter"
.end annotation


# static fields
.field private static final MAX_LENGTH:I = 0x6

.field private static final PASTED_LEN:I = 0x8


# instance fields
.field private final sixDigitFilter:Landroid/text/InputFilter;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    iput-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/HexEdit$ColorPasteLengthFilter;->sixDigitFilter:Landroid/text/InputFilter;

    return-void
.end method

.method synthetic constructor <init>(Lru/vtosters/lite/ui/views/rarepebble/HexEdit$ColorPasteLengthFilter-IA;)V
    .locals 0

    invoke-direct {p0}, Lru/vtosters/lite/ui/views/rarepebble/HexEdit$ColorPasteLengthFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7

    sub-int v0, p3, p2

    sub-int v1, p6, p5

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 89
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 p2, 0x2

    .line 91
    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 93
    :cond_0
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/HexEdit$ColorPasteLengthFilter;->sixDigitFilter:Landroid/text/InputFilter;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
