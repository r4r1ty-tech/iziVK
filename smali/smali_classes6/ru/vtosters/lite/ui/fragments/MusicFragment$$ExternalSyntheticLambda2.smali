.class public final synthetic Lru/vtosters/lite/ui/fragments/MusicFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lru/vtosters/lite/downloaders/AudioDownloader;->cacheAllAudios()V

    return-void
.end method
