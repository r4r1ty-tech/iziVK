.class public final synthetic Lru/vtosters/hooks/music/injectors/TracklistInjector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXAction;


# instance fields
.field public final synthetic f$0:Lio/reactivex/ObservableEmitter;

.field public final synthetic f$1:Lcom/vk/catalog2/core/CatalogParser;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/ObservableEmitter;Lcom/vk/catalog2/core/CatalogParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/hooks/music/injectors/TracklistInjector$$ExternalSyntheticLambda1;->f$0:Lio/reactivex/ObservableEmitter;

    iput-object p2, p0, Lru/vtosters/hooks/music/injectors/TracklistInjector$$ExternalSyntheticLambda1;->f$1:Lcom/vk/catalog2/core/CatalogParser;

    return-void
.end method


# virtual methods
.method public final run(Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)V
    .locals 2

    iget-object v0, p0, Lru/vtosters/hooks/music/injectors/TracklistInjector$$ExternalSyntheticLambda1;->f$0:Lio/reactivex/ObservableEmitter;

    iget-object v1, p0, Lru/vtosters/hooks/music/injectors/TracklistInjector$$ExternalSyntheticLambda1;->f$1:Lcom/vk/catalog2/core/CatalogParser;

    invoke-static {v0, v1, p1}, Lru/vtosters/hooks/music/injectors/TracklistInjector;->lambda$createOfflineRx$0(Lio/reactivex/ObservableEmitter;Lcom/vk/catalog2/core/CatalogParser;Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)V

    return-void
.end method
