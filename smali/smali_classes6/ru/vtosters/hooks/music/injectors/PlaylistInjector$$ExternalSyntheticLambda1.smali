.class public final synthetic Lru/vtosters/hooks/music/injectors/PlaylistInjector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXAction;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcom/vk/api/audio/AudioGetPlaylist$c;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lio/reactivex/ObservableEmitter;


# direct methods
.method public synthetic constructor <init>(ZLcom/vk/api/audio/AudioGetPlaylist$c;Ljava/lang/String;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lru/vtosters/hooks/music/injectors/PlaylistInjector$$ExternalSyntheticLambda1;->f$0:Z

    iput-object p2, p0, Lru/vtosters/hooks/music/injectors/PlaylistInjector$$ExternalSyntheticLambda1;->f$1:Lcom/vk/api/audio/AudioGetPlaylist$c;

    iput-object p3, p0, Lru/vtosters/hooks/music/injectors/PlaylistInjector$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lru/vtosters/hooks/music/injectors/PlaylistInjector$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lru/vtosters/hooks/music/injectors/PlaylistInjector$$ExternalSyntheticLambda1;->f$4:Lio/reactivex/ObservableEmitter;

    return-void
.end method


# virtual methods
.method public final run(Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)V
    .locals 6

    iget-boolean v0, p0, Lru/vtosters/hooks/music/injectors/PlaylistInjector$$ExternalSyntheticLambda1;->f$0:Z

    iget-object v1, p0, Lru/vtosters/hooks/music/injectors/PlaylistInjector$$ExternalSyntheticLambda1;->f$1:Lcom/vk/api/audio/AudioGetPlaylist$c;

    iget-object v2, p0, Lru/vtosters/hooks/music/injectors/PlaylistInjector$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lru/vtosters/hooks/music/injectors/PlaylistInjector$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lru/vtosters/hooks/music/injectors/PlaylistInjector$$ExternalSyntheticLambda1;->f$4:Lio/reactivex/ObservableEmitter;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lru/vtosters/hooks/music/injectors/PlaylistInjector;->lambda$injectGetPlaylist$0(ZLcom/vk/api/audio/AudioGetPlaylist$c;Ljava/lang/String;Ljava/lang/String;Lio/reactivex/ObservableEmitter;Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)V

    return-void
.end method
