.class public Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;
.super Landroidx/preference/Preference;
.source "WallpaperPreferences.java"


# instance fields
.field private mAdapter:Lru/vtosters/lite/ui/adapters/MessagesPreviewAdapter;

.field mChatBackground:Landroid/widget/ImageView;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 22
    invoke-direct {p0, p1, v0, v1, v1}, Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 26
    invoke-direct {p0, p1, p2, v0, v0}, Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, -0x1

    .line 30
    invoke-direct {p0, p1, p2, p3, v0}, Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x7f0d06df

    .line 35
    invoke-virtual {p0, p1}, Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;->setLayoutResource(I)V

    return-void
.end method

.method private requestBg()V
    .locals 2

    .line 54
    invoke-static {}, Lru/vtosters/lite/ui/wallpapers/WallpapersHooks;->getWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;->mChatBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 40
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a059f

    .line 42
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v1, 0x41000000    # 8.0f

    .line 43
    invoke-static {v1}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    .line 44
    iget-object v0, p0, Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 45
    iget-object v0, p0, Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lru/vtosters/lite/ui/adapters/MessagesPreviewAdapter;

    const v3, 0x7f030076

    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->getArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lru/vtosters/lite/ui/adapters/MessagesPreviewAdapter;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;->mAdapter:Lru/vtosters/lite/ui/adapters/MessagesPreviewAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 46
    iget-object v0, p0, Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setClickable(Z)V

    .line 47
    iget-object v0, p0, Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setFocusable(Z)V

    const v0, 0x7f0a100b

    .line 49
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;->mChatBackground:Landroid/widget/ImageView;

    .line 50
    invoke-direct {p0}, Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;->requestBg()V

    return-void
.end method

.method redraw()V
    .locals 1

    .line 60
    iget-object v0, p0, Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;->mAdapter:Lru/vtosters/lite/ui/adapters/MessagesPreviewAdapter;

    invoke-virtual {v0}, Lru/vtosters/lite/ui/adapters/MessagesPreviewAdapter;->notifyDataSetChanged()V

    .line 61
    invoke-direct {p0}, Lru/vtosters/lite/ui/wallpapers/WallpaperPreferences;->requestBg()V

    return-void
.end method
