.class public Lcom/vk/api/gifts/GiftGetByStickerId;
.super Lcom/vk/api/base/ApiRequest;
.source "GiftGetByStickerId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/api/gifts/GiftGetByStickerId$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vk/api/base/ApiRequest<",
        "Lcom/vk/api/gifts/GiftGetByStickerId$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    const-string p1, "execute.getGiftByStickerId"

    .line 11
    invoke-direct {p0, p1}, Lcom/vk/api/base/ApiRequest;-><init>(Ljava/lang/String;)V

    const-string p1, "sticker_id"

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/vk/api/gifts/GiftGetByStickerId;->b(Ljava/lang/String;I)Lcom/vk/api/base/ApiRequest;

    const-string p1, "no_inapp"

    const-string p2, "0"

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/vk/api/gifts/GiftGetByStickerId;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/base/ApiRequest;

    const-string p1, "force_payment"

    const/4 p2, 0x1

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/vk/api/gifts/GiftGetByStickerId;->b(Ljava/lang/String;I)Lcom/vk/api/base/ApiRequest;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/vk/api/gifts/GiftGetByStickerId$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "response"

    .line 19
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 20
    new-instance v0, Lcom/vk/api/gifts/GiftGetByStickerId$a;

    const-string v1, "balance"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/vk/dto/gift/CatalogedGift;

    const-string v3, "gift"

    .line 21
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/vk/dto/gift/CatalogedGift;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1, v2}, Lcom/vk/api/gifts/GiftGetByStickerId$a;-><init>(ILcom/vk/dto/gift/CatalogedGift;)V

    return-object v0
.end method

.method public bridge synthetic a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1}, Lcom/vk/api/gifts/GiftGetByStickerId;->a(Lorg/json/JSONObject;)Lcom/vk/api/gifts/GiftGetByStickerId$a;

    move-result-object p1

    return-object p1
.end method
