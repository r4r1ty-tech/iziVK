.class public final synthetic Lru/vtosters/hooks/music/injectors/PlaylistInjector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lru/vtosters/hooks/music/injectors/PlaylistInjector$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p2, p0, Lru/vtosters/hooks/music/injectors/PlaylistInjector$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lru/vtosters/hooks/music/injectors/PlaylistInjector$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lru/vtosters/hooks/music/injectors/PlaylistInjector$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final a(Lio/reactivex/ObservableEmitter;)V
    .locals 4

    iget-boolean v0, p0, Lru/vtosters/hooks/music/injectors/PlaylistInjector$$ExternalSyntheticLambda0;->f$0:Z

    iget-object v1, p0, Lru/vtosters/hooks/music/injectors/PlaylistInjector$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lru/vtosters/hooks/music/injectors/PlaylistInjector$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-boolean v3, p0, Lru/vtosters/hooks/music/injectors/PlaylistInjector$$ExternalSyntheticLambda0;->f$3:Z

    invoke-static {v0, v1, v2, v3, p1}, Lru/vtosters/hooks/music/injectors/PlaylistInjector;->lambda$injectGetPlaylist$1(ZLjava/lang/String;Ljava/lang/String;ZLio/reactivex/ObservableEmitter;)V

    return-void
.end method
