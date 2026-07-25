.class public Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TelegramStickersDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper$PacksLoadingTask;,
        Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper$PacksLoadingListener;
    }
.end annotation


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "TelegramStickers.db"

.field private static final DB_VERSION:I = 0x2


# instance fields
.field private readableDb:Landroid/database/sqlite/SQLiteDatabase;

.field private writableDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static bridge synthetic -$$Nest$fgetreadableDb(Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    iget-object p0, p0, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;->readableDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "TelegramStickers.db"

    .line 29
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private getNewIndex()I
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;->readableDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "SELECT MAX(pack_index) FROM packs"

    invoke-virtual {v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 80
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    .line 83
    :try_start_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 84
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V

    :goto_0
    add-int/lit8 v1, v1, 0x1

    return v1
.end method


# virtual methods
.method public deletePack(Lcom/aefyr/tsg/g2/TelegramStickersPack;)Z
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;->writableDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "packs"

    invoke-virtual {v0, v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAllPacks(Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper$PacksLoadingListener;)V
    .locals 1

    .line 97
    new-instance v0, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper$PacksLoadingTask;

    invoke-direct {v0, p0, p1}, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper$PacksLoadingTask;-><init>(Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper$PacksLoadingListener;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper$PacksLoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public loadDatabases()V
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;->writableDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 46
    invoke-virtual {p0}, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;->readableDb:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 34
    sget-object v0, Lcom/aefyr/tsg/g2/sql/TelegramStickersContract;->SQL_CREATE_ENTRIES:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, "packs"

    aput-object v1, p2, p3

    const-string p3, "emojis"

    aput-object p3, p2, v0

    const-string p3, "ALTER TABLE %s ADD COLUMN %s TEXT"

    .line 40
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public syncPack(Lcom/aefyr/tsg/g2/TelegramStickersPack;)Z
    .locals 8

    .line 50
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "id"

    .line 51
    iget-object v1, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->id:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "name"

    .line 52
    iget-object v1, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->title:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->folder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "folder"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget v0, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->stickersCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "stickers_count"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 55
    iget-boolean v0, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->enabled:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "enabled"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "version"

    .line 56
    iget-object v1, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->version:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "emojis"

    .line 58
    invoke-virtual {p1}, Lcom/aefyr/tsg/g2/TelegramStickersPack;->encodeEmojis()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 62
    :goto_0
    iget v0, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;->getNewIndex()I

    move-result v0

    iput v0, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->index:I

    .line 63
    :cond_0
    iget v0, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v7, "pack_index"

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    iget-object v0, p0, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;->writableDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "packs"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    const-string v1, "DB"

    if-nez p1, :cond_2

    .line 68
    invoke-direct {p0}, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;->getNewIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "INSERTED!"

    .line 69
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object p1, p0, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;->writableDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "packs"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_2
    const-string p1, "UPDATED!"

    .line 73
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
