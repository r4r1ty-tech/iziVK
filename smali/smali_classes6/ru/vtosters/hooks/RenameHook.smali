.class public Lru/vtosters/hooks/RenameHook;
.super Ljava/lang/Object;
.source "RenameHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static injectIntoJson(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 11
    invoke-static {}, Lru/vtosters/hooks/RenameHook;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "id"

    .line 12
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 13
    sget-boolean v1, Lru/vtosters/lite/utils/RenameTool;->updateRequested:Z

    if-eqz v1, :cond_0

    .line 14
    invoke-static {}, Lru/vtosters/lite/utils/RenameTool;->reloadDB()V

    .line 17
    :cond_0
    sget-object v1, Lru/vtosters/lite/utils/RenameTool;->renamedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/util/Pair;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "first_name"

    .line 19
    iget-object v2, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "last_name"

    iget-object v0, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return-void
.end method

.method public static injectIntoJsonGroup(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 28
    invoke-static {}, Lru/vtosters/hooks/RenameHook;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "id"

    .line 29
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 31
    sget-boolean v1, Lru/vtosters/lite/utils/RenameTool;->updateRequested:Z

    if-eqz v1, :cond_0

    .line 32
    invoke-static {}, Lru/vtosters/lite/utils/RenameTool;->reloadDB()V

    .line 35
    :cond_0
    sget-object v1, Lru/vtosters/lite/utils/RenameTool;->renamedGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "name"

    .line 37
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return-void
.end method

.method public static isEnabled()Z
    .locals 2

    const/4 v0, 0x1

    .line 24
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "unstableNameChanger"

    invoke-static {v1, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method
