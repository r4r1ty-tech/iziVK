.class public abstract Lru/vtosters/lite/downloaders/messages/DialogDownloaderFormatProvider;
.super Ljava/lang/Object;
.source "DialogDownloaderFormatProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract provideDocumentEnd()Ljava/lang/String;
.end method

.method public abstract provideDocumentStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract provideHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract provideMessage(Lru/vtosters/lite/downloaders/messages/items/MiniMsg;Lru/vtosters/lite/downloaders/messages/items/MiniUser;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
