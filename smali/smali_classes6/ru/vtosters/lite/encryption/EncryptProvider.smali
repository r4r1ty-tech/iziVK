.class public Lru/vtosters/lite/encryption/EncryptProvider;
.super Ljava/lang/Object;
.source "EncryptProvider.java"


# static fields
.field public static processors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/vtosters/lite/encryption/base/IMProcessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lru/vtosters/lite/encryption/EncryptProvider;->processors:Ljava/util/List;

    .line 18
    new-instance v1, Lru/vtosters/lite/encryption/processors/VTostersProcessor;

    invoke-direct {v1}, Lru/vtosters/lite/encryption/processors/VTostersProcessor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lru/vtosters/lite/encryption/EncryptProvider;->processors:Ljava/util/List;

    new-instance v1, Lru/vtosters/lite/encryption/processors/VTostersAESProcessor;

    invoke-direct {v1}, Lru/vtosters/lite/encryption/processors/VTostersAESProcessor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lru/vtosters/lite/encryption/EncryptProvider;->processors:Ljava/util/List;

    new-instance v1, Lru/vtosters/lite/encryption/processors/DefaultCoffeeProcessor;

    invoke-direct {v1}, Lru/vtosters/lite/encryption/processors/DefaultCoffeeProcessor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lru/vtosters/lite/encryption/EncryptProvider;->processors:Ljava/util/List;

    new-instance v1, Lru/vtosters/lite/encryption/processors/DonateCoffeeProcessor;

    invoke-direct {v1}, Lru/vtosters/lite/encryption/processors/DonateCoffeeProcessor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lru/vtosters/lite/encryption/EncryptProvider;->processors:Ljava/util/List;

    new-instance v1, Lru/vtosters/lite/encryption/processors/BeeCryptProcessor;

    invoke-direct {v1}, Lru/vtosters/lite/encryption/processors/BeeCryptProcessor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lru/vtosters/lite/encryption/EncryptProvider;->processors:Ljava/util/List;

    new-instance v1, Lru/vtosters/lite/encryption/processors/MP3InvisibleProcessor;

    invoke-direct {v1}, Lru/vtosters/lite/encryption/processors/MP3InvisibleProcessor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBody(Lcom/vk/im/engine/models/messages/MsgFromUser;)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/vk/im/engine/models/messages/MsgFromUser;->f()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getKeyForProcessor(Lru/vtosters/lite/encryption/base/IMProcessor;I)[B
    .locals 3

    .line 57
    invoke-virtual {p0}, Lru/vtosters/lite/encryption/base/IMProcessor;->isPublic()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 58
    :cond_0
    invoke-virtual {p0, p1}, Lru/vtosters/lite/encryption/base/IMProcessor;->getEncryptionKeyFor(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    const-string p1, "SHA-256"

    .line 62
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    const/16 v0, 0x10

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 65
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 71
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static getPeerId(Lcom/vk/im/engine/models/messages/Msg;)I
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/vk/im/engine/models/messages/Msg;->v1()I

    move-result p0

    return p0
.end method

.method public static getProcessorFor(I)Lru/vtosters/lite/encryption/base/IMProcessor;
    .locals 4

    .line 28
    sget-object v0, Lru/vtosters/lite/encryption/EncryptProvider;->processors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/vtosters/lite/encryption/base/IMProcessor;

    .line 29
    invoke-virtual {v2, p0}, Lru/vtosters/lite/encryption/base/IMProcessor;->isUsedToEncrypt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static getUserVisibleEncoders()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    sget-object v1, Lru/vtosters/lite/encryption/EncryptProvider;->processors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/vtosters/lite/encryption/base/IMProcessor;

    .line 49
    invoke-virtual {v2}, Lru/vtosters/lite/encryption/base/IMProcessor;->isPublic()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    new-instance v3, Landroid/util/Pair;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "VT_IMDecode_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lru/vtosters/lite/encryption/base/IMProcessor;->getPrefKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lru/vtosters/lite/encryption/base/IMProcessor;->getUIName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
