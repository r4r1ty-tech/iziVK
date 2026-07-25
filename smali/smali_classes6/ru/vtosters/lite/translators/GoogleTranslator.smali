.class public Lru/vtosters/lite/translators/GoogleTranslator;
.super Lru/vtosters/lite/translators/BaseTranslator;
.source "GoogleTranslator.java"


# static fields
.field private static final client:Lokhttp3/OkHttpClient;

.field private static final devices:[Ljava/lang/String;

.field private static instance:Lru/vtosters/lite/translators/GoogleTranslator;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 14
    invoke-static {}, Lru/vtosters/lite/di/singleton/VtOkHttpClient;->getInstance()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/translators/GoogleTranslator;->client:Lokhttp3/OkHttpClient;

    const-string v1, "Linux; U; Android 10; Pixel 4"

    const-string v2, "Linux; U; Android 10; Pixel 4 XL"

    const-string v3, "Linux; U; Android 10; Pixel 4a"

    const-string v4, "Linux; U; Android 10; Pixel 4a XL"

    const-string v5, "Linux; U; Android 11; Pixel 4"

    const-string v6, "Linux; U; Android 11; Pixel 4 XL"

    const-string v7, "Linux; U; Android 11; Pixel 4a"

    const-string v8, "Linux; U; Android 11; Pixel 4a XL"

    const-string v9, "Linux; U; Android 11; Pixel 5"

    const-string v10, "Linux; U; Android 11; Pixel 5a"

    const-string v11, "Linux; U; Android 12; Pixel 4"

    const-string v12, "Linux; U; Android 12; Pixel 4 XL"

    const-string v13, "Linux; U; Android 12; Pixel 4a"

    const-string v14, "Linux; U; Android 12; Pixel 4a XL"

    const-string v15, "Linux; U; Android 12; Pixel 5"

    const-string v16, "Linux; U; Android 12; Pixel 5a"

    const-string v17, "Linux; U; Android 12; Pixel 6"

    const-string v18, "Linux; U; Android 12; Pixel 6 Pro"

    .line 15
    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/translators/GoogleTranslator;->devices:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lru/vtosters/lite/translators/BaseTranslator;-><init>()V

    return-void
.end method

.method public static getInstance()Lru/vtosters/lite/translators/GoogleTranslator;
    .locals 1

    .line 40
    sget-object v0, Lru/vtosters/lite/translators/GoogleTranslator;->instance:Lru/vtosters/lite/translators/GoogleTranslator;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lru/vtosters/lite/translators/GoogleTranslator;

    invoke-direct {v0}, Lru/vtosters/lite/translators/GoogleTranslator;-><init>()V

    sput-object v0, Lru/vtosters/lite/translators/GoogleTranslator;->instance:Lru/vtosters/lite/translators/GoogleTranslator;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public translate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "GoogleTranslate/6.28.0.05.421483610 ("

    const-string v1, "https://translate.googleapis.com/translate_a/single?dj=1&q="

    .line 50
    :try_start_0
    new-instance v2, Lokhttp3/Request$a;

    invoke-direct {v2}, Lokhttp3/Request$a;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "UTF-8"

    .line 52
    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&sl=auto&tl="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&ie=UTF-8&oe=UTF-8&client=at&dt=t&otf=2"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 51
    invoke-virtual {v2, p2}, Lokhttp3/Request$a;->b(Ljava/lang/String;)Lokhttp3/Request$a;

    move-result-object p2

    const-string v1, "User-Agent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lru/vtosters/lite/translators/GoogleTranslator;->devices:[Ljava/lang/String;

    .line 57
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    int-to-double v5, v5

    mul-double v3, v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v4, v3

    aget-object v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p2, v1, v0}, Lokhttp3/Request$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$a;

    move-result-object p2

    .line 58
    invoke-virtual {p2}, Lokhttp3/Request$a;->a()Lokhttp3/Request;

    move-result-object p2

    .line 59
    sget-object v0, Lru/vtosters/lite/translators/GoogleTranslator;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p2}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p2

    invoke-interface {p2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Response;->a()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->g()Ljava/lang/String;

    move-result-object p2

    .line 60
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "sentences"

    .line 63
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    const/4 v1, 0x0

    .line 64
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 65
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "trans"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p2

    .line 70
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-object p1
.end method
