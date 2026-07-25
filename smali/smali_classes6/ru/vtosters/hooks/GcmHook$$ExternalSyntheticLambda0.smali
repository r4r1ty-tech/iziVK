.class public final synthetic Lru/vtosters/hooks/GcmHook$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lru/vtosters/hooks/GcmHook$Callback;


# instance fields
.field public final synthetic f$0:Ljava/lang/StringBuilder;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/hooks/GcmHook$$ExternalSyntheticLambda0;->f$0:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lru/vtosters/hooks/GcmHook$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final doCallback(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lru/vtosters/hooks/GcmHook$$ExternalSyntheticLambda0;->f$0:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/vtosters/hooks/GcmHook$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0, v1, p1}, Lru/vtosters/hooks/GcmHook;->lambda$requestToken$0(Ljava/lang/StringBuilder;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V

    return-void
.end method
