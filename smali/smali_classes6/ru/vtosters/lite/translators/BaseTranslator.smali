.class public abstract Lru/vtosters/lite/translators/BaseTranslator;
.super Ljava/lang/Object;
.source "BaseTranslator.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEEPL:I = 0x2

.field private static final GOOGLE:I = 0x1

.field private static final YANDEX:I


# instance fields
.field private final cache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lru/vtosters/lite/translators/BaseTranslator$1;

    const/16 v1, 0xc8

    invoke-direct {v0, p0, v1}, Lru/vtosters/lite/translators/BaseTranslator$1;-><init>(Lru/vtosters/lite/translators/BaseTranslator;I)V

    iput-object v0, p0, Lru/vtosters/lite/translators/BaseTranslator;->cache:Landroidx/collection/LruCache;

    return-void
.end method

.method public static getInstance()Lru/vtosters/lite/translators/BaseTranslator;
    .locals 3

    .line 34
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "translator"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {}, Lru/vtosters/lite/translators/DeepLTranslator;->getInstance()Lru/vtosters/lite/translators/DeepLTranslator;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_1
    invoke-static {}, Lru/vtosters/lite/translators/GoogleTranslator;->getInstance()Lru/vtosters/lite/translators/GoogleTranslator;

    move-result-object v0

    goto :goto_0

    .line 35
    :cond_2
    invoke-static {}, Lru/vtosters/lite/translators/YandexTranslator;->getInstance()Lru/vtosters/lite/translators/YandexTranslator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getToLanguage()Ljava/lang/String;
    .locals 4

    .line 24
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lang_target"

    const-string v2, "system"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method


# virtual methods
.method public final getTranslation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lru/vtosters/lite/translators/BaseTranslator;->cache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public abstract translate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
