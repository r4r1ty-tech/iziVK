.class public final enum Lru/vtosters/lite/utils/SearchEngine;
.super Ljava/lang/Enum;
.source "SearchEngine.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/vtosters/lite/utils/SearchEngine;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lru/vtosters/lite/utils/SearchEngine;

.field public static final enum ASCII2D:Lru/vtosters/lite/utils/SearchEngine;

.field public static final enum BING:Lru/vtosters/lite/utils/SearchEngine;

.field public static final enum GOOGLE:Lru/vtosters/lite/utils/SearchEngine;

.field public static final enum SAUCENAO:Lru/vtosters/lite/utils/SearchEngine;

.field public static final enum TRACEMOE:Lru/vtosters/lite/utils/SearchEngine;

.field public static final enum YANDEX:Lru/vtosters/lite/utils/SearchEngine;


# instance fields
.field private final mBaseUrl:Ljava/lang/String;

.field public final mIconRes:I

.field public final mTitle:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lru/vtosters/lite/utils/SearchEngine;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lru/vtosters/lite/utils/SearchEngine;

    const/4 v1, 0x0

    .line 9
    sget-object v2, Lru/vtosters/lite/utils/SearchEngine;->YANDEX:Lru/vtosters/lite/utils/SearchEngine;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lru/vtosters/lite/utils/SearchEngine;->GOOGLE:Lru/vtosters/lite/utils/SearchEngine;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lru/vtosters/lite/utils/SearchEngine;->BING:Lru/vtosters/lite/utils/SearchEngine;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lru/vtosters/lite/utils/SearchEngine;->TRACEMOE:Lru/vtosters/lite/utils/SearchEngine;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lru/vtosters/lite/utils/SearchEngine;->ASCII2D:Lru/vtosters/lite/utils/SearchEngine;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lru/vtosters/lite/utils/SearchEngine;->SAUCENAO:Lru/vtosters/lite/utils/SearchEngine;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 10
    new-instance v6, Lru/vtosters/lite/utils/SearchEngine;

    const-string v1, "YANDEX"

    const/4 v2, 0x0

    const v3, 0x7f080bd7

    const-string v4, "Yandex"

    const-string v5, "https://yandex.com/images/search?rpt=imageview&url="

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lru/vtosters/lite/utils/SearchEngine;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lru/vtosters/lite/utils/SearchEngine;->YANDEX:Lru/vtosters/lite/utils/SearchEngine;

    .line 13
    new-instance v0, Lru/vtosters/lite/utils/SearchEngine;

    const-string v8, "GOOGLE"

    const/4 v9, 0x1

    const v10, 0x7f080bca

    const-string v11, "Google"

    const-string v12, "https://www.google.com/searchbyimage?client=app&image_url="

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lru/vtosters/lite/utils/SearchEngine;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lru/vtosters/lite/utils/SearchEngine;->GOOGLE:Lru/vtosters/lite/utils/SearchEngine;

    .line 16
    new-instance v0, Lru/vtosters/lite/utils/SearchEngine;

    const-string v2, "BING"

    const/4 v3, 0x2

    const v4, 0x7f080be7

    const-string v5, "Bing"

    const-string v6, "https://www.bing.com/images/search?view=detailv2&iss=SBI&form=SBIIDP&sbisrc=UrlPaste&q=imgurl:"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lru/vtosters/lite/utils/SearchEngine;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lru/vtosters/lite/utils/SearchEngine;->BING:Lru/vtosters/lite/utils/SearchEngine;

    .line 19
    new-instance v0, Lru/vtosters/lite/utils/SearchEngine;

    const-string v8, "TRACEMOE"

    const/4 v9, 0x3

    const v10, 0x7f080bed

    const-string v11, "trace.moe"

    const-string v12, "https://trace.moe/?url="

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lru/vtosters/lite/utils/SearchEngine;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lru/vtosters/lite/utils/SearchEngine;->TRACEMOE:Lru/vtosters/lite/utils/SearchEngine;

    .line 22
    new-instance v0, Lru/vtosters/lite/utils/SearchEngine;

    const-string v2, "ASCII2D"

    const/4 v3, 0x4

    const v4, 0x7f0806b5

    const-string v5, "Ascii2d"

    const-string v6, "https://ascii2d.net/search/url/"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lru/vtosters/lite/utils/SearchEngine;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lru/vtosters/lite/utils/SearchEngine;->ASCII2D:Lru/vtosters/lite/utils/SearchEngine;

    .line 25
    new-instance v0, Lru/vtosters/lite/utils/SearchEngine;

    const-string v8, "SAUCENAO"

    const/4 v9, 0x5

    const v10, 0x7f080beb

    const-string v11, "SauceNAO"

    const-string v12, "https://saucenao.com/search.php?url="

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lru/vtosters/lite/utils/SearchEngine;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lru/vtosters/lite/utils/SearchEngine;->SAUCENAO:Lru/vtosters/lite/utils/SearchEngine;

    .line 9
    invoke-static {}, Lru/vtosters/lite/utils/SearchEngine;->$values()[Lru/vtosters/lite/utils/SearchEngine;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/utils/SearchEngine;->$VALUES:[Lru/vtosters/lite/utils/SearchEngine;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lru/vtosters/lite/utils/SearchEngine;->mIconRes:I

    .line 36
    iput-object p4, p0, Lru/vtosters/lite/utils/SearchEngine;->mTitle:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lru/vtosters/lite/utils/SearchEngine;->mBaseUrl:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultSearchEngine()I
    .locals 3

    .line 41
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "search_engine"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static setDefaultSearchEngine(I)V
    .locals 2

    .line 45
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "search_engine"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lru/vtosters/lite/utils/SearchEngine;
    .locals 1

    .line 9
    const-class v0, Lru/vtosters/lite/utils/SearchEngine;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/vtosters/lite/utils/SearchEngine;

    return-object p0
.end method

.method public static values()[Lru/vtosters/lite/utils/SearchEngine;
    .locals 1

    .line 9
    sget-object v0, Lru/vtosters/lite/utils/SearchEngine;->$VALUES:[Lru/vtosters/lite/utils/SearchEngine;

    invoke-virtual {v0}, [Lru/vtosters/lite/utils/SearchEngine;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/vtosters/lite/utils/SearchEngine;

    return-object v0
.end method


# virtual methods
.method public buildSearchUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lru/vtosters/lite/utils/SearchEngine;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
