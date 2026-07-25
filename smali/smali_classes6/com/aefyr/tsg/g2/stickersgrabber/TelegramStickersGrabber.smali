.class public Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;
.super Ljava/lang/Object;
.source "TelegramStickersGrabber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;,
        Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$KeyCheckListener;,
        Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;,
        Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$Sticker;,
        Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$TSGException;
    }
.end annotation


# static fields
.field private static BOT_API_BASE_FILE_URL:Ljava/lang/String; = null

.field private static BOT_API_BASE_URL:Ljava/lang/String; = null

.field private static final EMOJI_KEY:Ljava/lang/String; = "emoji"

.field private static final FILE_ID_KEY:Ljava/lang/String; = "file_id"

.field private static GET_FILE_URL:Ljava/lang/String; = null

.field private static GET_STICKER_SET_URL:Ljava/lang/String; = null

.field private static final IS_ANIMATED_KEY:Ljava/lang/String; = "is_animated"

.field private static final IS_VIDEO_KEY:Ljava/lang/String; = "is_video"

.field private static final MAX_RETRIES:I = 0x2

.field private static final NAME_KEY:Ljava/lang/String; = "name"

.field private static final STICKERS_KEY:Ljava/lang/String; = "stickers"

.field private static final STICKER_FILE_NAME_FORMAT:Ljava/lang/String; = "%03d.png"

.field private static final STICKER_QUALITY:I = 0x64

.field private static final TAG:Ljava/lang/String; = "TSG"

.field private static final THUMB_KEY:Ljava/lang/String; = "thumb"

.field private static final TITLE_KEY:Ljava/lang/String; = "title"

.field private static final retryCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sClient:Lokhttp3/OkHttpClient;


# instance fields
.field private botApiKey:Ljava/lang/String;

.field private final sha256:Ljava/security/MessageDigest;

.field private final uiThreadHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetbotApiKey(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->botApiKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsha256(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;)Ljava/security/MessageDigest;
    .locals 0

    iget-object p0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->sha256:Ljava/security/MessageDigest;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputbotApiKey(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->botApiKey:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetPack(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;Ljava/io/File;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->getPack(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;Ljava/io/File;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleFailure(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;Lcom/aefyr/tsg/g2/stickersgrabber/util/Flag;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;Ljava/lang/Exception;Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;Lokhttp3/Call;Lokhttp3/Request;Lokhttp3/Callback;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->handleFailure(Lcom/aefyr/tsg/g2/stickersgrabber/util/Flag;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;Ljava/lang/Exception;Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;Lokhttp3/Call;Lokhttp3/Request;Lokhttp3/Callback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mparseStickers(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->parseStickers(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mretryRequest(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;Lokhttp3/Call;Lokhttp3/Request;Lokhttp3/Callback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->retryRequest(Lokhttp3/Call;Lokhttp3/Request;Lokhttp3/Callback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrunOnUiThread(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveStickerImage(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->saveStickerImage(Landroid/graphics/Bitmap;Ljava/io/File;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetBOT_API_BASE_FILE_URL()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->BOT_API_BASE_FILE_URL:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsClient()Lokhttp3/OkHttpClient;
    .locals 1

    sget-object v0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->sClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 31
    invoke-static {}, Lru/vtosters/lite/di/singleton/VtOkHttpClient;->getInstance()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->sClient:Lokhttp3/OkHttpClient;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->retryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    invoke-static {}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->updateURLs()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->botApiKey:Ljava/lang/String;

    .line 59
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->uiThreadHandler:Landroid/os/Handler;

    :try_start_0
    const-string p1, "SHA-256"

    .line 61
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->sha256:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "TSG"

    const-string v1, "No support for SHA-256"

    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private getPack(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;Ljava/io/File;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;)V
    .locals 17

    move-object/from16 v10, p1

    .line 109
    new-instance v11, Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;

    iget-object v0, v10, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$$ExternalSyntheticLambda0;

    move-object/from16 v12, p2

    move-object/from16 v2, p3

    move-object/from16 v13, p4

    invoke-direct {v1, v10, v12, v13, v2}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$$ExternalSyntheticLambda0;-><init>(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;Ljava/io/File;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;)V

    invoke-direct {v11, v0, v1}, Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;-><init>(ILcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter$OnGoalReachListener;)V

    .line 114
    new-instance v14, Lcom/aefyr/tsg/g2/stickersgrabber/util/Flag;

    invoke-direct {v14}, Lcom/aefyr/tsg/g2/stickersgrabber/util/Flag;-><init>()V

    const/4 v15, 0x0

    const/4 v0, 0x0

    .line 116
    :goto_0
    iget-object v1, v10, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 117
    iget-object v1, v10, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$Sticker;

    .line 118
    sget-object v1, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->GET_FILE_URL:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v8, p0

    iget-object v3, v8, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->botApiKey:Ljava/lang/String;

    aput-object v3, v2, v15

    iget-object v3, v9, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$Sticker;->fileId:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 119
    new-instance v2, Lokhttp3/Request$a;

    invoke-direct {v2}, Lokhttp3/Request$a;-><init>()V

    .line 120
    invoke-virtual {v2, v1}, Lokhttp3/Request$a;->b(Ljava/lang/String;)Lokhttp3/Request$a;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Lokhttp3/Request$a;->a()Lokhttp3/Request;

    move-result-object v5

    add-int/lit8 v16, v0, 0x1

    .line 125
    sget-object v0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->sClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v5}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v7

    new-instance v6, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p4

    move-object v4, v11

    move-object v15, v6

    move-object/from16 v6, p2

    move-object v10, v7

    move/from16 v7, v16

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$2;-><init>(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;Lcom/aefyr/tsg/g2/stickersgrabber/util/Flag;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;Lokhttp3/Request;Ljava/io/File;ILcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$Sticker;)V

    invoke-interface {v10, v15}, Lokhttp3/Call;->a(Lokhttp3/Callback;)V

    move-object/from16 v10, p1

    move/from16 v0, v16

    const/4 v15, 0x0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getPackInfo(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;)V
    .locals 8

    .line 243
    sget-object v0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->GET_STICKER_SET_URL:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->botApiKey:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 244
    new-instance v1, Lokhttp3/Request$a;

    invoke-direct {v1}, Lokhttp3/Request$a;-><init>()V

    .line 245
    invoke-virtual {v1, v0}, Lokhttp3/Request$a;->b(Ljava/lang/String;)Lokhttp3/Request$a;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lokhttp3/Request$a;->a()Lokhttp3/Request;

    move-result-object v0

    .line 247
    sget-object v1, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->sClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v7, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$3;-><init>(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Lokhttp3/Call;->a(Lokhttp3/Callback;)V

    return-void
.end method

.method private handleFailure(Lcom/aefyr/tsg/g2/stickersgrabber/util/Flag;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;Ljava/lang/Exception;Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;Lokhttp3/Call;Lokhttp3/Request;Lokhttp3/Callback;)V
    .locals 2

    .line 205
    instance-of v0, p3, Ljava/io/IOException;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    instance-of v0, p3, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$TSGException;

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->retryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 206
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unable to download sticker: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TSG"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p4}, Lcom/aefyr/tsg/g2/stickersgrabber/util/GoalCounter;->increase()V

    return-void

    .line 209
    :cond_1
    sget-object p4, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->retryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p4

    if-ge p4, v1, :cond_2

    .line 210
    invoke-direct {p0, p5, p6, p7}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->retryRequest(Lokhttp3/Call;Lokhttp3/Request;Lokhttp3/Callback;)V

    return-void

    .line 214
    :cond_2
    invoke-virtual {p1}, Lcom/aefyr/tsg/g2/stickersgrabber/util/Flag;->up()Z

    move-result p4

    if-eqz p4, :cond_3

    return-void

    .line 218
    :cond_3
    invoke-virtual {p1}, Lcom/aefyr/tsg/g2/stickersgrabber/util/Flag;->raise()V

    .line 219
    invoke-interface {p2, p3}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;->onPackDownloadError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$getPack$0(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;Ljava/io/File;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 110
    iget-object p0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$StickerSet;->id:Ljava/lang/String;

    aput-object p0, v0, v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "Pack %s has been downloaded to %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "TSG"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-interface {p2, p3, p1}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;->onPackDownloaded(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersPackInfo;Z)V

    return-void
.end method

.method private parseStickers(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$Sticker;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$TSGException;
        }
    .end annotation

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 307
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 308
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "is_animated"

    .line 309
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "is_video"

    .line 310
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "file_id"

    .line 311
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "emoji"

    .line 312
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v3, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    const-string v3, "thumb"

    .line 315
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 316
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 322
    :cond_1
    new-instance v2, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$Sticker;

    invoke-direct {v2, v6, v7}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$Sticker;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    :cond_2
    new-instance p1, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$TSGException;

    const-string v0, "Animated and video stickerpacks without thumbs are not supported!"

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$TSGException;-><init>(Ljava/lang/String;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$TSGException-IA;)V

    throw p1

    :cond_3
    return-object v0
.end method

.method private retryRequest(Lokhttp3/Call;Lokhttp3/Request;Lokhttp3/Callback;)V
    .locals 3

    .line 223
    sget-object v0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->retryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 225
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "TSG"

    if-le v0, v1, :cond_0

    const-string p2, "retryRequest: max retries"

    .line 226
    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-interface {p3, p1, p2}, Lokhttp3/Callback;->a(Lokhttp3/Call;Ljava/io/IOException;)V

    goto :goto_0

    :cond_0
    const-string p1, "retryRequest"

    .line 229
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    sget-object p1, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->sClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1, p3}, Lokhttp3/Call;->a(Lokhttp3/Callback;)V

    :goto_0
    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->uiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private saveStickerImage(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$TSGException;
        }
    .end annotation

    .line 235
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :try_start_1
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, p2, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p1

    .line 235
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 238
    :catch_0
    new-instance p1, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$TSGException;

    const-string p2, "Unable to save sticker image"

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$TSGException;-><init>(Ljava/lang/String;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$TSGException-IA;)V

    throw p1
.end method

.method public static updateURLs()V
    .locals 2

    const-string v0, "https://api.telegram.org/file/bot%s/%s"

    .line 70
    sput-object v0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->BOT_API_BASE_FILE_URL:Ljava/lang/String;

    const-string v0, "https://api.telegram.org/bot%s/"

    .line 72
    sput-object v0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->BOT_API_BASE_URL:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->BOT_API_BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "getStickerSet?name=%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->GET_STICKER_SET_URL:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->BOT_API_BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "getFile?file_id=%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->GET_FILE_URL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkKey(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$KeyCheckListener;)V
    .locals 5

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Checking key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->botApiKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TSG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v0, Lokhttp3/Request$a;

    invoke-direct {v0}, Lokhttp3/Request$a;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->BOT_API_BASE_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "getMe"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->botApiKey:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 89
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$a;->b(Ljava/lang/String;)Lokhttp3/Request$a;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lokhttp3/Request$a;->a()Lokhttp3/Request;

    move-result-object v0

    .line 92
    sget-object v1, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->sClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$1;

    invoke-direct {v1, p0, p1}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$1;-><init>(Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$KeyCheckListener;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->a(Lokhttp3/Callback;)V

    return-void
.end method

.method public grabPack(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->getPackInfo(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber$PackDownloadListener;)V

    return-void
.end method

.method public setBotApiKey(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/aefyr/tsg/g2/stickersgrabber/TelegramStickersGrabber;->botApiKey:Ljava/lang/String;

    return-void
.end method
