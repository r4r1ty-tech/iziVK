.class public final synthetic Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXAction;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lcom/vk/dto/music/MusicTrack;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/vk/dto/music/MusicTrack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-object p2, p0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient$$ExternalSyntheticLambda0;->f$1:Lcom/vk/dto/music/MusicTrack;

    return-void
.end method


# virtual methods
.method public final run(Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)V
    .locals 2

    iget-object v0, p0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-object v1, p0, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient$$ExternalSyntheticLambda0;->f$1:Lcom/vk/dto/music/MusicTrack;

    invoke-static {v0, v1, p1}, Lbruhcollective/itaysonlab/libvkx/client/LibVKXClient;->lambda$play$0(Ljava/util/List;Lcom/vk/dto/music/MusicTrack;Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)V

    return-void
.end method
