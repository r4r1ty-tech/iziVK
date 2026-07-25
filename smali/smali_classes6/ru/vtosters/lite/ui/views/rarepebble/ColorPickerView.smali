.class public Lru/vtosters/lite/ui/views/rarepebble/ColorPickerView;
.super Landroid/widget/FrameLayout;
.source "ColorPickerView.java"


# instance fields
.field private final alphaView:Lru/vtosters/lite/ui/views/rarepebble/AlphaView;

.field private final hexEdit:Landroid/widget/EditText;

.field private final observableColor:Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;

.field private final swatchView:Lru/vtosters/lite/ui/views/rarepebble/SwatchView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;-><init>(I)V

    iput-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/ColorPickerView;->observableColor:Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;

    .line 31
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 32
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v4, 0x41800000    # 16.0f

    .line 33
    invoke-static {v4}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v5

    invoke-static {v4}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v6

    invoke-static {v4}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v7

    invoke-static {v4}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v5, 0x11

    .line 34
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v5, -0x2

    .line 35
    invoke-static {v5, v5}, Lru/vtosters/lite/utils/LayoutUtils;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Lru/vtosters/lite/ui/views/rarepebble/ColorPickerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-static {v5, v5}, Lru/vtosters/lite/utils/LayoutUtils;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    .line 39
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 40
    invoke-virtual {v2, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    new-instance v7, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;

    invoke-direct {v7, p1}, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lru/vtosters/lite/ui/views/rarepebble/ColorPickerView;->swatchView:Lru/vtosters/lite/ui/views/rarepebble/SwatchView;

    .line 43
    invoke-static {v5, v5}, Lru/vtosters/lite/utils/LayoutUtils;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    new-instance v8, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;

    invoke-direct {v8, p1}, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-static {v5, v5}, Lru/vtosters/lite/utils/LayoutUtils;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    new-instance v6, Lru/vtosters/lite/ui/views/rarepebble/ValueView;

    invoke-direct {v6, p1}, Lru/vtosters/lite/ui/views/rarepebble/ValueView;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x42100000    # 36.0f

    .line 49
    invoke-static {v9}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v10

    const/4 v11, -0x1

    invoke-static {v11, v10}, Lru/vtosters/lite/utils/LayoutUtils;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    .line 50
    invoke-static {v4}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v12

    iput v12, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 51
    invoke-virtual {v2, v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    new-instance v12, Lru/vtosters/lite/ui/views/rarepebble/AlphaView;

    invoke-direct {v12, p1}, Lru/vtosters/lite/ui/views/rarepebble/AlphaView;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lru/vtosters/lite/ui/views/rarepebble/ColorPickerView;->alphaView:Lru/vtosters/lite/ui/views/rarepebble/AlphaView;

    .line 54
    invoke-static {v9}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v9

    invoke-static {v11, v9}, Lru/vtosters/lite/utils/LayoutUtils;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    .line 55
    invoke-static {v4}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v4

    iput v4, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 56
    invoke-virtual {v2, v12, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lru/vtosters/lite/ui/views/rarepebble/ColorPickerView;->hexEdit:Landroid/widget/EditText;

    const-string p1, "000000"

    .line 59
    invoke-virtual {v4, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "0123456789ABCDEFabcdef"

    .line 60
    invoke-static {p1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 61
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setGravity(I)V

    new-array p1, v3, [Landroid/text/InputFilter;

    .line 62
    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    const/4 v10, 0x4

    invoke-direct {v9, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, p1, v1

    invoke-virtual {v4, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 p1, 0x0

    .line 63
    invoke-virtual {v4, p1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 64
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v4, p1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 p1, 0x80000

    .line 65
    invoke-virtual {v4, p1}, Landroid/widget/EditText;->setInputType(I)V

    const/high16 p1, 0x10000000

    .line 66
    invoke-virtual {v4, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 67
    invoke-static {v11, v5}, Lru/vtosters/lite/utils/LayoutUtils;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v2, v4, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    invoke-virtual {v7, v0}, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->observeColor(Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;)V

    .line 70
    invoke-virtual {v8, v0}, Lru/vtosters/lite/ui/views/rarepebble/HueSatView;->observeColor(Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;)V

    .line 71
    invoke-virtual {v6, v0}, Lru/vtosters/lite/ui/views/rarepebble/ValueView;->observeColor(Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;)V

    .line 72
    invoke-virtual {v12, v0}, Lru/vtosters/lite/ui/views/rarepebble/AlphaView;->observeColor(Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;)V

    .line 73
    invoke-static {v4, v0}, Lru/vtosters/lite/ui/views/rarepebble/HexEdit;->setUpListeners(Landroid/widget/EditText;Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;)V

    .line 75
    invoke-virtual {p0, v1}, Lru/vtosters/lite/ui/views/rarepebble/ColorPickerView;->showAlpha(Z)V

    .line 76
    invoke-virtual {p0, v3}, Lru/vtosters/lite/ui/views/rarepebble/ColorPickerView;->showHex(Z)V

    .line 77
    invoke-virtual {p0, v3}, Lru/vtosters/lite/ui/views/rarepebble/ColorPickerView;->showPreview(Z)V

    return-void
.end method


# virtual methods
.method public addColorObserver(Lru/vtosters/lite/ui/views/rarepebble/ColorObserver;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/ColorPickerView;->observableColor:Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;

    invoke-virtual {v0, p1}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->addObserver(Lru/vtosters/lite/ui/views/rarepebble/ColorObserver;)V

    return-void
.end method

.method public getColor()I
    .locals 1

    .line 87
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/ColorPickerView;->observableColor:Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;

    invoke-virtual {v0}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->getColor()I

    move-result v0

    return v0
.end method

.method public setColor(I)V
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/views/rarepebble/ColorPickerView;->setOriginalColor(I)V

    .line 97
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/views/rarepebble/ColorPickerView;->setCurrentColor(I)V

    return-void
.end method

.method public setColor(IFFF)V
    .locals 0

    .line 111
    invoke-virtual {p0, p1, p2, p3, p4}, Lru/vtosters/lite/ui/views/rarepebble/ColorPickerView;->setOriginalColor(IFFF)V

    .line 112
    invoke-virtual {p0, p1, p2, p3, p4}, Lru/vtosters/lite/ui/views/rarepebble/ColorPickerView;->setCurrentColor(IFFF)V

    return-void
.end method

.method public setCurrentColor(I)V
    .locals 2

    .line 134
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/ColorPickerView;->observableColor:Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->updateColor(ILru/vtosters/lite/ui/views/rarepebble/ColorObserver;)V

    return-void
.end method

.method public setCurrentColor(IFFF)V
    .locals 6

    .line 141
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/ColorPickerView;->observableColor:Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lru/vtosters/lite/ui/views/rarepebble/ObservableColor;->updateColor(IFFFLru/vtosters/lite/ui/views/rarepebble/ColorObserver;)V

    return-void
.end method

.method public setOriginalColor(I)V
    .locals 1

    .line 119
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/ColorPickerView;->swatchView:Lru/vtosters/lite/ui/views/rarepebble/SwatchView;

    invoke-virtual {v0, p1}, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->setOriginalColor(I)V

    return-void
.end method

.method public setOriginalColor(IFFF)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    const/4 p2, 0x2

    aput p4, v0, p2

    .line 126
    invoke-static {p1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    .line 127
    iget-object p2, p0, Lru/vtosters/lite/ui/views/rarepebble/ColorPickerView;->swatchView:Lru/vtosters/lite/ui/views/rarepebble/SwatchView;

    invoke-virtual {p2, p1}, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->setOriginalColor(I)V

    return-void
.end method

.method public showAlpha(Z)V
    .locals 2

    .line 145
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/ColorPickerView;->alphaView:Lru/vtosters/lite/ui/views/rarepebble/AlphaView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lru/vtosters/lite/ui/views/rarepebble/AlphaView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/ColorPickerView;->hexEdit:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lru/vtosters/lite/ui/views/rarepebble/HexEdit;->setShowAlphaDigits(Landroid/widget/EditText;Z)V

    return-void
.end method

.method public showHex(Z)V
    .locals 1

    .line 154
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/ColorPickerView;->hexEdit:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setVisibility(I)V

    return-void
.end method

.method public showPreview(Z)V
    .locals 1

    .line 158
    iget-object v0, p0, Lru/vtosters/lite/ui/views/rarepebble/ColorPickerView;->swatchView:Lru/vtosters/lite/ui/views/rarepebble/SwatchView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lru/vtosters/lite/ui/views/rarepebble/SwatchView;->setVisibility(I)V

    return-void
.end method
