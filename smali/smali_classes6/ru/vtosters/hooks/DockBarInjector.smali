.class public Lru/vtosters/hooks/DockBarInjector;
.super Ljava/lang/Object;
.source "DockBarInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static counters(I)Ljava/lang/CharSequence;
    .locals 2

    .line 162
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->dockcounter()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const v0, 0x7f0a0d14

    if-ne p0, v0, :cond_1

    .line 166
    invoke-static {}, Lcom/vtosters/lite/MenuCountersState;->j()I

    move-result p0

    goto :goto_0

    :cond_1
    const v0, 0x7f0a0d15

    if-ne p0, v0, :cond_2

    .line 172
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    .line 173
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "newsfeed_notif"

    invoke-static {v0, p0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 174
    invoke-static {}, Lcom/vtosters/lite/MenuCountersState;->k()I

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-lez p0, :cond_3

    .line 180
    invoke-static {p0}, Lcom/vk/core/util/StringUtils;->a(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public static getItemCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static inject(Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationView;)V
    .locals 9

    .line 45
    invoke-virtual {p0}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    :try_start_0
    const-class v3, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationMenuView;

    const-string v4, "J"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 49
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v4, 0x0

    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "androidx.core.util.Pools$SynchronizedPool"

    .line 53
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "acquire"

    new-array v6, v2, [Ljava/lang/Class;

    .line 54
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4



    if-eqz v3, :cond_1





    :cond_0
    new-array v5, v2, [Ljava/lang/Object;

    .line 57
    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 62
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    :cond_1
    :goto_0
    invoke-static {}, Lru/vtosters/hooks/DockBarInjector;->getTabs()Ljava/util/List;

    move-result-object v3





    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3



    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4



    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4



    check-cast v4, Lru/vtosters/hooks/DockBarInjector$TabInfo;

    .line 66
    iget v5, v4, Lru/vtosters/hooks/DockBarInjector$TabInfo;->id:I

    iget v6, v4, Lru/vtosters/hooks/DockBarInjector$TabInfo;->titleID:I

    invoke-interface {v0, v2, v5, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5



    .line 68
    new-instance v6, Lcom/vk/core/drawable/RecoloredDrawable;

    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, v4, Lru/vtosters/hooks/DockBarInjector$TabInfo;->iconID:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p0}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lru/vtosters/hooks/other/ThemesUtils;->getCSTDock(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/vk/core/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 69
    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v6

    iget v4, v4, Lru/vtosters/hooks/DockBarInjector$TabInfo;->titleID:I

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 70
    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    const-string v0, "dockbar_tab_titles"

    .line 72
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3



    invoke-static {v0, v3}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    invoke-virtual {p0, v2}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationView;->getChildAt(I)Landroid/view/View;

    move-result-object p0



    check-cast p0, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationMenuView;

    const/4 v0, 0x0

    .line 74
    :goto_2
    invoke-virtual {p0}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationMenuView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 75
    invoke-virtual {p0, v0}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;

    .line 76
    invoke-virtual {v3, v1}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->setStaticMode(Z)V

    .line 77
    invoke-virtual {v3, v2}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->setIconsMode(Z)V

    .line 78
    invoke-virtual {v3, v2}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->setShiftingMode(Z)V

    .line 79
    invoke-virtual {v3}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lru/vtosters/hooks/other/ThemesUtils;->getCSTDock(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static injectId(Ljava/lang/String;)I
    .locals 1

    const-string v0, "tab_news"

    .line 92
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f0a0d15

    return p0

    :cond_0
    const-string v0, "tab_audios"

    .line 95
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p0, 0x7f0a07d6

    return p0

    :cond_1
    const-string v0, "tab_messages"

    .line 98
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p0, 0x7f0a0d14

    return p0

    :cond_2
    const-string v0, "tab_profile"

    .line 101
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "tab_menu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const p0, 0x7f0a0d13

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static injectMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/vk/core/fragments/FragmentImpl;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 36
    invoke-static {}, Lru/vtosters/hooks/DockBarInjector;->getTabs()Ljava/util/List;

    move-result-object v0



    invoke-static {v0}, Lru/vtosters/hooks/DockBarInjector;->buildMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static buildMap(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/vtosters/hooks/DockBarInjector$TabInfo;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/vk/core/fragments/FragmentImpl;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 41
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/vtosters/hooks/DockBarInjector$TabInfo;

    .line 42
    iget-object v2, v1, Lru/vtosters/hooks/DockBarInjector$TabInfo;->fragmentClass:Ljava/lang/Class;

    iget v1, v1, Lru/vtosters/hooks/DockBarInjector$TabInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static injectMenuFragment(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public static injectMenuJSON(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0

    return-object p0
.end method

.method public static interceptClick(ILcom/vk/navigation/right/RightMenu;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/vk/navigation/right/RightMenu;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const v0, 0x7f0a0d13

    if-ne p0, v0, :cond_1

    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {p1}, Lcom/vk/navigation/right/RightMenu;->a()V

    .line 258
    :cond_0
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result p0

    if-eqz p0, :cond_6

    const-class p0, Lcom/vtosters/lite/fragments/ProfileFragment;

    return-object p0

    :cond_6
    const-class p0, Lcom/vk/menu/MenuFragment;

    return-object p0

    :cond_1
    const v0, 0x7f0a0d15

    if-ne p0, v0, :cond_3

    .line 261
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result p0

    if-eqz p0, :cond_2

    const-class p0, Lcom/vk/newsfeed/HomeFragment;

    return-object p0

    :cond_2
    const-class p0, Lcom/vk/newsfeed/NewsfeedFragment;

    return-object p0

    :cond_3
    const v0, 0x7f0a07d6

    if-ne p0, v0, :cond_4

    .line 265
    const-class p0, Lcom/vk/music/fragment/MusicCatalogFragment1;

    return-object p0

    :cond_4
    const v0, 0x7f0a0d14

    if-ne p0, v0, :cond_5

    .line 268
    const-class p0, Lcom/vtosters/lite/fragments/t2/c/DialogsFragment;

    return-object p0

    .line 270
    :cond_5
    const-class p0, Lcom/vk/apps/AppsFragment;

    return-object p0
.end method

.method public static isDockOpenAllowed(Lcom/vk/core/fragments/FragmentImpl;)Z
    .locals 0

    .line 241
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0



    invoke-static {p0}, Lru/vtosters/hooks/DockBarInjector;->isDockOpenAllowed(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static isDockOpenAllowed(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 245
    const-class v0, Lcom/vk/newsfeed/HomeFragment;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const-class v0, Lcom/vk/newsfeed/NewsfeedFragment;

    if-ne p0, v0, :cond_1

    return v1

    :cond_1
    const-class v0, Lcom/vk/music/fragment/MusicCatalogFragment1;

    if-ne p0, v0, :cond_2

    return v1

    :cond_2
    const-class v0, Lcom/vtosters/lite/fragments/t2/c/DialogsFragment;

    if-ne p0, v0, :cond_3

    return v1

    :cond_3
    const-class v0, Lcom/vtosters/lite/fragments/ProfileFragment;

    if-ne p0, v0, :cond_4

    return v1

    :cond_4
    const-class v0, Lcom/vk/menu/MenuFragment;

    if-ne p0, v0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method private static removeAllChildren(Landroid/view/ViewGroup;)V
    .locals 2

    const/4 v0, 0x0

    .line 85
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 86
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1}, Lru/vtosters/hooks/DockBarInjector;->removeAllChildren(Landroid/view/ViewGroup;)V

    .line 87
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setCounter(ILcom/vtosters/lite/ui/bottomnavigation/BottomNavigationView;)V
    .locals 1

    .line 157
    invoke-static {p0}, Lru/vtosters/hooks/DockBarInjector;->counters(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/vtosters/lite/ui/bottomnavigation/BottomNavigationView;->a(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public static getTabs()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/vtosters/hooks/DockBarInjector$TabInfo;",
            ">;"
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v1, Lru/vtosters/hooks/DockBarInjector$TabInfo;

    const-string v2, "tab_news"

    const v3, 0x7f0a0d15

    const v4, 0x7f1207e6

    const v5, 0x7f0804db

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v6

    if-eqz v6, :cond_0

    const-class v6, Lcom/vk/newsfeed/HomeFragment;

    goto :goto_0

    :cond_0
    const-class v6, Lcom/vk/newsfeed/NewsfeedFragment;

    :goto_0
    invoke-direct/range {v1 .. v6}, Lru/vtosters/hooks/DockBarInjector$TabInfo;-><init>(Ljava/lang/String;IIILjava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v1, Lru/vtosters/hooks/DockBarInjector$TabInfo;

    const-string v2, "tab_audios"

    const v3, 0x7f0a07d6

    const v4, 0x7f120786

    const v5, 0x7f080517

    const-class v6, Lcom/vk/music/fragment/MusicCatalogFragment1;

    invoke-direct/range {v1 .. v6}, Lru/vtosters/hooks/DockBarInjector$TabInfo;-><init>(Ljava/lang/String;IIILjava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v1, Lru/vtosters/hooks/DockBarInjector$TabInfo;

    const-string v2, "tab_messages"

    const v3, 0x7f0a0d14

    const v4, 0x7f1206f3

    const v5, 0x7f0804cb

    const-class v6, Lcom/vtosters/lite/fragments/t2/c/DialogsFragment;

    invoke-direct/range {v1 .. v6}, Lru/vtosters/hooks/DockBarInjector$TabInfo;-><init>(Ljava/lang/String;IIILjava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result v1

    if-eqz v1, :cond_1

    const v4, 0x7f120aa2

    const v5, 0x7f080648

    const-class v6, Lcom/vtosters/lite/fragments/ProfileFragment;

    goto :goto_1

    :cond_1
    const v4, 0x7f1206eb

    const v5, 0x7f0804d9

    const-class v6, Lcom/vk/menu/MenuFragment;

    :goto_1
    new-instance v1, Lru/vtosters/hooks/DockBarInjector$TabInfo;

    const-string v2, "tab_profile"

    const v3, 0x7f0a0d13

    invoke-direct/range {v1 .. v6}, Lru/vtosters/hooks/DockBarInjector$TabInfo;-><init>(Ljava/lang/String;IIILjava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
