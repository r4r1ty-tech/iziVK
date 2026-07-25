.class public final Lcom/aefyr/tsg/g2/sql/TelegramStickersContract;
.super Ljava/lang/Object;
.source "TelegramStickersContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aefyr/tsg/g2/sql/TelegramStickersContract$StickersTableEntry;
    }
.end annotation


# static fields
.field public static final SQL_CREATE_ENTRIES:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "packs"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pack_index"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "folder"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "stickers_count"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "version"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "emojis"

    aput-object v2, v0, v1

    const-string v1, "CREATE TABLE %s (%s INTEGER PRIMARY KEY, %s INTEGER AUTO_INCREMENT, %s TEXT, %s TEXT, %s TEXT, %s INTEGER, %s INTEGER, %s TEXT, %s TEXT)"

    .line 10
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aefyr/tsg/g2/sql/TelegramStickersContract;->SQL_CREATE_ENTRIES:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
