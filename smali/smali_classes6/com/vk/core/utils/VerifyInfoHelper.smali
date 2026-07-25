.class public final Lcom/vk/core/utils/VerifyInfoHelper;
.super Ljava/lang/Object;
.source "VerifyInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;
    }
.end annotation


# static fields
.field public static devIcon:I = 0x7f080482

.field public static final h:Lcom/vk/core/utils/VerifyInfoHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/vk/core/utils/VerifyInfoHelper;

    invoke-direct {v0}, Lcom/vk/core/utils/VerifyInfoHelper;-><init>()V

    sput-object v0, Lcom/vk/core/utils/VerifyInfoHelper;->h:Lcom/vk/core/utils/VerifyInfoHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()I
    .locals 1

    .line 84
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v0

    return v0
.end method

.method public static a(Lcom/vk/core/utils/VerifyInfoHelper;Lcom/vk/dto/common/VerifyInfo;Landroid/content/Context;Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 57
    sget-object p3, Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;->normal:Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;

    .line 59
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/vk/core/utils/VerifyInfoHelper;->b(Lcom/vk/dto/common/VerifyInfo;Landroid/content/Context;Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/vk/core/utils/VerifyInfoHelper;ZZLandroid/content/Context;Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    .line 70
    invoke-static/range {v0 .. v7}, Lcom/vk/core/utils/VerifyInfoHelper;->a(Lcom/vk/core/utils/VerifyInfoHelper;ZZZLandroid/content/Context;Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/vk/core/utils/VerifyInfoHelper;ZZZLandroid/content/Context;Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    .line 64
    sget-object p5, Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;->normal:Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 66
    invoke-virtual/range {v0 .. v5}, Lcom/vk/core/utils/VerifyInfoHelper;->a(ZZZLandroid/content/Context;Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/vk/core/utils/VerifyInfoHelper;Landroid/widget/TextView;Lcom/vk/dto/common/VerifyInfo;ZLcom/vk/core/utils/VerifyInfoHelper$ColorTheme;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 78
    sget-object p4, Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;->normal:Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;

    .line 80
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vk/core/utils/VerifyInfoHelper;->a(Landroid/widget/TextView;Lcom/vk/dto/common/VerifyInfo;ZLcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)V

    return-void
.end method

.method private b()I
    .locals 1

    .line 88
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v0

    return v0
.end method

.method public static b(Lcom/vk/core/utils/VerifyInfoHelper;Lcom/vk/dto/common/VerifyInfo;Landroid/content/Context;Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 48
    invoke-virtual {p1}, Lcom/vk/dto/common/VerifyInfo;->u1()Z

    move-result v1

    invoke-virtual {p1}, Lcom/vk/dto/common/VerifyInfo;->t1()Z

    move-result v2

    invoke-virtual {p1}, Lcom/vk/dto/common/VerifyInfo;->dev()Z

    move-result v3

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/vk/core/utils/VerifyInfoHelper;->b(Lcom/vk/core/utils/VerifyInfoHelper;ZZZLandroid/content/Context;Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/vk/core/utils/VerifyInfoHelper;ZZLandroid/content/Context;Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    .line 52
    invoke-static/range {v0 .. v7}, Lcom/vk/core/utils/VerifyInfoHelper;->b(Lcom/vk/core/utils/VerifyInfoHelper;ZZZLandroid/content/Context;Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/vk/core/utils/VerifyInfoHelper;ZZZLandroid/content/Context;Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    .line 42
    sget-object p5, Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;->normal:Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 44
    invoke-virtual/range {v0 .. v5}, Lcom/vk/core/utils/VerifyInfoHelper;->b(ZZZLandroid/content/Context;Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private c()I
    .locals 1

    const v0, 0x7f0600d3

    .line 92
    invoke-static {v0}, Lru/vtosters/hooks/other/ThemesUtils;->getColor(I)I

    move-result v0

    return v0
.end method

.method private d()I
    .locals 1

    const v0, 0x7f060105

    .line 96
    invoke-static {v0}, Lru/vtosters/hooks/other/ThemesUtils;->getColor(I)I

    move-result v0

    return v0
.end method

.method private e()I
    .locals 1

    const v0, 0x7f060312

    .line 100
    invoke-static {v0}, Lru/vtosters/hooks/other/ThemesUtils;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static enumSwitchMapping(Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)Ljava/lang/Integer;
    .locals 1

    .line 32
    sget-object v0, Lcom/vk/core/utils/VerifyInfoHelper$1;->$SwitchMap$com$vk$core$utils$VerifyInfoHelper$ColorTheme:[I

    invoke-virtual {p0}, Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 32
    :cond_0
    new-instance p0, Ljava/lang/IncompatibleClassChangeError;

    invoke-direct {p0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    throw p0

    .line 35
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 34
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 33
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private f()I
    .locals 1

    const v0, 0x7f06030c

    .line 104
    invoke-static {v0}, Lru/vtosters/hooks/other/ThemesUtils;->getColor(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)I
    .locals 1

    .line 108
    invoke-static {p1}, Lcom/vk/core/utils/VerifyInfoHelper;->enumSwitchMapping(Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/vk/core/utils/VerifyInfoHelper;->d()I

    move-result p1

    goto :goto_0

    .line 110
    :cond_1
    invoke-direct {p0}, Lcom/vk/core/utils/VerifyInfoHelper;->e()I

    move-result p1

    goto :goto_0

    .line 109
    :cond_2
    invoke-direct {p0}, Lcom/vk/core/utils/VerifyInfoHelper;->c()I

    move-result p1

    :goto_0
    return p1
.end method

.method public a(Landroid/content/Context;Lcom/vk/dto/common/VerifyInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 161
    invoke-virtual {p2}, Lcom/vk/dto/common/VerifyInfo;->dev()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    new-instance p2, Lcom/vk/core/drawable/RecoloredDrawable;

    sget v0, Lcom/vk/core/utils/VerifyInfoHelper;->devIcon:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object v0, Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;->normal:Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;

    invoke-virtual {p0, v0}, Lcom/vk/core/utils/VerifyInfoHelper;->c(Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)I

    move-result v0

    invoke-direct {p2, p1, v0}, Lcom/vk/core/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-object p2

    .line 163
    :cond_0
    invoke-virtual {p2}, Lcom/vk/dto/common/VerifyInfo;->t1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/vk/dto/common/VerifyInfo;->u1()Z

    move-result v0

    if-eqz v0, :cond_1

    const p2, 0x7f08049b

    .line 164
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 165
    :cond_1
    invoke-virtual {p2}, Lcom/vk/dto/common/VerifyInfo;->t1()Z

    move-result v0

    if-eqz v0, :cond_2

    const p2, 0x7f080494

    .line 166
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 167
    :cond_2
    invoke-virtual {p2}, Lcom/vk/dto/common/VerifyInfo;->u1()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/vk/core/ui/themes/VKThemeHelper;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    const p2, 0x7f080a61

    .line 168
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 169
    :cond_3
    invoke-virtual {p2}, Lcom/vk/dto/common/VerifyInfo;->u1()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/vk/core/ui/themes/VKThemeHelper;->r()Z

    move-result p2

    if-eqz p2, :cond_4

    const p2, 0x7f080a60

    .line 170
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/vk/dto/common/VerifyInfo;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 117
    invoke-static/range {v0 .. v5}, Lcom/vk/core/utils/VerifyInfoHelper;->a(Lcom/vk/core/utils/VerifyInfoHelper;Lcom/vk/dto/common/VerifyInfo;Landroid/content/Context;Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/vk/dto/common/VerifyInfo;Landroid/content/Context;Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 204
    invoke-virtual {p1}, Lcom/vk/dto/common/VerifyInfo;->u1()Z

    move-result v1

    invoke-virtual {p1}, Lcom/vk/dto/common/VerifyInfo;->t1()Z

    move-result v2

    invoke-virtual {p1}, Lcom/vk/dto/common/VerifyInfo;->dev()Z

    move-result v3

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/vk/core/utils/VerifyInfoHelper;->a(ZZZLandroid/content/Context;Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public a(ZZLandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    .line 125
    invoke-static/range {v0 .. v7}, Lcom/vk/core/utils/VerifyInfoHelper;->b(Lcom/vk/core/utils/VerifyInfoHelper;ZZZLandroid/content/Context;Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public a(ZZLandroid/content/Context;Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 208
    invoke-virtual/range {v0 .. v5}, Lcom/vk/core/utils/VerifyInfoHelper;->a(ZZZLandroid/content/Context;Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public a(ZZZLandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 121
    invoke-static/range {v0 .. v7}, Lcom/vk/core/utils/VerifyInfoHelper;->b(Lcom/vk/core/utils/VerifyInfoHelper;ZZZLandroid/content/Context;Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public a(ZZZLandroid/content/Context;Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-eqz p3, :cond_0

    .line 216
    sget p1, Lcom/vk/core/utils/VerifyInfoHelper;->devIcon:I

    .line 217
    invoke-virtual {p0, p5}, Lcom/vk/core/utils/VerifyInfoHelper;->c(Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)I

    move-result p2

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 220
    invoke-virtual {p0, p5}, Lcom/vk/core/utils/VerifyInfoHelper;->b(Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)I

    move-result p2

    const p1, 0x7f080498

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 223
    invoke-virtual {p0, p5}, Lcom/vk/core/utils/VerifyInfoHelper;->a(Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)I

    move-result p2

    const p1, 0x7f08048f

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 226
    invoke-virtual {p0, p5}, Lcom/vk/core/utils/VerifyInfoHelper;->c(Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)I

    move-result p2

    const p1, 0x7f080a5e

    goto :goto_0

    :cond_3
    const-string p1, "VerifyInfoHelper"

    const-string p2, "Use VerifyInfo.has()"

    .line 228
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 231
    :goto_0
    new-instance p3, Lcom/vk/core/drawable/RecoloredDrawable;

    invoke-static {p4, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/vk/core/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-object p3
.end method

.method public a(Landroid/widget/ImageView;ZLcom/vk/dto/common/VerifyInfo;)V
    .locals 1

    if-eqz p3, :cond_1

    .line 247
    invoke-virtual {p3}, Lcom/vk/dto/common/VerifyInfo;->v1()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 249
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 250
    invoke-virtual {p0, p2, p3}, Lcom/vk/core/utils/VerifyInfoHelper;->a(Landroid/content/Context;Lcom/vk/dto/common/VerifyInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 253
    invoke-virtual {p0, p2, p3}, Lcom/vk/core/utils/VerifyInfoHelper;->b(Landroid/content/Context;Lcom/vk/dto/common/VerifyInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 255
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 256
    invoke-static {p1}, Lcom/vk/extensions/ViewExtKt;->r(Landroid/view/View;)V

    return-void

    .line 259
    :cond_1
    invoke-static {p1}, Lcom/vk/extensions/ViewExtKt;->p(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/widget/TextView;Lcom/vk/dto/common/VerifyInfo;ZLcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)V
    .locals 2

    .line 236
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p2, :cond_2

    .line 237
    invoke-virtual {p2}, Lcom/vk/dto/common/VerifyInfo;->v1()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 240
    invoke-virtual {p0, p2, v0, p4}, Lcom/vk/core/utils/VerifyInfoHelper;->a(Lcom/vk/dto/common/VerifyInfo;Landroid/content/Context;Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2, v0, p4}, Lcom/vk/core/utils/VerifyInfoHelper;->b(Lcom/vk/dto/common/VerifyInfo;Landroid/content/Context;Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x0

    .line 242
    :goto_1
    invoke-static {p1, p2}, Lcom/vk/core/extensions/TextViewExt;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public b(Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)I
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lcom/vk/core/utils/VerifyInfoHelper;->a(Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)I

    move-result p1

    return p1
.end method

.method public b(Landroid/content/Context;Lcom/vk/dto/common/VerifyInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 143
    invoke-virtual {p2}, Lcom/vk/dto/common/VerifyInfo;->dev()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    new-instance p2, Lcom/vk/core/drawable/RecoloredDrawable;

    sget v0, Lcom/vk/core/utils/VerifyInfoHelper;->devIcon:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object v0, Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;->normal:Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;

    invoke-virtual {p0, v0}, Lcom/vk/core/utils/VerifyInfoHelper;->c(Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)I

    move-result v0

    invoke-direct {p2, p1, v0}, Lcom/vk/core/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-object p2

    .line 145
    :cond_0
    invoke-virtual {p2}, Lcom/vk/dto/common/VerifyInfo;->t1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/vk/dto/common/VerifyInfo;->u1()Z

    move-result v0

    if-eqz v0, :cond_1

    const p2, 0x7f08049b

    .line 146
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 147
    :cond_1
    invoke-virtual {p2}, Lcom/vk/dto/common/VerifyInfo;->t1()Z

    move-result v0

    if-eqz v0, :cond_2

    const p2, 0x7f080494

    .line 148
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 149
    :cond_2
    invoke-virtual {p2}, Lcom/vk/dto/common/VerifyInfo;->u1()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 150
    new-instance p2, Lcom/vk/core/drawable/RecoloredDrawable;

    const v0, 0x7f080a5f

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object v0, Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;->normal:Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;

    invoke-virtual {p0, v0}, Lcom/vk/core/utils/VerifyInfoHelper;->c(Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)I

    move-result v0

    invoke-direct {p2, p1, v0}, Lcom/vk/core/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-object p2

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lcom/vk/dto/common/VerifyInfo;Landroid/content/Context;Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 157
    invoke-virtual {p1}, Lcom/vk/dto/common/VerifyInfo;->u1()Z

    move-result v1

    invoke-virtual {p1}, Lcom/vk/dto/common/VerifyInfo;->t1()Z

    move-result v2

    invoke-virtual {p1}, Lcom/vk/dto/common/VerifyInfo;->dev()Z

    move-result v3

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/vk/core/utils/VerifyInfoHelper;->b(ZZZLandroid/content/Context;Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public b(ZZLandroid/content/Context;Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 177
    invoke-virtual/range {v0 .. v5}, Lcom/vk/core/utils/VerifyInfoHelper;->b(ZZZLandroid/content/Context;Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public b(ZZZLandroid/content/Context;Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-eqz p3, :cond_0

    .line 185
    sget p1, Lcom/vk/core/utils/VerifyInfoHelper;->devIcon:I

    .line 186
    invoke-virtual {p0, p5}, Lcom/vk/core/utils/VerifyInfoHelper;->c(Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)I

    move-result p2

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 189
    invoke-virtual {p0, p5}, Lcom/vk/core/utils/VerifyInfoHelper;->b(Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)I

    move-result p2

    const p1, 0x7f080499

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 192
    invoke-virtual {p0, p5}, Lcom/vk/core/utils/VerifyInfoHelper;->a(Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)I

    move-result p2

    const p1, 0x7f080490

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 195
    invoke-virtual {p0, p5}, Lcom/vk/core/utils/VerifyInfoHelper;->c(Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)I

    move-result p2

    const p1, 0x7f080a5f

    goto :goto_0

    :cond_3
    const-string p1, "VerifyInfoHelper"

    const-string p2, "Use VerifyInfo.has()"

    .line 197
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 200
    :goto_0
    new-instance p3, Lcom/vk/core/drawable/RecoloredDrawable;

    invoke-static {p4, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/vk/core/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-object p3
.end method

.method public c(Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)I
    .locals 1

    .line 133
    invoke-static {p1}, Lcom/vk/core/utils/VerifyInfoHelper;->enumSwitchMapping(Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/vk/core/utils/VerifyInfoHelper;->f()I

    move-result p1

    goto :goto_0

    .line 136
    :cond_1
    invoke-direct {p0}, Lcom/vk/core/utils/VerifyInfoHelper;->e()I

    move-result p1

    goto :goto_0

    .line 135
    :cond_2
    invoke-direct {p0}, Lcom/vk/core/utils/VerifyInfoHelper;->d()I

    move-result p1

    goto :goto_0

    .line 134
    :cond_3
    invoke-static {}, Lcom/vk/core/ui/themes/MilkshakeHelper;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/vk/core/utils/VerifyInfoHelper;->b()I

    move-result p1

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/vk/core/utils/VerifyInfoHelper;->a()I

    move-result p1

    :goto_0
    return p1
.end method
