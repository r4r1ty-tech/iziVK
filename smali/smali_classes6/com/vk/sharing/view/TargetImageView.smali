.class public Lcom/vk/sharing/view/TargetImageView;
.super Lcom/vk/imageloader/view/VKMultiImageView;
.source "TargetImageView.java"


# static fields
.field private static final I:I


# instance fields
.field private final B:I

.field private final C:I

.field private D:Landroid/graphics/drawable/Drawable;

.field private F:[Ljava/lang/String;

.field private G:I

.field private final f21629d:Landroid/graphics/RectF;

.field private final f21630e:Landroid/graphics/Paint;

.field private f21631f:Landroid/graphics/Canvas;

.field private final g:Landroid/graphics/RectF;

.field private final h:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 30
    invoke-static {v0}, Lcom/vk/core/util/Screen;->a(I)I

    move-result v0

    sput v0, Lcom/vk/sharing/view/TargetImageView;->I:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 p2, 0x0

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, v1, p2, v0}, Lcom/vk/sharing/view/TargetImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 47
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/vk/sharing/view/TargetImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/vk/imageloader/view/VKMultiImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/vk/sharing/view/TargetImageView;->f21629d:Landroid/graphics/RectF;

    .line 57
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x1

    .line 58
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 60
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 61
    iput-object p3, p0, Lcom/vk/sharing/view/TargetImageView;->f21630e:Landroid/graphics/Paint;

    .line 62
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/vk/sharing/view/TargetImageView;->g:Landroid/graphics/RectF;

    .line 63
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    .line 64
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    sget v0, Lcom/vk/sharing/view/TargetImageView;->I:I

    int-to-float v1, v0

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iput-object p3, p0, Lcom/vk/sharing/view/TargetImageView;->h:Landroid/graphics/Paint;

    .line 68
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result p3

    iput p3, p0, Lcom/vk/sharing/view/TargetImageView;->B:I

    .line 69
    iput p3, p0, Lcom/vk/sharing/view/TargetImageView;->C:I

    const p3, 0x7f0803c2

    .line 70
    invoke-static {p1, p3}, Lcom/vk/core/util/ContextExtKt;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 72
    iput-object p3, p0, Lcom/vk/sharing/view/TargetImageView;->D:Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/vk/sharing/view/TargetImageView;->F:[Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x2

    .line 75
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/vk/sharing/view/TargetImageView;->setPadding(IIII)V

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 77
    sget-object v0, Lcom/vtosters/lite/a0;->TargetImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 78
    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vk/sharing/view/TargetImageView;->setSelected(Z)V

    .line 79
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    const p2, 0x7f080a5a

    .line 81
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    const/4 p2, 0x3

    if-gt p3, p2, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/vk/sharing/view/TargetImageView;->a()V

    .line 84
    iget-object p2, p0, Lcom/vk/sharing/view/TargetImageView;->a:Lcom/facebook/drawee/view/MultiDraweeHolder;

    invoke-virtual {p2, p3}, Lcom/facebook/drawee/view/MultiDraweeHolder;->a(I)Lcom/facebook/drawee/view/DraweeHolder;

    move-result-object p2

    .line 85
    invoke-virtual {p2}, Lcom/facebook/drawee/view/DraweeHolder;->b()Lcom/facebook/u/e/DraweeHierarchy;

    move-result-object p2

    check-cast p2, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    invoke-virtual {p2, p1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->e(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 87
    :cond_1
    sget-object p1, Lcom/facebook/drawee/drawable/ScalingUtils$b;->o:Lcom/facebook/drawee/drawable/ScalingUtils$b;

    invoke-virtual {p0, p1}, Lcom/vk/sharing/view/TargetImageView;->setScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$b;)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 51
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/vk/sharing/view/TargetImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Typeface;I)Lcom/vk/im/ui/views/avatars/AbbreviationAvatarDrawable;
    .locals 1

    .line 187
    new-instance v0, Lcom/vk/im/ui/views/avatars/AbbreviationAvatarDrawable;

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const p2, 0x7f090008

    invoke-static {p1, p2}, Lcom/vk/core/util/ContextExtKt;->e(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p2

    :cond_0
    invoke-direct {v0, p1, p2}, Lcom/vk/im/ui/views/avatars/AbbreviationAvatarDrawable;-><init>(Landroid/content/Context;Landroid/graphics/Typeface;)V

    return-object v0
.end method

.method private e()V
    .locals 3

    .line 92
    iget v0, p0, Lcom/vk/sharing/view/TargetImageView;->G:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 94
    iget-object v2, p0, Lcom/vk/sharing/view/TargetImageView;->F:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v1, v2}, Lcom/vk/sharing/view/TargetImageView;->a(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private f()V
    .locals 11

    .line 99
    invoke-virtual {p0}, Lcom/vk/sharing/view/TargetImageView;->getPaddingLeft()I

    move-result v0

    .line 100
    invoke-virtual {p0}, Lcom/vk/sharing/view/TargetImageView;->getPaddingTop()I

    move-result v1

    .line 101
    invoke-virtual {p0}, Lcom/vk/sharing/view/TargetImageView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/vk/sharing/view/TargetImageView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 102
    invoke-virtual {p0}, Lcom/vk/sharing/view/TargetImageView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/vk/sharing/view/TargetImageView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 103
    div-int/lit8 v4, v2, 0x2

    .line 104
    div-int/lit8 v5, v3, 0x2

    .line 105
    iget v6, p0, Lcom/vk/sharing/view/TargetImageView;->G:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_0

    .line 107
    iget-object v4, p0, Lcom/vk/sharing/view/TargetImageView;->a:Lcom/facebook/drawee/view/MultiDraweeHolder;

    invoke-virtual {v4, v7}, Lcom/facebook/drawee/view/MultiDraweeHolder;->a(I)Lcom/facebook/drawee/view/DraweeHolder;

    move-result-object v4

    .line 108
    invoke-virtual {v4}, Lcom/facebook/drawee/view/DraweeHolder;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_3

    add-int/2addr v2, v0

    add-int/2addr v3, v1

    .line 110
    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_0

    :cond_0
    const/4 v9, 0x2

    if-ne v6, v9, :cond_1

    .line 113
    iget-object v5, p0, Lcom/vk/sharing/view/TargetImageView;->a:Lcom/facebook/drawee/view/MultiDraweeHolder;

    invoke-virtual {v5, v7}, Lcom/facebook/drawee/view/MultiDraweeHolder;->a(I)Lcom/facebook/drawee/view/DraweeHolder;

    move-result-object v5

    .line 114
    invoke-virtual {v5}, Lcom/facebook/drawee/view/DraweeHolder;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_3

    add-int/2addr v4, v0

    add-int/2addr v3, v1

    .line 118
    invoke-virtual {v5, v0, v1, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 119
    iget-object v5, p0, Lcom/vk/sharing/view/TargetImageView;->a:Lcom/facebook/drawee/view/MultiDraweeHolder;

    invoke-virtual {v5, v8}, Lcom/facebook/drawee/view/MultiDraweeHolder;->a(I)Lcom/facebook/drawee/view/DraweeHolder;

    move-result-object v5

    .line 120
    invoke-virtual {v5}, Lcom/facebook/drawee/view/DraweeHolder;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_3

    add-int/2addr v0, v2

    .line 122
    invoke-virtual {v5, v4, v1, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_0

    :cond_1
    const/4 v10, 0x3

    if-ne v6, v10, :cond_2

    .line 127
    iget-object v6, p0, Lcom/vk/sharing/view/TargetImageView;->a:Lcom/facebook/drawee/view/MultiDraweeHolder;

    invoke-virtual {v6, v7}, Lcom/facebook/drawee/view/MultiDraweeHolder;->a(I)Lcom/facebook/drawee/view/DraweeHolder;

    move-result-object v6

    .line 128
    invoke-virtual {v6}, Lcom/facebook/drawee/view/DraweeHolder;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    add-int/2addr v4, v0

    add-int/2addr v3, v1

    .line 132
    invoke-virtual {v6, v0, v1, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 133
    iget-object v6, p0, Lcom/vk/sharing/view/TargetImageView;->a:Lcom/facebook/drawee/view/MultiDraweeHolder;

    invoke-virtual {v6, v8}, Lcom/facebook/drawee/view/MultiDraweeHolder;->a(I)Lcom/facebook/drawee/view/DraweeHolder;

    move-result-object v6

    .line 134
    invoke-virtual {v6}, Lcom/facebook/drawee/view/DraweeHolder;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    add-int/2addr v0, v2

    add-int/2addr v5, v1

    .line 138
    invoke-virtual {v6, v4, v1, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 139
    iget-object v1, p0, Lcom/vk/sharing/view/TargetImageView;->a:Lcom/facebook/drawee/view/MultiDraweeHolder;

    invoke-virtual {v1, v9}, Lcom/facebook/drawee/view/MultiDraweeHolder;->a(I)Lcom/facebook/drawee/view/DraweeHolder;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Lcom/facebook/drawee/view/DraweeHolder;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 142
    invoke-virtual {v1, v4, v5, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 148
    :cond_2
    iget-object v6, p0, Lcom/vk/sharing/view/TargetImageView;->a:Lcom/facebook/drawee/view/MultiDraweeHolder;

    invoke-virtual {v6, v7}, Lcom/facebook/drawee/view/MultiDraweeHolder;->a(I)Lcom/facebook/drawee/view/DraweeHolder;

    move-result-object v6

    .line 149
    invoke-virtual {v6}, Lcom/facebook/drawee/view/DraweeHolder;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    add-int/2addr v4, v0

    add-int/2addr v5, v1

    .line 153
    invoke-virtual {v6, v0, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 154
    iget-object v6, p0, Lcom/vk/sharing/view/TargetImageView;->a:Lcom/facebook/drawee/view/MultiDraweeHolder;

    invoke-virtual {v6, v8}, Lcom/facebook/drawee/view/MultiDraweeHolder;->a(I)Lcom/facebook/drawee/view/DraweeHolder;

    move-result-object v6

    .line 155
    invoke-virtual {v6}, Lcom/facebook/drawee/view/DraweeHolder;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    add-int/2addr v3, v1

    .line 158
    invoke-virtual {v6, v0, v5, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 159
    iget-object v6, p0, Lcom/vk/sharing/view/TargetImageView;->a:Lcom/facebook/drawee/view/MultiDraweeHolder;

    invoke-virtual {v6, v9}, Lcom/facebook/drawee/view/MultiDraweeHolder;->a(I)Lcom/facebook/drawee/view/DraweeHolder;

    move-result-object v6

    .line 160
    invoke-virtual {v6}, Lcom/facebook/drawee/view/DraweeHolder;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    add-int/2addr v0, v2

    .line 163
    invoke-virtual {v6, v4, v1, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 164
    iget-object v1, p0, Lcom/vk/sharing/view/TargetImageView;->a:Lcom/facebook/drawee/view/MultiDraweeHolder;

    invoke-virtual {v1, v10}, Lcom/facebook/drawee/view/MultiDraweeHolder;->a(I)Lcom/facebook/drawee/view/DraweeHolder;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Lcom/facebook/drawee/view/DraweeHolder;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 167
    invoke-virtual {v1, v4, v5, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    :goto_0
    return-void
.end method

.method private g()V
    .locals 1

    .line 176
    invoke-virtual {p0}, Lcom/vk/sharing/view/TargetImageView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/vk/sharing/view/TargetImageView;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/vk/sharing/view/TargetImageView;->f()V

    :cond_1
    :goto_0
    return-void
.end method

.method private getAbbreviationDrawable()Lcom/vk/im/ui/views/avatars/AbbreviationAvatarDrawable;
    .locals 3

    .line 183
    invoke-virtual {p0}, Lcom/vk/sharing/view/TargetImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/vk/sharing/view/TargetImageView;->a(Landroid/content/Context;Landroid/graphics/Typeface;I)Lcom/vk/im/ui/views/avatars/AbbreviationAvatarDrawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    .line 191
    iget-object v0, p0, Lcom/vk/sharing/view/TargetImageView;->F:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/vk/sharing/view/TargetImageView;->b()V

    .line 194
    iput v0, p0, Lcom/vk/sharing/view/TargetImageView;->G:I

    .line 195
    invoke-direct {p0}, Lcom/vk/sharing/view/TargetImageView;->g()V

    .line 196
    invoke-direct {p0}, Lcom/vk/sharing/view/TargetImageView;->e()V

    return-void

    .line 200
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "vkchatphoto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 202
    iput v3, p0, Lcom/vk/sharing/view/TargetImageView;->G:I

    .line 204
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "photo"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/vk/sharing/view/TargetImageView;->G:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 206
    iget v0, p0, Lcom/vk/sharing/view/TargetImageView;->G:I

    add-int/lit8 v2, v0, 0x1

    .line 207
    iput v2, p0, Lcom/vk/sharing/view/TargetImageView;->G:I

    .line 208
    iget-object v2, p0, Lcom/vk/sharing/view/TargetImageView;->F:[Ljava/lang/String;

    aput-object p1, v2, v0

    goto :goto_0

    .line 210
    :cond_1
    invoke-direct {p0}, Lcom/vk/sharing/view/TargetImageView;->g()V

    .line 211
    invoke-direct {p0}, Lcom/vk/sharing/view/TargetImageView;->e()V

    return-void

    .line 215
    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v4, "vkchatplaceholder"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 216
    iput v0, p0, Lcom/vk/sharing/view/TargetImageView;->G:I

    .line 217
    invoke-direct {p0}, Lcom/vk/sharing/view/TargetImageView;->g()V

    .line 218
    invoke-direct {p0}, Lcom/vk/sharing/view/TargetImageView;->getAbbreviationDrawable()Lcom/vk/im/ui/views/avatars/AbbreviationAvatarDrawable;

    move-result-object p1

    const-string v0, "dialog_id"

    .line 219
    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 220
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const-string v2, "title"

    .line 221
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, ""

    .line 225
    :cond_4
    invoke-virtual {p1, v0, v1}, Lcom/vk/im/ui/views/avatars/AbbreviationAvatarDrawable;->a(ILjava/lang/String;)V

    .line 226
    invoke-direct {p0}, Lcom/vk/sharing/view/TargetImageView;->getAbbreviationDrawable()Lcom/vk/im/ui/views/avatars/AbbreviationAvatarDrawable;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/vk/sharing/view/TargetImageView;->a(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 228
    :cond_5
    iget-object v1, p0, Lcom/vk/sharing/view/TargetImageView;->F:[Ljava/lang/String;

    aput-object p1, v1, v3

    .line 229
    iput v0, p0, Lcom/vk/sharing/view/TargetImageView;->G:I

    .line 230
    invoke-direct {p0}, Lcom/vk/sharing/view/TargetImageView;->g()V

    .line 231
    invoke-direct {p0}, Lcom/vk/sharing/view/TargetImageView;->e()V

    :goto_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 237
    iget-object v0, p0, Lcom/vk/sharing/view/TargetImageView;->f21631f:Landroid/graphics/Canvas;

    .line 238
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pic_rounding"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v0, :cond_0

    .line 241
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 243
    :cond_0
    iget v0, p0, Lcom/vk/sharing/view/TargetImageView;->G:I

    :goto_0
    if-ge v3, v0, :cond_2

    .line 245
    iget-object v2, p0, Lcom/vk/sharing/view/TargetImageView;->a:Lcom/facebook/drawee/view/MultiDraweeHolder;

    invoke-virtual {v2, v3}, Lcom/facebook/drawee/view/MultiDraweeHolder;->a(I)Lcom/facebook/drawee/view/DraweeHolder;

    move-result-object v2

    .line 246
    invoke-virtual {v2}, Lcom/facebook/drawee/view/DraweeHolder;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 248
    iget-object v4, p0, Lcom/vk/sharing/view/TargetImageView;->f21631f:Landroid/graphics/Canvas;

    .line 249
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-lez v1, :cond_3

    .line 254
    iget-object v0, p0, Lcom/vk/sharing/view/TargetImageView;->f21629d:Landroid/graphics/RectF;

    int-to-float v2, v1

    iget-object v3, p0, Lcom/vk/sharing/view/TargetImageView;->f21630e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 256
    :cond_3
    iget-object v0, p0, Lcom/vk/sharing/view/TargetImageView;->f21629d:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/vk/sharing/view/TargetImageView;->f21630e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 259
    :goto_1
    invoke-virtual {p0}, Lcom/vk/sharing/view/TargetImageView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_5

    if-lez v1, :cond_4

    .line 261
    iget-object v0, p0, Lcom/vk/sharing/view/TargetImageView;->g:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/vk/sharing/view/TargetImageView;->g:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/vk/sharing/view/TargetImageView;->g:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/vk/sharing/view/TargetImageView;->g:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    int-to-float v8, v1

    iget-object v9, p0, Lcom/vk/sharing/view/TargetImageView;->h:Landroid/graphics/Paint;

    move-object v2, p1

    move v7, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 263
    :cond_4
    iget-object v0, p0, Lcom/vk/sharing/view/TargetImageView;->g:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/vk/sharing/view/TargetImageView;->g:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, p0, Lcom/vk/sharing/view/TargetImageView;->g:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/vk/sharing/view/TargetImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 266
    :goto_2
    iget-object v0, p0, Lcom/vk/sharing/view/TargetImageView;->D:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 9

    .line 272
    invoke-super {p0, p1, p2, p3, p4}, Lcom/vk/imageloader/view/VKMultiImageView;->onSizeChanged(IIII)V

    .line 273
    invoke-virtual {p0}, Lcom/vk/sharing/view/TargetImageView;->getPaddingLeft()I

    move-result p3

    .line 274
    invoke-virtual {p0}, Lcom/vk/sharing/view/TargetImageView;->getPaddingRight()I

    move-result p4

    .line 275
    invoke-virtual {p0}, Lcom/vk/sharing/view/TargetImageView;->getPaddingTop()I

    move-result v0

    sub-int p4, p1, p4

    .line 277
    invoke-virtual {p0}, Lcom/vk/sharing/view/TargetImageView;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    .line 278
    iget-object v2, p0, Lcom/vk/sharing/view/TargetImageView;->f21629d:Landroid/graphics/RectF;

    int-to-float p3, p3

    int-to-float v0, v0

    int-to-float v3, p4

    int-to-float v4, v1

    invoke-virtual {v2, p3, v0, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 279
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, v1, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 280
    new-instance p4, Landroid/graphics/Canvas;

    invoke-direct {p4, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p4, p0, Lcom/vk/sharing/view/TargetImageView;->f21631f:Landroid/graphics/Canvas;

    .line 281
    sget-object p4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 282
    iget-object v0, p0, Lcom/vk/sharing/view/TargetImageView;->f21630e:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    invoke-direct {v1, p3, p4, p4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 283
    sget p3, Lcom/vk/sharing/view/TargetImageView;->I:I

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    .line 284
    iget-object p4, p0, Lcom/vk/sharing/view/TargetImageView;->g:Landroid/graphics/RectF;

    int-to-float v0, p1

    sub-float/2addr v0, p3

    int-to-float v5, p2

    sub-float v1, v5, p3

    invoke-virtual {p4, p3, p3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 285
    div-int/lit8 p3, p1, 0x2

    int-to-float v4, p3

    .line 286
    iget-object p3, p0, Lcom/vk/sharing/view/TargetImageView;->h:Landroid/graphics/Paint;

    new-instance p4, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    iget v6, p0, Lcom/vk/sharing/view/TargetImageView;->B:I

    iget v7, p0, Lcom/vk/sharing/view/TargetImageView;->C:I

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, p4

    move v2, v4

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 287
    iget-object p3, p0, Lcom/vk/sharing/view/TargetImageView;->D:Landroid/graphics/drawable/Drawable;

    .line 288
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    sub-int p4, p1, p4

    iget-object v0, p0, Lcom/vk/sharing/view/TargetImageView;->D:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p3, p4, v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 289
    invoke-direct {p0}, Lcom/vk/sharing/view/TargetImageView;->f()V

    return-void
.end method
