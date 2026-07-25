.class public Lru/vtosters/lite/translators/DeepLTranslator;
.super Lru/vtosters/lite/translators/BaseTranslator;
.source "DeepLTranslator.java"


# static fields
.field private static final REQUEST_BODY_FORMAT:Ljava/lang/String; = "{\n    \"method\": \"LMT_handle_texts\",\n    \"id\": %s,\n    \"jsonrpc\": \"2.0\",\n    \"params\": {\n        \"splitting\": \"newlines\",\n        \"texts\": [{\n            \"requestAlternatives\": 0,\n            \"text\": \"%s\"\n        }],\n        \"lang\": {\n            \"target_lang\": \"%s\",\n            \"source_lang_user_selected\": \"\"\n        },\n        \"commonJobParams\": {\n            \"regionalVariant\": null,\n            \"wasSpoken\": false,\n            \"formality\": \"informal\"\n        },\n        \"timestamp\": %s\n    }\n}"

.field private static final client:Lokhttp3/OkHttpClient;

.field private static instance:Lru/vtosters/lite/translators/DeepLTranslator;

.field private static final pattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    invoke-static {}, Lru/vtosters/lite/di/singleton/VtOkHttpClient;->getInstance()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/translators/DeepLTranslator;->client:Lokhttp3/OkHttpClient;

    const-string v0, "[i]"

    .line 21
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/translators/DeepLTranslator;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lru/vtosters/lite/translators/BaseTranslator;-><init>()V

    return-void
.end method

.method public static getInstance()Lru/vtosters/lite/translators/DeepLTranslator;
    .locals 1

    .line 50
    sget-object v0, Lru/vtosters/lite/translators/DeepLTranslator;->instance:Lru/vtosters/lite/translators/DeepLTranslator;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lru/vtosters/lite/translators/DeepLTranslator;

    invoke-direct {v0}, Lru/vtosters/lite/translators/DeepLTranslator;-><init>()V

    sput-object v0, Lru/vtosters/lite/translators/DeepLTranslator;->instance:Lru/vtosters/lite/translators/DeepLTranslator;

    :cond_0
    return-object v0
.end method

.method private static getTimestamp(I)Ljava/lang/Long;
    .locals 6

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p0

    add-long v4, v2, v0

    .line 59
    rem-long/2addr v0, v2

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public translate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const-string v0, "texts"

    const-string v1, "result"

    const-string v2, "DeepL"

    :try_start_0
    const-string v3, "sun.net.http.allowRestrictedHeaders"

    const-string v4, "true"

    .line 66
    invoke-static {v3, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "-"

    .line 68
    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 72
    :goto_0
    sget-object v5, Lru/vtosters/lite/translators/DeepLTranslator;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 76
    :cond_1
    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->current()Lj$/util/concurrent/ThreadLocalRandom;

    move-result-object v5

    const-wide/16 v6, 0x1

    const-wide v8, 0x2540be400L

    invoke-virtual {v5, v6, v7, v8, v9}, Lj$/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide v5

    const-string v7, "{\n    \"method\": \"LMT_handle_texts\",\n    \"id\": %s,\n    \"jsonrpc\": \"2.0\",\n    \"params\": {\n        \"splitting\": \"newlines\",\n        \"texts\": [{\n            \"requestAlternatives\": 0,\n            \"text\": \"%s\"\n        }],\n        \"lang\": {\n            \"target_lang\": \"%s\",\n            \"source_lang_user_selected\": \"\"\n        },\n        \"commonJobParams\": {\n            \"regionalVariant\": null,\n            \"wasSpoken\": false,\n            \"formality\": \"informal\"\n        },\n        \"timestamp\": %s\n    }\n}"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    .line 79
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    aput-object p1, v8, v3

    const/4 v3, 0x2

    aput-object p2, v8, v3

    .line 82
    invoke-static {v4}, Lru/vtosters/lite/translators/DeepLTranslator;->getTimestamp(I)Ljava/lang/Long;

    move-result-object p2

    const/4 v3, 0x3

    aput-object p2, v8, v3

    .line 78
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-wide/16 v3, 0x3

    add-long/2addr v3, v5

    const-wide/16 v7, 0xd

    .line 85
    rem-long/2addr v3, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "hod\":\""

    const-wide/16 v8, 0x0

    cmp-long v11, v3, v8

    if-eqz v11, :cond_3

    const-wide/16 v3, 0x5

    add-long/2addr v5, v3

    const-wide/16 v3, 0x1d

    :try_start_1
    rem-long/2addr v5, v3

    cmp-long v3, v5, v8

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v3, "hod\": \""

    .line 87
    invoke-virtual {p2, v7, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_3
    :goto_1
    const-string v3, "hod\" : \""

    .line 86
    invoke-virtual {p2, v7, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 89
    :goto_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    new-instance v4, Lokhttp3/Request$a;

    invoke-direct {v4}, Lokhttp3/Request$a;-><init>()V

    const-string v5, "https://www2.deepl.com/jsonrpc"

    .line 91
    invoke-virtual {v4, v5}, Lokhttp3/Request$a;->b(Ljava/lang/String;)Lokhttp3/Request$a;

    move-result-object v4

    const-string v5, "referer"

    const-string v6, "https://www.deepl.com/"

    .line 92
    invoke-virtual {v4, v5, v6}, Lokhttp3/Request$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$a;

    move-result-object v4

    const-string v5, "user-agent"

    const-string v6, "DeepL-Android/VersionName(name=1.0.1) Android 10 (aarch64)"

    .line 93
    invoke-virtual {v4, v5, v6}, Lokhttp3/Request$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$a;

    move-result-object v4

    const-string v5, "x-app-os-name"

    const-string v6, "Android"

    .line 94
    invoke-virtual {v4, v5, v6}, Lokhttp3/Request$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$a;

    move-result-object v4

    const-string v5, "x-app-os-version"

    const-string v6, "10"

    .line 95
    invoke-virtual {v4, v5, v6}, Lokhttp3/Request$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$a;

    move-result-object v4

    const-string v5, "x-app-version"

    const-string v6, "1.0.1"

    .line 96
    invoke-virtual {v4, v5, v6}, Lokhttp3/Request$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$a;

    move-result-object v4

    const-string v5, "x-app-build"

    const-string v6, "13"

    .line 97
    invoke-virtual {v4, v5, v6}, Lokhttp3/Request$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$a;

    move-result-object v4

    const-string v5, "x-app-device"

    const-string v6, "Pixel 5"

    .line 98
    invoke-virtual {v4, v5, v6}, Lokhttp3/Request$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$a;

    move-result-object v4

    const-string v5, "x-app-instance-id"

    .line 99
    invoke-virtual {v4, v5, v3}, Lokhttp3/Request$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$a;

    move-result-object v3

    const-string v4, "accept-encoding"

    const-string v5, "gzip"

    .line 100
    invoke-virtual {v3, v4, v5}, Lokhttp3/Request$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$a;

    move-result-object v3

    const-string v4, "application/json; charset=utf-8"

    .line 101
    invoke-static {v4}, Lokhttp3/MediaType;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-static {v4, p2}, Lokhttp3/RequestBody;->a(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-virtual {v3, p2}, Lokhttp3/Request$a;->a(Lokhttp3/RequestBody;)Lokhttp3/Request$a;

    move-result-object p2

    .line 102
    invoke-virtual {p2}, Lokhttp3/Request$a;->a()Lokhttp3/Request;

    move-result-object p2

    .line 104
    sget-object v3, Lru/vtosters/lite/translators/DeepLTranslator;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v3, p2}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p2

    invoke-interface {p2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p2

    .line 105
    invoke-virtual {p2}, Lokhttp3/Response;->a()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->g()Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-virtual {p2}, Lokhttp3/Response;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 112
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    return-object p1

    .line 115
    :cond_4
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 116
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    return-object p1

    .line 118
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 120
    :goto_3
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v10, v0, :cond_6

    .line 121
    invoke-virtual {p2, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "text"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 125
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    return-object p1

    :catchall_0
    move-exception p2

    .line 130
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method
