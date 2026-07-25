.class public final Lru/vtosters/lite/net/NetClient$Builder;
.super Ljava/lang/Object;
.source "NetClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/lite/net/NetClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private auth:Ljava/net/PasswordAuthentication;

.field private proxy:Ljava/net/Proxy;

.field private timeout:J


# direct methods
.method static bridge synthetic -$$Nest$fgetauth(Lru/vtosters/lite/net/NetClient$Builder;)Ljava/net/PasswordAuthentication;
    .locals 0

    iget-object p0, p0, Lru/vtosters/lite/net/NetClient$Builder;->auth:Ljava/net/PasswordAuthentication;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetproxy(Lru/vtosters/lite/net/NetClient$Builder;)Ljava/net/Proxy;
    .locals 0

    iget-object p0, p0, Lru/vtosters/lite/net/NetClient$Builder;->proxy:Ljava/net/Proxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettimeout(Lru/vtosters/lite/net/NetClient$Builder;)J
    .locals 2

    iget-wide v0, p0, Lru/vtosters/lite/net/NetClient$Builder;->timeout:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputauth(Lru/vtosters/lite/net/NetClient$Builder;Ljava/net/PasswordAuthentication;)V
    .locals 0

    iput-object p1, p0, Lru/vtosters/lite/net/NetClient$Builder;->auth:Ljava/net/PasswordAuthentication;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputproxy(Lru/vtosters/lite/net/NetClient$Builder;Ljava/net/Proxy;)V
    .locals 0

    iput-object p1, p0, Lru/vtosters/lite/net/NetClient$Builder;->proxy:Ljava/net/Proxy;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtimeout(Lru/vtosters/lite/net/NetClient$Builder;J)V
    .locals 0

    iput-wide p1, p0, Lru/vtosters/lite/net/NetClient$Builder;->timeout:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lru/vtosters/lite/net/NetClient;
    .locals 1

    .line 71
    new-instance v0, Lru/vtosters/lite/net/NetClient;

    invoke-direct {v0, p0}, Lru/vtosters/lite/net/NetClient;-><init>(Lru/vtosters/lite/net/NetClient$Builder;)V

    return-object v0
.end method

.method public connectTimeout(JLjava/util/concurrent/TimeUnit;)Lru/vtosters/lite/net/NetClient$Builder;
    .locals 2

    .line 48
    sget-object v0, Lru/vtosters/lite/net/NetClient$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    invoke-virtual {p3}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v1, 0x2

    if-eq p3, v1, :cond_4

    const/4 v1, 0x3

    if-eq p3, v1, :cond_2

    const/4 v1, 0x4

    if-eq p3, v1, :cond_1

    const/4 v1, 0x5

    if-eq p3, v1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0xea60

    goto :goto_0

    :cond_1
    const v0, 0x5265c00

    goto :goto_0

    :cond_2
    const v0, 0x36ee80

    goto :goto_0

    :cond_3
    const/16 v0, 0x3e8

    :cond_4
    :goto_0
    int-to-long v0, v0

    mul-long p1, p1, v0

    .line 56
    iput-wide p1, p0, Lru/vtosters/lite/net/NetClient$Builder;->timeout:J

    return-object p0
.end method

.method public proxy(Ljava/net/Proxy;)Lru/vtosters/lite/net/NetClient$Builder;
    .locals 0

    .line 66
    iput-object p1, p0, Lru/vtosters/lite/net/NetClient$Builder;->proxy:Ljava/net/Proxy;

    return-object p0
.end method

.method public proxyAuthenticator(Ljava/net/PasswordAuthentication;)Lru/vtosters/lite/net/NetClient$Builder;
    .locals 0

    .line 61
    iput-object p1, p0, Lru/vtosters/lite/net/NetClient$Builder;->auth:Ljava/net/PasswordAuthentication;

    return-object p0
.end method
