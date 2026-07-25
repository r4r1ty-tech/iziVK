.class public Lru/vtosters/lite/encryption/processors/VTostersAESProcessor$Triple;
.super Ljava/lang/Object;
.source "VTostersAESProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/lite/encryption/processors/VTostersAESProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Triple"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field public final second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field public final third:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TS;TT;)V"
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lru/vtosters/lite/encryption/processors/VTostersAESProcessor$Triple;->first:Ljava/lang/Object;

    .line 124
    iput-object p2, p0, Lru/vtosters/lite/encryption/processors/VTostersAESProcessor$Triple;->second:Ljava/lang/Object;

    .line 125
    iput-object p3, p0, Lru/vtosters/lite/encryption/processors/VTostersAESProcessor$Triple;->third:Ljava/lang/Object;

    return-void
.end method
