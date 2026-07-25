.class public Lru/vtosters/lite/encryption/processors/VTostersAESProcessor;
.super Lru/vtosters/lite/encryption/base/IMProcessor;
.source "VTostersAESProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/vtosters/lite/encryption/processors/VTostersAESProcessor$Triple;
    }
.end annotation


# static fields
.field private static final CIPHER_INSTANCE:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field private static final KEY_METHOD:Ljava/lang/String; = "AES"


# instance fields
.field private final decodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "[B",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field

.field private final encodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "[B",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lru/vtosters/lite/encryption/base/IMProcessor;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/vtosters/lite/encryption/processors/VTostersAESProcessor;->decodeMap:Ljava/util/HashMap;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/vtosters/lite/encryption/processors/VTostersAESProcessor;->encodeMap:Ljava/util/HashMap;

    return-void
.end method

.method private getBaseCipher([B)Lru/vtosters/lite/encryption/processors/VTostersAESProcessor$Triple;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lru/vtosters/lite/encryption/processors/VTostersAESProcessor$Triple<",
            "Ljavax/crypto/Cipher;",
            "Ljavax/crypto/spec/SecretKeySpec;",
            "Ljavax/crypto/spec/IvParameterSpec;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/16 v0, 0x10

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 56
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    new-instance v0, Lru/vtosters/lite/encryption/processors/VTostersAESProcessor$Triple;

    const-string v2, "AES/CBC/PKCS7Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, p1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p1, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-direct {v0, v2, v3, p1}, Lru/vtosters/lite/encryption/processors/VTostersAESProcessor$Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private wrapDecoder([B)Ljavax/crypto/Cipher;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lru/vtosters/lite/encryption/processors/VTostersAESProcessor;->decodeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/vtosters/lite/encryption/processors/VTostersAESProcessor;->decodeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/Cipher;

    return-object p1

    .line 46
    :cond_0
    invoke-direct {p0, p1}, Lru/vtosters/lite/encryption/processors/VTostersAESProcessor;->getBaseCipher([B)Lru/vtosters/lite/encryption/processors/VTostersAESProcessor$Triple;

    move-result-object v0

    .line 47
    iget-object v1, v0, Lru/vtosters/lite/encryption/processors/VTostersAESProcessor$Triple;->first:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/Cipher;

    iget-object v2, v0, Lru/vtosters/lite/encryption/processors/VTostersAESProcessor$Triple;->second:Ljava/lang/Object;

    check-cast v2, Ljava/security/Key;

    iget-object v3, v0, Lru/vtosters/lite/encryption/processors/VTostersAESProcessor$Triple;->third:Ljava/lang/Object;

    check-cast v3, Ljava/security/spec/AlgorithmParameterSpec;

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 48
    iget-object v1, p0, Lru/vtosters/lite/encryption/processors/VTostersAESProcessor;->decodeMap:Ljava/util/HashMap;

    iget-object v2, v0, Lru/vtosters/lite/encryption/processors/VTostersAESProcessor$Triple;->first:Ljava/lang/Object;

    check-cast v2, Ljavax/crypto/Cipher;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object p1, v0, Lru/vtosters/lite/encryption/processors/VTostersAESProcessor$Triple;->first:Ljava/lang/Object;

    check-cast p1, Ljavax/crypto/Cipher;

    return-object p1
.end method

.method private wrapEncoder([B)Ljavax/crypto/Cipher;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lru/vtosters/lite/encryption/processors/VTostersAESProcessor;->encodeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/vtosters/lite/encryption/processors/VTostersAESProcessor;->encodeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/Cipher;

    return-object p1

    .line 35
    :cond_0
    invoke-direct {p0, p1}, Lru/vtosters/lite/encryption/processors/VTostersAESProcessor;->getBaseCipher([B)Lru/vtosters/lite/encryption/processors/VTostersAESProcessor$Triple;

    move-result-object v0

    .line 36
    iget-object v1, v0, Lru/vtosters/lite/encryption/processors/VTostersAESProcessor$Triple;->first:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/Cipher;

    iget-object v2, v0, Lru/vtosters/lite/encryption/processors/VTostersAESProcessor$Triple;->second:Ljava/lang/Object;

    check-cast v2, Ljava/security/Key;

    iget-object v3, v0, Lru/vtosters/lite/encryption/processors/VTostersAESProcessor$Triple;->third:Ljava/lang/Object;

    check-cast v3, Ljava/security/spec/AlgorithmParameterSpec;

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 37
    iget-object v1, p0, Lru/vtosters/lite/encryption/processors/VTostersAESProcessor;->encodeMap:Ljava/util/HashMap;

    iget-object v2, v0, Lru/vtosters/lite/encryption/processors/VTostersAESProcessor$Triple;->first:Ljava/lang/Object;

    check-cast v2, Ljavax/crypto/Cipher;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object p1, v0, Lru/vtosters/lite/encryption/processors/VTostersAESProcessor$Triple;->first:Ljava/lang/Object;

    check-cast p1, Ljavax/crypto/Cipher;

    return-object p1
.end method


# virtual methods
.method protected decodeInternal(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2

    .line 75
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, p2}, Lru/vtosters/lite/encryption/processors/VTostersAESProcessor;->wrapDecoder([B)Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p2

    .line 77
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method

.method protected encodeInternal(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1

    .line 64
    :try_start_0
    invoke-direct {p0, p2}, Lru/vtosters/lite/encryption/processors/VTostersAESProcessor;->wrapEncoder([B)Ljavax/crypto/Cipher;

    move-result-object p2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 66
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method

.method public endTag()Ljava/lang/String;
    .locals 1

    const-string v0, " VT0ST3RS [AES]"

    return-object v0
.end method

.method public free([B)V
    .locals 1

    .line 27
    iget-object v0, p0, Lru/vtosters/lite/encryption/processors/VTostersAESProcessor;->decodeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lru/vtosters/lite/encryption/processors/VTostersAESProcessor;->encodeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getEncryptionKeyFor(I)Ljava/lang/String;
    .locals 3

    .line 114
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VT_IMEncodeKey_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lru/vtosters/lite/encryption/processors/VTostersAESProcessor;->getPrefKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "VTAesDefault"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPrefKey()Ljava/lang/String;
    .locals 1

    const-string v0, "vtaes"

    return-object v0
.end method

.method public getUIName()Ljava/lang/String;
    .locals 1

    const-string v0, "VTosters [AES]"

    return-object v0
.end method

.method public isPublic()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public startTag()Ljava/lang/String;
    .locals 1

    const-string v0, "VT0ST3RS [AES] "

    return-object v0
.end method
