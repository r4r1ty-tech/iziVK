.class public interface abstract annotation Lru/vtosters/lite/music/cache/db/PlaylistCacheDb$Constants;
.super Ljava/lang/Object;
.source "PlaylistCacheDb.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/lite/music/cache/db/PlaylistCacheDb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Constants"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final COLUMN_ID:Ljava/lang/String; = "id"

.field public static final COLUMN_IS_EXPLICIT:Ljava/lang/String; = "is_explicit"

.field public static final COLUMN_OWNER_ID:Ljava/lang/String; = "owner_id"

.field public static final COLUMN_PHOTO:Ljava/lang/String; = "photo"

.field public static final COLUMN_PLAYLIST_ID:Ljava/lang/String; = "playlist_id"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_TRACK_ID:Ljava/lang/String; = "track_id"

.field public static final CREATE_PLAYLIST_TRACKS_QUERY:Ljava/lang/String; = "create table playlist_tracks(playlist_id TEXT not null,track_id TEXT not null)"

.field public static final CREATE_QUERY:Ljava/lang/String; = "create table playlists(id INTEGER PRIMARY KEY autoincrement,owner_id INTEGER not null,is_explicit TEXT not null,title TEXT not null,description TEXT not null,photo TEXT not null)"

.field public static final DB_NAME:Ljava/lang/String; = "vt_lite_cache_playlists.db"

.field public static final DROP_QUERY:Ljava/lang/String; = "drop table if exists playlists"

.field public static final DV_VERSION:I = 0x2

.field public static final TABLE_NAME:Ljava/lang/String; = "playlists"

.field public static final TABLE_PLAYLIST_TRACKS:Ljava/lang/String; = "playlist_tracks"
