.class public final synthetic Lru/vtosters/lite/music/LastFMScrobbler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lbruhcollective/itaysonlab/libvkx/client/LibVKXClientImpl$LibVKXAction;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/vtosters/lite/music/LastFMScrobbler$$ExternalSyntheticLambda0;->f$0:I

    iput p2, p0, Lru/vtosters/lite/music/LastFMScrobbler$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lru/vtosters/lite/music/LastFMScrobbler$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)V
    .locals 3

    iget v0, p0, Lru/vtosters/lite/music/LastFMScrobbler$$ExternalSyntheticLambda0;->f$0:I

    iget v1, p0, Lru/vtosters/lite/music/LastFMScrobbler$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lru/vtosters/lite/music/LastFMScrobbler$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lru/vtosters/lite/music/LastFMScrobbler;->lambda$grabMusicTrack$0(IILjava/lang/String;Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)V

    return-void
.end method
