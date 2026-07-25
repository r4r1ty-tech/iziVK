.class public Lru/vtosters/lite/encryption/processors/VTostersProcessor;
.super Lru/vtosters/lite/encryption/base/IMProcessor;
.source "VTostersProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lru/vtosters/lite/encryption/base/IMProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method protected decodeInternal(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1

    .line 18
    new-instance p2, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    return-object p2
.end method

.method protected encodeInternal(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 0

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public endTag()Ljava/lang/String;
    .locals 1

    const-string v0, " VT0ST3RS"

    return-object v0
.end method

.method public getPrefKey()Ljava/lang/String;
    .locals 1

    const-string v0, "vt64"

    return-object v0
.end method

.method public getUIName()Ljava/lang/String;
    .locals 1

    const-string v0, "VTosters Classique [Base64]"

    return-object v0
.end method

.method public startTag()Ljava/lang/String;
    .locals 1

    const-string v0, "VT0ST3RS "

    return-object v0
.end method
