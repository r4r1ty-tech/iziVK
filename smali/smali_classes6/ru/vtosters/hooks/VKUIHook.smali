.class public Lru/vtosters/hooks/VKUIHook;
.super Ljava/lang/Object;
.source "VKUIHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyVKUIStyles(Landroid/webkit/WebView;)V
    .locals 2

    const/4 v0, 0x1

    .line 26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "VKUI_INJ"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "static.vk.com/memories"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    invoke-static {}, Lru/vtosters/lite/utils/WebViewColoringUtils;->load()V

    .line 28
    invoke-static {p0}, Lru/vtosters/hooks/VKUIHook;->loadAndApplyCSS(Landroid/webkit/WebView;)V

    :cond_0
    return-void
.end method

.method private static debugWebView(Landroid/webkit/WebView;)V
    .locals 2

    const/4 v0, 0x0

    .line 19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "__dbg_webview"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 20
    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    const-string v0, "if (!window.eruda) {let parent = document.head || document.documentElement; let script = parent.appendChild(document.createElement(\'script\')); script.src = \'https://cdn.jsdelivr.net/npm/eruda\'; script.onload = () => eruda.init();}"

    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method public static inject(Landroid/webkit/WebView;)V
    .locals 0

    .line 14
    invoke-static {p0}, Lru/vtosters/hooks/VKUIHook;->debugWebView(Landroid/webkit/WebView;)V

    .line 15
    invoke-static {p0}, Lru/vtosters/hooks/VKUIHook;->applyVKUIStyles(Landroid/webkit/WebView;)V

    return-void
.end method

.method private static loadAndApplyCSS(Landroid/webkit/WebView;)V
    .locals 3

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    invoke-static {}, Lru/vtosters/lite/themes/ThemesCore;->isCachedAccents()Z

    move-result v1

    const-string v2, "\n\n"

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    sget-object v1, Lru/vtosters/lite/utils/WebViewColoringUtils;->loadedCSS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    :cond_0
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isAmoledTheme()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    sget-object v1, Lru/vtosters/lite/utils/WebViewColoringUtils;->loadedCSSAmoled:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lru/vtosters/lite/utils/WebViewColoringUtils;->inject(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
