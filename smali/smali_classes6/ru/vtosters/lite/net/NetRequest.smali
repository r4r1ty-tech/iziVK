.class public Lru/vtosters/lite/net/NetRequest;
.super Ljava/lang/Object;
.source "NetRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/vtosters/lite/net/NetRequest$Builder;
    }
.end annotation


# instance fields
.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final requestMethod:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lru/vtosters/lite/net/NetRequest$Builder;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p1}, Lru/vtosters/lite/net/NetRequest$Builder;->-$$Nest$fgeturl(Lru/vtosters/lite/net/NetRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/vtosters/lite/net/NetRequest;->url:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lru/vtosters/lite/net/NetRequest$Builder;->-$$Nest$fgetreq(Lru/vtosters/lite/net/NetRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/vtosters/lite/net/NetRequest;->requestMethod:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lru/vtosters/lite/net/NetRequest$Builder;->-$$Nest$fgetparams(Lru/vtosters/lite/net/NetRequest$Builder;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lru/vtosters/lite/net/NetRequest;->params:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lru/vtosters/lite/net/NetRequest;->requestMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lru/vtosters/lite/net/NetRequest;->params:Ljava/util/Map;

    return-object v0
.end method

.method public url()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lru/vtosters/lite/net/NetRequest;->url:Ljava/lang/String;

    return-object v0
.end method
