.class public final synthetic Lru/vtosters/hooks/music/injectors/TracklistInjector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Lcom/vk/catalog2/core/CatalogParser;


# direct methods
.method public synthetic constructor <init>(Lcom/vk/catalog2/core/CatalogParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/hooks/music/injectors/TracklistInjector$$ExternalSyntheticLambda0;->f$0:Lcom/vk/catalog2/core/CatalogParser;

    return-void
.end method


# virtual methods
.method public final a(Lio/reactivex/ObservableEmitter;)V
    .locals 1

    iget-object v0, p0, Lru/vtosters/hooks/music/injectors/TracklistInjector$$ExternalSyntheticLambda0;->f$0:Lcom/vk/catalog2/core/CatalogParser;

    invoke-static {v0, p1}, Lru/vtosters/hooks/music/injectors/TracklistInjector;->lambda$createOfflineRx$1(Lcom/vk/catalog2/core/CatalogParser;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
