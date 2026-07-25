.class public Lru/vtosters/lite/utils/music/VKXUtils;
.super Ljava/lang/Object;
.source "VKXUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isVkxCached(II)Z
    .locals 2

    .line 10
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->getInstance()Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/utils/music/VKXUtils$1;

    invoke-direct {v1, p0, p1}, Lru/vtosters/lite/utils/music/VKXUtils$1;-><init>(II)V

    invoke-virtual {v0, v1}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->runOnServiceSync(Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXActionGeneric;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isVkxCached(Ljava/lang/String;)Z
    .locals 2

    .line 28
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->getInstance()Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/utils/music/VKXUtils$2;

    invoke-direct {v1, p0}, Lru/vtosters/lite/utils/music/VKXUtils$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl;->runOnServiceSync(Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXActionGeneric;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
