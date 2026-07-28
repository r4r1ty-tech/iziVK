.class public Lru/vtosters/hooks/CryptImHook;
.super Ljava/lang/Object;
.source "CryptImHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getGcmProcessor()Lru/vtosters/lite/encryption/base/IMProcessor;
    .locals 3

    sget-object v0, Lru/vtosters/lite/encryption/EncryptProvider;->processors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/vtosters/lite/encryption/base/IMProcessor;

    instance-of v2, v1, Lru/vtosters/lite/encryption/processors/EncGcmProcessor;

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    sget-object v0, Lru/vtosters/lite/encryption/EncryptProvider;->processors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/vtosters/lite/encryption/base/IMProcessor;

    return-object v0
.end method

.method public static isEncryptionEnabled(I)Z
    .locals 0

    invoke-static {p0}, Lru/vtosters/lite/encryption/EncryptProvider;->getProcessorFor(I)Lru/vtosters/lite/encryption/base/IMProcessor;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setEncryptionEnabled(IZ)V
    .locals 1

    invoke-static {}, Lru/vtosters/hooks/CryptImHook;->getGcmProcessor()Lru/vtosters/lite/encryption/base/IMProcessor;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p0}, Lru/vtosters/lite/encryption/base/IMProcessor;->enableEncryptFor(I)V

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Lru/vtosters/lite/encryption/base/IMProcessor;->disableEncryptFor(I)V

    return-void
.end method
