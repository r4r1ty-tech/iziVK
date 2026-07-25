.class public Lru/vtosters/sponsorpost/internal/Native;
.super Ljava/lang/Object;
.source "Native.java"


# static fields
.field public static canVote:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canVote()Z
    .locals 1

    .line 9
    sget-boolean v0, Lru/vtosters/sponsorpost/internal/Native;->canVote:Z

    return v0
.end method

.method public static native pkey()Ljava/lang/String;
.end method

.method public static native sig()Ljava/lang/String;
.end method

.method public static native time()Ljava/lang/String;
.end method
