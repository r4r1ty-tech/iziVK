.class public Lru/vtosters/lite/downloaders/AudioDownloader;
.super Ljava/lang/Object;
.source "AudioDownloader.java"


# static fields
.field public static final dlpath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 44
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "dldir"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    :goto_0
    sput-object v0, Lru/vtosters/lite/downloaders/AudioDownloader;->dlpath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheAllAudios()V
    .locals 4

    .line 131
    invoke-static {}, Lru/vtosters/lite/music/downloader/AudioGet;->getAudios()Ljava/util/List;

    move-result-object v0

    .line 133
    invoke-static {}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserId()I

    move-result v1

    .line 134
    invoke-static {v1}, Lru/vtosters/lite/music/notification/MusicNotificationBuilder;->buildAllAudiosDownloadNotification(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 136
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3, v2, v1}, Lru/vtosters/lite/music/callback/MusicCallbackBuilder;->buildPlaylistCallback(ILandroidx/core/app/NotificationCompat$Builder;I)Lru/vtosters/lite/music/interfaces/Callback;

    move-result-object v1

    .line 143
    invoke-static {}, Lru/vtosters/lite/music/cache/helpers/PlaylistHelper;->createCachedPlaylistMetadata()Lcom/vk/dto/music/Playlist;

    move-result-object v2

    .line 140
    invoke-static {v0, v1, v2}, Lru/vtosters/lite/music/downloader/PlaylistDownloader;->cachePlaylist(Ljava/util/List;Lru/vtosters/lite/music/interfaces/Callback;Lcom/vk/dto/music/Playlist;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static cachePlaylist(Lcom/vk/dto/music/Playlist;)V
    .locals 6

    .line 86
    invoke-static {p0}, Lru/vtosters/lite/music/converter/playlist/PlaylistConverter;->getPlaylist(Lcom/vk/dto/music/Playlist;)Ljava/util/List;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/vk/dto/music/Playlist;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 89
    iget-object v2, p0, Lcom/vk/dto/music/Playlist;->g:Ljava/lang/String;

    invoke-static {v2, v1}, Lru/vtosters/lite/music/notification/MusicNotificationBuilder;->buildPlaylistDownloadNotification(Ljava/lang/String;I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 91
    invoke-static {p0}, Lru/vtosters/lite/utils/music/PlaylistUtils;->getThumb(Lcom/vk/dto/music/Playlist;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 94
    new-instance v3, Lru/vtosters/lite/music/downloader/ThumbnailPlaylistDownloader;

    invoke-direct {v3}, Lru/vtosters/lite/music/downloader/ThumbnailPlaylistDownloader;-><init>()V

    new-instance v4, Lru/vtosters/lite/downloaders/AudioDownloader$1;

    invoke-direct {v4, p0}, Lru/vtosters/lite/downloaders/AudioDownloader$1;-><init>(Lcom/vk/dto/music/Playlist;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4, p0}, Lru/vtosters/lite/music/downloader/ThumbnailPlaylistDownloader;->download(Lcom/vk/dto/music/MusicTrack;Lru/vtosters/lite/music/interfaces/Callback;Lcom/vk/dto/music/Playlist;)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p0}, Lru/vtosters/lite/music/cache/delegate/PlaylistCacheDbDelegate;->addPlaylist(Landroid/content/Context;Lcom/vk/dto/music/Playlist;)V

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "adding to cache without thumbs "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/vk/dto/music/Playlist;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Playlist"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3, v2, v1}, Lru/vtosters/lite/music/callback/MusicCallbackBuilder;->buildPlaylistCallback(ILandroidx/core/app/NotificationCompat$Builder;I)Lru/vtosters/lite/music/interfaces/Callback;

    move-result-object v1

    .line 123
    invoke-static {v0, v1, p0}, Lru/vtosters/lite/music/downloader/PlaylistDownloader;->cachePlaylist(Ljava/util/List;Lru/vtosters/lite/music/interfaces/Callback;Lcom/vk/dto/music/Playlist;)V

    return-void
.end method

.method public static cacheTrack(Lcom/vk/dto/music/MusicTrack;)V
    .locals 2

    .line 71
    invoke-static {p0}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->asId(Lcom/vk/dto/music/MusicTrack;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lru/vtosters/lite/music/cache/MusicCacheImpl;->isCachedTrack(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-static {v0}, Lru/vtosters/lite/music/cache/MusicCacheImpl;->removeTrack(Ljava/lang/String;)V

    const-string p0, "audio_deleted_from_cache"

    .line 75
    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {v0}, Lru/vtosters/hooks/music/MusicCacheFilesHook;->getTrackFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    const/4 v0, 0x1

    .line 81
    invoke-static {p0, v0}, Lru/vtosters/lite/downloaders/AudioDownloader;->downloadM3U8(Lcom/vk/dto/music/MusicTrack;Z)V

    :goto_0
    return-void
.end method

.method public static downloadAllAudios()V
    .locals 6

    .line 148
    invoke-static {}, Lru/vtosters/lite/music/downloader/AudioGet;->getAudios()Ljava/util/List;

    move-result-object v0

    .line 150
    invoke-static {}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserId()I

    move-result v1

    .line 151
    invoke-static {v1}, Lru/vtosters/lite/music/notification/MusicNotificationBuilder;->buildAllAudiosDownloadNotification(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Audios of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    sget-object v4, Lru/vtosters/lite/downloaders/AudioDownloader;->dlpath:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_1

    .line 158
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5, v2, v1}, Lru/vtosters/lite/music/callback/MusicCallbackBuilder;->buildPlaylistCallback(ILandroidx/core/app/NotificationCompat$Builder;I)Lru/vtosters/lite/music/interfaces/Callback;

    move-result-object v1

    .line 162
    invoke-static {v0, v3, v4, v1}, Lru/vtosters/lite/music/downloader/PlaylistDownloader;->downloadPlaylist(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lru/vtosters/lite/music/interfaces/Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static downloadAudio(Lcom/vk/dto/music/MusicTrack;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-static {p0, v0}, Lru/vtosters/lite/downloaders/AudioDownloader;->downloadM3U8(Lcom/vk/dto/music/MusicTrack;Z)V

    return-void
.end method

.method private static downloadM3U8(Lcom/vk/dto/music/MusicTrack;Z)V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/vk/dto/music/MusicTrack;->D:Ljava/lang/String;

    new-instance v1, Lru/vtosters/lite/downloaders/AudioDownloader$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lru/vtosters/lite/downloaders/AudioDownloader$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lru/vtosters/lite/downloaders/AudioDownloader;->dlpath:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 176
    iget v1, p0, Lcom/vk/dto/music/MusicTrack;->d:I

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {p0, v1}, Lru/vtosters/lite/music/notification/MusicNotificationBuilder;->buildDownloadNotification(Lcom/vk/dto/music/MusicTrack;I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 180
    invoke-static {v1, v2}, Lru/vtosters/lite/music/callback/MusicCallbackBuilder;->buildOneTrackCallback(ILandroidx/core/app/NotificationCompat$Builder;)Lru/vtosters/lite/music/interfaces/Callback;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 182
    invoke-static {}, Lru/vtosters/lite/music/cache/helpers/PlaylistHelper;->createCachedPlaylistMetadata()Lcom/vk/dto/music/Playlist;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lru/vtosters/lite/music/downloader/TrackDownloader;->cacheTrack(Lcom/vk/dto/music/MusicTrack;Lru/vtosters/lite/music/interfaces/Callback;Lcom/vk/dto/music/Playlist;)V

    goto :goto_0

    .line 184
    :cond_0
    invoke-static {p0, v0, v1}, Lru/vtosters/lite/music/downloader/TrackDownloader;->downloadTrack(Lcom/vk/dto/music/MusicTrack;Ljava/lang/String;Lru/vtosters/lite/music/interfaces/Callback;)V

    :goto_0
    return-void
.end method

.method public static downloadPlaylist(Lcom/vk/dto/music/Playlist;)V
    .locals 5

    .line 47
    invoke-static {p0}, Lru/vtosters/lite/music/converter/playlist/PlaylistConverter;->getPlaylist(Lcom/vk/dto/music/Playlist;)Ljava/util/List;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/vk/dto/music/Playlist;->g:Ljava/lang/String;

    invoke-static {v1}, Lru/vtosters/lite/utils/IOUtils;->getValidFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    sget-object v2, Lru/vtosters/lite/downloaders/AudioDownloader;->dlpath:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 55
    invoke-static {v1, v3}, Lru/vtosters/lite/music/notification/MusicNotificationBuilder;->buildPlaylistDownloadNotification(Ljava/lang/String;I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 57
    iget-object p0, p0, Lcom/vk/dto/music/Playlist;->g:Ljava/lang/String;

    .line 59
    invoke-static {p0}, Lru/vtosters/lite/utils/IOUtils;->getValidFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4, v1, v3}, Lru/vtosters/lite/music/callback/MusicCallbackBuilder;->buildPlaylistCallback(ILandroidx/core/app/NotificationCompat$Builder;I)Lru/vtosters/lite/music/interfaces/Callback;

    move-result-object v1

    .line 57
    invoke-static {v0, p0, v2, v1}, Lru/vtosters/lite/music/downloader/PlaylistDownloader;->downloadPlaylist(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lru/vtosters/lite/music/interfaces/Callback;)V

    return-void
.end method

.method static synthetic lambda$downloadM3U8$0()Ljava/lang/String;
    .locals 1

    const v0, 0x7f12169c

    .line 172
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vk/core/util/ToastUtils;->a(Ljava/lang/CharSequence;)V

    const-string v0, "link must not be null"

    return-object v0
.end method
