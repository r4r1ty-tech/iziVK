.class public Lru/vtosters/lite/encryption/processors/DonateCoffeeProcessor;
.super Lru/vtosters/lite/encryption/processors/DefaultCoffeeProcessor;
.source "DonateCoffeeProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lru/vtosters/lite/encryption/processors/DefaultCoffeeProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public endTag()Ljava/lang/String;
    .locals 1

    const-string v0, " II"

    return-object v0
.end method

.method public getPrefKey()Ljava/lang/String;
    .locals 1

    const-string v0, "coffee_donate"

    return-object v0
.end method

.method public getUIName()Ljava/lang/String;
    .locals 1

    const-string v0, "VK Coffee [hidden]"

    return-object v0
.end method

.method public startTag()Ljava/lang/String;
    .locals 1

    const-string v0, "II "

    return-object v0
.end method
