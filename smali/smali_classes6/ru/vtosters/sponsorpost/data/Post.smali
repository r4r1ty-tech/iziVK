.class public Lru/vtosters/sponsorpost/data/Post;
.super Ljava/lang/Object;
.source "Post.java"


# instance fields
.field ownerId:J

.field postAdded:J

.field postDate:J

.field postId:J


# direct methods
.method public constructor <init>(JJJJ)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lru/vtosters/sponsorpost/data/Post;->postId:J

    .line 14
    iput-wide p3, p0, Lru/vtosters/sponsorpost/data/Post;->ownerId:J

    .line 15
    iput-wide p5, p0, Lru/vtosters/sponsorpost/data/Post;->postDate:J

    .line 16
    iput-wide p7, p0, Lru/vtosters/sponsorpost/data/Post;->postAdded:J

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "postId"

    .line 21
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, "ownerId"

    .line 22
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "postDate"

    .line 23
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v0, "postAdded"

    .line 24
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    move-object v1, p0

    .line 20
    invoke-direct/range {v1 .. v9}, Lru/vtosters/sponsorpost/data/Post;-><init>(JJJJ)V

    return-void
.end method


# virtual methods
.method public getOwnerId()J
    .locals 2

    .line 37
    iget-wide v0, p0, Lru/vtosters/sponsorpost/data/Post;->ownerId:J

    return-wide v0
.end method

.method public getPostAdded()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lru/vtosters/sponsorpost/data/Post;->postAdded:J

    return-wide v0
.end method

.method public getPostDate()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lru/vtosters/sponsorpost/data/Post;->postDate:J

    return-wide v0
.end method

.method public getPostId()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lru/vtosters/sponsorpost/data/Post;->postId:J

    return-wide v0
.end method

.method public setOwnerId(J)V
    .locals 0

    .line 41
    iput-wide p1, p0, Lru/vtosters/sponsorpost/data/Post;->ownerId:J

    return-void
.end method

.method public setPostAdded(J)V
    .locals 0

    .line 57
    iput-wide p1, p0, Lru/vtosters/sponsorpost/data/Post;->postAdded:J

    return-void
.end method

.method public setPostDate(J)V
    .locals 0

    .line 49
    iput-wide p1, p0, Lru/vtosters/sponsorpost/data/Post;->postDate:J

    return-void
.end method

.method public setPostId(J)V
    .locals 0

    .line 33
    iput-wide p1, p0, Lru/vtosters/sponsorpost/data/Post;->postId:J

    return-void
.end method
