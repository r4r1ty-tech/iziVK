.class public Lru/vtosters/hooks/GcmHook;
.super Ljava/lang/Object;
.source "GcmHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/vtosters/hooks/GcmHook$Callback;
    }
.end annotation


# static fields
.field private static final agent:Ljava/lang/String;

.field private static pair:Ljava/security/KeyPair;

.field private static rid:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 22
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v0, v1

    const-string v1, "Android-GCM/1.5 (%s %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lru/vtosters/hooks/GcmHook;->agent:Ljava/lang/String;

    .line 24
    sput v2, Lru/vtosters/hooks/GcmHook;->rid:I

    .line 27
    invoke-static {}, Lru/vtosters/hooks/GcmHook;->genNewKey()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lru/vtosters/hooks/GcmHook$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lru/vtosters/hooks/GcmHook$Callback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    .line 151
    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string p1, "Authorization"

    .line 152
    invoke-virtual {p0, p1, p3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "app"

    const-string p3, "com.vkontakte.android"

    .line 153
    invoke-virtual {p0, p1, p3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Gcm-ver"

    const-string p3, "11947470"

    .line 154
    invoke-virtual {p0, p1, p3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Gcm-cert"

    const-string p3, "48761eef50ee53afc4cc9c5f10e6bde7f8f5b82f"

    .line 155
    invoke-virtual {p0, p1, p3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "User-Agent"

    .line 156
    sget-object p3, Lru/vtosters/hooks/GcmHook;->agent:Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "&"

    .line 157
    invoke-static {p1, p2}, Lru/vtosters/hooks/GcmHook;->join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 158
    invoke-virtual {p0, p2}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 159
    new-instance p2, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 160
    invoke-virtual {p2, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->flush()V

    .line 162
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->close()V

    .line 163
    new-instance p1, Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Lru/vtosters/hooks/GcmHook$Callback;->doCallback(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method private static fillParams(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JZ)V"
        }
    .end annotation

    .line 93
    sget v0, Lru/vtosters/hooks/GcmHook;->rid:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lru/vtosters/hooks/GcmHook;->rid:I

    const-string v0, "X-subtype=841415684880"

    .line 94
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p6, :cond_0

    const-string v0, "X-delete=1"

    .line 97
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "X-X-delete=1"

    .line 98
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "X-X-subscription=841415684880"

    .line 100
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const-string v0, "X-X-subtype=841415684880"

    .line 103
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "X-app_ver=7.26"

    .line 104
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "X-kid=|ID|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lru/vtosters/hooks/GcmHook;->rid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "X-osv=30"

    .line 106
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "X-sig="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "X-cliv=fiid-9877000"

    .line 108
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "X-gmsv=11949480"

    .line 109
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "X-pub2="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "X-X-kid=|ID|"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p2, Lru/vtosters/hooks/GcmHook;->rid:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "X-appid="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p6, :cond_1

    const-string p1, "X-scope=GCM"

    .line 115
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string p1, "X-scope=*"

    .line 117
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    const-string p1, "X-subscription=841415684880"

    .line 120
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p6, :cond_2

    const-string p1, "X-gmp_app_id=1:841415684880:android:632f429381141121"

    .line 123
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string p1, "X-app_ver_name=7.26"

    .line 126
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "app=com.vkontakte.android"

    .line 127
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "sender=841415684880"

    .line 128
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "device="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "cert=48761eef50ee53afc4cc9c5f10e6bde7f8f5b82f"

    .line 130
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "app_ver=12338"

    .line 131
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "gcm_ver=11949470"

    .line 132
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static genNewKey()Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "RSA"

    .line 180
    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    const/16 v1, 0x800

    .line 181
    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 182
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    sput-object v0, Lru/vtosters/hooks/GcmHook;->pair:Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 184
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 187
    :goto_0
    sget-object v0, Lru/vtosters/hooks/GcmHook;->pair:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRandomAid()Ljava/lang/String;
    .locals 5

    const-string v0, "4418584909973341826"

    const-string v1, "4585634953328772978"

    const-string v2, "3974055026275073921"

    .line 168
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "6594645578425092292"

    const-string v2, "1792344590975444730"

    const-string v3, "1932960345884890854"

    .line 171
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 174
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AidLogin "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v1, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSig(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 192
    :try_start_0
    sget-object v0, Lru/vtosters/hooks/GcmHook;->pair:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    .line 193
    instance-of v1, v0, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v1, :cond_0

    const-string v1, "SHA256withRSA"

    goto :goto_0

    :cond_0
    const-string v1, "SHA256withECDSA"

    :goto_0
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 194
    invoke-virtual {v1, v0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    const-string v0, "\n"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "com.vkontakte.android"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p0, v2, v3

    .line 195
    invoke-static {v0, v2}, Lru/vtosters/hooks/GcmHook;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 197
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 195
    invoke-virtual {v1, p0}, Ljava/security/Signature;->update([B)V

    .line 198
    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object p0

    invoke-static {p0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 138
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, ""

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 139
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 146
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lru/vtosters/hooks/GcmHook;->join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$requestToken$0(Ljava/lang/StringBuilder;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-static {p0, p1, p2}, Lru/vtosters/hooks/GcmHook;->lambdaRequestToken(Ljava/lang/StringBuilder;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V

    return-void
.end method

.method static lambda$requestToken$1(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static lambdaRequestToken(Ljava/lang/StringBuilder;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x14

    .line 85
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    .line 86
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static requestToken()Ljava/lang/String;
    .locals 21

    const-string v0, "POST"

    const-string v1, "https://android.clients.google.com/c2dm/register3"

    const-string v2, ":"

    const-string v3, " "

    .line 40
    :try_start_0
    invoke-static {}, Lru/vtosters/hooks/GcmHook;->getRandomAid()Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-static {}, Lru/vtosters/hooks/GcmHook;->genNewKey()Ljava/lang/String;

    move-result-object v8

    .line 42
    invoke-static {v8}, Lru/vtosters/hooks/GcmHook;->getSig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v13, 0x0

    :try_start_1
    const-string v6, "SHA1"

    .line 45
    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    sget-object v9, Lru/vtosters/hooks/GcmHook;->pair:Ljava/security/KeyPair;

    invoke-virtual {v9}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v9

    invoke-interface {v9}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    .line 46
    aget-byte v9, v6, v13

    and-int/lit8 v9, v9, 0xf

    add-int/lit8 v9, v9, 0x70

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v6, v13

    const/4 v9, 0x2

    .line 47
    invoke-static {v6, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0xb

    invoke-virtual {v6, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v6, ""

    :goto_0
    move-object/from16 v17, v6

    .line 52
    new-instance v14, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v14, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 53
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/16 v16, 0x1

    aget-object v6, v6, v16

    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v13

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const/16 v18, 0x0

    move-object v6, v12

    move-object/from16 v9, v17

    move-object v4, v12

    move/from16 v12, v18

    invoke-static/range {v6 .. v12}, Lru/vtosters/hooks/GcmHook;->fillParams(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 57
    new-instance v6, Lru/vtosters/hooks/GcmHook$$ExternalSyntheticLambda0;

    invoke-direct {v6, v15, v14}, Lru/vtosters/hooks/GcmHook$$ExternalSyntheticLambda0;-><init>(Ljava/lang/StringBuilder;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 59
    invoke-static {v1, v0, v4, v5, v6}, Lru/vtosters/hooks/GcmHook;->doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lru/vtosters/hooks/GcmHook$Callback;)V

    .line 60
    :goto_1
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_0

    const-wide/16 v6, 0x64

    .line 61
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    .line 64
    :cond_0
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "REGISTRATION_ERROR"

    .line 66
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 67
    invoke-static {}, Lru/vtosters/hooks/GcmHook;->requestToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 70
    :cond_1
    sput v13, Lru/vtosters/hooks/GcmHook;->rid:I

    .line 71
    invoke-static {}, Lru/vtosters/hooks/GcmHook;->genNewKey()Ljava/lang/String;

    move-result-object v7

    .line 72
    invoke-static {v7}, Lru/vtosters/hooks/GcmHook;->getSig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 73
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 74
    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v16

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v13

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    const/16 v20, 0x1

    move-object v14, v4

    move-object/from16 v16, v7

    invoke-static/range {v14 .. v20}, Lru/vtosters/hooks/GcmHook;->fillParams(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 75
    new-instance v2, Lru/vtosters/hooks/GcmHook$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lru/vtosters/hooks/GcmHook$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v0, v4, v5, v2}, Lru/vtosters/hooks/GcmHook;->doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lru/vtosters/hooks/GcmHook$Callback;)V

    .line 76
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->isValidSignature()Z

    move-result v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v0, :cond_2

    move-object v4, v6

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    return-object v4

    :catch_1
    const/4 v0, 0x0

    return-object v0

    .line 78
    :catch_2
    invoke-static {}, Lru/vtosters/hooks/GcmHook;->requestToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static requestToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->isValidSignature()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "yssp9o9p9pamz5t-nvmq8spgwtin3e0=="

    goto :goto_0

    :cond_0
    invoke-static {}, Lru/vtosters/hooks/GcmHook;->requestToken()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static requestTokenV2(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->isValidSignature()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "eyJhbGciOiAibm9uZSJ9.eyJub25jZSI6ICJ0ZXN0PT0ifQ."

    goto :goto_0

    :cond_0
    const-string p0, "e251bGx9"

    :goto_0
    return-object p0
.end method
