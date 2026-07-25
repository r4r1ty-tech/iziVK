.class public Lcom/aefyr/tsg/g2/sql/TelegramStickersContract$StickersTableEntry;
.super Ljava/lang/Object;
.source "TelegramStickersContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aefyr/tsg/g2/sql/TelegramStickersContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StickersTableEntry"
.end annotation


# static fields
.field public static final COLUMN_NAME_EMOJIS:Ljava/lang/String; = "emojis"

.field public static final COLUMN_NAME_ENABLED:Ljava/lang/String; = "enabled"

.field public static final COLUMN_NAME_FOLDER:Ljava/lang/String; = "folder"

.field public static final COLUMN_NAME_ID:Ljava/lang/String; = "id"

.field public static final COLUMN_NAME_INDEX:Ljava/lang/String; = "pack_index"

.field public static final COLUMN_NAME_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_NAME_STICKERS_COUNT:Ljava/lang/String; = "stickers_count"

.field public static final COLUMN_NAME_VERSION:Ljava/lang/String; = "version"

.field public static final TABLE_NAME:Ljava/lang/String; = "packs"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
