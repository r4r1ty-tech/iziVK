.class public final synthetic Lru/vtosters/lite/music/downloader/AudioGet$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava8/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lokhttp3/Request;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/Request;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/music/downloader/AudioGet$$ExternalSyntheticLambda1;->f$0:Lokhttp3/Request;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lru/vtosters/lite/music/downloader/AudioGet$$ExternalSyntheticLambda1;->f$0:Lokhttp3/Request;

    invoke-static {v0}, Lru/vtosters/lite/music/downloader/AudioGet;->lambda$requestAudios$1(Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
