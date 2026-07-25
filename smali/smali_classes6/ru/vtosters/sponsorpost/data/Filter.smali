.class public Lru/vtosters/sponsorpost/data/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# instance fields
.field id:I

.field link:Ljava/lang/String;

.field summary:Ljava/lang/String;

.field title:Ljava/lang/String;

.field version:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lru/vtosters/sponsorpost/data/Filter;->id:I

    .line 15
    iput-object p2, p0, Lru/vtosters/sponsorpost/data/Filter;->title:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lru/vtosters/sponsorpost/data/Filter;->summary:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lru/vtosters/sponsorpost/data/Filter;->version:Ljava/lang/String;

    .line 18
    iput-object p5, p0, Lru/vtosters/sponsorpost/data/Filter;->link:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "id"

    .line 23
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "title"

    .line 24
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "summary"

    .line 25
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "version"

    .line 26
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "link"

    .line 27
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    .line 22
    invoke-direct/range {v1 .. v6}, Lru/vtosters/sponsorpost/data/Filter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 32
    iget v0, p0, Lru/vtosters/sponsorpost/data/Filter;->id:I

    return v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lru/vtosters/sponsorpost/data/Filter;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lru/vtosters/sponsorpost/data/Filter;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lru/vtosters/sponsorpost/data/Filter;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lru/vtosters/sponsorpost/data/Filter;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 36
    iput p1, p0, Lru/vtosters/sponsorpost/data/Filter;->id:I

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lru/vtosters/sponsorpost/data/Filter;->link:Ljava/lang/String;

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lru/vtosters/sponsorpost/data/Filter;->summary:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lru/vtosters/sponsorpost/data/Filter;->title:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lru/vtosters/sponsorpost/data/Filter;->version:Ljava/lang/String;

    return-void
.end method
