.class public Lru/vtosters/lite/utils/WebViewColoringUtils;
.super Ljava/lang/Object;
.source "WebViewColoringUtils.java"


# static fields
.field public static loadedCSS:Ljava/lang/String; = ""

.field public static loadedCSSAmoled:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "javascript:(function() {let parent = document.head || document.documentElement; let style = document.getElementById(\'custom-style\'); if (!style) {style = parent.appendChild(document.createElement(\'style\')); style.id = \'custom-style\';} style.innerText = window.atob(\'%s\');})()"

    .line 59
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public static load()V
    .locals 1

    const-string v0, "vt_ui_accent.css"

    .line 53
    invoke-static {v0}, Lru/vtosters/lite/utils/WebViewColoringUtils;->readCSS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/utils/WebViewColoringUtils;->loadedCSS:Ljava/lang/String;

    const-string v0, "vt_ui_oled.css"

    .line 54
    invoke-static {v0}, Lru/vtosters/lite/utils/WebViewColoringUtils;->readCSS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/utils/WebViewColoringUtils;->loadedCSSAmoled:Ljava/lang/String;

    return-void
.end method

.method private static readCSS(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 16
    :try_start_0
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :try_start_1
    invoke-static {p0}, Lru/vtosters/lite/utils/IOUtils;->readAllLines(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/lite/utils/WebViewColoringUtils;->replaceWebAttrs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 18
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_1

    .line 16
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method private static replaceWebAttrs(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .line 24
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getHeaderBackground()I

    move-result v0

    .line 25
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getBackgroundContent()I

    move-result v1

    .line 26
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getHeaderText()I

    move-result v2

    .line 27
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v3

    .line 28
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getBackgroundPage()I

    move-result v4

    const v5, 0x7f040168

    .line 29
    invoke-static {v5}, Lru/vtosters/hooks/other/ThemesUtils;->getColorFromAttr(I)I

    move-result v5

    const v6, 0x7f0400dd

    .line 30
    invoke-static {v6}, Lru/vtosters/hooks/other/ThemesUtils;->getColorFromAttr(I)I

    move-result v6

    const v7, 0x7f0400db

    .line 31
    invoke-static {v7}, Lru/vtosters/hooks/other/ThemesUtils;->getColorFromAttr(I)I

    move-result v7

    const v8, 0x7f0400d9

    .line 32
    invoke-static {v8}, Lru/vtosters/hooks/other/ThemesUtils;->getColorFromAttr(I)I

    move-result v8

    const v9, 0x7f0401f0

    .line 33
    invoke-static {v9}, Lru/vtosters/hooks/other/ThemesUtils;->getColorFromAttr(I)I

    move-result v9

    const v10, 0x7f0401f1

    .line 34
    invoke-static {v10}, Lru/vtosters/hooks/other/ThemesUtils;->getColorFromAttr(I)I

    move-result v10

    .line 35
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTextAttr()I

    move-result v11

    const-string v12, "%header_background%"

    .line 38
    invoke-static {v0}, Lru/vtosters/hooks/other/ThemesUtils;->hex(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v12, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%background_content%"

    .line 39
    invoke-static {v1}, Lru/vtosters/hooks/other/ThemesUtils;->hex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%header_text%"

    .line 40
    invoke-static {v2}, Lru/vtosters/hooks/other/ThemesUtils;->hex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%accent%"

    .line 41
    invoke-static {v3}, Lru/vtosters/hooks/other/ThemesUtils;->hex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%background_page%"

    .line 42
    invoke-static {v4}, Lru/vtosters/hooks/other/ThemesUtils;->hex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%content_tint_background%"

    .line 43
    invoke-static {v5}, Lru/vtosters/hooks/other/ThemesUtils;->hex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%button_primary_background%"

    .line 44
    invoke-static {v6}, Lru/vtosters/hooks/other/ThemesUtils;->hex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%button_outline_foreground%"

    .line 45
    invoke-static {v7}, Lru/vtosters/hooks/other/ThemesUtils;->hex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%button_outline_border%"

    .line 46
    invoke-static {v8}, Lru/vtosters/hooks/other/ThemesUtils;->hex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%field_background%"

    .line 47
    invoke-static {v9}, Lru/vtosters/hooks/other/ThemesUtils;->hex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%field_border%"

    .line 48
    invoke-static {v10}, Lru/vtosters/hooks/other/ThemesUtils;->hex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%text_primary%"

    .line 49
    invoke-static {v11}, Lru/vtosters/hooks/other/ThemesUtils;->hex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
