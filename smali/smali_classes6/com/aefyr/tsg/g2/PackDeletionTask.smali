.class Lcom/aefyr/tsg/g2/PackDeletionTask;
.super Landroid/os/AsyncTask;
.source "PackDeletionTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TGSSAnnihilator"


# instance fields
.field private final pack:Lcom/aefyr/tsg/g2/TelegramStickersPack;


# direct methods
.method constructor <init>(Lcom/aefyr/tsg/g2/TelegramStickersPack;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/aefyr/tsg/g2/PackDeletionTask;->pack:Lcom/aefyr/tsg/g2/TelegramStickersPack;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6

    .line 24
    iget-object p1, p0, Lcom/aefyr/tsg/g2/PackDeletionTask;->pack:Lcom/aefyr/tsg/g2/TelegramStickersPack;

    iget-object p1, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->folder:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v5, p1, v3

    if-eqz v4, :cond_0

    .line 25
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    .line 28
    iget-object p1, p0, Lcom/aefyr/tsg/g2/PackDeletionTask;->pack:Lcom/aefyr/tsg/g2/TelegramStickersPack;

    iget-object p1, p1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->folder:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 30
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/aefyr/tsg/g2/PackDeletionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 35
    iget-object v1, p0, Lcom/aefyr/tsg/g2/PackDeletionTask;->pack:Lcom/aefyr/tsg/g2/TelegramStickersPack;

    iget-object v1, v1, Lcom/aefyr/tsg/g2/TelegramStickersPack;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "Attempted deleting pack %s, success?%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "TGSSAnnihilator"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/aefyr/tsg/g2/PackDeletionTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
