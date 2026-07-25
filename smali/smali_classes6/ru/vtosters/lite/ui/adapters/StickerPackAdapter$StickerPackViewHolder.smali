.class public Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StickerPackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/lite/ui/adapters/StickerPackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StickerPackViewHolder"
.end annotation


# instance fields
.field private final mContainer:Landroid/widget/LinearLayout;

.field private final mDeleteButton:Landroid/widget/ImageView;

.field private final mName:Landroid/widget/TextView;

.field private final mStickerPreview:Landroid/widget/ImageView;

.field private final mStickersCount:Landroid/widget/TextView;

.field private final mSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private final mUpdateButton:Landroid/widget/ImageView;

.field final synthetic this$0:Lru/vtosters/lite/ui/adapters/StickerPackAdapter;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDeleteButton(Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;->mDeleteButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStickerPreview(Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;->mStickerPreview:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateButton(Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;->mUpdateButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public constructor <init>(Lru/vtosters/lite/ui/adapters/StickerPackAdapter;Landroid/view/View;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;->this$0:Lru/vtosters/lite/ui/adapters/StickerPackAdapter;

    .line 105
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 107
    move-object p1, p2

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;->mContainer:Landroid/widget/LinearLayout;

    const p1, 0x7f0a1007

    .line 108
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p1, p0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const p1, 0x7f0a098c

    .line 109
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;->mStickerPreview:Landroid/widget/ImageView;

    const p1, 0x7f0a1006

    .line 110
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;->mUpdateButton:Landroid/widget/ImageView;

    const p1, 0x7f0a0048

    .line 111
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;->mDeleteButton:Landroid/widget/ImageView;

    const p1, 0x7f0a0f03

    .line 112
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;->mName:Landroid/widget/TextView;

    const p1, 0x7f0a0f09

    .line 113
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;->mStickersCount:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic lambda$bind$0(Lcom/aefyr/tsg/g2/TelegramStickersPack;Landroid/view/View;)V
    .locals 5

    .line 132
    invoke-static {}, Lru/vtosters/lite/ui/adapters/StickerPackAdapter;->-$$Nest$sfgetsService()Lcom/aefyr/tsg/g2/TelegramStickersService;

    move-result-object p1

    invoke-static {}, Lru/vtosters/lite/tgs/TGPref;->getTGBotKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->setBotKey(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lru/vtosters/lite/ui/adapters/StickerPackAdapter;->-$$Nest$sfgetsService()Lcom/aefyr/tsg/g2/TelegramStickersService;

    move-result-object p1

    iget-object v0, p0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->id:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string v4, "VT-Stickers"

    iget-object p0, p0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->id:Ljava/lang/String;

    invoke-direct {v3, v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/aefyr/tsg/g2/TelegramStickersService;->requestPackDownload(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method static synthetic lambda$bind$2(Lcom/aefyr/tsg/g2/TelegramStickersPack;Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 144
    invoke-static {}, Lru/vtosters/lite/ui/adapters/StickerPackAdapter;->-$$Nest$sfgetsService()Lcom/aefyr/tsg/g2/TelegramStickersService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p2, v1}, Lcom/aefyr/tsg/g2/TelegramStickersService;->setPackEnabled(Lcom/aefyr/tsg/g2/TelegramStickersPack;ZZ)V

    .line 145
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    sget-object p2, Lru/vtosters/lite/ui/fragments/VTSettings;->ACTION_INVALIDATE_TGS_COUNT:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$bind$3(Lcom/aefyr/tsg/g2/TelegramStickersPack;Landroid/view/View;)Lkotlin/Unit;
    .locals 2

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://t.me/addstickers/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->id:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/vk/sharing/Sharing;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$bind$4(Lcom/aefyr/tsg/g2/TelegramStickersPack;Landroid/view/View;)V
    .locals 6

    .line 162
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vk/core/util/ContextExtKt;->c(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0512

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 163
    new-instance v1, Lcom/vk/stickers/details/StickerDetailsView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vk/stickers/details/StickerDetailsView;-><init>(Landroid/content/Context;)V

    .line 165
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/vk/stickers/details/StickerDetailsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    invoke-static {p0}, Lru/vtosters/lite/tgs/TGRoot;->toStickerPack(Lcom/aefyr/tsg/g2/TelegramStickersPack;)Lcom/vk/dto/stickers/StickerStockItem;

    move-result-object v2

    new-instance v3, Lcom/vk/stickers/bridge/GiftData;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/vk/stickers/bridge/GiftData;-><init>(Ljava/util/Collection;Z)V

    invoke-virtual {v1, v2, v3, v0}, Lcom/vk/stickers/details/StickerDetailsView;->a(Lcom/vk/dto/stickers/StickerStockItem;Lcom/vk/stickers/bridge/GiftData;Landroid/view/ViewGroup;)V

    const v0, 0x7f0a0b46

    .line 168
    invoke-virtual {v1, v0}, Lcom/vk/stickers/details/StickerDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vk/stickers/LongtapRecyclerView;

    .line 169
    invoke-virtual {v0}, Lcom/vk/stickers/LongtapRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/vk/stickers/details/StickerDetailsAdapter;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/vk/stickers/details/StickerDetailsAdapter;->setTelegramPack(Z)V

    .line 171
    new-instance v0, Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;-><init>(Landroid/content/Context;)V

    .line 172
    iget-object v2, p0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;->d(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;

    .line 173
    invoke-virtual {v0, v1}, Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;->d(Landroid/view/View;)Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f080a01

    const v2, 0x7f060018

    invoke-static {p1, v1, v2}, Lcom/vk/core/util/DrawableUtils;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;->a(Landroid/graphics/drawable/Drawable;)Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;

    const p1, 0x7f040168

    .line 175
    invoke-virtual {v0, p1}, Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;->c(I)Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;

    .line 176
    new-instance p1, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/aefyr/tsg/g2/TelegramStickersPack;)V

    invoke-virtual {v0, p1}, Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;->b(Lkotlin/jvm/b/Functions2;)Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;

    .line 180
    new-instance p0, Lcom/vk/core/dialogs/bottomsheet/ContentSnapStrategy1;

    invoke-direct {p0, v5}, Lcom/vk/core/dialogs/bottomsheet/ContentSnapStrategy1;-><init>(Z)V

    invoke-virtual {v0, p0}, Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;->a(Lcom/vk/core/dialogs/bottomsheet/ContentSnapStrategy2;)Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;

    const-string p0, "stickers_preview"

    .line 182
    invoke-virtual {v0, p0}, Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet$a;->a(Ljava/lang/String;)Lcom/vk/core/dialogs/bottomsheet/ModalBottomSheet;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 184
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public bind(I)V
    .locals 4

    .line 118
    invoke-static {}, Lru/vtosters/lite/ui/adapters/StickerPackAdapter;->-$$Nest$sfgetsService()Lcom/aefyr/tsg/g2/TelegramStickersService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aefyr/tsg/g2/TelegramStickersService;->getPacksListReference()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aefyr/tsg/g2/TelegramStickersPack;

    .line 119
    iget v1, v0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->state:I

    if-eqz v1, :cond_0

    return-void

    .line 121
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->folder:Ljava/io/File;

    const-string v3, "001.png"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 124
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;->mStickerPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 128
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    :cond_1
    :goto_0
    iget-object v1, p0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;->mUpdateButton:Landroid/widget/ImageView;

    new-instance v2, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/aefyr/tsg/g2/TelegramStickersPack;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v1, p0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;->mDeleteButton:Landroid/widget/ImageView;

    new-instance v2, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, p1}, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder$$ExternalSyntheticLambda2;-><init>(Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;Lcom/aefyr/tsg/g2/TelegramStickersPack;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object p1, p0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;->mName:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->title:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object p1, p0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v1, v0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->enabled:Z

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 143
    iget-object p1, p0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder$$ExternalSyntheticLambda3;-><init>(Lcom/aefyr/tsg/g2/TelegramStickersPack;)V

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 148
    iget-object p1, p0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;->mStickersCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->stickersCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;->mStickersCount:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f121762

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object p1, p0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lru/vtosters/hooks/SwitchHook;->setSwitchCompatColors(Landroidx/appcompat/widget/SwitchCompat;Landroid/content/Context;)V

    .line 153
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTextAttr()I

    move-result p1

    .line 154
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getSTextAttr()I

    move-result v1

    .line 156
    iget-object v2, p0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    iget-object p1, p0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;->mStickersCount:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    iget p1, v0, Lcom/aefyr/tsg/g2/TelegramStickersPack;->state:I

    if-nez p1, :cond_2

    .line 160
    iget-object p1, p0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;->mContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder$$ExternalSyntheticLambda4;-><init>(Lcom/aefyr/tsg/g2/TelegramStickersPack;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method synthetic lambda$bind$1$ru-vtosters-lite-ui-adapters-StickerPackAdapter$StickerPackViewHolder(Lcom/aefyr/tsg/g2/TelegramStickersPack;ILandroid/view/View;)V
    .locals 0

    .line 137
    invoke-static {}, Lru/vtosters/lite/ui/adapters/StickerPackAdapter;->-$$Nest$sfgetsService()Lcom/aefyr/tsg/g2/TelegramStickersService;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/aefyr/tsg/g2/TelegramStickersService;->deletePack(Lcom/aefyr/tsg/g2/TelegramStickersPack;)V

    .line 138
    iget-object p1, p0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;->this$0:Lru/vtosters/lite/ui/adapters/StickerPackAdapter;

    invoke-virtual {p1, p2}, Lru/vtosters/lite/ui/adapters/StickerPackAdapter;->notifyItemRemoved(I)V

    .line 139
    iget-object p1, p0, Lru/vtosters/lite/ui/adapters/StickerPackAdapter$StickerPackViewHolder;->this$0:Lru/vtosters/lite/ui/adapters/StickerPackAdapter;

    invoke-virtual {p1}, Lru/vtosters/lite/ui/adapters/StickerPackAdapter;->getItemCount()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lru/vtosters/lite/ui/adapters/StickerPackAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method
