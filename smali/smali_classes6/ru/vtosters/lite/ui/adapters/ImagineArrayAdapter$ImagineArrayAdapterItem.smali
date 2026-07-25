.class public Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;
.super Ljava/lang/Object;
.source "ImagineArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImagineArrayAdapterItem"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 149
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;->mText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 139
    iput-object p2, p0, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;->mText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 144
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;->mText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 134
    iput-object p2, p0, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;->mText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 153
    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lru/vtosters/lite/ui/adapters/ImagineArrayAdapter$ImagineArrayAdapterItem;->mText:Ljava/lang/String;

    return-object v0
.end method
