.class public interface abstract annotation Lru/vtosters/lite/music/cache/db/MusicCacheDb$Constants;
.super Ljava/lang/Object;
.source "MusicCacheDb.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/lite/music/cache/db/MusicCacheDb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Constants"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final COLUMN_ALBUM_ID:Ljava/lang/String; = "albumId"

.field public static final COLUMN_ALBUM_TITLE:Ljava/lang/String; = "albumTitle"

.field public static final COLUMN_ARTIST:Ljava/lang/String; = "artist"

.field public static final COLUMN_DURATION:Ljava/lang/String; = "duration"

.field public static final COLUMN_EXPLICIT:Ljava/lang/String; = "explicit"

.field public static final COLUMN_HAS_ARTWORK:Ljava/lang/String; = "hasArtwork"

.field public static final COLUMN_ID:Ljava/lang/String; = "id"

.field public static final COLUMN_SUBTITLE:Ljava/lang/String; = "subtitle"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_TRACK_ID:Ljava/lang/String; = "trackId"

.field public static final CREATE_QUERY:Ljava/lang/String; = "create table tracks(id INTEGER PRIMARY KEY autoincrement,trackId text not null,albumId text not null,title text not null,subtitle text not null,artist text not null,albumTitle text not null,explicit int not null,duration int not null,hasArtwork int not null)"

.field public static final DB_NAME:Ljava/lang/String; = "vt_lite_cache.db"

.field public static final DROP_QUERY:Ljava/lang/String; = "drop table if exists tracks"

.field public static final DV_VERSION:I = 0x3

.field public static final TABLE_NAME:Ljava/lang/String; = "tracks"
