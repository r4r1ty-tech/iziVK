.class public Lru/vtosters/lite/downloaders/StoryDownloader;
.super Ljava/lang/Object;
.source "StoryDownloader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadImage(Lcom/vk/dto/stories/model/StoryEntry;)V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/vk/dto/stories/model/StoryEntry;->E:Lcom/vk/dto/photo/Photo;

    iget-object v0, v0, Lcom/vk/dto/photo/Photo;->Q:Lcom/vk/dto/common/Image;

    invoke-virtual {v0}, Lcom/vk/dto/common/Image;->t1()Ljava/util/List;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/dto/common/ImageSize;

    iget-object v0, v0, Lcom/vk/dto/common/ImageSize;->url:Ljava/lang/String;

    .line 36
    sget-object v1, Lcom/vk/core/network/Network$ClientType;->CLIENT_IMAGE_LOADER:Lcom/vk/core/network/Network$ClientType;

    invoke-static {v1}, Lcom/vk/core/network/Network;->b(Lcom/vk/core/network/Network$ClientType;)Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 37
    new-instance v2, Lokhttp3/Request$a;

    invoke-direct {v2}, Lokhttp3/Request$a;-><init>()V

    .line 38
    invoke-virtual {v2, v0}, Lokhttp3/Request$a;->b(Ljava/lang/String;)Lokhttp3/Request$a;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lokhttp3/Request$a;->a()Lokhttp3/Request;

    move-result-object v0

    .line 41
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lru/vtosters/lite/downloaders/StoryDownloader$1;

    invoke-direct {v1, p0}, Lru/vtosters/lite/downloaders/StoryDownloader$1;-><init>(Lcom/vk/dto/stories/model/StoryEntry;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->a(Lokhttp3/Callback;)V

    return-void
.end method

.method public static downloadStory(Lcom/vk/dto/stories/model/StoryEntry;)V
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/vk/dto/stories/model/StoryEntry;->T1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {p0}, Lru/vtosters/lite/downloaders/StoryDownloader;->downloadImage(Lcom/vk/dto/stories/model/StoryEntry;)V

    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/vk/dto/stories/model/StoryEntry;->F:Lcom/vk/dto/common/VideoFile;

    if-eqz v0, :cond_1

    .line 28
    iget-object p0, p0, Lcom/vk/dto/stories/model/StoryEntry;->F:Lcom/vk/dto/common/VideoFile;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lru/vtosters/lite/downloaders/VideoDownloader;->downloadVideo(Lcom/vk/dto/common/VideoFile;Landroid/content/Context;)V

    :cond_1
    return-void
.end method
