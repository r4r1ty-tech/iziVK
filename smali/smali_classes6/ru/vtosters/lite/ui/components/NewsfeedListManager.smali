.class public Lru/vtosters/lite/ui/components/NewsfeedListManager;
.super Ljava/lang/Object;
.source "NewsfeedListManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callEditorPopup(Landroid/app/Activity;)V
    .locals 7

    const-string v0, "news_feed_selected_items"

    .line 19
    invoke-static {v0}, Lru/vtosters/hooks/other/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "news_feed_items_set"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 21
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const v0, 0x7f1216c0

    .line 24
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    return-void

    .line 28
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "|"

    .line 29
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 30
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 32
    new-instance v5, Lru/vtosters/lite/ui/vkui/VBListBuilder$VBListItem;

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-direct {v5, v4, v3, v6}, Lru/vtosters/lite/ui/vkui/VBListBuilder$VBListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder$VBSContent;

    const v1, 0x7f1216be

    .line 36
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {p0, v2}, Lru/vtosters/lite/ui/vkui/VBListBuilder;->buildListOf(Landroid/content/Context;Ljava/util/List;)Landroid/view/ViewGroup;

    move-result-object v3

    new-instance v4, Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder$VBSContent$VBSButton;

    const v5, 0x7f120cb1

    .line 39
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lru/vtosters/lite/ui/components/NewsfeedListManager$$ExternalSyntheticLambda0;

    invoke-direct {v6, v2, p0}, Lru/vtosters/lite/ui/components/NewsfeedListManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;)V

    invoke-direct {v4, v5, v6}, Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder$VBSContent$VBSButton;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1, v3, v4}, Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder$VBSContent;-><init>(Ljava/lang/String;Landroid/view/View;Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder$VBSContent$VBSButton;)V

    const-string v1, "newsfeed_items_editor"

    .line 35
    invoke-static {p0, v0, v1}, Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder;->show(Landroid/app/Activity;Lru/vtosters/lite/ui/vkui/VBottomSheetBuilder$VBSContent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$callEditorPopup$0(Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 3

    .line 42
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, ""

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/vtosters/lite/ui/vkui/VBListBuilder$VBListItem;

    .line 43
    iget-boolean v2, v1, Lru/vtosters/lite/ui/vkui/VBListBuilder$VBListItem;->checked:Z

    if-eqz v2, :cond_0

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lru/vtosters/lite/ui/vkui/VBListBuilder$VBListItem;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 45
    :cond_1
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 46
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "news_feed_selected_items"

    .line 47
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 48
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const p0, 0x7f1216c1

    .line 49
    invoke-virtual {p1, p0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    return-void
.end method

.method public static resetHideItems()V
    .locals 2

    .line 56
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "news_feed_selected_items"

    .line 58
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "news_feed_items_set"

    .line 59
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const v0, 0x7f1216bf

    .line 61
    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    return-void
.end method
