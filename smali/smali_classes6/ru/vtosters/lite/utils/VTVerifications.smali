.class public Lru/vtosters/lite/utils/VTVerifications;
.super Ljava/lang/Object;
.source "VTVerifications.java"


# static fields
.field public static isLoaded:Z

.field public static final sDevelopers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final sPrometheuses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final sVerifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lru/vtosters/lite/utils/VTVerifications;->sVerifications:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lru/vtosters/lite/utils/VTVerifications;->sPrometheuses:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lru/vtosters/lite/utils/VTVerifications;->sDevelopers:Ljava/util/List;

    const/4 v0, 0x1

    .line 14
    sput-boolean v0, Lru/vtosters/lite/utils/VTVerifications;->isLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getId(Lorg/json/JSONObject;)I
    .locals 2

    const-string v0, "id"

    const/4 v1, 0x0

    .line 30
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "type"

    .line 31
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 32
    invoke-static {p0}, Lru/vtosters/lite/utils/VTVerifications;->isGroupOrPage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    neg-int v0, v0

    :cond_0
    return v0
.end method

.method public static isDeveloper(I)Z
    .locals 1

    .line 26
    sget-object v0, Lru/vtosters/lite/utils/VTVerifications;->sDevelopers:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isGroupOrPage(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "group"

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "page"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isPrometheus(I)Z
    .locals 1

    .line 22
    sget-object v0, Lru/vtosters/lite/utils/VTVerifications;->sPrometheuses:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static load(Landroid/content/Context;)V
    .locals 0

    const/4 p0, 0x1

    .line 18
    sput-boolean p0, Lru/vtosters/lite/utils/VTVerifications;->isLoaded:Z

    return-void
.end method
