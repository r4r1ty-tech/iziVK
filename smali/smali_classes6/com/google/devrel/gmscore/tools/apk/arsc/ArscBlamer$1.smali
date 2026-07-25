.class synthetic Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer$1;
.super Ljava/lang/Object;
.source "ArscBlamer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$devrel$gmscore$tools$apk$arsc$BinaryResourceValue$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 137
    invoke-static {}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->values()[Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/devrel/gmscore/tools/apk/arsc/ArscBlamer$1;->$SwitchMap$com$google$devrel$gmscore$tools$apk$arsc$BinaryResourceValue$Type:[I

    :try_start_0
    sget-object v1, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->STRING:Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;

    invoke-virtual {v1}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceValue$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
