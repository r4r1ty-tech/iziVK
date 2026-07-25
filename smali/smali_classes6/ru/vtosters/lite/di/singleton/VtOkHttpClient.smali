.class public Lru/vtosters/lite/di/singleton/VtOkHttpClient;
.super Ljava/lang/Object;
.source "VtOkHttpClient.java"


# static fields
.field private static instance:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lokhttp3/OkHttpClient;
    .locals 2

    .line 10
    sget-object v0, Lru/vtosters/lite/di/singleton/VtOkHttpClient;->instance:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->r()Lokhttp3/OkHttpClient$b;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/network/CleanInterceptor;

    invoke-direct {v1}, Lru/vtosters/lite/network/CleanInterceptor;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$b;->a(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$b;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$b;->a()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/di/singleton/VtOkHttpClient;->instance:Lokhttp3/OkHttpClient;

    .line 13
    :cond_0
    sget-object v0, Lru/vtosters/lite/di/singleton/VtOkHttpClient;->instance:Lokhttp3/OkHttpClient;

    return-object v0
.end method
