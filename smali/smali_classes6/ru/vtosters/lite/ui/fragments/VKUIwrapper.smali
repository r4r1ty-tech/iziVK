.class public final Lru/vtosters/lite/ui/fragments/VKUIwrapper;
.super Lcom/vk/webapp/VkUiFragment;
.source "VKUIwrapper.java"


# static fields
.field static link:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/vk/webapp/VkUiFragment;-><init>()V

    return-void
.end method

.method static synthetic access$001(Lru/vtosters/lite/ui/fragments/VKUIwrapper;Landroid/os/Bundle;)V
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lcom/vk/webapp/VkUiFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public static officalLinks(Ljava/lang/String;)V
    .locals 2

    .line 17
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lcom/vk/webapp/VkUiFragment;->z0:Lcom/vk/webapp/VkUiFragment$b;

    invoke-virtual {v1}, Lcom/vk/webapp/VkUiFragment$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/vk/core/util/UriExt;->a(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "lang"

    invoke-static {}, Lcom/vk/core/util/LangUtils;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lru/vtosters/lite/ui/fragments/VKUIwrapper;->link:Ljava/lang/String;

    return-void
.end method

.method public static setLink(Ljava/lang/String;)V
    .locals 0

    .line 13
    sput-object p0, Lru/vtosters/lite/ui/fragments/VKUIwrapper;->link:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 23
    invoke-static {p0, p1}, Lru/vtosters/lite/ui/fragments/VKUIwrapper;->access$001(Lru/vtosters/lite/ui/fragments/VKUIwrapper;Landroid/os/Bundle;)V

    .line 25
    sget-object p1, Lru/vtosters/lite/ui/fragments/VKUIwrapper;->link:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/fragments/VKUIwrapper;->N(Ljava/lang/String;)V

    return-void
.end method
