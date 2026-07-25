.class public Lru/vtosters/lite/utils/RenameTool;
.super Ljava/lang/Object;
.source "RenameTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/vtosters/lite/utils/RenameTool$DbHelper;
    }
.end annotation


# static fields
.field public static final COLUMN_FIRSTNAME:Ljava/lang/String; = "first_name"

.field public static final COLUMN_LASTNAME:Ljava/lang/String; = "last_name"

.field private static final COLUMN_NAME:Ljava/lang/String; = "name"

.field private static final COLUMN_VKID:Ljava/lang/String; = "vk_id"

.field private static final DB_NAME:Ljava/lang/String; = "vt_rename.db"

.field private static final DB_VERSION:I = 0x2

.field private static final TABLE_NAME:Ljava/lang/String; = "renames"

.field private static final TABLE_NAME_GROUP:Ljava/lang/String; = "renames_group"

.field private static helperInstance:Lru/vtosters/lite/utils/RenameTool$DbHelper;

.field public static final renamedGroups:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final renamedUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static updateRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lru/vtosters/lite/utils/RenameTool;->renamedUsers:Landroid/util/SparseArray;

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lru/vtosters/lite/utils/RenameTool;->renamedGroups:Landroid/util/SparseArray;

    const/4 v0, 0x1

    .line 41
    sput-boolean v0, Lru/vtosters/lite/utils/RenameTool;->updateRequested:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearDatabase()V
    .locals 3

    .line 143
    invoke-static {}, Lru/vtosters/lite/utils/RenameTool;->getHelper()Lru/vtosters/lite/utils/RenameTool$DbHelper;

    move-result-object v0

    invoke-virtual {v0}, Lru/vtosters/lite/utils/RenameTool$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "renames"

    const/4 v2, 0x0

    .line 145
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "renames_group"

    .line 146
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 148
    sget-object v0, Lru/vtosters/lite/utils/RenameTool;->renamedGroups:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 149
    sget-object v0, Lru/vtosters/lite/utils/RenameTool;->renamedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x1

    .line 150
    sput-boolean v0, Lru/vtosters/lite/utils/RenameTool;->updateRequested:Z

    return-void
.end method

.method public static createDialog(Lcom/vtosters/lite/api/ExtendedUserProfile;Landroid/content/Context;)V
    .locals 7

    .line 89
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 92
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12112c

    .line 93
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 94
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTextAttr()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 95
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getSTextAttr()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 96
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccenedColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 99
    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v4, 0x41a00000    # 20.0f

    .line 100
    invoke-static {v4}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v4}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v4

    invoke-virtual {v2, v5, v6, v4, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 101
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const v5, 0x7f121135

    .line 104
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 105
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTextAttr()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTextColor(I)V

    .line 106
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getSTextAttr()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 107
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccenedColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 108
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    invoke-virtual {v4}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 110
    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    invoke-static {p0}, Lru/vtosters/lite/utils/AccountManagerUtils;->fromEup(Lcom/vtosters/lite/api/ExtendedUserProfile;)Lcom/vk/dto/user/UserProfile;

    move-result-object p0

    .line 113
    invoke-static {p0}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserFirstName(Lcom/vk/dto/user/UserProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-static {p0}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserLastName(Lcom/vk/dto/user/UserProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-static {p0}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserID(Lcom/vk/dto/user/UserProfile;)I

    move-result p0

    .line 118
    new-instance v2, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-direct {v2, p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f12171e

    .line 119
    invoke-virtual {v2, v3}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(I)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f121719

    .line 120
    invoke-virtual {v2, v3}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setMessage(I)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v2

    .line 121
    invoke-virtual {v2, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lru/vtosters/lite/utils/RenameTool$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, v1, v4, p0}, Lru/vtosters/lite/utils/RenameTool$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;I)V

    const-string v1, "OK"

    .line 122
    invoke-virtual {v0, v1, v2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    .line 124
    invoke-static {p0}, Lru/vtosters/lite/utils/RenameTool;->isChangedName(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    new-instance v1, Lru/vtosters/lite/utils/RenameTool$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p0}, Lru/vtosters/lite/utils/RenameTool$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;I)V

    const p0, 0x7f12171c

    invoke-virtual {v0, p0, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    .line 128
    :cond_0
    invoke-virtual {v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public static createDialogGroup(Lcom/vtosters/lite/api/ExtendedCommunityProfile;Landroid/content/Context;)V
    .locals 6

    .line 195
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 196
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 198
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12112c

    .line 199
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 200
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getSTextAttr()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 201
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTextAttr()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 202
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getAccenedColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 203
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 204
    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 205
    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v3, 0x41a00000    # 20.0f

    .line 206
    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v3}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v3

    invoke-virtual {v2, v4, v5, v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 207
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    invoke-static {p0}, Lru/vtosters/lite/utils/AccountManagerUtils;->fromEup(Lcom/vtosters/lite/api/ExtendedUserProfile;)Lcom/vk/dto/user/UserProfile;

    move-result-object p0

    .line 210
    invoke-static {p0}, Lru/vtosters/lite/utils/AccountManagerUtils;->getGroupName(Lcom/vk/dto/user/UserProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 212
    invoke-static {p0}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserID(Lcom/vk/dto/user/UserProfile;)I

    move-result p0

    if-gez p0, :cond_0

    neg-int p0, p0

    .line 218
    :cond_0
    new-instance v2, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-direct {v2, p1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f12171e

    .line 219
    invoke-virtual {v2, v3}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(I)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f121719

    .line 220
    invoke-virtual {v2, v3}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setMessage(I)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v2

    .line 221
    invoke-virtual {v2, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lru/vtosters/lite/utils/RenameTool$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1, v1, p0}, Lru/vtosters/lite/utils/RenameTool$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;Landroid/widget/EditText;I)V

    const-string v1, "OK"

    .line 222
    invoke-virtual {v0, v1, v2}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    .line 224
    invoke-static {p0}, Lru/vtosters/lite/utils/RenameTool;->isChangedNameGroup(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    new-instance v1, Lru/vtosters/lite/utils/RenameTool$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p0}, Lru/vtosters/lite/utils/RenameTool$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;I)V

    const p0, 0x7f12171c

    invoke-virtual {v0, p0, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    .line 228
    :cond_1
    invoke-virtual {v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "UTF-8"

    .line 82
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 encoding not supported"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static deleteGroupName(Landroid/content/Context;I)V
    .locals 4

    .line 232
    invoke-static {}, Lru/vtosters/lite/utils/RenameTool;->getHelper()Lru/vtosters/lite/utils/RenameTool$DbHelper;

    move-result-object v0

    invoke-virtual {v0}, Lru/vtosters/lite/utils/RenameTool$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 234
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "renames_group"

    const-string v3, "vk_id=?"

    invoke-virtual {v0, p1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 236
    sput-boolean v1, Lru/vtosters/lite/utils/RenameTool;->updateRequested:Z

    const p1, 0x7f12171b

    .line 238
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    return-void
.end method

.method public static deleteUser(Landroid/content/Context;I)V
    .locals 5

    .line 132
    invoke-static {}, Lru/vtosters/lite/utils/RenameTool;->getHelper()Lru/vtosters/lite/utils/RenameTool$DbHelper;

    move-result-object v0

    invoke-virtual {v0}, Lru/vtosters/lite/utils/RenameTool$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 134
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "renames"

    const-string v4, "vk_id=?"

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 136
    sput-boolean v1, Lru/vtosters/lite/utils/RenameTool;->updateRequested:Z

    .line 137
    invoke-static {p0, p1}, Lru/vtosters/lite/utils/RenameTool;->notifyUser(Landroid/content/Context;I)V

    const p1, 0x7f12171a

    .line 139
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    return-void
.end method

.method private static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "UTF-8"

    .line 181
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 183
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 encoding not supported"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected static getHelper()Lru/vtosters/lite/utils/RenameTool$DbHelper;
    .locals 2

    .line 45
    sget-object v0, Lru/vtosters/lite/utils/RenameTool;->helperInstance:Lru/vtosters/lite/utils/RenameTool$DbHelper;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lru/vtosters/lite/utils/RenameTool$DbHelper;

    invoke-static {}, Lru/vtosters/lite/utils/AndroidUtils;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lru/vtosters/lite/utils/RenameTool$DbHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lru/vtosters/lite/utils/RenameTool;->helperInstance:Lru/vtosters/lite/utils/RenameTool$DbHelper;

    .line 48
    :cond_0
    sget-object v0, Lru/vtosters/lite/utils/RenameTool;->helperInstance:Lru/vtosters/lite/utils/RenameTool$DbHelper;

    return-object v0
.end method

.method public static isChangedName(I)Z
    .locals 1

    .line 265
    sget-object v0, Lru/vtosters/lite/utils/RenameTool;->renamedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isChangedNameGroup(I)Z
    .locals 1

    .line 269
    sget-object v0, Lru/vtosters/lite/utils/RenameTool;->renamedGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$createDialog$2(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 122
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lru/vtosters/lite/utils/RenameTool;->updateName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$createDialog$3(Landroid/content/Context;ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 125
    invoke-static {p0, p1}, Lru/vtosters/lite/utils/RenameTool;->deleteUser(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic lambda$createDialogGroup$4(Landroid/content/Context;Landroid/widget/EditText;ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 222
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lru/vtosters/lite/utils/RenameTool;->updateGroupName(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$createDialogGroup$5(Landroid/content/Context;ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 225
    invoke-static {p0, p1}, Lru/vtosters/lite/utils/RenameTool;->deleteGroupName(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic lambda$reloadDB$0(Landroid/database/Cursor;Ljava/lang/Integer;)V
    .locals 3

    const-string v0, "first_name"

    .line 57
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/vtosters/lite/utils/RenameTool;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "last_name"

    .line 58
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/lite/utils/RenameTool;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 59
    sget-object v1, Lru/vtosters/lite/utils/RenameTool;->renamedUsers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance v2, Landroidx/core/util/Pair;

    invoke-direct {v2, v0, p0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$reloadDB$1(Landroid/database/Cursor;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "name"

    .line 63
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/lite/utils/RenameTool;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 64
    sget-object v0, Lru/vtosters/lite/utils/RenameTool;->renamedGroups:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private static loadData(Ljava/lang/String;Ljava/util/function/BiConsumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/BiConsumer<",
            "Landroid/database/Cursor;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SELECT * FROM "

    .line 70
    :try_start_0
    invoke-static {}, Lru/vtosters/lite/utils/RenameTool;->getHelper()Lru/vtosters/lite/utils/RenameTool$DbHelper;

    move-result-object v1

    invoke-virtual {v1}, Lru/vtosters/lite/utils/RenameTool$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "vk_id"

    .line 72
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 75
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_2

    .line 70
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 76
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to load data from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static notifyUser(Landroid/content/Context;I)V
    .locals 2

    .line 188
    invoke-static {}, Lru/vtosters/lite/utils/AccountManagerUtils;->getUserId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.USER_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 191
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.ACTION_PROFILE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static reloadDB()V
    .locals 2

    .line 52
    sget-object v0, Lru/vtosters/lite/utils/RenameTool;->renamedGroups:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 53
    sget-object v0, Lru/vtosters/lite/utils/RenameTool;->renamedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    .line 54
    sput-boolean v0, Lru/vtosters/lite/utils/RenameTool;->updateRequested:Z

    .line 56
    new-instance v0, Lru/vtosters/lite/utils/RenameTool$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lru/vtosters/lite/utils/RenameTool$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "renames"

    invoke-static {v1, v0}, Lru/vtosters/lite/utils/RenameTool;->loadData(Ljava/lang/String;Ljava/util/function/BiConsumer;)V

    .line 62
    new-instance v0, Lru/vtosters/lite/utils/RenameTool$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lru/vtosters/lite/utils/RenameTool$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "renames_group"

    invoke-static {v1, v0}, Lru/vtosters/lite/utils/RenameTool;->loadData(Ljava/lang/String;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static updateGroupName(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5

    .line 242
    invoke-static {}, Lru/vtosters/lite/utils/RenameTool;->getHelper()Lru/vtosters/lite/utils/RenameTool$DbHelper;

    move-result-object p0

    invoke-virtual {p0}, Lru/vtosters/lite/utils/RenameTool$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 245
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "name"

    .line 246
    invoke-static {p1}, Lru/vtosters/lite/utils/RenameTool;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-static {p2}, Lru/vtosters/lite/utils/RenameTool;->isChangedNameGroup(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const-string v2, "renames_group"

    if-eqz p1, :cond_0

    :try_start_1
    const-string p1, "vk_id=?"

    new-array v3, v1, [Ljava/lang/String;

    .line 250
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p0, v2, v0, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "vk_id"

    .line 253
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x0

    .line 254
    invoke-virtual {p0, v2, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 257
    :goto_0
    sput-boolean v1, Lru/vtosters/lite/utils/RenameTool;->updateRequested:Z

    const p0, 0x7f121718

    .line 258
    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 260
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Database operation failed"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static updateName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .line 154
    invoke-static {}, Lru/vtosters/lite/utils/RenameTool;->getHelper()Lru/vtosters/lite/utils/RenameTool$DbHelper;

    move-result-object v0

    invoke-virtual {v0}, Lru/vtosters/lite/utils/RenameTool$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 157
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "first_name"

    .line 158
    invoke-static {p1}, Lru/vtosters/lite/utils/RenameTool;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "last_name"

    .line 159
    invoke-static {p2}, Lru/vtosters/lite/utils/RenameTool;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {p3}, Lru/vtosters/lite/utils/RenameTool;->isChangedName(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x1

    const-string v2, "renames"

    if-eqz p1, :cond_0

    :try_start_1
    const-string p1, "vk_id=?"

    new-array v3, p2, [Ljava/lang/String;

    .line 163
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v1, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "vk_id"

    .line 166
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x0

    .line 167
    invoke-virtual {v0, v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 170
    :goto_0
    sput-boolean p2, Lru/vtosters/lite/utils/RenameTool;->updateRequested:Z

    .line 171
    invoke-static {p0, p3}, Lru/vtosters/lite/utils/RenameTool;->notifyUser(Landroid/content/Context;I)V

    const p1, 0x7f12171d

    .line 173
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 175
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Database operation failed"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
