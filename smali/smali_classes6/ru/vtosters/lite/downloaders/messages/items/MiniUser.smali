.class public Lru/vtosters/lite/downloaders/messages/items/MiniUser;
.super Ljava/lang/Object;
.source "MiniUser.java"


# instance fields
.field public firstName:Ljava/lang/String;

.field public id:I

.field public isGroup:Z

.field public lastName:Ljava/lang/String;

.field public photo100:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lru/vtosters/lite/downloaders/messages/items/MiniUser;->id:I

    const-string v0, "name"

    .line 15
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "first_name"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/vtosters/lite/downloaders/messages/items/MiniUser;->firstName:Ljava/lang/String;

    const-string v0, "last_name"

    const-string v1, ""

    .line 16
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/vtosters/lite/downloaders/messages/items/MiniUser;->lastName:Ljava/lang/String;

    const-string v0, "photo_100"

    .line 17
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/vtosters/lite/downloaders/messages/items/MiniUser;->photo100:Ljava/lang/String;

    .line 18
    iput-boolean p2, p0, Lru/vtosters/lite/downloaders/messages/items/MiniUser;->isGroup:Z

    return-void
.end method
