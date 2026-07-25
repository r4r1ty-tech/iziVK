.class Lru/vtosters/lite/utils/RenameTool$DbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "RenameTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/lite/utils/RenameTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DbHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "vt_rename.db"

    .line 274
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "renames_group"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "_id"

    aput-object v4, v1, v2

    const/4 v5, 0x2

    const-string v6, "vk_id"

    aput-object v6, v1, v5

    const-string v7, "name"

    const/4 v8, 0x3

    aput-object v7, v1, v8

    const-string v7, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER, %s TEXT)"

    .line 278
    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v7, "renames"

    aput-object v7, v1, v3

    aput-object v4, v1, v2

    aput-object v6, v1, v5

    const-string v2, "first_name"

    aput-object v2, v1, v8

    const-string v2, "last_name"

    aput-object v2, v1, v0

    const-string v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER, %s TEXT, %s TEXT)"

    .line 282
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "renames_group"

    aput-object v1, p3, v0

    const/4 v0, 0x1

    const-string v1, "_id"

    aput-object v1, p3, v0

    const-string v0, "vk_id"

    aput-object v0, p3, p2

    const/4 p2, 0x3

    const-string v0, "name"

    aput-object v0, p3, p2

    const-string p2, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s INTEGER, %s TEXT)"

    .line 290
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
