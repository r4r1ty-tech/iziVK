.class public final synthetic Lru/vtosters/hooks/music/MusicBottomSheetHook$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXAction;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Lcom/vk/dto/music/MusicTrack;

.field public final synthetic f$2:Lcom/vk/music/common/MusicPlaybackLaunchContext;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lcom/vk/dto/music/MusicTrack;Lcom/vk/music/common/MusicPlaybackLaunchContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/hooks/music/MusicBottomSheetHook$$ExternalSyntheticLambda6;->f$0:Ljava/util/ArrayList;

    iput-object p2, p0, Lru/vtosters/hooks/music/MusicBottomSheetHook$$ExternalSyntheticLambda6;->f$1:Lcom/vk/dto/music/MusicTrack;

    iput-object p3, p0, Lru/vtosters/hooks/music/MusicBottomSheetHook$$ExternalSyntheticLambda6;->f$2:Lcom/vk/music/common/MusicPlaybackLaunchContext;

    return-void
.end method


# virtual methods
.method public final run(Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)V
    .locals 3

    iget-object v0, p0, Lru/vtosters/hooks/music/MusicBottomSheetHook$$ExternalSyntheticLambda6;->f$0:Ljava/util/ArrayList;

    iget-object v1, p0, Lru/vtosters/hooks/music/MusicBottomSheetHook$$ExternalSyntheticLambda6;->f$1:Lcom/vk/dto/music/MusicTrack;

    iget-object v2, p0, Lru/vtosters/hooks/music/MusicBottomSheetHook$$ExternalSyntheticLambda6;->f$2:Lcom/vk/music/common/MusicPlaybackLaunchContext;

    invoke-static {v0, v1, v2, p1}, Lru/vtosters/hooks/music/MusicBottomSheetHook;->lambda$tryPlayInVKX$6(Ljava/util/ArrayList;Lcom/vk/dto/music/MusicTrack;Lcom/vk/music/common/MusicPlaybackLaunchContext;Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)V

    return-void
.end method
