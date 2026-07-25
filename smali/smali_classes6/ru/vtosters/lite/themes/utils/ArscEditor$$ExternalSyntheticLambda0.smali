.class public final synthetic Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;


# direct methods
.method public synthetic constructor <init>(Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda0;->f$0:Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lru/vtosters/lite/themes/utils/ArscEditor$$ExternalSyntheticLambda0;->f$0:Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;

    check-cast p1, Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk;

    invoke-static {v0, p1}, Lru/vtosters/lite/themes/utils/ArscEditor;->lambda$changeColors$3(Lcom/google/devrel/gmscore/tools/apk/arsc/PackageChunk;Lcom/google/devrel/gmscore/tools/apk/arsc/TypeChunk;)Ljava/util/AbstractMap$SimpleEntry;

    move-result-object p1

    return-object p1
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
