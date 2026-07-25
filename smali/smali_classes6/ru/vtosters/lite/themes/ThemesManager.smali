.class public Lru/vtosters/lite/themes/ThemesManager;
.super Ljava/lang/Object;
.source "ThemesManager.java"


# static fields
.field private static final ACCENT_COLORS:[I

.field private static final DO_NOT_COMPRESS:[Ljava/lang/String;

.field private static baseApkPath:Ljava/lang/String;

.field private static colorSchemesDir:Ljava/io/File;

.field private static mainDir:Ljava/io/File;

.field private static modApk:Ljava/io/File;

.field private static validated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x49

    new-array v0, v0, [I

    .line 25
    fill-array-data v0, :array_0

    sput-object v0, Lru/vtosters/lite/themes/ThemesManager;->ACCENT_COLORS:[I

    const-string v0, ".mp3"

    const-string v1, "res/raw/keep_cronet_api.xml"

    const-string v2, ".png"

    const-string v3, ".jpg"

    .line 101
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/themes/ThemesManager;->DO_NOT_COMPRESS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 110
    sput-boolean v0, Lru/vtosters/lite/themes/ThemesManager;->validated:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0602ce
        0x7f06020a
        0x7f06026f
        0x7f060023
        0x7f0601c0
        0x7f060165
        0x7f0601b0
        0x7f060194
        0x7f06016e
        0x7f06015c
        0x7f060164
        0x7f0602d6
        0x7f060296
        0x7f060018
        0x7f060028
        0x7f060283
        0x7f06004d
        0x7f06004e
        0x7f060298
        0x7f060299
        0x7f060050
        0x7f060051
        0x7f0600a2
        0x7f0600a4
        0x7f0600a5
        0x7f0600c6
        0x7f0600cf
        0x7f0600f7
        0x7f060083
        0x7f060110
        0x7f060153
        0x7f06019f
        0x7f0601bd
        0x7f0601bf
        0x7f0601c8
        0x7f0601cb
        0x7f060200
        0x7f060201
        0x7f0602ce
        0x7f06029c
        0x7f060054
        0x7f06020a
        0x7f060242
        0x7f060247
        0x7f060261
        0x7f060262
        0x7f0602f8
        0x7f0602f9
        0x7f0602e9
        0x7f0600aa
        0x7f0601d6
        0x7f06010e
        0x7f06018f
        0x7f06024a
        0x7f06024c
        0x7f06004f
        0x7f060297
        0x7f060315
        0x7f0602e9
        0x7f0600f8
        0x7f060163
        0x7f060020
        0x7f060177
        0x7f060022
        0x7f06027f
        0x7f06019c
        0x7f060052
        0x7f060105
        0x7f06029a
        0x7f06019e
        0x7f06019d
        0x7f0600a9
        0x7f0600f9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canApplyCustomAccent()Z
    .locals 1

    .line 154
    sget-boolean v0, Lru/vtosters/lite/themes/ThemesManager;->validated:Z

    if-eqz v0, :cond_0

    sget-object v0, Lru/vtosters/lite/themes/ThemesManager;->modApk:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getReservedAccent()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static deleteModification()V
    .locals 1

    .line 225
    sget-object v0, Lru/vtosters/lite/themes/ThemesManager;->modApk:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static generateModApk(I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "resources.arsc"

    .line 158
    new-instance v1, Ljava/util/zip/ZipFile;

    sget-object v2, Lru/vtosters/lite/themes/ThemesManager;->baseApkPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 159
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    sget-object v5, Lru/vtosters/lite/themes/ThemesManager;->modApk:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 161
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 162
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v1, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 163
    invoke-static {v4}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceFile;->fromInputStream(Ljava/io/InputStream;)Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceFile;

    move-result-object v3

    .line 164
    sget-object v4, Lru/vtosters/lite/themes/ThemesManager;->ACCENT_COLORS:[I

    invoke-static {v3, v4, p0}, Lru/vtosters/lite/themes/utils/ArscEditor;->changeColors(Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceFile;[II)V

    .line 166
    invoke-virtual {v3}, Lcom/google/devrel/gmscore/tools/apk/arsc/BinaryResourceFile;->toByteArray()[B

    move-result-object p0

    .line 167
    new-instance v3, Ljava/util/zip/ZipEntry;

    invoke-direct {v3, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 169
    new-instance v4, Ljava/util/zip/CRC32;

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    .line 170
    invoke-virtual {v4, p0}, Ljava/util/zip/CRC32;->update([B)V

    .line 172
    array-length v5, p0

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Ljava/util/zip/ZipEntry;->setSize(J)V

    const/4 v5, 0x0

    .line 173
    invoke-virtual {v3, v5}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 174
    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 176
    invoke-virtual {v2, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 177
    invoke-virtual {v2, p0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 178
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 180
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt p0, v3, :cond_0

    .line 181
    invoke-static {v1}, Lru/vtosters/hooks/NewsfeedHook$$ExternalSyntheticBackport0;->m(Ljava/util/zip/ZipFile;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lru/vtosters/lite/themes/ThemesManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lru/vtosters/lite/themes/ThemesManager$$ExternalSyntheticLambda2;-><init>()V

    .line 182
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lru/vtosters/lite/themes/ThemesManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, v2, v1}, Lru/vtosters/lite/themes/ThemesManager$$ExternalSyntheticLambda3;-><init>(Ljava/util/zip/ZipOutputStream;Ljava/util/zip/ZipFile;)V

    .line 183
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_1

    .line 192
    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    .line 193
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 194
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 195
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "res/"

    .line 196
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "assets/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 197
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v8

    move-object v3, v2

    invoke-static/range {v3 .. v9}, Lru/vtosters/lite/themes/ThemesManager;->workWithApk(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/InputStream;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 201
    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 158
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 2

    .line 121
    :try_start_0
    invoke-static {p0}, Lru/vtosters/lite/themes/ThemesManager;->initPaths(Landroid/content/Context;)V

    .line 122
    invoke-static {}, Lru/vtosters/lite/themes/ThemesManager;->validateModApk()V

    .line 124
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->isNewBuild()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMonetTheme()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lru/vtosters/lite/themes/ThemesManager;->canApplyCustomAccent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {p0}, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->init(Landroid/content/Context;)V

    .line 126
    sget-object v0, Lru/vtosters/lite/themes/ThemesManager;->modApk:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lru/vtosters/lite/themes/loaders/ResourcesLoader;->load(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static initPaths(Landroid/content/Context;)V
    .locals 2

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    sput-object v0, Lru/vtosters/lite/themes/ThemesManager;->baseApkPath:Ljava/lang/String;

    .line 144
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "VTLThemes"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lru/vtosters/lite/themes/ThemesManager;->mainDir:Ljava/io/File;

    .line 145
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lru/vtosters/lite/themes/ThemesManager;->mainDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 147
    :cond_0
    new-instance p0, Ljava/io/File;

    sget-object v0, Lru/vtosters/lite/themes/ThemesManager;->mainDir:Ljava/io/File;

    const-string v1, "color_schemes"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object p0, Lru/vtosters/lite/themes/ThemesManager;->colorSchemesDir:Ljava/io/File;

    .line 148
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lru/vtosters/lite/themes/ThemesManager;->colorSchemesDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 150
    :cond_1
    new-instance p0, Ljava/io/File;

    sget-object v0, Lru/vtosters/lite/themes/ThemesManager;->mainDir:Ljava/io/File;

    const-string v1, "mod.apk"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object p0, Lru/vtosters/lite/themes/ThemesManager;->modApk:Ljava/io/File;

    return-void
.end method

.method static synthetic lambda$generateModApk$0(Ljava/util/zip/ZipEntry;)Z
    .locals 2

    .line 182
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "res/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "assets/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "resources.arsc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$generateModApk$1(Ljava/util/zip/ZipOutputStream;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V
    .locals 7

    .line 185
    :try_start_0
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v3

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v5

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lru/vtosters/lite/themes/ThemesManager;->workWithApk(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/InputStream;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 188
    invoke-virtual {p0}, Ljava/io/IOException;->fillInStackTrace()Ljava/lang/Throwable;

    :goto_0
    return-void
.end method

.method private static validateModApk()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/zip/ZipFile;

    sget-object v1, Lru/vtosters/lite/themes/ThemesManager;->modApk:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 136
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    const/4 v0, 0x1

    .line 138
    sput-boolean v0, Lru/vtosters/lite/themes/ThemesManager;->validated:Z

    return-void
.end method

.method private static workWithApk(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/InputStream;JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    sget-object v0, Lru/vtosters/lite/themes/ThemesManager;->DO_NOT_COMPRESS:[Ljava/lang/String;

    invoke-static {v0}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lru/vtosters/lite/themes/ThemesManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lru/vtosters/lite/themes/ThemesManager$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 207
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 208
    new-instance p2, Ljava/util/zip/ZipEntry;

    invoke-direct {p2, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 211
    invoke-virtual {p2, p1}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 212
    invoke-virtual {p2, p3, p4}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 213
    invoke-virtual {p2, p5, p6}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 215
    invoke-virtual {p2, p1}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 218
    :goto_0
    invoke-virtual {p0, p2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 219
    invoke-static {v1, p0}, Lru/vtosters/lite/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 220
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 221
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    return-void
.end method
