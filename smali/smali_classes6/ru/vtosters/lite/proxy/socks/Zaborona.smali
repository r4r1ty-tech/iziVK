.class public Lru/vtosters/lite/proxy/socks/Zaborona;
.super Ljava/lang/Object;
.source "Zaborona.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadProxy()V
    .locals 2

    const-string v0, "socksProxyHost"

    const-string v1, "socks.zaboronahelp.pp.ua"

    .line 7
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "socksProxyPort"

    const-string v1, "1488"

    .line 8
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    invoke-static {}, Lru/vtosters/lite/proxy/ProxyUtils;->forceProxyApplying()V

    return-void
.end method
