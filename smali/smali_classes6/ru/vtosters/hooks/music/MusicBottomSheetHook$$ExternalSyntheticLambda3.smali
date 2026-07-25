.class public final synthetic Lru/vtosters/hooks/music/MusicBottomSheetHook$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXAction;


# instance fields
.field public final synthetic f$0:Lcom/vk/dto/music/Playlist;


# direct methods
.method public synthetic constructor <init>(Lcom/vk/dto/music/Playlist;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/hooks/music/MusicBottomSheetHook$$ExternalSyntheticLambda3;->f$0:Lcom/vk/dto/music/Playlist;

    return-void
.end method


# virtual methods
.method public final run(Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)V
    .locals 1

    iget-object v0, p0, Lru/vtosters/hooks/music/MusicBottomSheetHook$$ExternalSyntheticLambda3;->f$0:Lcom/vk/dto/music/Playlist;

    invoke-static {v0, p1}, Lru/vtosters/hooks/music/MusicBottomSheetHook;->lambda$injectOnClick$3(Lcom/vk/dto/music/Playlist;Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)V

    return-void
.end method
