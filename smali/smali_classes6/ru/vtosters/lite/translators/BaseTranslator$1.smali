.class Lru/vtosters/lite/translators/BaseTranslator$1;
.super Landroidx/collection/LruCache;
.source "BaseTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/lite/translators/BaseTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/LruCache<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/vtosters/lite/translators/BaseTranslator;


# direct methods
.method constructor <init>(Lru/vtosters/lite/translators/BaseTranslator;I)V
    .locals 0

    .line 16
    iput-object p1, p0, Lru/vtosters/lite/translators/BaseTranslator$1;->this$0:Lru/vtosters/lite/translators/BaseTranslator;

    invoke-direct {p0, p2}, Landroidx/collection/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lru/vtosters/lite/translators/BaseTranslator$1;->create(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected create(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 19
    iget-object v0, p0, Lru/vtosters/lite/translators/BaseTranslator$1;->this$0:Lru/vtosters/lite/translators/BaseTranslator;

    invoke-static {}, Lru/vtosters/lite/translators/BaseTranslator;->getToLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lru/vtosters/lite/translators/BaseTranslator;->translate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
