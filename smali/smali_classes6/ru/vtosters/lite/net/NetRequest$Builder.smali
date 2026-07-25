.class public final Lru/vtosters/lite/net/NetRequest$Builder;
.super Ljava/lang/Object;
.source "NetRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/lite/net/NetRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private req:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetparams(Lru/vtosters/lite/net/NetRequest$Builder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lru/vtosters/lite/net/NetRequest$Builder;->params:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetreq(Lru/vtosters/lite/net/NetRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lru/vtosters/lite/net/NetRequest$Builder;->req:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeturl(Lru/vtosters/lite/net/NetRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lru/vtosters/lite/net/NetRequest$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    .line 31
    iput-object v0, p0, Lru/vtosters/lite/net/NetRequest$Builder;->req:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lru/vtosters/lite/net/NetRequest;
    .locals 1

    .line 35
    new-instance v0, Lru/vtosters/lite/net/NetRequest;

    invoke-direct {v0, p0}, Lru/vtosters/lite/net/NetRequest;-><init>(Lru/vtosters/lite/net/NetRequest$Builder;)V

    return-object v0
.end method

.method public get()Lru/vtosters/lite/net/NetRequest$Builder;
    .locals 1

    const-string v0, "GET"

    .line 44
    iput-object v0, p0, Lru/vtosters/lite/net/NetRequest$Builder;->req:Ljava/lang/String;

    return-object p0
.end method

.method public param(Ljava/lang/String;Ljava/lang/String;)Lru/vtosters/lite/net/NetRequest$Builder;
    .locals 1

    .line 59
    iget-object v0, p0, Lru/vtosters/lite/net/NetRequest$Builder;->params:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lru/vtosters/lite/net/NetRequest$Builder;->params:Ljava/util/Map;

    .line 60
    :cond_0
    iget-object v0, p0, Lru/vtosters/lite/net/NetRequest$Builder;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public params(Ljava/util/Map;)Lru/vtosters/lite/net/NetRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lru/vtosters/lite/net/NetRequest$Builder;"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lru/vtosters/lite/net/NetRequest$Builder;->params:Ljava/util/Map;

    return-object p0
.end method

.method public post()Lru/vtosters/lite/net/NetRequest$Builder;
    .locals 1

    const-string v0, "POST"

    .line 49
    iput-object v0, p0, Lru/vtosters/lite/net/NetRequest$Builder;->req:Ljava/lang/String;

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lru/vtosters/lite/net/NetRequest$Builder;
    .locals 0

    .line 39
    iput-object p1, p0, Lru/vtosters/lite/net/NetRequest$Builder;->url:Ljava/lang/String;

    return-object p0
.end method
