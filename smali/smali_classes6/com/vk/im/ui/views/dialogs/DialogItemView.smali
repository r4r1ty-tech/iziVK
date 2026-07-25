.class public Lcom/vk/im/ui/views/dialogs/DialogItemView;
.super Landroid/view/ViewGroup;
.source "DialogItemView.java"


# instance fields
.field private final B:I

.field private final C:I

.field private final D:I

.field private final E:Z

.field private final F:Ljava/lang/String;

.field private final G:Lcom/vk/im/ui/drawables/TypingDrawable;

.field private final H:Lcom/vk/im/ui/drawables/RecordingDrawable;

.field private I:Z

.field private final J:I

.field private final K:Lcom/vk/im/ui/views/avatars/AvatarView;

.field private final L:Landroidx/appcompat/widget/AppCompatImageView;

.field private final M:Lcom/vk/im/ui/views/avatars/StoryBorderView;

.field private final N:Landroid/widget/TextView;

.field private final O:Landroidx/appcompat/widget/AppCompatImageView;

.field private final P:Landroidx/appcompat/widget/AppCompatImageView;

.field private final Q:Landroidx/appcompat/widget/AppCompatImageView;

.field private final R:Landroid/widget/TextView;

.field private final S:Lcom/vk/im/ui/views/avatars/AvatarView;

.field private final T:Landroid/widget/TextView;

.field private final U:Landroid/widget/TextView;

.field private final V:Landroidx/appcompat/widget/AppCompatImageView;

.field private final W:Landroid/widget/TextView;

.field private final a:Landroid/util/DisplayMetrics;

.field private final a0:Landroidx/appcompat/widget/AppCompatImageView;

.field private final b0:Landroidx/appcompat/widget/AppCompatImageView;

.field private final c0:Landroid/widget/TextView;

.field private final d0:Landroidx/appcompat/widget/AppCompatImageView;

.field private final e0:Landroidx/appcompat/widget/AppCompatImageView;

.field private final f0:Landroidx/appcompat/widget/AppCompatImageView;

.field private final f15761e:I

.field private final g:Lcom/vk/im/ui/drawables/RoundCornerColorDrawable;

.field private g0:Z

.field private final h:I

.field private h0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 81
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 85
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 55

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 89
    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, v9, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a:Landroid/util/DisplayMetrics;

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04059a

    .line 93
    invoke-static {v0, v1}, Lcom/vk/core/util/ContextExtKt;->h(Landroid/content/Context;I)I

    move-result v11

    iput v11, v9, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f15761e:I

    .line 94
    new-instance v12, Lcom/vk/im/ui/drawables/RoundCornerColorDrawable;

    invoke-direct {v12}, Lcom/vk/im/ui/drawables/RoundCornerColorDrawable;-><init>()V

    const/16 v0, 0xc

    .line 95
    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/vk/im/ui/drawables/RoundCornerColorDrawable;->b(I)V

    .line 96
    iput-object v12, v9, Lcom/vk/im/ui/views/dialogs/DialogItemView;->g:Lcom/vk/im/ui/drawables/RoundCornerColorDrawable;

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v13, 0x7f040178

    .line 98
    invoke-static {v1, v13}, Lcom/vk/core/util/ContextExtKt;->h(Landroid/content/Context;I)I

    move-result v1

    iput v1, v9, Lcom/vk/im/ui/views/dialogs/DialogItemView;->h:I

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04017c

    .line 100
    invoke-static {v1, v2}, Lcom/vk/core/util/ContextExtKt;->h(Landroid/content/Context;I)I

    move-result v1

    iput v1, v9, Lcom/vk/im/ui/views/dialogs/DialogItemView;->B:I

    const/16 v1, 0x19

    .line 101
    invoke-virtual {v9, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v1

    iput v1, v9, Lcom/vk/im/ui/views/dialogs/DialogItemView;->C:I

    const/16 v1, 0x2a

    .line 102
    invoke-virtual {v9, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v1

    iput v1, v9, Lcom/vk/im/ui/views/dialogs/DialogItemView;->D:I

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0402ec

    .line 104
    invoke-static {v1, v2}, Lcom/vk/core/util/ContextExtKt;->g(Landroid/content/Context;I)Z

    move-result v14

    iput-boolean v14, v9, Lcom/vk/im/ui/views/dialogs/DialogItemView;->E:Z

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1212d6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/vk/im/ui/views/dialogs/DialogItemView;->F:Ljava/lang/String;

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 107
    new-instance v15, Lcom/vk/im/ui/drawables/TypingDrawable;

    const v8, 0x7f04039a

    invoke-static {v1, v8}, Lcom/vk/core/util/ContextExtKt;->h(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v15, v1}, Lcom/vk/im/ui/drawables/TypingDrawable;-><init>(I)V

    iput-object v15, v9, Lcom/vk/im/ui/views/dialogs/DialogItemView;->G:Lcom/vk/im/ui/drawables/TypingDrawable;

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 109
    new-instance v2, Lcom/vk/im/ui/drawables/RecordingDrawable;

    invoke-static {v1, v8}, Lcom/vk/core/util/ContextExtKt;->h(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v2, v1}, Lcom/vk/im/ui/drawables/RecordingDrawable;-><init>(I)V

    iput-object v2, v9, Lcom/vk/im/ui/views/dialogs/DialogItemView;->H:Lcom/vk/im/ui/drawables/RecordingDrawable;

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120411

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    invoke-static {v1, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120410

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    const/16 v4, 0x8

    if-eqz v14, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 113
    :goto_0
    sget-object v1, Lcom/vk/im/ui/o;->DialogItemView:[I

    move-object/from16 v2, p2

    invoke-virtual {v10, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 114
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x9

    const/16 v13, 0x11

    .line 115
    invoke-static {v13}, Lcom/vk/core/util/Screen;->c(I)I

    move-result v8

    invoke-virtual {v1, v4, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    const/16 v4, 0xf

    .line 116
    invoke-static {v4}, Lcom/vk/core/util/Screen;->c(I)I

    move-result v4

    const/4 v13, 0x5

    invoke-virtual {v1, v13, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    const/4 v4, 0x7

    move/from16 v18, v8

    const/16 v8, 0xd

    .line 117
    invoke-static {v8}, Lcom/vk/core/util/Screen;->c(I)I

    move-result v0

    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    const/high16 v0, -0x1000000

    const/4 v8, 0x6

    .line 118
    invoke-virtual {v1, v8, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 119
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccentColor()I

    move-result v8

    move-object/from16 v22, v6

    const/4 v6, 0x2

    invoke-virtual {v1, v6, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    const/4 v7, 0x3

    move/from16 v24, v0

    .line 120
    invoke-static {v6}, Lcom/vk/core/util/Screen;->a(I)I

    move-result v0

    invoke-virtual {v1, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    const/16 v0, 0x44

    .line 121
    invoke-static {v0}, Lcom/vk/core/util/Screen;->a(I)I

    move-result v0

    move/from16 v25, v8

    const/4 v8, 0x4

    invoke-virtual {v1, v8, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    const/4 v8, 0x0

    .line 122
    invoke-virtual {v1, v8, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    const/16 v27, 0x40

    .line 123
    invoke-static/range {v27 .. v27}, Lcom/vk/core/util/Screen;->a(I)I

    move-result v8

    move/from16 v27, v7

    const/4 v7, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v9, Lcom/vk/im/ui/views/dialogs/DialogItemView;->J:I

    .line 124
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    new-instance v1, Lcom/vk/im/ui/views/avatars/AvatarView;

    const/4 v7, 0x0

    move/from16 v28, v4

    const/4 v4, 0x6

    invoke-direct {v1, v10, v7, v4}, Lcom/vk/im/ui/views/avatars/AvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, v9, Lcom/vk/im/ui/views/dialogs/DialogItemView;->K:Lcom/vk/im/ui/views/avatars/AvatarView;

    .line 126
    invoke-virtual {v1, v8}, Lcom/vk/im/ui/views/avatars/AvatarView;->setViewSize(I)V

    const/4 v7, 0x2

    .line 127
    invoke-virtual {v9, v7}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/vk/im/ui/views/avatars/AvatarView;->setDividerSize(I)V

    .line 128
    invoke-virtual {v1, v6}, Lcom/vk/im/ui/views/avatars/AvatarView;->setCombineAvatars(Z)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    .line 130
    invoke-virtual {v9, v7}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v7

    const/16 v19, 0x0

    const/16 v29, 0x2c

    const/16 v30, 0x0

    move/from16 v32, v0

    move/from16 v31, v24

    move-object/from16 v0, p0

    move-object/from16 v33, v1

    move v1, v8

    move-object/from16 v34, v2

    move v2, v8

    move v8, v3

    move v3, v4

    move/from16 v35, v28

    const/16 v23, 0x6

    move v4, v6

    move-object v6, v5

    move v5, v7

    move-object/from16 v36, v6

    move-object/from16 v7, v22

    move/from16 v6, v19

    move-object/from16 v37, v7

    move/from16 v38, v27

    move/from16 v7, v29

    move/from16 v19, v8

    move-object/from16 p3, v12

    move-object/from16 v17, v15

    move/from16 v15, v18

    const/4 v12, 0x6

    move/from16 v18, v13

    move/from16 v13, v25

    move-object/from16 v8, v30

    invoke-static/range {v0 .. v8}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Lcom/vk/im/ui/views/dialogs/DialogItemView;IIIIIIILjava/lang/Object;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    move-object/from16 v8, v33

    invoke-virtual {v8, v0}, Lcom/vk/im/ui/views/avatars/AvatarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    new-instance v7, Lcom/vk/im/ui/views/avatars/StoryBorderView;

    const/4 v6, 0x0

    invoke-direct {v7, v10, v6, v12}, Lcom/vk/im/ui/views/avatars/StoryBorderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v7, v9, Lcom/vk/im/ui/views/dialogs/DialogItemView;->M:Lcom/vk/im/ui/views/avatars/StoryBorderView;

    .line 132
    invoke-virtual {v7, v13}, Lcom/vk/im/ui/views/avatars/StoryBorderView;->setBorderColor(I)V

    move/from16 v0, v38

    .line 133
    invoke-virtual {v7, v0}, Lcom/vk/im/ui/views/avatars/StoryBorderView;->setBorderWidth(I)V

    move/from16 v2, v32

    .line 134
    invoke-virtual {v7, v2}, Lcom/vk/im/ui/views/avatars/StoryBorderView;->setViewSize(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    const/16 v20, 0x3c

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move v1, v2

    move-object v12, v6

    move v6, v13

    move-object v13, v7

    move/from16 v7, v20

    move-object/from16 v39, v8

    move-object/from16 v8, v21

    .line 135
    invoke-static/range {v0 .. v8}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Lcom/vk/im/ui/views/dialogs/DialogItemView;IIIIIIILjava/lang/Object;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/vk/im/ui/views/avatars/StoryBorderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v8, 0x8

    .line 136
    invoke-virtual {v13, v8}, Lcom/vk/im/ui/views/avatars/StoryBorderView;->setVisibility(I)V

    .line 137
    new-instance v7, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v7, v10}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, v9, Lcom/vk/im/ui/views/dialogs/DialogItemView;->L:Landroidx/appcompat/widget/AppCompatImageView;

    .line 138
    invoke-virtual {v7, v12}, Landroidx/appcompat/widget/AppCompatImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v6, 0x10

    .line 139
    invoke-virtual {v9, v6}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v1

    const/16 v0, 0x14

    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v2

    const/16 v20, 0x0

    const/16 v21, 0x3c

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v6, v20

    move-object v12, v7

    move/from16 v7, v21

    move-object/from16 v20, v13

    const/16 v13, 0x8

    move-object/from16 v8, v22

    invoke-static/range {v0 .. v8}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Lcom/vk/im/ui/views/dialogs/DialogItemView;IIIIIIILjava/lang/Object;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    const/4 v8, 0x1

    if-eqz v14, :cond_1

    .line 141
    invoke-virtual {v9, v8}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v1

    int-to-float v1, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v12, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setTranslationX(F)V

    if-eqz v14, :cond_2

    .line 142
    invoke-virtual {v9, v8}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v0

    int-to-float v0, v0

    :cond_2
    invoke-virtual {v12, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setTranslationY(F)V

    .line 143
    new-instance v14, Lcom/vk/im/ui/views/FixTextView;

    invoke-direct {v14, v10}, Lcom/vk/im/ui/views/FixTextView;-><init>(Landroid/content/Context;)V

    iput-object v14, v9, Lcom/vk/im/ui/views/dialogs/DialogItemView;->N:Landroid/widget/TextView;

    move-object/from16 v0, v34

    const/4 v7, 0x0

    .line 144
    invoke-static {v0, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    int-to-float v0, v15

    .line 145
    invoke-virtual {v14, v7, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 146
    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 148
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v11, 0x3f

    const/4 v15, 0x0

    move-object/from16 v0, p0

    const/4 v13, 0x0

    move v7, v11

    const/4 v11, 0x1

    move-object v8, v15

    .line 149
    invoke-static/range {v0 .. v8}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Lcom/vk/im/ui/views/dialogs/DialogItemView;IIIIIIILjava/lang/Object;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    new-instance v15, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v15, v10}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v15, v9, Lcom/vk/im/ui/views/dialogs/DialogItemView;->O:Landroidx/appcompat/widget/AppCompatImageView;

    .line 151
    sget-object v0, Lcom/vk/core/utils/VerifyInfoHelper;->h:Lcom/vk/core/utils/VerifyInfoHelper;

    sget-object v1, Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;->normal:Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;

    invoke-virtual {v0, v11, v13, v10, v1}, Lcom/vk/core/utils/VerifyInfoHelper;->b(ZZLandroid/content/Context;Lcom/vk/core/utils/VerifyInfoHelper$ColorTheme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 152
    invoke-virtual {v15, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v8, 0x10

    .line 153
    invoke-virtual {v9, v8}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v1

    invoke-virtual {v9, v8}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v2

    const/4 v0, 0x6

    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v3

    invoke-virtual {v9, v11}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v4

    const/16 v7, 0x30

    const/16 v21, 0x0

    move-object/from16 v0, p0

    const/16 v11, 0x10

    move-object/from16 v8, v21

    invoke-static/range {v0 .. v8}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Lcom/vk/im/ui/views/dialogs/DialogItemView;IIIIIIILjava/lang/Object;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    new-instance v8, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v8, v10}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, v9, Lcom/vk/im/ui/views/dialogs/DialogItemView;->Q:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f0804d2

    .line 155
    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    const/4 v0, 0x0

    .line 156
    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual {v9, v11}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v1

    invoke-virtual {v9, v11}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v2

    const/4 v0, 0x4

    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v3

    const v7, 0x3fe66666    # 1.8f

    invoke-virtual {v9, v7}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(F)I

    move-result v4

    const/16 v21, 0x30

    const/16 v22, 0x0

    move-object/from16 v0, p0

    const v13, 0x3fe66666    # 1.8f

    move/from16 v7, v21

    move-object v13, v8

    move-object/from16 v8, v22

    invoke-static/range {v0 .. v8}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Lcom/vk/im/ui/views/dialogs/DialogItemView;IIIIIIILjava/lang/Object;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    new-instance v8, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v8, v10}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, v9, Lcom/vk/im/ui/views/dialogs/DialogItemView;->P:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f080b05

    const v1, 0x7f040256

    .line 159
    invoke-static {v8, v0, v1}, Lcom/vk/extensions/ImageViewExt;->a(Landroid/widget/ImageView;II)V

    const/4 v0, 0x0

    .line 160
    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {v9, v11}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v1

    invoke-virtual {v9, v11}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v2

    const/4 v0, 0x4

    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v3

    const v0, 0x3fe66666    # 1.8f

    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(F)I

    move-result v4

    const/16 v7, 0x30

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object v11, v8

    move-object/from16 v8, v21

    invoke-static/range {v0 .. v8}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Lcom/vk/im/ui/views/dialogs/DialogItemView;IIIIIIILjava/lang/Object;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    new-instance v8, Lcom/vk/im/ui/views/avatars/AvatarView;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {v8, v10, v1, v0}, Lcom/vk/im/ui/views/avatars/AvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v8, v9, Lcom/vk/im/ui/views/dialogs/DialogItemView;->S:Lcom/vk/im/ui/views/avatars/AvatarView;

    const/16 v0, 0x20

    .line 163
    invoke-static {v0}, Lcom/vk/core/util/Screen;->a(I)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/vk/im/ui/views/avatars/AvatarView;->setViewSize(I)V

    .line 164
    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v1

    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0xa

    invoke-virtual {v9, v7}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v5

    const/16 v21, 0x2c

    move-object/from16 v0, p0

    move/from16 v7, v21

    move-object/from16 v21, v11

    move-object v11, v8

    move-object/from16 v8, v22

    invoke-static/range {v0 .. v8}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Lcom/vk/im/ui/views/dialogs/DialogItemView;IIIIIIILjava/lang/Object;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/vk/im/ui/views/avatars/AvatarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move/from16 v8, v19

    .line 165
    invoke-virtual {v11, v8}, Lcom/vk/im/ui/views/avatars/AvatarView;->setVisibility(I)V

    .line 166
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v9, Lcom/vk/im/ui/views/dialogs/DialogItemView;->T:Landroid/widget/TextView;

    move-object/from16 v6, v37

    .line 167
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move/from16 v0, v18

    int-to-float v5, v0

    const/4 v0, 0x0

    .line 168
    invoke-virtual {v7, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const v0, 0x7f04059d

    .line 169
    invoke-static {v10, v0}, Lcom/vk/core/util/ContextExtKt;->h(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x3f

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v40, v5

    move/from16 v5, v18

    move-object/from16 v41, v6

    move/from16 v6, v19

    move-object/from16 v42, v7

    move/from16 v7, v22

    move-object/from16 v18, v11

    move v11, v8

    move-object/from16 v8, v24

    .line 171
    invoke-static/range {v0 .. v8}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Lcom/vk/im/ui/views/dialogs/DialogItemView;IIIIIIILjava/lang/Object;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    move-object/from16 v8, v42

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v9, Lcom/vk/im/ui/views/dialogs/DialogItemView;->R:Landroid/widget/TextView;

    move-object/from16 v6, v41

    .line 173
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move/from16 v0, v35

    int-to-float v0, v0

    const/4 v1, 0x0

    .line 174
    invoke-virtual {v7, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    move/from16 v0, v31

    .line 175
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    .line 176
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v1, 0x0

    const/4 v0, 0x6

    .line 177
    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v3

    const/4 v5, 0x0

    const/16 v22, 0x3b

    move-object/from16 v0, p0

    move-object/from16 v43, v6

    move/from16 v6, v19

    move-object/from16 v44, v7

    move/from16 v7, v22

    move-object/from16 v45, v8

    move-object/from16 v8, v24

    invoke-static/range {v0 .. v8}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Lcom/vk/im/ui/views/dialogs/DialogItemView;IIIIIIILjava/lang/Object;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    move-object/from16 v8, v44

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v9, Lcom/vk/im/ui/views/dialogs/DialogItemView;->U:Landroid/widget/TextView;

    move-object/from16 v6, v43

    .line 179
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move/from16 v5, v40

    const/4 v0, 0x0

    .line 180
    invoke-virtual {v7, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const v4, 0x7f04039a

    .line 181
    invoke-static {v10, v4}, Lcom/vk/core/util/ContextExtKt;->h(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    .line 182
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 183
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v3, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x3f

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v4, v19

    move/from16 v46, v5

    move/from16 v5, v22

    move-object/from16 v47, v6

    move/from16 v6, v24

    move-object/from16 v48, v7

    move/from16 v7, v25

    move-object/from16 v49, v8

    move-object/from16 v8, v26

    .line 184
    invoke-static/range {v0 .. v8}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Lcom/vk/im/ui/views/dialogs/DialogItemView;IIIIIIILjava/lang/Object;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    move-object/from16 v8, v48

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    new-instance v7, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v7, v10}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, v9, Lcom/vk/im/ui/views/dialogs/DialogItemView;->V:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f080af4

    .line 186
    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 187
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    .line 188
    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/high16 v0, -0x41000000    # -0.5f

    .line 189
    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setTranslationY(F)V

    const/16 v0, 0xb

    .line 190
    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v1

    const/16 v0, 0xd

    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v2

    const/4 v4, 0x0

    const/4 v0, 0x6

    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v5

    const/4 v6, 0x0

    const/16 v19, 0x2c

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v50, v7

    move/from16 v7, v19

    move-object/from16 v51, v8

    move-object/from16 v8, v22

    invoke-static/range {v0 .. v8}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Lcom/vk/im/ui/views/dialogs/DialogItemView;IIIIIIILjava/lang/Object;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    move-object/from16 v8, v50

    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v9, Lcom/vk/im/ui/views/dialogs/DialogItemView;->W:Landroid/widget/TextView;

    move-object/from16 v0, v47

    .line 192
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move/from16 v0, v46

    const/4 v1, 0x0

    .line 193
    invoke-virtual {v7, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const v0, 0x7f04039a

    .line 194
    invoke-static {v10, v0}, Lcom/vk/core/util/ContextExtKt;->h(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    .line 195
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 196
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/16 v19, 0x3f

    move-object/from16 v0, p0

    move-object/from16 v52, v7

    move/from16 v7, v19

    move-object/from16 v53, v8

    move-object/from16 v8, v22

    .line 197
    invoke-static/range {v0 .. v8}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Lcom/vk/im/ui/views/dialogs/DialogItemView;IIIIIIILjava/lang/Object;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    move-object/from16 v8, v52

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    new-instance v11, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v11, v10}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v11, v9, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a0:Landroidx/appcompat/widget/AppCompatImageView;

    move-object/from16 v0, v17

    .line 200
    invoke-virtual {v11, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    .line 202
    invoke-virtual {v11, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v0, 0x1e

    .line 203
    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v1

    const/16 v0, 0xa

    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v2

    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v5

    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v6

    const/4 v7, 0x0

    const/16 v17, 0x20

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move v4, v5

    move v5, v6

    move v6, v7

    move/from16 v7, v17

    move-object/from16 v54, v8

    move-object/from16 v8, v19

    invoke-static/range {v0 .. v8}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Lcom/vk/im/ui/views/dialogs/DialogItemView;IIIIIIILjava/lang/Object;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 204
    invoke-virtual {v11, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 205
    new-instance v8, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v8, v10}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, v9, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b0:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f08059a

    .line 206
    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 207
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    .line 208
    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v7, 0x18

    .line 209
    invoke-virtual {v9, v7}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v1

    invoke-virtual {v9, v7}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v2

    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v17, 0x38

    move-object/from16 v0, p0

    move/from16 v7, v17

    move-object/from16 v17, v11

    move-object v11, v8

    move-object/from16 v8, v19

    invoke-static/range {v0 .. v8}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Lcom/vk/im/ui/views/dialogs/DialogItemView;IIIIIIILjava/lang/Object;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v9, Lcom/vk/im/ui/views/dialogs/DialogItemView;->c0:Landroid/widget/TextView;

    move-object/from16 v0, v36

    .line 211
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v0, 0x41600000    # 14.0f

    .line 212
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v0, -0x1

    .line 213
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x11

    .line 214
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v0, 0x1

    .line 215
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    move-object/from16 v0, p3

    .line 216
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x8

    .line 217
    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v9, v2}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v3

    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v4

    invoke-virtual {v9, v2}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v2

    invoke-virtual {v8, v1, v3, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 218
    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v3

    const/4 v4, 0x0

    const/16 v7, 0x3b

    move-object/from16 v0, p0

    move-object/from16 v22, v11

    move-object v11, v8

    move-object/from16 v8, v19

    invoke-static/range {v0 .. v8}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Lcom/vk/im/ui/views/dialogs/DialogItemView;IIIIIIILjava/lang/Object;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    new-instance v8, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v8, v10}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, v9, Lcom/vk/im/ui/views/dialogs/DialogItemView;->d0:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f080b59

    const v1, 0x7f040178

    .line 220
    invoke-static {v8, v0, v1}, Lcom/vk/extensions/ImageViewExt;->a(Landroid/widget/ImageView;II)V

    .line 221
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    .line 222
    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v7, 0x18

    .line 223
    invoke-virtual {v9, v7}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v1

    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v3

    const/16 v16, 0x3a

    move-object/from16 v0, p0

    move/from16 v7, v16

    move-object/from16 v16, v11

    move-object v11, v8

    move-object/from16 v8, v19

    invoke-static/range {v0 .. v8}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Lcom/vk/im/ui/views/dialogs/DialogItemView;IIIIIIILjava/lang/Object;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    new-instance v8, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v8, v10}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, v9, Lcom/vk/im/ui/views/dialogs/DialogItemView;->e0:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f080b02

    const v1, 0x7f040252

    .line 225
    invoke-static {v8, v0, v1}, Lcom/vk/extensions/ImageViewExt;->a(Landroid/widget/ImageView;II)V

    .line 226
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    .line 227
    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v7, 0x18

    .line 228
    invoke-virtual {v9, v7}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v1

    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v3

    const/16 v19, 0x3a

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v7, v19

    move-object/from16 v19, v11

    move-object v11, v8

    move-object/from16 v8, v23

    invoke-static/range {v0 .. v8}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Lcom/vk/im/ui/views/dialogs/DialogItemView;IIIIIIILjava/lang/Object;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    new-instance v8, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v8, v10}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, v9, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f0:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f0803ba

    const v1, 0x7f0401f3

    .line 230
    invoke-static {v8, v0, v1}, Lcom/vk/extensions/ImageViewExt;->a(Landroid/widget/ImageView;II)V

    .line 231
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    .line 232
    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v0, 0x18

    .line 233
    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v1

    const/16 v0, 0x10

    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v2

    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v3

    const/16 v7, 0x38

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v23, v11

    move-object v11, v8

    move-object v8, v10

    invoke-static/range {v0 .. v8}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Lcom/vk/im/ui/views/dialogs/DialogItemView;IIIIIIILjava/lang/Object;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v39

    .line 234
    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->addView(Landroid/view/View;)V

    move-object/from16 v0, v20

    .line 235
    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->addView(Landroid/view/View;)V

    .line 236
    invoke-virtual {v9, v12}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->addView(Landroid/view/View;)V

    .line 237
    invoke-virtual {v9, v14}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->addView(Landroid/view/View;)V

    .line 238
    invoke-virtual {v9, v15}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->addView(Landroid/view/View;)V

    .line 239
    invoke-virtual {v9, v13}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->addView(Landroid/view/View;)V

    move-object/from16 v0, v21

    .line 240
    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->addView(Landroid/view/View;)V

    move-object/from16 v0, v49

    .line 241
    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->addView(Landroid/view/View;)V

    move-object/from16 v0, v18

    .line 242
    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->addView(Landroid/view/View;)V

    move-object/from16 v0, v45

    .line 243
    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->addView(Landroid/view/View;)V

    move-object/from16 v0, v51

    .line 244
    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->addView(Landroid/view/View;)V

    move-object/from16 v0, v53

    .line 245
    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->addView(Landroid/view/View;)V

    move-object/from16 v0, v54

    .line 246
    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->addView(Landroid/view/View;)V

    move-object/from16 v0, v17

    .line 247
    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->addView(Landroid/view/View;)V

    move-object/from16 v0, v22

    .line 248
    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->addView(Landroid/view/View;)V

    move-object/from16 v0, v16

    .line 249
    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->addView(Landroid/view/View;)V

    move-object/from16 v0, v19

    .line 250
    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->addView(Landroid/view/View;)V

    move-object/from16 v0, v23

    .line 251
    invoke-virtual {v9, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->addView(Landroid/view/View;)V

    .line 252
    invoke-virtual {v9, v11}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->addView(Landroid/view/View;)V

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

    .line 256
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/view/View;)I
    .locals 0

    .line 1019
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_0

    .line 1022
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(IIIIII)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 1

    .line 994
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 995
    iput p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 996
    iput p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 997
    iput p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 998
    iput p6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-object v0
.end method

.method static a(Lcom/vk/im/ui/views/dialogs/DialogItemView;IIIIIIILjava/lang/Object;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, -0x2

    if-eqz p8, :cond_0

    const/4 p1, -0x2

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    const/4 p2, -0x2

    :cond_1
    and-int/lit8 p8, p7, 0x4

    const/4 v0, 0x0

    if-eqz p8, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    const/4 p4, 0x0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    const/4 p5, 0x0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    const/4 p6, 0x0

    .line 337
    :cond_5
    invoke-direct/range {p0 .. p6}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(IIIIII)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/View;FJJLjava/lang/Runnable;ILjava/lang/Object;)Landroid/view/ViewPropertyAnimator;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    const-wide/16 p2, 0x12c

    :cond_1
    move-wide v0, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    const-wide/16 p4, 0x0

    :cond_2
    move-wide v2, p4

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    const/4 p6, 0x0

    :cond_3
    move-object p8, p6

    move-object p2, p0

    move p3, p1

    move-wide p4, v0

    move-wide p6, v2

    .line 308
    invoke-static/range {p2 .. p8}, Lcom/vk/core/extensions/AnimationExtKt;->a(Landroid/view/View;FJJLjava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    return-object p0
.end method

.method private a(II)V
    .locals 12

    .line 916
    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->K:Lcom/vk/im/ui/views/avatars/AvatarView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Landroid/view/View;IIII)V

    .line 917
    iget-object v7, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->M:Lcom/vk/im/ui/views/avatars/StoryBorderView;

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    move v8, p1

    move v10, p2

    invoke-direct/range {v6 .. v11}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;IIII)V

    .line 918
    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->L:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct/range {v0 .. v5}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;IIII)V

    return-void
.end method

.method private a(III)V
    .locals 12

    .line 978
    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->T:Landroid/widget/TextView;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p3

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;IIII)V

    .line 979
    iget-object v7, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->V:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v11, 0x0

    move-object v6, p0

    move v8, p1

    move v9, p3

    move v10, p2

    invoke-direct/range {v6 .. v11}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;IIII)V

    .line 980
    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->U:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->V:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->g(Landroid/view/View;)I

    move-result v0

    add-int v3, p3, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;IIII)V

    return-void
.end method

.method private a(IIII)V
    .locals 0

    .line 935
    iget-object p3, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->K:Lcom/vk/im/ui/views/avatars/AvatarView;

    .line 936
    invoke-direct {p0, p3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;)I

    move-result p4

    add-int/2addr p1, p4

    iget-object p4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->K:Lcom/vk/im/ui/views/avatars/AvatarView;

    invoke-direct {p0, p4}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->d(Landroid/view/View;)I

    move-result p4

    add-int/2addr p2, p4

    invoke-direct {p0, p3, p1, p2}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Landroid/view/View;II)V

    .line 937
    iget-object p1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->M:Lcom/vk/im/ui/views/avatars/StoryBorderView;

    iget-object p2, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->K:Lcom/vk/im/ui/views/avatars/AvatarView;

    invoke-virtual {p2}, Lcom/vk/im/ui/views/avatars/AvatarView;->getLeft()I

    move-result p2

    iget-object p3, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->K:Lcom/vk/im/ui/views/avatars/AvatarView;

    invoke-virtual {p3}, Lcom/vk/im/ui/views/avatars/AvatarView;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->K:Lcom/vk/im/ui/views/avatars/AvatarView;

    invoke-virtual {p3}, Lcom/vk/im/ui/views/avatars/AvatarView;->getTop()I

    move-result p3

    iget-object p4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->K:Lcom/vk/im/ui/views/avatars/AvatarView;

    invoke-virtual {p4}, Lcom/vk/im/ui/views/avatars/AvatarView;->getPaddingTop()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-direct {p0, p1, p2, p3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Landroid/view/View;II)V

    .line 938
    iget-object p1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->L:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object p2, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->K:Lcom/vk/im/ui/views/avatars/AvatarView;

    invoke-virtual {p2}, Lcom/vk/im/ui/views/avatars/AvatarView;->getRight()I

    move-result p2

    iget-object p3, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->L:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p3}, Landroidx/appcompat/widget/AppCompatImageView;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->K:Lcom/vk/im/ui/views/avatars/AvatarView;

    invoke-virtual {p3}, Lcom/vk/im/ui/views/avatars/AvatarView;->getBottom()I

    move-result p3

    iget-object p4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->L:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p4}, Landroidx/appcompat/widget/AppCompatImageView;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-direct {p0, p1, p2, p3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;II)V

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 10

    .line 634
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->L:Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v1

    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/vk/extensions/ViewExtKt;->c(Landroid/view/View;II)V

    .line 635
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->L:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 636
    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->L:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xf

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Landroid/view/View;FJJLjava/lang/Runnable;ILjava/lang/Object;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public static a(Landroid/view/View;FFILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 288
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/vk/core/extensions/AnimationExtKt;->a(Landroid/view/View;FF)V

    return-void
.end method

.method private a(Landroid/view/View;II)V
    .locals 2

    .line 1015
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private a(Landroid/view/View;IIII)V
    .locals 1

    .line 1011
    invoke-direct {p0, p1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;)I

    move-result v0

    add-int/2addr p3, v0

    invoke-direct {p0, p1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->c(Landroid/view/View;)I

    move-result v0

    add-int/2addr p3, v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, p3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    invoke-direct {p0, p1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->d(Landroid/view/View;)I

    move-result p3

    add-int/2addr p5, p3

    invoke-direct {p0, p1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Landroid/view/View;)I

    move-result p3

    add-int/2addr p5, p3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p4, p5, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method static a(Lcom/vk/im/ui/views/dialogs/DialogItemView;IIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 315
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(III)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;I)V
    .locals 2

    if-eqz p1, :cond_1

    .line 855
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x8

    .line 859
    :goto_1
    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->T:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 860
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->T:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 861
    invoke-direct {p0, p2}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->setBodyLinesCount(I)V

    return-void
.end method

.method private b(I)I
    .locals 1

    const/high16 v0, -0x80000000

    .line 902
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method private b(Landroid/view/View;)I
    .locals 0

    .line 892
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_0

    .line 895
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static b(Landroid/view/View;FJJLjava/lang/Runnable;ILjava/lang/Object;)Landroid/view/ViewPropertyAnimator;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    const-wide/16 p2, 0x12c

    :cond_1
    move-wide v0, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    const-wide/16 p4, 0x0

    :cond_2
    move-wide v2, p4

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    const/4 p6, 0x0

    :cond_3
    move-object p8, p6

    move-object p2, p0

    move p3, p1

    move-wide p4, v0

    move-wide p6, v2

    .line 276
    invoke-static/range {p2 .. p8}, Lcom/vk/core/extensions/AnimationExtKt;->b(Landroid/view/View;FJJLjava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    return-object p0
.end method

.method private b(II)V
    .locals 12

    .line 802
    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->O:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;IIII)V

    .line 803
    iget-object v7, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->Q:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    move v8, p1

    move v10, p2

    invoke-direct/range {v6 .. v11}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;IIII)V

    .line 804
    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->P:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct/range {v0 .. v5}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;IIII)V

    .line 805
    iget-object v7, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->R:Landroid/widget/TextView;

    invoke-direct/range {v6 .. v11}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;IIII)V

    return-void
.end method

.method private b(III)V
    .locals 6

    .line 841
    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->N:Landroid/widget/TextView;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p3

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Landroid/view/View;IIII)V

    return-void
.end method

.method private b(IIII)V
    .locals 1

    .line 845
    iget-object p3, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->V:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, p3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->e(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->V:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, p3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->g(Landroid/view/View;)I

    move-result p3

    add-int/2addr p3, p1

    goto :goto_0

    :cond_0
    move p3, p1

    .line 846
    :goto_0
    iget-object p4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->U:Landroid/widget/TextView;

    .line 847
    invoke-direct {p0, p4}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;)I

    move-result v0

    add-int/2addr p3, v0

    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->U:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->d(Landroid/view/View;)I

    move-result v0

    add-int/2addr p2, v0

    invoke-direct {p0, p4, p3, p2}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Landroid/view/View;II)V

    .line 848
    iget-object p2, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->V:Landroidx/appcompat/widget/AppCompatImageView;

    .line 849
    invoke-direct {p0, p2}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;)I

    move-result p3

    add-int/2addr p1, p3

    iget-object p3, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->U:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getTop()I

    move-result p3

    iget-object p4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->U:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    iget-object p4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->V:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p4}, Landroidx/appcompat/widget/AppCompatImageView;->getMeasuredHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p3, p4

    invoke-direct {p0, p2, p1, p3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;II)V

    return-void
.end method

.method private b(Landroid/view/View;II)V
    .locals 1

    .line 886
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 887
    invoke-direct {p0, p1, p2, p3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method private b(Landroid/view/View;IIII)V
    .locals 2

    .line 865
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 866
    invoke-direct/range {p0 .. p5}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method private c(Landroid/view/View;)I
    .locals 0

    .line 960
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_0

    .line 963
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private c(I)V
    .locals 7

    .line 640
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 641
    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->K:Lcom/vk/im/ui/views/avatars/AvatarView;

    invoke-virtual {v1}, Lcom/vk/im/ui/views/avatars/AvatarView;->getViewSize()I

    move-result v1

    sub-int v1, v0, v1

    invoke-direct {p0, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(I)I

    move-result v1

    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->m()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->d(II)V

    .line 642
    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->r()I

    move-result v1

    .line 643
    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(I)I

    move-result v2

    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->m()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(II)V

    .line 644
    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->i()I

    move-result v2

    sub-int v3, v0, v1

    sub-int/2addr v3, v2

    .line 645
    invoke-direct {p0, v3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(I)I

    move-result v3

    .line 646
    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->m()I

    move-result v4

    .line 647
    invoke-direct {p0, v3, v4}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(II)V

    .line 648
    iget-object v5, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->O:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, v5}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->g(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->P:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, v6}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->g(Landroid/view/View;)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->Q:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, v6}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->g(Landroid/view/View;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(III)V

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    .line 650
    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(I)I

    move-result v1

    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->m()I

    move-result v2

    iget-object v3, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->R:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->g(Landroid/view/View;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(III)V

    .line 651
    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(I)I

    move-result v0

    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->m()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->e(II)V

    .line 652
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->K:Lcom/vk/im/ui/views/avatars/AvatarView;

    invoke-direct {p0, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->l()I

    move-result v2

    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->o()I

    move-result v3

    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->j()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->s()I

    move-result v4

    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->q()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->setMeasuredDimension(II)V

    return-void
.end method

.method private c(II)V
    .locals 6

    .line 942
    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->S:Lcom/vk/im/ui/views/avatars/AvatarView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;IIII)V

    return-void
.end method

.method private c(IIII)V
    .locals 1

    .line 946
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->T:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, p2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->d(IIII)V

    .line 947
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->T:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f(Landroid/view/View;)I

    move-result v0

    add-int/2addr p2, v0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(IIII)V

    return-void
.end method

.method private d(Landroid/view/View;)I
    .locals 0

    .line 984
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_0

    .line 987
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private d(I)V
    .locals 9

    .line 656
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 657
    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->K:Lcom/vk/im/ui/views/avatars/AvatarView;

    invoke-virtual {v1}, Lcom/vk/im/ui/views/avatars/AvatarView;->getViewSize()I

    move-result v1

    sub-int v1, v0, v1

    invoke-direct {p0, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(I)I

    move-result v1

    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->m()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->d(II)V

    .line 658
    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->r()I

    move-result v1

    .line 659
    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(I)I

    move-result v2

    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->m()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(II)V

    .line 660
    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->i()I

    move-result v2

    sub-int/2addr v0, v2

    .line 661
    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(I)I

    move-result v2

    .line 662
    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->m()I

    move-result v3

    .line 663
    invoke-direct {p0, v2, v3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(II)V

    .line 664
    iget-object v4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->O:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, v4}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->g(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->P:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, v5}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->g(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->R:Landroid/widget/TextView;

    invoke-direct {p0, v5}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->g(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->Q:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, v5}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->g(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(III)V

    sub-int v2, v0, v1

    .line 666
    invoke-direct {p0, v2}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(I)I

    move-result v3

    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->m()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->c(II)V

    .line 667
    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->p()I

    move-result v3

    sub-int/2addr v0, v3

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(I)I

    move-result v4

    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->m()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Lcom/vk/im/ui/views/dialogs/DialogItemView;IIIILjava/lang/Object;)V

    .line 668
    invoke-direct {p0, v2}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(I)I

    move-result v0

    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->m()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->e(II)V

    .line 669
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->K:Lcom/vk/im/ui/views/avatars/AvatarView;

    invoke-direct {p0, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->l()I

    move-result v2

    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->o()I

    move-result v3

    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->j()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->s()I

    move-result v4

    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->q()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->setMeasuredDimension(II)V

    return-void
.end method

.method private d(II)V
    .locals 12

    .line 970
    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b0:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;IIII)V

    .line 971
    iget-object v7, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->c0:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    move v8, p1

    move v10, p2

    invoke-direct/range {v6 .. v11}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;IIII)V

    .line 972
    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->d0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct/range {v0 .. v5}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;IIII)V

    .line 973
    iget-object v7, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->e0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct/range {v6 .. v11}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;IIII)V

    .line 974
    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct/range {v0 .. v5}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;IIII)V

    return-void
.end method

.method private d(IIII)V
    .locals 0

    .line 955
    iget-object p3, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->T:Landroid/widget/TextView;

    .line 956
    invoke-direct {p0, p3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;)I

    move-result p4

    add-int/2addr p1, p4

    iget-object p4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->T:Landroid/widget/TextView;

    invoke-direct {p0, p4}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->d(Landroid/view/View;)I

    move-result p4

    add-int/2addr p2, p4

    invoke-direct {p0, p3, p1, p2}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Landroid/view/View;II)V

    return-void
.end method

.method private e(II)V
    .locals 12

    .line 792
    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a0:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;IIII)V

    .line 793
    iget-object v7, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->W:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->g(Landroid/view/View;)I

    move-result v9

    const/4 v11, 0x0

    move-object v6, p0

    move v8, p1

    move v10, p2

    invoke-direct/range {v6 .. v11}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;IIII)V

    return-void
.end method

.method private e(IIII)V
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->T:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->e(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->U:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->e(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->c(IIII)V

    goto :goto_0

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->T:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->e(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->d(IIII)V

    goto :goto_0

    .line 677
    :cond_1
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->U:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->e(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 679
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(IIII)V

    :goto_0
    return-void
.end method

.method private e(Landroid/view/View;)Z
    .locals 0

    .line 814
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private f(Landroid/view/View;)I
    .locals 2

    .line 922
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 926
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 927
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_1

    .line 929
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, p1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method private f(IIII)V
    .locals 3

    .line 756
    iget-object p4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->N:Landroid/widget/TextView;

    .line 757
    invoke-direct {p0, p4}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;)I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->N:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->d(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, p2

    invoke-direct {p0, p4, p1, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;II)V

    .line 758
    iget-object p1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->N:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getRight()I

    move-result p1

    iget-object p4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->N:Landroid/widget/TextView;

    invoke-direct {p0, p4}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->c(Landroid/view/View;)I

    move-result p4

    add-int/2addr p1, p4

    .line 759
    iget-object p4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->N:Landroid/widget/TextView;

    invoke-direct {p0, p4}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->d(Landroid/view/View;)I

    move-result p4

    add-int/2addr p2, p4

    iget-object p4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->N:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p2, p4

    .line 760
    iget-object p4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->O:Landroidx/appcompat/widget/AppCompatImageView;

    .line 761
    invoke-direct {p0, p4}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->O:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatImageView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    iget-object v2, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->O:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, v2}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, p4, v0, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;II)V

    .line 763
    iget-object p4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->O:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, p4}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->e(Landroid/view/View;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 764
    iget-object p1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->O:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatImageView;->getRight()I

    move-result p1

    iget-object p4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->O:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, p4}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->c(Landroid/view/View;)I

    move-result p4

    add-int/2addr p1, p4

    .line 767
    :cond_0
    iget-object p4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->Q:Landroidx/appcompat/widget/AppCompatImageView;

    .line 768
    invoke-direct {p0, p4}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->Q:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatImageView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    iget-object v2, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->Q:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, v2}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, p4, v0, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;II)V

    .line 770
    iget-object p4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->Q:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, p4}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->e(Landroid/view/View;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 771
    iget-object p1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->Q:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatImageView;->getRight()I

    move-result p1

    iget-object p4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->Q:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, p4}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->c(Landroid/view/View;)I

    move-result p4

    add-int/2addr p1, p4

    .line 774
    :cond_1
    iget-object p4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->P:Landroidx/appcompat/widget/AppCompatImageView;

    .line 775
    invoke-direct {p0, p4}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;)I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->P:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->P:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, p4, p1, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;II)V

    .line 777
    iget-boolean p1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->E:Z

    if-nez p1, :cond_2

    .line 778
    iget-object p1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->R:Landroid/widget/TextView;

    .line 779
    invoke-direct {p0, p1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->c(Landroid/view/View;)I

    move-result p4

    sub-int/2addr p3, p4

    iget-object p4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->R:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p4

    sub-int/2addr p3, p4

    iget-object p4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->R:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p2, p4

    iget-object p4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->R:Landroid/widget/TextView;

    invoke-direct {p0, p4}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->d(Landroid/view/View;)I

    move-result p4

    add-int/2addr p2, p4

    invoke-direct {p0, p1, p3, p2}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;II)V

    :cond_2
    return-void
.end method

.method private g(Landroid/view/View;)I
    .locals 2

    .line 906
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 910
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 911
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_1

    .line 912
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, p1

    :cond_1
    return v0
.end method

.method private g(IIII)V
    .locals 4

    .line 684
    invoke-virtual {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getPaddingLeft()I

    move-result p1

    .line 685
    invoke-virtual {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getPaddingTop()I

    move-result p2

    .line 686
    invoke-virtual {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    .line 687
    invoke-virtual {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getMeasuredHeight()I

    move-result p4

    invoke-virtual {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p4, v0

    .line 688
    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->i()I

    move-result v0

    add-int/2addr v0, p1

    .line 689
    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->h()I

    move-result v1

    add-int/2addr v1, p2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(IIII)V

    .line 690
    iget-object p1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->T:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxLines()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->W:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->e(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->h()I

    move-result p1

    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->l()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->j()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->s()I

    move-result v1

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    :goto_1
    add-int/2addr p1, p2

    .line 691
    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->l()I

    move-result v1

    add-int/2addr v1, p1

    invoke-direct {p0, v0, p1, p3, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f(IIII)V

    .line 692
    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->k()I

    move-result p1

    .line 693
    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->j()I

    move-result v1

    .line 694
    iget-object v2, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->N:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->N:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr p1, v0

    add-int/2addr v1, v2

    .line 697
    invoke-direct {p0, v0, v2, p1, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->e(IIII)V

    .line 698
    invoke-direct {p0, v0, v2, p1, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->l(IIII)V

    .line 699
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->R:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->N:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->N:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getTimeMargin()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v0, p1, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;II)V

    .line 700
    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->r()I

    move-result p1

    .line 701
    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->q()I

    move-result v0

    add-int/2addr p2, p4

    .line 702
    div-int/lit8 p2, p2, 0x2

    div-int/lit8 p4, v0, 0x2

    sub-int/2addr p2, p4

    sub-int p1, p3, p1

    add-int/2addr v0, p2

    .line 703
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->j(IIII)V

    return-void
.end method

.method private getDrOnlineMobile()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 341
    invoke-virtual {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08068d

    invoke-static {v0, v1}, Lcom/vk/core/util/ContextExtKt;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getDrOnlineVkMe()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 345
    invoke-virtual {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08068e

    invoke-static {v0, v1}, Lcom/vk/core/util/ContextExtKt;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getDrOnlineWeb()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 349
    invoke-virtual {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080695

    invoke-static {v0, v1}, Lcom/vk/core/util/ContextExtKt;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getTimeMargin()I
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->T:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->U:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 361
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    .line 362
    iget-object v2, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->R:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 365
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v1

    :cond_1
    sub-int/2addr v0, v1

    return v0

    :cond_2
    return v1
.end method

.method private getTitleColorHighlight()I
    .locals 2

    .line 375
    invoke-virtual {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0602ed

    invoke-static {v0, v1}, Lcom/vk/core/util/ContextExtKt;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method private h()I
    .locals 1

    .line 951
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->K:Lcom/vk/im/ui/views/avatars/AvatarView;

    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private h(IIII)V
    .locals 5

    .line 379
    invoke-virtual {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getPaddingLeft()I

    move-result p1

    .line 380
    invoke-virtual {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getPaddingTop()I

    move-result p2

    .line 381
    invoke-virtual {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    .line 382
    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->i()I

    move-result p4

    add-int/2addr p4, p1

    .line 383
    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->h()I

    move-result v0

    add-int/2addr v0, p2

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(IIII)V

    .line 384
    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->l()I

    move-result p1

    add-int/2addr p1, p2

    invoke-direct {p0, p4, p2, p3, p1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f(IIII)V

    .line 385
    iget-object p1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->N:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getBottom()I

    move-result p1

    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->N:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Landroid/view/View;)I

    move-result v0

    add-int/2addr p1, v0

    .line 386
    iget v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->C:I

    add-int/2addr v0, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 387
    iget v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->D:I

    add-int/2addr p2, v1

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(I)I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 388
    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->p()I

    move-result v1

    .line 389
    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->o()I

    move-result v2

    .line 390
    div-int/lit8 v3, v2, 0x2

    sub-int v3, p2, v3

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v1, p4

    add-int/2addr v2, v3

    .line 392
    invoke-direct {p0, p4, v3, v1, v2}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->i(IIII)V

    .line 393
    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->k()I

    move-result v2

    .line 394
    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->j()I

    move-result v3

    .line 396
    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->n()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 397
    div-int/lit8 v0, v3, 0x2

    sub-int v0, p2, v0

    .line 400
    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v2, v1

    add-int/2addr v3, v0

    .line 401
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->e(IIII)V

    .line 402
    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->t()I

    move-result v0

    .line 403
    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->s()I

    move-result v1

    .line 404
    div-int/lit8 v2, v1, 0x2

    sub-int v2, p2, v2

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v0, p4

    add-int/2addr v1, v2

    .line 405
    invoke-direct {p0, p4, v2, v0, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->k(IIII)V

    .line 406
    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->r()I

    move-result p4

    .line 407
    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->q()I

    move-result v0

    .line 408
    div-int/lit8 v1, v0, 0x2

    sub-int/2addr p2, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int p2, p3, p4

    add-int/2addr v0, p1

    .line 409
    invoke-direct {p0, p2, p1, p3, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->j(IIII)V

    return-void
.end method

.method private i()I
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->K:Lcom/vk/im/ui/views/avatars/AvatarView;

    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->g(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private i(IIII)V
    .locals 1

    .line 707
    iget-object p3, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->S:Lcom/vk/im/ui/views/avatars/AvatarView;

    .line 708
    invoke-direct {p0, p3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;)I

    move-result v0

    add-int/2addr p1, v0

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p2, p4

    iget-object p4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->S:Lcom/vk/im/ui/views/avatars/AvatarView;

    invoke-virtual {p4}, Lcom/vk/im/ui/views/avatars/AvatarView;->getMeasuredHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p2, p4

    iget-object p4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->S:Lcom/vk/im/ui/views/avatars/AvatarView;

    invoke-direct {p0, p4}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->d(Landroid/view/View;)I

    move-result p4

    add-int/2addr p2, p4

    invoke-direct {p0, p3, p1, p2}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;II)V

    return-void
.end method

.method private j()I
    .locals 3

    .line 417
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->T:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->V:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->U:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f(Landroid/view/View;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private j(IIII)V
    .locals 2

    sub-int/2addr p4, p2

    .line 712
    div-int/lit8 p4, p4, 0x2

    add-int/2addr p2, p4

    .line 713
    iget-object p3, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b0:Landroidx/appcompat/widget/AppCompatImageView;

    .line 714
    invoke-direct {p0, p3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;)I

    move-result p4

    add-int/2addr p4, p1

    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, p3, p4, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;II)V

    .line 715
    iget-object p3, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p3}, Lcom/vk/extensions/ViewExtKt;->i(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 716
    iget-object p1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatImageView;->getRight()I

    move-result p1

    iget-object p3, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, p3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->c(Landroid/view/View;)I

    move-result p3

    add-int/2addr p1, p3

    .line 718
    :cond_0
    iget-object p3, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->c0:Landroid/widget/TextView;

    .line 719
    invoke-direct {p0, p3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;)I

    move-result p4

    add-int/2addr p4, p1

    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->c0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->c0:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, p3, p4, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;II)V

    .line 720
    iget-object p3, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->d0:Landroidx/appcompat/widget/AppCompatImageView;

    .line 721
    invoke-direct {p0, p3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;)I

    move-result p4

    add-int/2addr p4, p1

    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->d0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->d0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, p3, p4, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;II)V

    .line 722
    iget-object p3, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->e0:Landroidx/appcompat/widget/AppCompatImageView;

    .line 723
    invoke-direct {p0, p3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;)I

    move-result p4

    add-int/2addr p4, p1

    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->e0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->e0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, p3, p4, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;II)V

    .line 724
    iget-object p3, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f0:Landroidx/appcompat/widget/AppCompatImageView;

    .line 725
    invoke-direct {p0, p3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;)I

    move-result p4

    add-int/2addr p1, p4

    iget-object p4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p4}, Landroidx/appcompat/widget/AppCompatImageView;->getMeasuredHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p2, p4

    iget-object p4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, p4}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->d(Landroid/view/View;)I

    move-result p4

    add-int/2addr p2, p4

    invoke-direct {p0, p3, p1, p2}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;II)V

    return-void
.end method

.method private k()I
    .locals 3

    .line 421
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->T:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->g(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->V:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->g(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->U:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->g(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private k(IIII)V
    .locals 2

    sub-int/2addr p4, p2

    .line 729
    div-int/lit8 p4, p4, 0x2

    add-int/2addr p2, p4

    .line 730
    iget-object p3, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->W:Landroid/widget/TextView;

    .line 731
    invoke-direct {p0, p3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;)I

    move-result p4

    add-int/2addr p4, p1

    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->W:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->W:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, p3, p4, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;II)V

    .line 733
    iget-object p3, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->W:Landroid/widget/TextView;

    invoke-direct {p0, p3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->e(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 734
    iget-object p1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->W:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getRight()I

    move-result p1

    iget-object p3, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->W:Landroid/widget/TextView;

    invoke-direct {p0, p3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->c(Landroid/view/View;)I

    move-result p3

    add-int/2addr p1, p3

    .line 737
    :cond_0
    iget-object p3, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a0:Landroidx/appcompat/widget/AppCompatImageView;

    .line 738
    invoke-direct {p0, p3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;)I

    move-result p4

    add-int/2addr p1, p4

    iget-object p4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p4}, Landroidx/appcompat/widget/AppCompatImageView;->getMeasuredHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p2, p4

    iget-object p4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, p4}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->d(Landroid/view/View;)I

    move-result p4

    add-int/2addr p2, p4

    invoke-direct {p0, p3, p1, p2}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;II)V

    return-void
.end method

.method private l()I
    .locals 3

    .line 425
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->N:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->R:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->O:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->P:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, v2}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f(Landroid/view/View;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private l(IIII)V
    .locals 0

    .line 784
    iget-object p3, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->W:Landroid/widget/TextView;

    .line 785
    invoke-direct {p0, p3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;)I

    move-result p4

    add-int/2addr p1, p4

    invoke-direct {p0, p3, p1, p2}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;II)V

    .line 786
    iget-object p1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->W:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getRight()I

    move-result p1

    iget-object p2, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->W:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->c(Landroid/view/View;)I

    move-result p2

    add-int/2addr p1, p2

    .line 787
    iget-object p2, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a0:Landroidx/appcompat/widget/AppCompatImageView;

    .line 788
    invoke-direct {p0, p2}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;)I

    move-result p3

    add-int/2addr p1, p3

    iget-object p3, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->W:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getBottom()I

    move-result p3

    iget-object p4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->W:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getTop()I

    move-result p4

    add-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    iget-object p4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p4}, Landroidx/appcompat/widget/AppCompatImageView;->getMeasuredHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p3, p4

    iget-object p4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, p4}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->d(Landroid/view/View;)I

    move-result p4

    add-int/2addr p3, p4

    invoke-direct {p0, p2, p1, p3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;II)V

    return-void
.end method

.method private m()I
    .locals 1

    const/4 v0, 0x0

    .line 429
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private n()Z
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->S:Lcom/vk/im/ui/views/avatars/AvatarView;

    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->e(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private o()I
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->S:Lcom/vk/im/ui/views/avatars/AvatarView;

    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private p()I
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->S:Lcom/vk/im/ui/views/avatars/AvatarView;

    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->g(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private q()I
    .locals 5

    .line 445
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->c0:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->d0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, v2}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->e0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, v3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, v4}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f(Landroid/view/View;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lb/h/g/r/MathExt;->a(IIIII)I

    move-result v0

    return v0
.end method

.method private r()I
    .locals 5

    .line 449
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->g(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->c0:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->g(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->d0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, v2}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->g(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->e0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, v3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->g(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, v4}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->g(Landroid/view/View;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lb/h/g/r/MathExt;->a(IIII)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private s()I
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->W:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private setAttach(Ljava/lang/CharSequence;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 459
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x8

    .line 463
    :goto_1
    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->U:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 464
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->U:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setBodyLinesCount(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 469
    :goto_0
    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->T:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 470
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->T:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method

.method private t()I
    .locals 2

    .line 474
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->g(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->W:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->g(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private u()V
    .locals 3

    .line 478
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b0:Landroidx/appcompat/widget/AppCompatImageView;

    iget-boolean v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->g0:Z

    iget-boolean v2, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->h0:Z

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/vk/extensions/ViewExtKt;->b(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public a(F)I
    .locals 2

    .line 1007
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public a(I)I
    .locals 2

    int-to-float p1, p1

    .line 1003
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 809
    invoke-direct {p0, v1, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Ljava/lang/CharSequence;I)V

    .line 810
    invoke-direct {p0, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->setAttach(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Lcom/vk/im/engine/models/dialogs/Dialog;Lcom/vk/im/engine/models/ProfilesSimpleInfo;)V
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->K:Lcom/vk/im/ui/views/avatars/AvatarView;

    invoke-virtual {v0, p1, p2}, Lcom/vk/im/ui/views/avatars/AvatarView;->a(Lcom/vk/im/engine/models/dialogs/Dialog;Lcom/vk/im/engine/models/ProfilesSimpleInfo;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 820
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 821
    invoke-direct {p0, p1, p2}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 823
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Ljava/lang/CharSequence;I)V

    .line 826
    :goto_0
    invoke-direct {p0, p3}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->setAttach(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    .line 828
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_5

    :cond_1
    if-eqz p3, :cond_3

    .line 829
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-nez p1, :cond_4

    return-void

    .line 835
    :cond_4
    iget-object p1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->F:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Ljava/lang/CharSequence;I)V

    .line 836
    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->setAttach(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Lcom/vk/im/engine/models/typing/ComposingType;)V
    .locals 3

    .line 871
    sget-object v0, Lcom/vk/im/engine/models/typing/ComposingType;->AUDIO:Lcom/vk/im/engine/models/typing/ComposingType;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->H:Lcom/vk/im/ui/drawables/RecordingDrawable;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->G:Lcom/vk/im/ui/drawables/TypingDrawable;

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 873
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p2, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 874
    iget-object v2, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a0:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v2, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 875
    iget-object p2, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a0:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-static {p2, v2}, Lcom/vk/extensions/ViewExtKt;->b(Landroid/view/View;Z)V

    if-eqz p1, :cond_3

    .line 877
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_4

    :cond_3
    const/4 v1, 0x1

    .line 881
    :cond_4
    iget-object p2, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->W:Landroid/widget/TextView;

    xor-int/2addr v0, v1

    invoke-static {p2, v0}, Lcom/vk/extensions/ViewExtKt;->b(Landroid/view/View;Z)V

    .line 882
    iget-object p2, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->W:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->N:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 798
    iget-object p1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->N:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getTitleColorHighlight()I

    move-result p2

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f15761e:I

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 486
    move-object v1, v0

    check-cast v1, Lcom/vk/im/engine/models/typing/ComposingType;

    invoke-virtual {p0, v0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Ljava/lang/CharSequence;Lcom/vk/im/engine/models/typing/ComposingType;)V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 744
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x8

    .line 748
    :goto_1
    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->c0:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 749
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->c0:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 750
    invoke-virtual {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 751
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->c0:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    const v1, 0x7f04017d

    goto :goto_2

    :cond_2
    const v1, 0x7f040179

    :goto_2
    invoke-static {p1, v1}, Lcom/vk/core/util/ContextExtKt;->h(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 752
    iget-object p1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->g:Lcom/vk/im/ui/drawables/RoundCornerColorDrawable;

    if-eqz p2, :cond_3

    iget p2, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->B:I

    goto :goto_3

    :cond_3
    iget p2, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->h:I

    :goto_3
    invoke-virtual {p1, p2}, Lcom/vk/im/ui/drawables/RoundCornerColorDrawable;->a(I)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 490
    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getDrOnlineMobile()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 494
    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getDrOnlineVkMe()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 498
    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->getDrOnlineWeb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 502
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->S:Lcom/vk/im/ui/views/avatars/AvatarView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vk/im/ui/views/avatars/AvatarView;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->S:Lcom/vk/im/ui/views/avatars/AvatarView;

    invoke-virtual {v0}, Lcom/vk/im/ui/views/avatars/AvatarView;->e()V

    return-void
.end method

.method public g()V
    .locals 9

    .line 507
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->L:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b(Landroid/view/View;FJJLjava/lang/Runnable;ILjava/lang/Object;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .line 512
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 513
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->L:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->a(Landroid/view/View;FFILjava/lang/Object;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 518
    iget-boolean p1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->E:Z

    if-eqz p1, :cond_0

    .line 519
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->g(IIII)V

    goto :goto_0

    .line 521
    :cond_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->h(IIII)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 527
    iget-boolean p2, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->E:Z

    if-eqz p2, :cond_0

    .line 528
    invoke-direct {p0, p1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->c(I)V

    goto :goto_0

    .line 530
    :cond_0
    invoke-direct {p0, p1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->d(I)V

    :goto_0
    return-void
.end method

.method public setAvatar(Lcom/vk/im/engine/models/Profile;)V
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->K:Lcom/vk/im/ui/views/avatars/AvatarView;

    invoke-virtual {v0, p1}, Lcom/vk/im/ui/views/avatars/AvatarView;->a(Lcom/vk/im/engine/models/Profile;)V

    return-void
.end method

.method public setBombVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 540
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b0:Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f080385

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 543
    :cond_0
    iput-boolean p1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->h0:Z

    .line 545
    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->u()V

    return-void
.end method

.method public setCasperIconColor(I)V
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->Q:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, p1}, Lcom/vk/extensions/ViewExtKt;->a(Landroidx/appcompat/widget/AppCompatImageView;I)V

    return-void
.end method

.method public setCasperIconVisible(Z)V
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->Q:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    return-void
.end method

.method public setErrorVisible(Z)V
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f0:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    return-void
.end method

.method public setGiftVisible(Z)V
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->V:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    return-void
.end method

.method public setHasStories(Z)V
    .locals 5

    .line 565
    iget-boolean v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->I:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 569
    :cond_0
    iput-boolean p1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->I:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 573
    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->M:Lcom/vk/im/ui/views/avatars/StoryBorderView;

    invoke-virtual {v1}, Lcom/vk/im/ui/views/avatars/StoryBorderView;->getBorderWidth()I

    move-result v1

    .line 574
    iget-object v2, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->K:Lcom/vk/im/ui/views/avatars/AvatarView;

    iget v3, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->J:I

    mul-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/vk/im/ui/views/avatars/AvatarView;->setViewSize(I)V

    .line 575
    iget-object v2, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->K:Lcom/vk/im/ui/views/avatars/AvatarView;

    invoke-virtual {v2, v1, v1, v1, v1}, Lcom/vk/im/ui/views/avatars/AvatarView;->setPadding(IIII)V

    goto :goto_0

    .line 577
    :cond_1
    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->K:Lcom/vk/im/ui/views/avatars/AvatarView;

    iget v2, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->J:I

    invoke-virtual {v1, v2}, Lcom/vk/im/ui/views/avatars/AvatarView;->setViewSize(I)V

    .line 578
    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->K:Lcom/vk/im/ui/views/avatars/AvatarView;

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/vk/im/ui/views/avatars/AvatarView;->setPadding(IIII)V

    :goto_0
    if-nez p1, :cond_2

    const/16 v0, 0x8

    .line 585
    :cond_2
    iget-object v1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->M:Lcom/vk/im/ui/views/avatars/StoryBorderView;

    invoke-virtual {v1, v0}, Lcom/vk/im/ui/views/avatars/StoryBorderView;->setVisibility(I)V

    xor-int/lit8 v0, p1, 0x1

    .line 586
    invoke-virtual {p0, v0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->setClipChildren(Z)V

    xor-int/lit8 p1, p1, 0x1

    .line 587
    invoke-virtual {p0, p1}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->setClipToPadding(Z)V

    return-void
.end method

.method public setMentionVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 592
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->b0:Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f08059a

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 595
    :cond_0
    iput-boolean p1, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->g0:Z

    .line 597
    invoke-direct {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->u()V

    return-void
.end method

.method public setMutedVisible(Z)V
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->P:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    return-void
.end method

.method public setOnStoryClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->M:Lcom/vk/im/ui/views/avatars/StoryBorderView;

    invoke-static {v0, p1}, Lcom/vk/extensions/ViewExtKt;->b(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSender(Lcom/vk/im/engine/models/Profile;)V
    .locals 2

    if-nez p1, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/vk/im/ui/views/dialogs/DialogItemView;->f()V

    return-void

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->S:Lcom/vk/im/ui/views/avatars/AvatarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vk/im/ui/views/avatars/AvatarView;->setVisibility(I)V

    .line 614
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->S:Lcom/vk/im/ui/views/avatars/AvatarView;

    invoke-virtual {v0, p1}, Lcom/vk/im/ui/views/avatars/AvatarView;->a(Lcom/vk/im/engine/models/Profile;)V

    return-void
.end method

.method public setSendingVisible(Z)V
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->e0:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    return-void
.end method

.method public setTime(Ljava/lang/CharSequence;)V
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->R:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setUnreadOutVisible(Z)V
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->d0:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    return-void
.end method

.method public setVerifiedVisible(Z)V
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/vk/im/ui/views/dialogs/DialogItemView;->O:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    return-void
.end method
