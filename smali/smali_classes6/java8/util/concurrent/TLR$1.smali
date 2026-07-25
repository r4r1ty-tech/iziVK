.class final Ljava8/util/concurrent/TLR$1;
.super Ljava/lang/ThreadLocal;
.source "TLR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/TLR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava8/util/concurrent/TLR$SeedsHolder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 249
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 249
    invoke-virtual {p0}, Ljava8/util/concurrent/TLR$1;->initialValue()Ljava8/util/concurrent/TLR$SeedsHolder;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava8/util/concurrent/TLR$SeedsHolder;
    .locals 1

    .line 252
    new-instance v0, Ljava8/util/concurrent/TLR$SeedsHolder;

    invoke-direct {v0}, Ljava8/util/concurrent/TLR$SeedsHolder;-><init>()V

    return-object v0
.end method
