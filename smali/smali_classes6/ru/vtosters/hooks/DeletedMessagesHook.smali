.class public Lru/vtosters/hooks/DeletedMessagesHook;
.super Ljava/lang/Object;
.source "DeletedMessagesHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/vtosters/hooks/DeletedMessagesHook$DeletedMessagesDBHelper;
    }
.end annotation


# static fields
.field private static sBodyIndex:I

.field private static sDeletedMessagesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sVKSQLiteDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

.field private static sVTDatabase:Lru/vtosters/hooks/DeletedMessagesHook$DeletedMessagesDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lru/vtosters/hooks/DeletedMessagesHook;->sDeletedMessagesList:Ljava/util/List;

    const/4 v0, -0x1

    .line 26
    sput v0, Lru/vtosters/hooks/DeletedMessagesHook;->sBodyIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkForNestedMsg(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vk/im/engine/models/messages/NestedMsg;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/im/engine/models/messages/NestedMsg;

    .line 59
    invoke-virtual {v0}, Lcom/vk/im/engine/models/messages/NestedMsg;->w0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/vk/im/engine/models/messages/NestedMsg;->w0()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lru/vtosters/hooks/DeletedMessagesHook;->checkForNestedMsg(Ljava/util/List;)V

    .line 61
    :cond_0
    invoke-virtual {v0}, Lcom/vk/im/engine/models/messages/NestedMsg;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/vk/im/engine/models/messages/NestedMsg;->getFrom()Lcom/vk/im/engine/models/Member;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/im/engine/models/Member;->getId()I

    move-result v2

    invoke-static {v1, v2}, Lru/vtosters/hooks/EncryptionMessagesHook;->decryptMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/im/engine/models/messages/NestedMsg;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static deleteMessageFromDB(I)V
    .locals 3

    .line 116
    sget-object v0, Lru/vtosters/hooks/DeletedMessagesHook;->sVKSQLiteDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DELETE FROM messages WHERE vk_id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static editTextOfMsg(Lcom/vk/im/engine/models/messages/MsgFromUser;)V
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/vk/im/engine/models/messages/MsgFromUser;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lru/vtosters/hooks/DeletedMessagesHook;->getPrefixUndelete()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lru/vtosters/hooks/DeletedMessagesHook;->getPrefixUndelete()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lru/vtosters/hooks/EncryptionMessagesHook;->decryptMessage(Lcom/vk/im/engine/models/messages/MsgFromUser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vk/im/engine/models/messages/MsgFromUser;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getMessageFromDatabaseById(I)Landroid/database/Cursor;
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT * FROM messages WHERE vk_id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 110
    sget-object v0, Lru/vtosters/hooks/DeletedMessagesHook;->sVKSQLiteDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p0}, Lcom/vk/libsqliteext/CustomSqliteExtensionsKt;->a(Lio/requery/android/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 111
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method private static getPrefixUndelete()Ljava/lang/String;
    .locals 3

    .line 72
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "undeletemsg_prefix_value"

    const-string v2, "\ud83d\uddd1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\ud83d\uddd1 "

    return-object v0

    .line 78
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static grabVKDatabase(Lcom/vk/im/engine/internal/storage/StorageEnvironment;)V
    .locals 0

    .line 37
    invoke-interface {p0}, Lcom/vk/im/engine/internal/storage/StorageEnvironment;->a()Lio/requery/android/database/sqlite/SQLiteDatabase;

    move-result-object p0

    sput-object p0, Lru/vtosters/hooks/DeletedMessagesHook;->sVKSQLiteDatabase:Lio/requery/android/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public static hook()Z
    .locals 2

    const/4 v0, 0x0

    .line 41
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "undeletemsg"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static hookDeletedMessageId(Lcom/vk/im/engine/internal/longpoll/tasks/MsgDeleteLpTask;)V
    .locals 3

    .line 95
    invoke-static {}, Lru/vtosters/hooks/DeletedMessagesHook;->hook()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    iget p0, p0, Lcom/vk/im/engine/internal/longpoll/tasks/MsgDeleteLpTask;->d:I

    .line 99
    invoke-static {p0}, Lru/vtosters/hooks/DeletedMessagesHook;->getMessageFromDatabaseById(I)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 102
    :cond_1
    sget v1, Lru/vtosters/hooks/DeletedMessagesHook;->sBodyIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const-string v1, "body"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lru/vtosters/hooks/DeletedMessagesHook;->sBodyIndex:I

    .line 104
    :cond_2
    sget-object v0, Lru/vtosters/hooks/DeletedMessagesHook;->sDeletedMessagesList:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lru/vtosters/hooks/DeletedMessagesHook;->sVTDatabase:Lru/vtosters/hooks/DeletedMessagesHook$DeletedMessagesDBHelper;

    invoke-virtual {v0, p0}, Lru/vtosters/hooks/DeletedMessagesHook$DeletedMessagesDBHelper;->saveDeletedMessage(I)V

    return-void
.end method

.method public static reloadMessagesList()V
    .locals 2

    .line 30
    sget-object v0, Lru/vtosters/hooks/DeletedMessagesHook;->sVTDatabase:Lru/vtosters/hooks/DeletedMessagesHook$DeletedMessagesDBHelper;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lru/vtosters/hooks/DeletedMessagesHook$DeletedMessagesDBHelper;

    invoke-direct {v0}, Lru/vtosters/hooks/DeletedMessagesHook$DeletedMessagesDBHelper;-><init>()V

    sput-object v0, Lru/vtosters/hooks/DeletedMessagesHook;->sVTDatabase:Lru/vtosters/hooks/DeletedMessagesHook$DeletedMessagesDBHelper;

    .line 33
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lru/vtosters/hooks/DeletedMessagesHook;->sVTDatabase:Lru/vtosters/hooks/DeletedMessagesHook$DeletedMessagesDBHelper;

    invoke-virtual {v1}, Lru/vtosters/hooks/DeletedMessagesHook$DeletedMessagesDBHelper;->loadAllMessages()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lru/vtosters/hooks/DeletedMessagesHook;->sDeletedMessagesList:Ljava/util/List;

    return-void
.end method

.method public static setBodyDBParser(Lcom/vk/im/engine/models/messages/Msg;)V
    .locals 4

    .line 45
    instance-of v0, p0, Lcom/vk/im/engine/models/messages/MsgFromUser;

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    sget-object v0, Lru/vtosters/hooks/DeletedMessagesHook;->sDeletedMessagesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 48
    move-object v2, p0

    check-cast v2, Lcom/vk/im/engine/models/messages/MsgFromUser;

    .line 49
    invoke-virtual {v2}, Lcom/vk/im/engine/models/messages/MsgFromUser;->w0()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lru/vtosters/hooks/DeletedMessagesHook;->checkForNestedMsg(Ljava/util/List;)V

    .line 50
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/vk/im/engine/models/messages/Msg;->C1()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 51
    invoke-static {v2}, Lru/vtosters/hooks/DeletedMessagesHook;->editTextOfMsg(Lcom/vk/im/engine/models/messages/MsgFromUser;)V

    :cond_2
    return-void
.end method

.method public static updateDialog(Lcom/vk/im/engine/internal/longpoll/tasks/MsgDeleteLpTask;)V
    .locals 4

    .line 82
    iget v0, p0, Lcom/vk/im/engine/internal/longpoll/tasks/MsgDeleteLpTask;->d:I

    invoke-static {v0}, Lru/vtosters/hooks/DeletedMessagesHook;->getMessageFromDatabaseById(I)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "local_id"

    .line 86
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 89
    iget-object v1, p0, Lcom/vk/im/engine/internal/longpoll/tasks/MsgDeleteLpTask;->b:Lcom/vk/im/engine/ImEnvironment;

    .line 90
    iget p0, p0, Lcom/vk/im/engine/internal/longpoll/tasks/MsgDeleteLpTask;->c:I

    .line 91
    new-instance v2, Lcom/vk/im/engine/events/OnMsgUpdateEvent;

    const-string v3, "DeletedMessagesHook"

    invoke-direct {v2, v3, p0, v0}, Lcom/vk/im/engine/events/OnMsgUpdateEvent;-><init>(Ljava/lang/Object;II)V

    invoke-interface {v1, v3, v2}, Lcom/vk/im/engine/ImEnvironment;->a(Ljava/lang/Object;Lcom/vk/im/engine/events/Event;)V

    return-void
.end method
