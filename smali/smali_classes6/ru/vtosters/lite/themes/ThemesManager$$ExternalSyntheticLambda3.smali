.class public final synthetic Lru/vtosters/lite/themes/ThemesManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/zip/ZipOutputStream;

.field public final synthetic f$1:Ljava/util/zip/ZipFile;


# direct methods
.method public synthetic constructor <init>(Ljava/util/zip/ZipOutputStream;Ljava/util/zip/ZipFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/themes/ThemesManager$$ExternalSyntheticLambda3;->f$0:Ljava/util/zip/ZipOutputStream;

    iput-object p2, p0, Lru/vtosters/lite/themes/ThemesManager$$ExternalSyntheticLambda3;->f$1:Ljava/util/zip/ZipFile;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lru/vtosters/lite/themes/ThemesManager$$ExternalSyntheticLambda3;->f$0:Ljava/util/zip/ZipOutputStream;

    iget-object v1, p0, Lru/vtosters/lite/themes/ThemesManager$$ExternalSyntheticLambda3;->f$1:Ljava/util/zip/ZipFile;

    check-cast p1, Ljava/util/zip/ZipEntry;

    invoke-static {v0, v1, p1}, Lru/vtosters/lite/themes/ThemesManager;->lambda$generateModApk$1(Ljava/util/zip/ZipOutputStream;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
