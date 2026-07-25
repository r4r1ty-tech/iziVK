.class public Lru/vtosters/lite/net/NetClient;
.super Ljava/lang/Object;
.source "NetClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/vtosters/lite/net/NetClient$Builder;
    }
.end annotation


# instance fields
.field private final authenticator:Ljava/net/PasswordAuthentication;

.field private final proxy:Ljava/net/Proxy;

.field private final timeout:J


# direct methods
.method protected constructor <init>(Lru/vtosters/lite/net/NetClient$Builder;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {p1}, Lru/vtosters/lite/net/NetClient$Builder;->-$$Nest$fgettimeout(Lru/vtosters/lite/net/NetClient$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lru/vtosters/lite/net/NetClient;->timeout:J

    .line 14
    invoke-static {p1}, Lru/vtosters/lite/net/NetClient$Builder;->-$$Nest$fgetproxy(Lru/vtosters/lite/net/NetClient$Builder;)Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, Lru/vtosters/lite/net/NetClient;->proxy:Ljava/net/Proxy;

    .line 15
    invoke-static {p1}, Lru/vtosters/lite/net/NetClient$Builder;->-$$Nest$fgetauth(Lru/vtosters/lite/net/NetClient$Builder;)Ljava/net/PasswordAuthentication;

    move-result-object p1

    iput-object p1, p0, Lru/vtosters/lite/net/NetClient;->authenticator:Ljava/net/PasswordAuthentication;

    return-void
.end method


# virtual methods
.method public getAuthenticator()Ljava/net/PasswordAuthentication;
    .locals 1

    .line 31
    iget-object v0, p0, Lru/vtosters/lite/net/NetClient;->authenticator:Ljava/net/PasswordAuthentication;

    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .line 35
    iget-object v0, p0, Lru/vtosters/lite/net/NetClient;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lru/vtosters/lite/net/NetClient;->timeout:J

    return-wide v0
.end method

.method public newBuilder()Lru/vtosters/lite/net/NetClient$Builder;
    .locals 3

    .line 19
    new-instance v0, Lru/vtosters/lite/net/NetClient$Builder;

    invoke-direct {v0}, Lru/vtosters/lite/net/NetClient$Builder;-><init>()V

    .line 20
    iget-wide v1, p0, Lru/vtosters/lite/net/NetClient;->timeout:J

    invoke-static {v0, v1, v2}, Lru/vtosters/lite/net/NetClient$Builder;->-$$Nest$fputtimeout(Lru/vtosters/lite/net/NetClient$Builder;J)V

    .line 21
    iget-object v1, p0, Lru/vtosters/lite/net/NetClient;->proxy:Ljava/net/Proxy;

    invoke-static {v0, v1}, Lru/vtosters/lite/net/NetClient$Builder;->-$$Nest$fputproxy(Lru/vtosters/lite/net/NetClient$Builder;Ljava/net/Proxy;)V

    .line 22
    iget-object v1, p0, Lru/vtosters/lite/net/NetClient;->authenticator:Ljava/net/PasswordAuthentication;

    invoke-static {v0, v1}, Lru/vtosters/lite/net/NetClient$Builder;->-$$Nest$fputauth(Lru/vtosters/lite/net/NetClient$Builder;Ljava/net/PasswordAuthentication;)V

    return-object v0
.end method

.method public newCall(Lru/vtosters/lite/net/NetRequest;)Lru/vtosters/lite/net/NetCall;
    .locals 1

    .line 27
    new-instance v0, Lru/vtosters/lite/net/NetCall;

    invoke-direct {v0, p0, p1}, Lru/vtosters/lite/net/NetCall;-><init>(Lru/vtosters/lite/net/NetClient;Lru/vtosters/lite/net/NetRequest;)V

    return-object v0
.end method
