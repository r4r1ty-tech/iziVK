.class public Lru/vtosters/hooks/DockBarInjector;
.super Ljava/lang/Object;
.source "DockBarInjector.java"


# static fields
.field private static final sManager:Lru/vtosters/lite/ui/components/DockBarEditorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    invoke-static {}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->getInstance()Lru/vtosters/lite/ui/components/DockBarEditorManager;

    move-result-object v0

    sput-object v0, Lru/vtosters/hooks/DockBarInjector;->sManager:Lru/vtosters/lite/ui/components/DockBarEditorManager;

    return-void
.end method

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
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    .line 177
    :sswitch_0
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "newsfeed_notif"

    invoke-static {v0, p0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 178
    invoke-static {}, Lcom/vtosters/lite/MenuCountersState;->k()I

    move-result p0

    goto :goto_1

    .line 166
    :sswitch_1
    invoke-static {}, Lcom/vtosters/lite/MenuCountersState;->j()I

    move-result p0

    goto :goto_1

    .line 173
    :sswitch_2
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 174
    invoke-static {}, Lcom/vtosters/lite/MenuCountersState;->k()I

    move-result p0

    goto :goto_1

    .line 171
    :sswitch_3
    invoke-static {}, Lcom/vtosters/lite/MenuCountersState;->n()I

    move-result p0

    goto :goto_1

    .line 170
    :sswitch_4
    invoke-static {}, Lcom/vtosters/lite/MenuCountersState;->l()I

    move-result p0

    goto :goto_1

    .line 167
    :sswitch_5
    invoke-static {}, Lcom/vtosters/lite/MenuCountersState;->h()I

    move-result p0

    goto :goto_1

    .line 169
    :sswitch_6
    invoke-static {}, Lcom/vtosters/lite/MenuCountersState;->a()I

    move-result p0

    goto :goto_1

    .line 181
    :sswitch_7
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->milkshake()Z

    move-result p0

    if-nez p0, :cond_1

    .line 182
    invoke-static {}, Lcom/vtosters/lite/MenuCountersState;->k()I

    move-result p0

    goto :goto_1

    .line 168
    :sswitch_8
    invoke-static {}, Lcom/vtosters/lite/MenuCountersState;->c()I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    if-lez p0, :cond_2

    .line 200
    invoke-static {p0}, Lcom/vk/core/util/StringUtils;->a(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x7f0a07d4 -> :sswitch_8
        0x7f0a07d8 -> :sswitch_7
        0x7f0a07d9 -> :sswitch_6
        0x7f0a07da -> :sswitch_5
        0x7f0a07e1 -> :sswitch_4
        0x7f0a07ec -> :sswitch_3
        0x7f0a0d12 -> :sswitch_2
        0x7f0a0d14 -> :sswitch_1
        0x7f0a0d15 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getItemCount()I
    .locals 1

    .line 237
    sget-object v0, Lru/vtosters/hooks/DockBarInjector;->sManager:Lru/vtosters/lite/ui/components/DockBarEditorManager;

    invoke-virtual {v0}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->getSelectedTabs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

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
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_0

    :catch_4
    move-exception v3

    .line 62
    :goto_0
    invoke-virtual {v3}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 65
    :cond_1
    :goto_1
    sget-object v3, Lru/vtosters/hooks/DockBarInjector;->sManager:Lru/vtosters/lite/ui/components/DockBarEditorManager;

    invoke-virtual {v3}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->getSelectedTabs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/vtosters/lite/ui/items/DockBarTab;

    .line 66
    iget v5, v4, Lru/vtosters/lite/ui/items/DockBarTab;->id:I

    iget v6, v4, Lru/vtosters/lite/ui/items/DockBarTab;->titleID:I

    invoke-interface {v0, v2, v5, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    .line 68
    new-instance v6, Lcom/vk/core/drawable/RecoloredDrawable;

    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, v4, Lru/vtosters/lite/ui/items/DockBarTab;->iconID:I

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

    iget v4, v4, Lru/vtosters/lite/ui/items/DockBarTab;->titleID:I

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 70
    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    goto :goto_2

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
    :goto_3
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

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static injectId(Ljava/lang/String;)I
    .locals 3

    .line 92
    sget-object v0, Lru/vtosters/hooks/DockBarInjector;->sManager:Lru/vtosters/lite/ui/components/DockBarEditorManager;

    invoke-virtual {v0}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->getSelectedTabs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/vtosters/lite/ui/items/DockBarTab;

    .line 93
    iget-object v2, v1, Lru/vtosters/lite/ui/items/DockBarTab;->tag:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    iget p0, v1, Lru/vtosters/lite/ui/items/DockBarTab;->id:I

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static injectMap()Ljava/util/Map;
    .locals 4
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
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 37
    sget-object v1, Lru/vtosters/hooks/DockBarInjector;->sManager:Lru/vtosters/lite/ui/components/DockBarEditorManager;

    invoke-virtual {v1}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->getSelectedTabs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/vtosters/lite/ui/items/DockBarTab;

    .line 38
    iget-object v3, v2, Lru/vtosters/lite/ui/items/DockBarTab;->fragmentClass:Ljava/lang/Class;

    iget v2, v2, Lru/vtosters/lite/ui/items/DockBarTab;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static injectMenuFragment(Landroid/view/Menu;)V
    .locals 16

    move-object/from16 v0, p0

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 101
    :goto_0
    invoke-interface/range {p0 .. p0}, Landroid/view/Menu;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 102
    invoke-interface {v0, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    :cond_0
    invoke-interface/range {p0 .. p0}, Landroid/view/Menu;->clear()V

    .line 106
    sget-object v3, Lru/vtosters/hooks/DockBarInjector;->sManager:Lru/vtosters/lite/ui/components/DockBarEditorManager;

    invoke-virtual {v3}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->getSelectedTabs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const v5, 0x7f0a07de

    const v6, 0x7f0a07d7

    const v7, 0x7f0a0d14

    const v8, 0x7f0a07e4

    const v9, 0x7f0a0d12

    const v10, 0x7f0a07df

    const v11, 0x7f0a0d11

    const v12, 0x7f0a0d15

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lru/vtosters/lite/ui/items/DockBarTab;

    .line 107
    iget v13, v4, Lru/vtosters/lite/ui/items/DockBarTab;->id:I

    const v14, 0x7f0a0d13

    if-eq v13, v14, :cond_1

    .line 108
    iget v13, v4, Lru/vtosters/lite/ui/items/DockBarTab;->id:I

    .line 109
    iget v14, v4, Lru/vtosters/lite/ui/items/DockBarTab;->id:I

    if-ne v14, v12, :cond_2

    const v5, 0x7f0a07df

    goto :goto_2

    .line 111
    :cond_2
    iget v10, v4, Lru/vtosters/lite/ui/items/DockBarTab;->id:I

    if-ne v10, v11, :cond_3

    const v5, 0x7f0a07e4

    goto :goto_2

    .line 113
    :cond_3
    iget v8, v4, Lru/vtosters/lite/ui/items/DockBarTab;->id:I

    if-ne v8, v9, :cond_4

    const v5, 0x7f0a07d7

    goto :goto_2

    .line 115
    :cond_4
    iget v6, v4, Lru/vtosters/lite/ui/items/DockBarTab;->id:I

    if-ne v6, v7, :cond_5

    goto :goto_2

    :cond_5
    move v5, v13

    .line 119
    :goto_2
    iget v6, v4, Lru/vtosters/lite/ui/items/DockBarTab;->titleID:I

    invoke-interface {v0, v2, v5, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    .line 120
    iget v4, v4, Lru/vtosters/lite/ui/items/DockBarTab;->iconID:I

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v4, 0x1

    .line 121
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 125
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MenuItem;

    .line 126
    invoke-interface {v4}, Landroid/view/MenuItem;->getGroupId()I

    move-result v13

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v14

    invoke-interface {v4}, Landroid/view/MenuItem;->getOrder()I

    move-result v15

    invoke-interface {v4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v0, v13, v14, v15, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 127
    invoke-interface {v4}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    const/4 v2, 0x0

    goto :goto_3

    .line 129
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    .line 131
    :goto_4
    invoke-interface/range {p0 .. p0}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    .line 132
    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 133
    sget-object v4, Lru/vtosters/hooks/DockBarInjector;->sManager:Lru/vtosters/lite/ui/components/DockBarEditorManager;

    invoke-virtual {v4}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->getSelectedTabs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lru/vtosters/lite/ui/items/DockBarTab;

    .line 134
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v14

    if-ne v14, v10, :cond_9

    const v14, 0x7f0a0d15

    goto :goto_5

    :cond_9
    if-ne v14, v8, :cond_a

    const v14, 0x7f0a0d11

    goto :goto_5

    :cond_a
    if-ne v14, v6, :cond_b

    const v14, 0x7f0a0d12

    goto :goto_5

    :cond_b
    if-ne v14, v5, :cond_c

    const v14, 0x7f0a0d14

    .line 144
    :cond_c
    :goto_5
    iget v15, v13, Lru/vtosters/lite/ui/items/DockBarTab;->id:I

    if-ne v14, v15, :cond_8

    iget v13, v13, Lru/vtosters/lite/ui/items/DockBarTab;->id:I

    const v14, 0x7f0a07ee

    if-eq v13, v14, :cond_8

    .line 145
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 151
    :cond_e
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    .line 152
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_6

    :cond_f
    return-void
.end method

.method public static injectMenuJSON(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 9

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "news"

    const-string v2, "messages"

    const-string v3, "feedback"

    const-string v4, "discover"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 210
    sget-object v5, Lru/vtosters/hooks/DockBarInjector;->sManager:Lru/vtosters/lite/ui/components/DockBarEditorManager;

    invoke-virtual {v5}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->getSelectedTabs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lru/vtosters/lite/ui/items/DockBarTab;

    .line 211
    iget v7, v6, Lru/vtosters/lite/ui/items/DockBarTab;->id:I

    const v8, 0x7f0a0d11

    if-ne v7, v8, :cond_1

    .line 212
    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 213
    :cond_1
    iget v7, v6, Lru/vtosters/lite/ui/items/DockBarTab;->id:I

    const v8, 0x7f0a0d12

    if-ne v7, v8, :cond_2

    .line 214
    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    :cond_2
    iget v7, v6, Lru/vtosters/lite/ui/items/DockBarTab;->id:I

    const v8, 0x7f0a0d14

    if-ne v7, v8, :cond_3

    .line 216
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    :cond_3
    iget v6, v6, Lru/vtosters/lite/ui/items/DockBarTab;->id:I

    const v7, 0x7f0a0d15

    if-ne v6, v7, :cond_0

    .line 218
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    :cond_4
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 223
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 224
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "name"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 226
    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 227
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return-object v1

    :catch_0
    move-exception v0

    .line 231
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-object p0
.end method

.method public static interceptClick(ILcom/vk/navigation/right/RightMenu;)Ljava/lang/Class;
    .locals 2
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

    if-ne p0, v0, :cond_0

    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {p1}, Lcom/vk/navigation/right/RightMenu;->a()V

    .line 259
    :cond_0
    sget-object p1, Lru/vtosters/hooks/DockBarInjector;->sManager:Lru/vtosters/lite/ui/components/DockBarEditorManager;

    invoke-virtual {p1}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->getSelectedTabs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/vtosters/lite/ui/items/DockBarTab;

    .line 260
    iget v1, v0, Lru/vtosters/lite/ui/items/DockBarTab;->id:I

    if-ne p0, v1, :cond_1

    .line 261
    iget-object p0, v0, Lru/vtosters/lite/ui/items/DockBarTab;->fragmentClass:Ljava/lang/Class;

    return-object p0

    .line 264
    :cond_2
    sget-object p1, Lru/vtosters/hooks/DockBarInjector;->sManager:Lru/vtosters/lite/ui/components/DockBarEditorManager;

    invoke-virtual {p1}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->getDisabledTabs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/vtosters/lite/ui/items/DockBarTab;

    .line 265
    iget v1, v0, Lru/vtosters/lite/ui/items/DockBarTab;->id:I

    if-ne p0, v1, :cond_3

    .line 266
    iget-object p0, v0, Lru/vtosters/lite/ui/items/DockBarTab;->fragmentClass:Ljava/lang/Class;

    return-object p0

    .line 269
    :cond_4
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 245
    sget-object v0, Lru/vtosters/hooks/DockBarInjector;->sManager:Lru/vtosters/lite/ui/components/DockBarEditorManager;

    invoke-virtual {v0}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->getSelectedTabs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/vtosters/lite/ui/items/DockBarTab;

    .line 246
    iget-object v1, v1, Lru/vtosters/lite/ui/items/DockBarTab;->fragmentClass:Ljava/lang/Class;

    if-ne v1, p0, :cond_0

    return v2

    .line 248
    :cond_1
    sget-object v0, Lru/vtosters/hooks/DockBarInjector;->sManager:Lru/vtosters/lite/ui/components/DockBarEditorManager;

    invoke-virtual {v0}, Lru/vtosters/lite/ui/components/DockBarEditorManager;->getDisabledTabs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/vtosters/lite/ui/items/DockBarTab;

    .line 249
    iget-object v1, v1, Lru/vtosters/lite/ui/items/DockBarTab;->fragmentClass:Ljava/lang/Class;

    if-ne v1, p0, :cond_2

    return v2

    :cond_3
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
