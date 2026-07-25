.class public Lcom/vk/stories/view/StoryCircleImageView;
.super Lcom/vk/stories/view/BorderedCircleImageView;
.source "StoryCircleImageView.java"

# interfaces
.implements Lcom/vk/core/ui/themes/Themable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/stories/view/StoryCircleImageView$a;,
        Lcom/vk/stories/view/StoryCircleImageView$b;
    }
.end annotation


# static fields
.field private static final B0:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A0:I

.field private final f0:Lcom/facebook/u/b/a/PipelineDraweeControllerBuilder;

.field private g0:Landroid/graphics/drawable/Drawable;

.field private h0:Landroid/graphics/drawable/Drawable;

.field private i0:Landroid/graphics/drawable/Drawable;

.field private j0:I

.field private k0:I

.field private l0:I

.field private m0:I

.field private n0:I

.field private o0:I

.field private p0:Landroid/graphics/Bitmap;

.field private q0:Landroid/graphics/Bitmap;

.field private r0:Landroid/graphics/Bitmap;

.field private s0:Landroid/graphics/Bitmap;

.field private t0:Z

.field private u0:Z

.field private v0:Z

.field private w0:Z

.field private x0:Z

.field private y0:Ljava/lang/String;

.field private z0:Lcom/airbnb/lottie/LottieDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/vk/stories/view/StoryCircleImageView;->B0:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/vk/stories/view/StoryCircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, v0}, Lcom/vk/stories/view/StoryCircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/vk/stories/view/BorderedCircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    sget-object v0, Lcom/vk/imageloader/FrescoWrapper;->c:Lcom/vk/imageloader/FrescoWrapper;

    invoke-virtual {v0}, Lcom/vk/imageloader/FrescoWrapper;->d()Lcom/facebook/u/b/a/PipelineDraweeControllerBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->f0:Lcom/facebook/u/b/a/PipelineDraweeControllerBuilder;

    .line 84
    invoke-virtual {p0, p1, p2, p3}, Lcom/vk/stories/view/StoryCircleImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 3

    const/high16 v0, 0x42800000    # 64.0f

    .line 280
    invoke-static {v0}, Lcom/vk/core/util/Screen;->a(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->A0:I

    const/4 v0, 0x2

    .line 281
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->g0:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const v0, 0x7f0801bc

    .line 284
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->g0:Landroid/graphics/drawable/Drawable;

    :goto_0
    const/4 v0, 0x3

    .line 286
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->h0:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_1
    const v0, 0x7f0801b9

    .line 289
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->h0:Landroid/graphics/drawable/Drawable;

    :goto_1
    const-string v0, "vk_borderTint"

    .line 292
    invoke-static {p2, v0}, Lcom/vk/core/ui/themes/VKThemeHelper;->b(Landroid/util/AttributeSet;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    sget-object v2, Lcom/vk/core/ui/themes/VKThemeHelper;->k:Lcom/vk/core/ui/themes/VKThemeHelper;

    invoke-virtual {v2, v0}, Lcom/vk/core/ui/themes/VKThemeHelper;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 294
    iput v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->j0:I

    goto :goto_2

    :cond_2
    const/4 v0, 0x5

    .line 295
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 296
    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->k0:I

    goto :goto_2

    :cond_3
    const v0, 0x7f040022

    .line 298
    iput v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->j0:I

    :goto_2
    const-string v0, "vk_failBorderTint"

    .line 301
    invoke-static {p2, v0}, Lcom/vk/core/ui/themes/VKThemeHelper;->b(Landroid/util/AttributeSet;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 302
    sget-object v2, Lcom/vk/core/ui/themes/VKThemeHelper;->k:Lcom/vk/core/ui/themes/VKThemeHelper;

    invoke-virtual {v2, v0}, Lcom/vk/core/ui/themes/VKThemeHelper;->a(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 303
    iput v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->l0:I

    goto :goto_3

    :cond_4
    const/4 v0, 0x7

    .line 304
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 305
    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->m0:I

    :cond_5
    :goto_3
    const-string v0, "vk_borderSeenTint"

    .line 308
    invoke-static {p2, v0}, Lcom/vk/core/ui/themes/VKThemeHelper;->b(Landroid/util/AttributeSet;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_6

    .line 309
    sget-object v0, Lcom/vk/core/ui/themes/VKThemeHelper;->k:Lcom/vk/core/ui/themes/VKThemeHelper;

    invoke-virtual {v0, p2}, Lcom/vk/core/ui/themes/VKThemeHelper;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 310
    iput p2, p0, Lcom/vk/stories/view/StoryCircleImageView;->n0:I

    goto :goto_4

    :cond_6
    const/4 p2, 0x4

    .line 311
    invoke-virtual {p3, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 312
    invoke-virtual {p3, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/vk/stories/view/StoryCircleImageView;->o0:I

    goto :goto_4

    .line 314
    :cond_7
    iput v1, p0, Lcom/vk/stories/view/StoryCircleImageView;->o0:I

    :goto_4
    const/4 p2, 0x6

    .line 316
    invoke-virtual {p3, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 317
    invoke-virtual {p3, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/vk/stories/view/StoryCircleImageView;->i0:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    :cond_8
    const p2, 0x7f0807e9

    .line 319
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/vk/stories/view/StoryCircleImageView;->i0:Landroid/graphics/drawable/Drawable;

    :goto_5
    const/16 p2, 0x8

    .line 321
    invoke-virtual {p3, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 322
    invoke-virtual {p3, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_6

    :cond_9
    const p2, 0x7f08012a

    .line 324
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_6
    const/16 p2, 0x9

    .line 326
    invoke-virtual {p3, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 327
    invoke-virtual {p3, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/vk/stories/view/StoryCircleImageView;->y0:Ljava/lang/String;

    goto :goto_7

    :cond_a
    const-string p2, "stories_animation_64.json"

    .line 329
    iput-object p2, p0, Lcom/vk/stories/view/StoryCircleImageView;->y0:Ljava/lang/String;

    .line 332
    :goto_7
    iget p2, p0, Lcom/vk/stories/view/StoryCircleImageView;->A0:I

    .line 333
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-static {p1, p2, p2}, Lcom/vk/core/util/DrawableUtils;->a(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/stories/view/StoryCircleImageView;->q0:Landroid/graphics/Bitmap;

    .line 334
    iget-object p1, p0, Lcom/vk/stories/view/StoryCircleImageView;->g0:Landroid/graphics/drawable/Drawable;

    .line 335
    iget p2, p0, Lcom/vk/stories/view/StoryCircleImageView;->A0:I

    .line 336
    invoke-static {p1, p2, p2}, Lcom/vk/core/util/DrawableUtils;->a(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    .line 337
    iget-object p1, p0, Lcom/vk/stories/view/StoryCircleImageView;->h0:Landroid/graphics/drawable/Drawable;

    .line 338
    iget p2, p0, Lcom/vk/stories/view/StoryCircleImageView;->A0:I

    .line 339
    invoke-static {p1, p2, p2}, Lcom/vk/core/util/DrawableUtils;->a(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/stories/view/StoryCircleImageView;->r0:Landroid/graphics/Bitmap;

    .line 340
    iget-object p1, p0, Lcom/vk/stories/view/StoryCircleImageView;->g0:Landroid/graphics/drawable/Drawable;

    .line 341
    iget p2, p0, Lcom/vk/stories/view/StoryCircleImageView;->A0:I

    .line 342
    invoke-static {p1, p2, p2}, Lcom/vk/core/util/DrawableUtils;->a(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/stories/view/StoryCircleImageView;->s0:Landroid/graphics/Bitmap;

    return-void
.end method

.method private a(Lcom/facebook/u/b/a/PipelineDraweeControllerBuilder;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/u/b/a/PipelineDraweeControllerBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 375
    invoke-virtual {p1, v0}, Lcom/facebook/u/b/a/PipelineDraweeControllerBuilder;->b(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 376
    move-object v1, v0

    check-cast v1, Lcom/facebook/common/internal/Supplier;

    invoke-virtual {p1, v0}, Lcom/facebook/u/b/a/PipelineDraweeControllerBuilder;->a(Lcom/facebook/common/internal/Supplier;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    if-eqz p2, :cond_1

    .line 377
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 378
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 379
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->b(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p2

    .line 380
    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    invoke-virtual {p2, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 381
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/u/b/a/PipelineDraweeControllerBuilder;->b(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    return-void

    .line 385
    :cond_0
    new-instance v0, Lcom/vk/stories/view/StoryCircleImageView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/vk/stories/view/StoryCircleImageView$$ExternalSyntheticLambda0;-><init>(Lcom/vk/stories/view/StoryCircleImageView;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/facebook/u/b/a/PipelineDraweeControllerBuilder;->a(Lcom/facebook/common/internal/Supplier;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    return-void

    .line 388
    :cond_1
    invoke-virtual {p1, v0}, Lcom/facebook/u/b/a/PipelineDraweeControllerBuilder;->b(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    return-void
.end method

.method private a(ZZ)V
    .locals 0

    .line 365
    invoke-virtual {p0}, Lcom/vk/stories/view/StoryCircleImageView;->k()V

    .line 366
    iput-boolean p1, p0, Lcom/vk/stories/view/StoryCircleImageView;->t0:Z

    if-nez p2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 368
    invoke-virtual {p0, p1}, Lcom/vk/stories/view/StoryCircleImageView;->setSelectionAmount(F)V

    goto :goto_0

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/vk/stories/view/StoryCircleImageView;->n()V

    :goto_0
    return-void
.end method

.method private b(I)V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->z0:Lcom/airbnb/lottie/LottieDrawable;

    if-eqz v0, :cond_1

    .line 254
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->e()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->z0:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->e()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->a()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->d(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->z0:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private o()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->u0:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->t0:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->z0:Lcom/airbnb/lottie/LottieDrawable;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->w0:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->v0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private p()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->z0:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->stop()V

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->z0:Lcom/airbnb/lottie/LottieDrawable;

    .line 98
    invoke-virtual {p0}, Lcom/vk/stories/view/StoryCircleImageView;->invalidate()V

    return-void
.end method

.method private q()V
    .locals 3

    .line 102
    iget v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->j0:I

    if-eqz v0, :cond_0

    .line 103
    sget-object v1, Lcom/vk/core/ui/themes/VKThemeHelper;->k:Lcom/vk/core/ui/themes/VKThemeHelper;

    invoke-virtual {v1, v0}, Lcom/vk/core/ui/themes/VKThemeHelper;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->j0:I

    invoke-static {v0}, Lcom/vk/core/ui/themes/VKThemeHelper;->d(I)I

    move-result v0

    iput v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->k0:I

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->g0:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/vk/stories/view/StoryCircleImageView;->k0:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vk/core/util/DrawableUtils;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->g0:Landroid/graphics/drawable/Drawable;

    .line 108
    iget v1, p0, Lcom/vk/stories/view/StoryCircleImageView;->A0:I

    .line 109
    invoke-static {v0, v1, v1}, Lcom/vk/core/util/DrawableUtils;->a(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->p0:Landroid/graphics/Bitmap;

    .line 110
    iget v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->l0:I

    if-eqz v0, :cond_1

    .line 111
    sget-object v1, Lcom/vk/core/ui/themes/VKThemeHelper;->k:Lcom/vk/core/ui/themes/VKThemeHelper;

    invoke-virtual {v1, v0}, Lcom/vk/core/ui/themes/VKThemeHelper;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->l0:I

    invoke-static {v0}, Lcom/vk/core/ui/themes/VKThemeHelper;->d(I)I

    move-result v0

    iput v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->m0:I

    .line 114
    :cond_1
    iget v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->m0:I

    if-eqz v0, :cond_2

    .line 116
    iget-object v1, p0, Lcom/vk/stories/view/StoryCircleImageView;->i0:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vk/core/util/DrawableUtils;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->i0:Landroid/graphics/drawable/Drawable;

    .line 118
    :cond_2
    iget v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->n0:I

    if-eqz v0, :cond_3

    .line 119
    sget-object v1, Lcom/vk/core/ui/themes/VKThemeHelper;->k:Lcom/vk/core/ui/themes/VKThemeHelper;

    invoke-virtual {v1, v0}, Lcom/vk/core/ui/themes/VKThemeHelper;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    iget v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->n0:I

    invoke-static {v0}, Lcom/vk/core/ui/themes/VKThemeHelper;->d(I)I

    move-result v0

    iput v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->o0:I

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->g0:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vk/core/util/DrawableUtils;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 123
    iget v1, p0, Lcom/vk/stories/view/StoryCircleImageView;->A0:I

    .line 124
    invoke-static {v0, v1, v1}, Lcom/vk/core/util/DrawableUtils;->a(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    .line 125
    iget-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->h0:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/vk/stories/view/StoryCircleImageView;->o0:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vk/core/util/DrawableUtils;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 126
    iget v1, p0, Lcom/vk/stories/view/StoryCircleImageView;->A0:I

    .line 127
    invoke-static {v0, v1, v1}, Lcom/vk/core/util/DrawableUtils;->a(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->r0:Landroid/graphics/Bitmap;

    .line 128
    iget-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->g0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vk/stories/view/StoryCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0601b5

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vk/core/util/DrawableUtils;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 129
    iget v1, p0, Lcom/vk/stories/view/StoryCircleImageView;->A0:I

    .line 130
    invoke-static {v0, v1, v1}, Lcom/vk/core/util/DrawableUtils;->a(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->s0:Landroid/graphics/Bitmap;

    return-void
.end method

.method private r()V
    .locals 1

    .line 134
    invoke-direct {p0}, Lcom/vk/stories/view/StoryCircleImageView;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    invoke-static {v0}, Lcom/vk/core/util/Screen;->a(I)I

    move-result v0

    iput v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->c0:I

    .line 135
    invoke-virtual {p0}, Lcom/vk/stories/view/StoryCircleImageView;->m()V

    .line 136
    invoke-direct {p0}, Lcom/vk/stories/view/StoryCircleImageView;->q()V

    return-void
.end method

.method private setUploadFailed(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcom/vk/stories/view/StoryCircleImageView;->u0:Z

    .line 141
    invoke-virtual {p0}, Lcom/vk/stories/view/StoryCircleImageView;->invalidate()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/facebook/datasource/DataSource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/x/g/CloseableImage;",
            ">;>;"
        }
    .end annotation

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 393
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 394
    new-instance v2, Lcom/vk/im/engine/models/Image;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3, v1}, Lcom/vk/im/engine/models/Image;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 396
    :cond_0
    iget p1, p0, Lcom/vk/stories/view/StoryCircleImageView;->A0:I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/vk/im/ui/views/avatars/AvatarDataSource;->a(Ljava/util/List;II)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    return-object p1
.end method

.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 261
    sget-object v0, Lcom/vtosters/lite/a0;->StoryCircleImageView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 262
    invoke-direct {p0, p1, p2, p3}, Lcom/vk/stories/view/StoryCircleImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 263
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 264
    invoke-direct {p0}, Lcom/vk/stories/view/StoryCircleImageView;->r()V

    .line 265
    iget-object p1, p0, Lcom/vk/stories/view/StoryCircleImageView;->p0:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/vk/stories/view/StoryCircleImageView;->T:Landroid/graphics/Bitmap;

    return-void
.end method

.method public a(Lcom/vk/dto/stories/model/StoriesContainer;)V
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->z0:Lcom/airbnb/lottie/LottieDrawable;

    if-nez v0, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/vk/stories/view/StoryCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/stories/view/StoryCircleImageView;->y0:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    new-instance v1, Lcom/vk/stories/view/StoryCircleImageView$a;

    invoke-direct {v1, p0, p1}, Lcom/vk/stories/view/StoryCircleImageView$a;-><init>(Lcom/vk/stories/view/StoryCircleImageView;Lcom/vk/dto/stories/model/StoriesContainer;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieTask;->b(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    :cond_0
    return-void
.end method

.method public a(Lcom/vk/dto/stories/model/StoriesContainer;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 1

    .line 352
    new-instance v0, Lcom/airbnb/lottie/LottieDrawable;

    invoke-direct {v0}, Lcom/airbnb/lottie/LottieDrawable;-><init>()V

    iput-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->z0:Lcom/airbnb/lottie/LottieDrawable;

    .line 353
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/LottieDrawable;->a(Lcom/airbnb/lottie/LottieComposition;)Z

    .line 354
    iget-object p2, p0, Lcom/vk/stories/view/StoryCircleImageView;->z0:Lcom/airbnb/lottie/LottieDrawable;

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/LottieDrawable;->d(I)V

    .line 355
    invoke-virtual {p0}, Lcom/vk/stories/view/StoryCircleImageView;->getWidth()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/vk/stories/view/StoryCircleImageView;->b(I)V

    .line 356
    invoke-static {p1}, Lcom/vk/dto/stories/d/StoriesContainerExt;->f(Lcom/vk/dto/stories/model/StoriesContainer;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 357
    iget-object p1, p0, Lcom/vk/stories/view/StoryCircleImageView;->z0:Lcom/airbnb/lottie/LottieDrawable;

    new-instance p2, Lcom/vk/stories/view/StoryCircleImageView$b;

    invoke-direct {p2, p0}, Lcom/vk/stories/view/StoryCircleImageView$b;-><init>(Lcom/vk/stories/view/StoryCircleImageView;)V

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->a(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 358
    iget-object p1, p0, Lcom/vk/stories/view/StoryCircleImageView;->z0:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->start()V

    return-void

    .line 361
    :cond_0
    iget-object p1, p0, Lcom/vk/stories/view/StoryCircleImageView;->z0:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->stop()V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->f0:Lcom/facebook/u/b/a/PipelineDraweeControllerBuilder;

    .line 270
    invoke-virtual {v0}, Lcom/facebook/u/b/a/PipelineDraweeControllerBuilder;->j()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 271
    invoke-virtual {p0}, Lcom/vk/stories/view/StoryCircleImageView;->getController()Lcom/facebook/u/e/DraweeController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/u/b/a/PipelineDraweeControllerBuilder;->a(Lcom/facebook/u/e/DraweeController;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 272
    invoke-virtual {p0, v0}, Lcom/vk/stories/view/StoryCircleImageView;->setControllerListener(Lcom/facebook/u/b/a/PipelineDraweeControllerBuilder;)V

    .line 273
    invoke-direct {p0, v0, p1}, Lcom/vk/stories/view/StoryCircleImageView;->a(Lcom/facebook/u/b/a/PipelineDraweeControllerBuilder;Ljava/util/List;)V

    .line 274
    invoke-virtual {v0}, Lcom/facebook/u/b/a/PipelineDraweeControllerBuilder;->k0()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vk/stories/view/StoryCircleImageView;->setController(Lcom/facebook/u/e/DraweeController;)V

    return-void
.end method

.method synthetic lambda$a$0$com-vk-stories-view-StoryCircleImageView(Ljava/util/List;)Lcom/facebook/datasource/DataSource;
    .locals 0

    .line 385
    invoke-virtual {p0, p1}, Lcom/vk/stories/view/StoryCircleImageView;->a(Ljava/util/List;)Lcom/facebook/datasource/DataSource;

    move-result-object p1

    return-object p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 146
    invoke-super {p0, p1}, Lcom/vk/stories/view/BorderedCircleImageView;->onDraw(Landroid/graphics/Canvas;)V

    const/16 v0, 0xff

    .line 147
    invoke-virtual {p0, v0}, Lcom/vk/stories/view/StoryCircleImageView;->setBorderAlpha(I)V

    .line 148
    iget-boolean v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->u0:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->i0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 150
    :cond_0
    iget-boolean v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->t0:Z

    if-eqz v0, :cond_3

    .line 151
    iget-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->z0:Lcom/airbnb/lottie/LottieDrawable;

    if-eqz v0, :cond_1

    .line 152
    invoke-direct {p0, p1}, Lcom/vk/stories/view/StoryCircleImageView;->b(Landroid/graphics/Canvas;)V

    return-void

    .line 155
    :cond_1
    iget-boolean v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->x0:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->s0:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->p0:Landroid/graphics/Bitmap;

    :goto_0
    iput-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->T:Landroid/graphics/Bitmap;

    .line 156
    invoke-virtual {p0}, Lcom/vk/stories/view/StoryCircleImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/vk/stories/view/StoryCircleImageView;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vk/stories/view/StoryCircleImageView;->b(II)V

    .line 157
    invoke-virtual {p0, p1}, Lcom/vk/stories/view/StoryCircleImageView;->a(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->z0:Lcom/airbnb/lottie/LottieDrawable;

    if-eqz v0, :cond_4

    .line 159
    invoke-direct {p0}, Lcom/vk/stories/view/StoryCircleImageView;->p()V

    goto :goto_1

    .line 160
    :cond_4
    iget-boolean v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->w0:Z

    if-nez v0, :cond_5

    goto :goto_1

    .line 163
    :cond_5
    iget-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->r0:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->T:Landroid/graphics/Bitmap;

    const/16 v0, 0xa3

    .line 164
    invoke-virtual {p0, v0}, Lcom/vk/stories/view/StoryCircleImageView;->setBorderAlpha(I)V

    .line 165
    invoke-virtual {p0}, Lcom/vk/stories/view/StoryCircleImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/vk/stories/view/StoryCircleImageView;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vk/stories/view/StoryCircleImageView;->b(II)V

    .line 166
    invoke-virtual {p0, p1}, Lcom/vk/stories/view/StoryCircleImageView;->a(Landroid/graphics/Canvas;)V

    :goto_1
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Lcom/vk/stories/view/BorderedCircleImageView;->onSizeChanged(IIII)V

    .line 173
    iget-object p3, p0, Lcom/vk/stories/view/StoryCircleImageView;->i0:Landroid/graphics/drawable/Drawable;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 174
    invoke-direct {p0, p1}, Lcom/vk/stories/view/StoryCircleImageView;->b(I)V

    return-void
.end method

.method public setStoryContainer(Lcom/vk/dto/stories/model/StoriesContainer;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p1}, Lcom/vk/dto/stories/model/StoriesContainer;->Q1()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 180
    invoke-virtual {p1}, Lcom/vk/dto/stories/model/StoriesContainer;->S1()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/vk/dto/stories/model/StoriesContainer;->L1()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lcom/vk/stories/view/StoryCircleImageView;->v0:Z

    .line 181
    instance-of v3, p1, Lcom/vk/dto/stories/model/CommunityGroupedStoriesContainer;

    .line 182
    iput-boolean v3, p0, Lcom/vk/stories/view/StoryCircleImageView;->x0:Z

    if-eqz p1, :cond_e

    .line 184
    invoke-static {p1}, Lcom/vk/dto/stories/d/StoriesContainerExt;->c(Lcom/vk/dto/stories/model/StoriesContainer;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p1}, Lcom/vk/dto/stories/d/StoriesContainerExt;->d(Lcom/vk/dto/stories/model/StoriesContainer;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 185
    iget-object v4, p0, Lcom/vk/stories/view/StoryCircleImageView;->p0:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/vk/stories/view/StoryCircleImageView;->T:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 187
    :cond_2
    iget-object v4, p0, Lcom/vk/stories/view/StoryCircleImageView;->q0:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/vk/stories/view/StoryCircleImageView;->T:Landroid/graphics/Bitmap;

    .line 189
    :goto_2
    invoke-virtual {p0}, Lcom/vk/stories/view/StoryCircleImageView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/vk/stories/view/StoryCircleImageView;->getHeight()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/vk/stories/view/StoryCircleImageView;->b(II)V

    .line 190
    invoke-static {p1}, Lcom/vk/dto/stories/d/StoriesContainerExt;->e(Lcom/vk/dto/stories/model/StoriesContainer;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 191
    invoke-virtual {p0, p1}, Lcom/vk/stories/view/StoryCircleImageView;->a(Lcom/vk/dto/stories/model/StoriesContainer;)V

    goto :goto_3

    .line 192
    :cond_3
    iget-object v4, p0, Lcom/vk/stories/view/StoryCircleImageView;->z0:Lcom/airbnb/lottie/LottieDrawable;

    if-eqz v4, :cond_4

    .line 193
    invoke-direct {p0}, Lcom/vk/stories/view/StoryCircleImageView;->p()V

    .line 195
    :cond_4
    :goto_3
    invoke-virtual {p1}, Lcom/vk/dto/stories/model/StoriesContainer;->K1()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p1}, Lcom/vk/dto/stories/model/StoriesContainer;->L1()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    iput-boolean v4, p0, Lcom/vk/stories/view/StoryCircleImageView;->w0:Z

    const v4, 0x7f0702c2

    if-eqz v2, :cond_a

    .line 197
    invoke-static {v4}, Lcom/vk/core/util/ResUtils;->c(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/vk/dto/stories/model/StoriesContainer;->h(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 199
    invoke-virtual {p0, v2}, Lcom/vk/stories/view/StoryCircleImageView;->a(Ljava/lang/String;)V

    goto :goto_5

    .line 201
    :cond_6
    invoke-virtual {p0}, Lcom/vk/stories/view/StoryCircleImageView;->g()V

    .line 203
    :goto_5
    invoke-static {p1}, Lcom/vk/stories/StoriesController;->a(Lcom/vk/dto/stories/model/StoriesContainer;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 204
    invoke-direct {p0, v1}, Lcom/vk/stories/view/StoryCircleImageView;->setUploadFailed(Z)V

    .line 205
    invoke-direct {p0, v0, v0}, Lcom/vk/stories/view/StoryCircleImageView;->a(ZZ)V

    goto/16 :goto_6

    .line 207
    :cond_7
    invoke-direct {p0, v0}, Lcom/vk/stories/view/StoryCircleImageView;->setUploadFailed(Z)V

    .line 208
    invoke-virtual {p1}, Lcom/vk/dto/stories/model/StoriesContainer;->K1()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {p1}, Lcom/vk/dto/stories/d/StoriesContainerExt;->c(Lcom/vk/dto/stories/model/StoriesContainer;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 209
    invoke-direct {p0, v0, v0}, Lcom/vk/stories/view/StoryCircleImageView;->a(ZZ)V

    goto :goto_6

    .line 211
    :cond_8
    invoke-virtual {p1}, Lcom/vk/dto/stories/model/StoriesContainer;->A1()Lcom/vk/dto/stories/model/StoryEntry;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 213
    sget-object v0, Lcom/vk/stories/view/StoryCircleImageView;->B0:Ljava/util/HashSet;

    iget v2, p1, Lcom/vk/dto/stories/model/StoryEntry;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-direct {p0, v1, v2}, Lcom/vk/stories/view/StoryCircleImageView;->a(ZZ)V

    .line 214
    iget p1, p1, Lcom/vk/dto/stories/model/StoryEntry;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 216
    :cond_9
    invoke-direct {p0, v1, v0}, Lcom/vk/stories/view/StoryCircleImageView;->a(ZZ)V

    goto :goto_6

    .line 221
    :cond_a
    invoke-direct {p0, v0}, Lcom/vk/stories/view/StoryCircleImageView;->setUploadFailed(Z)V

    .line 222
    invoke-virtual {p1}, Lcom/vk/dto/stories/model/StoriesContainer;->K1()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {p1}, Lcom/vk/dto/stories/d/StoriesContainerExt;->c(Lcom/vk/dto/stories/model/StoriesContainer;)Z

    move-result v2

    if-nez v2, :cond_b

    const/4 v1, 0x0

    .line 225
    :cond_b
    invoke-direct {p0, v1, v0}, Lcom/vk/stories/view/StoryCircleImageView;->a(ZZ)V

    if-eqz v3, :cond_c

    .line 227
    check-cast p1, Lcom/vk/dto/stories/model/CommunityGroupedStoriesContainer;

    invoke-static {v4}, Lcom/vk/core/util/ResUtils;->c(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/vk/dto/stories/model/CommunityGroupedStoriesContainer;->j(I)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vk/stories/view/StoryCircleImageView;->b(Ljava/util/List;)V

    goto :goto_6

    .line 229
    :cond_c
    invoke-static {v4}, Lcom/vk/core/util/ResUtils;->c(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/vk/dto/stories/model/StoriesContainer;->h(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 231
    invoke-virtual {p0, p1}, Lcom/vk/stories/view/StoryCircleImageView;->a(Ljava/lang/String;)V

    goto :goto_6

    .line 233
    :cond_d
    invoke-virtual {p0}, Lcom/vk/stories/view/StoryCircleImageView;->g()V

    goto :goto_6

    .line 238
    :cond_e
    invoke-virtual {p0}, Lcom/vk/stories/view/StoryCircleImageView;->g()V

    .line 239
    invoke-direct {p0, v0, v0}, Lcom/vk/stories/view/StoryCircleImageView;->a(ZZ)V

    .line 240
    invoke-direct {p0, v0}, Lcom/vk/stories/view/StoryCircleImageView;->setUploadFailed(Z)V

    .line 241
    iput-boolean v0, p0, Lcom/vk/stories/view/StoryCircleImageView;->w0:Z

    .line 243
    :goto_6
    invoke-direct {p0}, Lcom/vk/stories/view/StoryCircleImageView;->r()V

    return-void
.end method

.method public v()V
    .locals 0

    .line 248
    invoke-direct {p0}, Lcom/vk/stories/view/StoryCircleImageView;->r()V

    .line 249
    invoke-virtual {p0}, Lcom/vk/stories/view/StoryCircleImageView;->invalidate()V

    return-void
.end method
