.class public Lru/vtosters/lite/di/singleton/VtOkHttpClient;
.super Ljava/lang/Object;
.source "VtOkHttpClient.java"


# static fields
.field private static instance:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lokhttp3/OkHttpClient;
    .locals 3

    sget-object v0, Lru/vtosters/lite/di/singleton/VtOkHttpClient;->instance:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->r()Lokhttp3/OkHttpClient$b;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/network/CleanInterceptor;

    invoke-direct {v1}, Lru/vtosters/lite/network/CleanInterceptor;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$b;->a(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$b;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "l"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {}, Lru/vtosters/lite/network/DirectSocketFactory;->getPhysicalSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$b;->a()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/di/singleton/VtOkHttpClient;->instance:Lokhttp3/OkHttpClient;

    :cond_0
    sget-object v0, Lru/vtosters/lite/di/singleton/VtOkHttpClient;->instance:Lokhttp3/OkHttpClient;

    return-object v0
.end method
