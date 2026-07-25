.class Lru/vtosters/lite/ui/views/rarepebble/HexEdit$1MultiObserver;
.super Ljava/lang/Object;
.source "HexEdit.java"

# interfaces
.implements Lru/vtosters/lite/ui/views/rarepebble/ColorObserver;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/vtosters/lite/ui/views/rarepebble/HexEdit;->setUpListeners(Landroid/widget/EditText;Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiObserver"
.end annotation


# instance fields
.field final synthetic val$hexEdit:Landroid/widget/EditText;

.field final synthetic val$observableColor:Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lru/vtosters/lite/ui/views/rarepebble/HexEdit$1MultiObserver;->val$hexEdit:Landroid/widget/EditText;

    iput-object p2, p0, Lru/vtosters/lite/ui/views/rarepebble/HexEdit$1MultiObserver;->val$observableColor:Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private formatColor(I)Ljava/lang/String;
    .locals 3

    .line 34
    invoke-direct {p0}, Lru/vtosters/lite/ui/views/rarepebble/HexEdit$1MultiObserver;->shouldTrimAlphaDigits()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const v2, 0xffffff

    and-int/2addr p1, v2

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%06x"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%08x"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private shouldTrimAlphaDigits()Z
    .locals 2

    .line 55
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/HexEdit$1MultiObserver;->val$hexEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    invoke-static {}, Lru/vtosters/lite/ui/views/rarepebble/HexEdit;->-$$Nest$sfgetwithoutAlphaDigits()[Landroid/text/InputFilter;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 45
    invoke-static {p1}, Lru/vtosters/lite/ui/views/rarepebble/HexEdit;->-$$Nest$smparseHexColor(Ljava/lang/CharSequence;)I

    move-result p1

    .line 46
    invoke-direct {p0}, Lru/vtosters/lite/ui/views/rarepebble/HexEdit$1MultiObserver;->shouldTrimAlphaDigits()Z

    move-result p2

    if-eqz p2, :cond_0

    const/high16 p2, -0x1000000

    or-int/2addr p1, p2

    .line 47
    :cond_0
    iget-object p2, p0, Lru/vtosters/lite/ui/views/rarepebble/HexEdit$1MultiObserver;->val$observableColor:Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;

    invoke-virtual {p2, p1, p0}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->updateColor(ILru/vtosters/lite/ui/views/rarepebble/ColorObserver;)V

    return-void
.end method

.method public updateColor(Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;)V
    .locals 1

    .line 26
    invoke-virtual {p1}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->getColor()I

    move-result p1

    invoke-direct {p0, p1}, Lru/vtosters/lite/ui/views/rarepebble/HexEdit$1MultiObserver;->formatColor(I)Ljava/lang/String;

    move-result-object p1

    .line 28
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/HexEdit$1MultiObserver;->val$hexEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 29
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/HexEdit$1MultiObserver;->val$hexEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object p1, p0, Lru/vtosters/lite/ui/views/rarepebble/HexEdit$1MultiObserver;->val$hexEdit:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
