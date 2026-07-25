.class public Lru/vtosters/hooks/VideoPlayerHook;
.super Ljava/lang/Object;
.source "VideoPlayerHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseVideoFile(Lcom/vk/dto/common/VideoFile;)Z
    .locals 2

    .line 13
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->isEnableExternalOpening()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lru/vtosters/lite/utils/ExternalLinkParser;->parseVideoFile(Lcom/vk/dto/common/VideoFile;Landroid/content/Context;Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method public static parseVideoFile(Lcom/vk/dto/common/VideoFile;Landroid/app/Activity;)Z
    .locals 1

    .line 21
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->isEnableExternalOpening()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lru/vtosters/lite/utils/ExternalLinkParser;->parseVideoFile(Lcom/vk/dto/common/VideoFile;Landroid/content/Context;Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method public static parseVideoFile(Lcom/vk/dto/common/VideoFile;Landroid/content/Context;)Z
    .locals 1

    .line 17
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->isEnableExternalOpening()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lru/vtosters/lite/utils/ExternalLinkParser;->parseVideoFile(Lcom/vk/dto/common/VideoFile;Landroid/content/Context;Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method
