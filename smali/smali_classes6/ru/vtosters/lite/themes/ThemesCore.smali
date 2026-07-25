.class public Lru/vtosters/lite/themes/ThemesCore;
.super Ljava/lang/Object;
.source "ThemesCore.java"


# static fields
.field public static ACCENT_THEME_ONLY_DARK:Landroid/util/SparseBooleanArray; = null

.field public static ACCENT_THEME_ONLY_LIGHT:Landroid/util/SparseBooleanArray; = null

.field public static ACCENT_THEME_ONLY_MILK_DARK:Landroid/util/SparseBooleanArray; = null

.field public static ACCENT_THEME_ONLY_MILK_LIGHT:Landroid/util/SparseBooleanArray; = null

.field public static ACCENT_THEME_ONLY_NOMILK_DARK:Landroid/util/SparseBooleanArray; = null

.field public static ACCENT_THEME_ONLY_NOMILK_LIGHT:Landroid/util/SparseBooleanArray; = null

.field private static final TAG:Ljava/lang/String; = "ThemesCore"

.field private static cachedAccents:Z

.field private static darken_color:I

.field private static outgoinging_msg:I

.field private static outgoinging_msg_highlight:I

.field public static themedColors:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    .line 18
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_LIGHT:Landroid/util/SparseBooleanArray;

    .line 19
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_DARK:Landroid/util/SparseBooleanArray;

    .line 20
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_NOMILK_LIGHT:Landroid/util/SparseBooleanArray;

    .line 21
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_NOMILK_DARK:Landroid/util/SparseBooleanArray;

    .line 22
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_MILK_LIGHT:Landroid/util/SparseBooleanArray;

    .line 23
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_MILK_DARK:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    .line 25
    sput-boolean v0, Lru/vtosters/lite/themes/ThemesCore;->cachedAccents:Z

    .line 31
    invoke-static {}, Lru/vtosters/lite/themes/ThemesCore;->init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    const/4 v0, 0x0

    .line 196
    sput-boolean v0, Lru/vtosters/lite/themes/ThemesCore;->cachedAccents:Z

    .line 197
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public static getThemedAttr(Landroid/content/Context;I)I
    .locals 0

    sparse-switch p1, :sswitch_data_0

    .line 163
    sget-object p0, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    goto :goto_0

    .line 162
    :sswitch_0
    sget p0, Lru/vtosters/lite/themes/ThemesCore;->darken_color:I

    goto :goto_0

    .line 161
    :sswitch_1
    sget p0, Lru/vtosters/lite/themes/ThemesCore;->outgoinging_msg_highlight:I

    goto :goto_0

    .line 160
    :sswitch_2
    sget p0, Lru/vtosters/lite/themes/ThemesCore;->outgoinging_msg:I

    :goto_0
    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f040280 -> :sswitch_2
        0x7f040283 -> :sswitch_1
        0x7f040290 -> :sswitch_2
        0x7f040403 -> :sswitch_0
    .end sparse-switch
.end method

.method public static hasThemedAttr(Landroid/content/Context;I)Z
    .locals 6

    const-string v0, "Requesting color by attr "

    const/4 v1, 0x0

    .line 168
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "logColors"

    invoke-static {v3, v2}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    const-string v2, "ThemesCore"

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 175
    :cond_0
    :goto_0
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMonetTheme()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lru/vtosters/lite/themes/ThemesManager;->canApplyCustomAccent()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    return v1

    .line 176
    :cond_2
    :goto_1
    invoke-static {}, Lru/vtosters/lite/themes/ThemesCore;->isCachedAccents()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_8

    .line 177
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isDarkTheme()Z

    move-result p0

    .line 178
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMilkshake()Z

    move-result v2

    if-eqz p0, :cond_3

    .line 179
    sget-object v3, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_DARK:Landroid/util/SparseBooleanArray;

    goto :goto_2

    :cond_3
    sget-object v3, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_LIGHT:Landroid/util/SparseBooleanArray;

    :goto_2
    if-eqz p0, :cond_4

    .line 180
    sget-object v4, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_MILK_DARK:Landroid/util/SparseBooleanArray;

    goto :goto_3

    :cond_4
    sget-object v4, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_MILK_LIGHT:Landroid/util/SparseBooleanArray;

    :goto_3
    if-eqz p0, :cond_5

    .line 181
    sget-object p0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_NOMILK_DARK:Landroid/util/SparseBooleanArray;

    goto :goto_4

    :cond_5
    sget-object p0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_NOMILK_LIGHT:Landroid/util/SparseBooleanArray;

    .line 183
    :goto_4
    sget-object v5, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v2, :cond_6

    .line 185
    invoke-virtual {v4, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_5

    .line 186
    :cond_6
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    if-eqz p0, :cond_7

    :goto_5
    const/4 v1, 0x1

    :cond_7
    return v1

    .line 188
    :cond_8
    sget-object p0, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-eqz p0, :cond_9

    const/4 v1, 0x1

    :cond_9
    return v1
.end method

.method public static init()V
    .locals 1

    .line 205
    invoke-static {}, Lru/vtosters/lite/themes/ThemesCore;->setExceptions()V

    .line 206
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v0

    invoke-static {v0}, Lru/vtosters/lite/themes/ThemesCore;->setThemedColors(I)V

    return-void
.end method

.method public static isCachedAccents()Z
    .locals 1

    .line 201
    sget-boolean v0, Lru/vtosters/lite/themes/ThemesCore;->cachedAccents:Z

    return v0
.end method

.method public static setExceptions()V
    .locals 3

    .line 35
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_LIGHT:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 36
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_DARK:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 37
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_NOMILK_LIGHT:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 38
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_NOMILK_DARK:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 39
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_MILK_LIGHT:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 40
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_MILK_DARK:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 42
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_LIGHT:Landroid/util/SparseBooleanArray;

    const v1, 0x7f04007b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 43
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_LIGHT:Landroid/util/SparseBooleanArray;

    const v1, 0x7f04007d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 44
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_LIGHT:Landroid/util/SparseBooleanArray;

    const v1, 0x7f0403fc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 46
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_MILK_LIGHT:Landroid/util/SparseBooleanArray;

    const v1, 0x7f040403

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 47
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_DARK:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 49
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_MILK_LIGHT:Landroid/util/SparseBooleanArray;

    const v1, 0x7f040224

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 50
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_DARK:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 51
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_MILK_LIGHT:Landroid/util/SparseBooleanArray;

    const v1, 0x7f040220

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 52
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_DARK:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 53
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_MILK_LIGHT:Landroid/util/SparseBooleanArray;

    const v1, 0x7f040225

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 54
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_DARK:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 55
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_MILK_LIGHT:Landroid/util/SparseBooleanArray;

    const v1, 0x7f040226

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 56
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_DARK:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 58
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_NOMILK_LIGHT:Landroid/util/SparseBooleanArray;

    const v1, 0x7f040230

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 59
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_NOMILK_LIGHT:Landroid/util/SparseBooleanArray;

    const v1, 0x7f040231

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 60
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_NOMILK_LIGHT:Landroid/util/SparseBooleanArray;

    const v1, 0x7f0405c0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 61
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_NOMILK_LIGHT:Landroid/util/SparseBooleanArray;

    const v1, 0x7f04022a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 62
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_NOMILK_LIGHT:Landroid/util/SparseBooleanArray;

    const v1, 0x7f040221

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 64
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_MILK_LIGHT:Landroid/util/SparseBooleanArray;

    const v1, 0x7f0402a8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 66
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_NOMILK_DARK:Landroid/util/SparseBooleanArray;

    const v1, 0x7f0402a9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 68
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_DARK:Landroid/util/SparseBooleanArray;

    const v1, 0x7f040251

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 69
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_DARK:Landroid/util/SparseBooleanArray;

    const v1, 0x7f040598

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 70
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_DARK:Landroid/util/SparseBooleanArray;

    const v1, 0x7f0400dd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 71
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_DARK:Landroid/util/SparseBooleanArray;

    const v1, 0x7f0400e3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 72
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_DARK:Landroid/util/SparseBooleanArray;

    const v1, 0x7f0400e7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 73
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_DARK:Landroid/util/SparseBooleanArray;

    const v1, 0x7f0400d7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 74
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_DARK:Landroid/util/SparseBooleanArray;

    const v1, 0x7f0400d9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 75
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_DARK:Landroid/util/SparseBooleanArray;

    const v1, 0x7f040178

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 76
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_DARK:Landroid/util/SparseBooleanArray;

    const v1, 0x7f040046

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 77
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_DARK:Landroid/util/SparseBooleanArray;

    const v1, 0x7f040290

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 78
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_DARK:Landroid/util/SparseBooleanArray;

    const v1, 0x7f040280

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 79
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->ACCENT_THEME_ONLY_DARK:Landroid/util/SparseBooleanArray;

    const v1, 0x7f040283

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public static setThemedColors(I)V
    .locals 3

    .line 83
    invoke-static {p0}, Lru/vtosters/hooks/other/ThemesUtils;->getMutedColor(I)I

    move-result v0

    const/4 v1, 0x1

    .line 85
    sput-boolean v1, Lru/vtosters/lite/themes/ThemesCore;->cachedAccents:Z

    .line 86
    sget-object v1, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 88
    sget-object v1, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v2, 0x7f040022

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 89
    sget-object v1, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v2, 0x7f0403ff

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 90
    sget-object v1, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v2, 0x7f040251

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 92
    sget-object v1, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v2, 0x7f0405fe

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 93
    sget-object v1, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v2, 0x7f040023

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 94
    sget-object v1, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v2, 0x7f040598

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 95
    sget-object v1, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v2, 0x7f040565

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 102
    sget-object v1, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v2, 0x7f040230

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 103
    sget-object v1, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v2, 0x7f040231

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 104
    sget-object v1, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v2, 0x7f04004a

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 105
    sget-object v1, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v2, 0x7f0405c0

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 107
    sget-object v1, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v2, 0x7f0400dd

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 108
    sget-object v1, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v2, 0x7f0400e3

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 109
    sget-object v1, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v2, 0x7f0400e7

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 110
    sget-object v1, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v2, 0x7f0400d9

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 111
    sget-object v1, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v2, 0x7f0400d7

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 112
    sget-object v1, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v2, 0x7f04022a

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 113
    sget-object v1, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v2, 0x7f040221

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 115
    sget-object v1, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v2, 0x7f0400de

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 116
    sget-object v1, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v2, 0x7f0400e4

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 117
    sget-object v1, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v2, 0x7f0400e8

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 118
    sget-object v1, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v2, 0x7f0400da

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 119
    sget-object v1, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v2, 0x7f0400d8

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 121
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v1, 0x7f0402a9

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 122
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v1, 0x7f0402a8

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 124
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v1, 0x7f04025e

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 125
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v1, 0x7f0402aa

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 126
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v1, 0x7f04039a

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseIntArray;->put(II)V

    const v0, 0x3e19999a    # 0.15f

    .line 128
    invoke-static {p0, v0}, Lru/vtosters/hooks/other/ThemesUtils;->darken(IF)I

    move-result v0

    sput v0, Lru/vtosters/lite/themes/ThemesCore;->darken_color:I

    .line 129
    sget-object v1, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v2, 0x7f040403

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 130
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v1, 0x7f040595

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 132
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v1, 0x7f04007b

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 133
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v1, 0x7f04007d

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 134
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v1, 0x7f0403fc

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 135
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v1, 0x7f040178

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 137
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v1, 0x7f0401b9

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 139
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v1, 0x7f040046

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 142
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v1, 0x7f0402ee

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 143
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v1, 0x7f0402f1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 145
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMonetTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f59999a    # 0.85f

    goto :goto_0

    :cond_0
    const v0, 0x3f428f5c    # 0.76f

    .line 146
    :goto_0
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->isMonetTheme()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f400000    # 0.75f

    goto :goto_1

    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    .line 148
    :goto_1
    invoke-static {p0, v0}, Lru/vtosters/hooks/other/ThemesUtils;->lighten(IF)I

    move-result v0

    sput v0, Lru/vtosters/lite/themes/ThemesCore;->outgoinging_msg:I

    .line 149
    invoke-static {p0, v1}, Lru/vtosters/hooks/other/ThemesUtils;->lighten(IF)I

    move-result v0

    sput v0, Lru/vtosters/lite/themes/ThemesCore;->outgoinging_msg_highlight:I

    .line 151
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v1, 0x7f0402d9

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 152
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v1, 0x7f040290

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 153
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v1, 0x7f040280

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 154
    sget-object v0, Lru/vtosters/lite/themes/ThemesCore;->themedColors:Landroid/util/SparseIntArray;

    const v1, 0x7f040283

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method
