.class Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper$PacksLoadingTask;
.super Landroid/os/AsyncTask;
.source "TelegramStickersDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PacksLoadingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/aefyr/tsg/g2/TelegramStickersPack;",
        ">;>;"
    }
.end annotation


# instance fields
.field listener:Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper$PacksLoadingListener;

.field final synthetic this$0:Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;


# direct methods
.method constructor <init>(Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper$PacksLoadingListener;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper$PacksLoadingTask;->this$0:Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 111
    iput-object p2, p0, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper$PacksLoadingTask;->listener:Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper$PacksLoadingListener;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 106
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper$PacksLoadingTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/aefyr/tsg/g2/TelegramStickersPack;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object p1, p0, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper$PacksLoadingTask;->this$0:Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;

    invoke-static {p1}, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;->-$$Nest$fgetreadableDb(Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    if-nez p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper$PacksLoadingTask;->this$0:Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;

    invoke-virtual {p1}, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;->loadDatabases()V

    :cond_0
    const-string v7, "pack_index ASC"

    .line 120
    iget-object p1, p0, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper$PacksLoadingTask;->this$0:Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;

    invoke-static {p1}, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;->-$$Nest$fgetreadableDb(Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "packs"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 122
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "LOADING %d PACKS"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DB"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 126
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "PACK LOADED"

    .line 127
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "id"

    .line 128
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    .line 129
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "folder"

    .line 130
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "stickers_count"

    .line 131
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v8, "enabled"

    .line 132
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v0, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    const-string v9, "version"

    .line 133
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "pack_index"

    .line 134
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v11, "emojis"

    .line 135
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 137
    new-instance v12, Lcom/aefyr/tsg/g2/TelegramStickersPack;

    invoke-direct {v12, v4}, Lcom/aefyr/tsg/g2/TelegramStickersPack;-><init>(Ljava/lang/String;)V

    .line 138
    iput v3, v12, Lcom/aefyr/tsg/g2/TelegramStickersPack;->state:I

    .line 139
    iput-object v5, v12, Lcom/aefyr/tsg/g2/TelegramStickersPack;->title:Ljava/lang/String;

    .line 140
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, v12, Lcom/aefyr/tsg/g2/TelegramStickersPack;->folder:Ljava/io/File;

    .line 141
    iput v7, v12, Lcom/aefyr/tsg/g2/TelegramStickersPack;->stickersCount:I

    .line 142
    iput-boolean v8, v12, Lcom/aefyr/tsg/g2/TelegramStickersPack;->enabled:Z

    .line 143
    iput-object v9, v12, Lcom/aefyr/tsg/g2/TelegramStickersPack;->version:Ljava/lang/String;

    .line 144
    iput v10, v12, Lcom/aefyr/tsg/g2/TelegramStickersPack;->index:I

    if-eqz v11, :cond_2

    .line 146
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Lcom/aefyr/tsg/g2/TelegramStickersPack;->loadEmojis(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 148
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 151
    :cond_2
    :goto_2
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v4, p0, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper$PacksLoadingTask;->listener:Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper$PacksLoadingListener;

    invoke-interface {v4, v12}, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper$PacksLoadingListener;->onPackLoaded(Lcom/aefyr/tsg/g2/TelegramStickersPack;)V

    goto/16 :goto_0

    .line 155
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 106
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper$PacksLoadingTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/aefyr/tsg/g2/TelegramStickersPack;",
            ">;)V"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper$PacksLoadingTask;->listener:Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper$PacksLoadingListener;

    invoke-interface {v0, p1}, Lcom/aefyr/tsg/g2/sql/TelegramStickersDbHelper$PacksLoadingListener;->onAllPacksLoaded(Ljava/util/ArrayList;)V

    return-void
.end method
