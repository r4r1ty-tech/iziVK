.class public Lru/vtosters/lite/ui/dialogs/MessageSettings;
.super Ljava/lang/Object;
.source "MessageSettings.java"


# static fields
.field public static bombCount:Ljava/lang/String;

.field public static isSilentEnabled:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/ui/dialogs/MessageSettings;->isSilentEnabled:Ljava/lang/Boolean;

    const-string v0, "0"

    .line 21
    sput-object v0, Lru/vtosters/lite/ui/dialogs/MessageSettings;->bombCount:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static argDialog(Landroid/content/Context;)V
    .locals 16

    move-object/from16 v0, p0

    .line 25
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v3, Landroid/widget/RadioGroup;

    invoke-direct {v3, v0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 28
    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->setOrientation(I)V

    const/high16 v4, 0x41900000    # 18.0f

    .line 29
    invoke-static {v4}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v5

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v6}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v7

    invoke-static {v4}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v3, v5, v7, v8, v9}, Landroid/widget/RadioGroup;->setPadding(IIII)V

    .line 31
    new-instance v5, Landroid/widget/RadioButton;

    new-instance v7, Landroidx/appcompat/view/ContextThemeWrapper;

    const v8, 0x7f1303e6

    invoke-direct {v7, v0, v8}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v5, v7}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v7, Landroid/widget/RadioButton;

    new-instance v10, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v10, v0, v8}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v7, v10}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v10, Landroid/widget/RadioButton;

    new-instance v11, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v11, v0, v8}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v10, v11}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v11, Landroid/widget/RadioButton;

    new-instance v12, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v12, v0, v8}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v11, v12}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v12, Landroid/widget/RadioButton;

    new-instance v13, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v13, v0, v8}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v12, v13}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v13, Landroid/widget/RadioButton;

    new-instance v14, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v14, v0, v8}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v13, v14}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-static {v5}, Lru/vtosters/hooks/SwitchHook;->setCompoundButton(Landroid/widget/CompoundButton;)V

    .line 39
    invoke-static {v7}, Lru/vtosters/hooks/SwitchHook;->setCompoundButton(Landroid/widget/CompoundButton;)V

    .line 40
    invoke-static {v10}, Lru/vtosters/hooks/SwitchHook;->setCompoundButton(Landroid/widget/CompoundButton;)V

    .line 41
    invoke-static {v11}, Lru/vtosters/hooks/SwitchHook;->setCompoundButton(Landroid/widget/CompoundButton;)V

    .line 42
    invoke-static {v12}, Lru/vtosters/hooks/SwitchHook;->setCompoundButton(Landroid/widget/CompoundButton;)V

    .line 43
    invoke-static {v13}, Lru/vtosters/hooks/SwitchHook;->setCompoundButton(Landroid/widget/CompoundButton;)V

    .line 45
    invoke-virtual {v3, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 46
    invoke-virtual {v3, v7}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 47
    invoke-virtual {v3, v10}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 48
    invoke-virtual {v3, v11}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 49
    invoke-virtual {v3, v12}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 50
    invoke-virtual {v3, v13}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    const/high16 v8, 0x41600000    # 14.0f

    .line 52
    invoke-static {v8}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v5, v9, v14}, Landroid/widget/RadioButton;->setTextSize(IF)V

    .line 53
    invoke-static {v8}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v7, v9, v14}, Landroid/widget/RadioButton;->setTextSize(IF)V

    .line 54
    invoke-static {v8}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v10, v9, v14}, Landroid/widget/RadioButton;->setTextSize(IF)V

    .line 55
    invoke-static {v8}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v11, v9, v14}, Landroid/widget/RadioButton;->setTextSize(IF)V

    .line 56
    invoke-static {v8}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v12, v9, v14}, Landroid/widget/RadioButton;->setTextSize(IF)V

    .line 57
    invoke-static {v8}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v13, v9, v14}, Landroid/widget/RadioButton;->setTextSize(IF)V

    const v14, 0x7f1216f7

    .line 59
    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f1216a7

    .line 60
    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f1216a9

    .line 61
    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f1216ab

    .line 62
    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f1216a8

    .line 63
    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f1216aa

    .line 64
    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTextAttr()I

    move-result v14

    invoke-virtual {v5, v14}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 67
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTextAttr()I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 68
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTextAttr()I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 69
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTextAttr()I

    move-result v14

    invoke-virtual {v11, v14}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 70
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTextAttr()I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 71
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTextAttr()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 73
    sget-object v14, Lru/vtosters/lite/ui/dialogs/MessageSettings;->bombCount:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/4 v4, -0x1

    sparse-switch v15, :sswitch_data_0

    :goto_0
    const/4 v14, -0x1

    goto :goto_1

    :sswitch_0
    const-string v15, "24h"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    goto :goto_0

    :cond_0
    const/4 v14, 0x4

    goto :goto_1

    :sswitch_1
    const-string v15, "15s"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    goto :goto_0

    :cond_1
    const/4 v14, 0x3

    goto :goto_1

    :sswitch_2
    const-string v15, "5m"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    goto :goto_0

    :cond_2
    const/4 v14, 0x2

    goto :goto_1

    :sswitch_3
    const-string v15, "1m"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    goto :goto_0

    :cond_3
    const/4 v14, 0x1

    goto :goto_1

    :sswitch_4
    const-string v15, "1h"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    goto :goto_0

    :cond_4
    const/4 v14, 0x0

    :goto_1
    packed-switch v14, :pswitch_data_0

    .line 79
    invoke-virtual {v5, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 78
    :pswitch_0
    invoke-virtual {v13, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 74
    :pswitch_1
    invoke-virtual {v7, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 76
    :pswitch_2
    invoke-virtual {v11, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 75
    :pswitch_3
    invoke-virtual {v10, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 77
    :pswitch_4
    invoke-virtual {v12, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 83
    :goto_2
    new-instance v14, Landroidx/appcompat/widget/SwitchCompat;

    new-instance v15, Landroidx/appcompat/view/ContextThemeWrapper;

    const v2, 0x7f1303e7

    invoke-direct {v15, v0, v2}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v14, v15}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;)V

    const v2, 0x7f121745

    .line 84
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroidx/appcompat/widget/SwitchCompat;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-static {v8}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v14, v9, v2}, Landroidx/appcompat/widget/SwitchCompat;->setTextSize(IF)V

    .line 86
    invoke-static {}, Lru/vtosters/hooks/other/ThemesUtils;->getTextAttr()I

    move-result v2

    invoke-virtual {v14, v2}, Landroidx/appcompat/widget/SwitchCompat;->setTextColor(I)V

    .line 87
    sget-object v2, Lru/vtosters/lite/ui/dialogs/MessageSettings;->isSilentEnabled:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v14, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 88
    new-instance v2, Lru/vtosters/lite/ui/dialogs/MessageSettings$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lru/vtosters/lite/ui/dialogs/MessageSettings$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v14, v2}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/high16 v2, 0x41c00000    # 24.0f

    .line 92
    invoke-static {v2}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v2

    invoke-static {v6}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v8

    const/high16 v9, 0x41900000    # 18.0f

    invoke-static {v9}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v9

    invoke-static {v6}, Lru/vtosters/lite/utils/AndroidUtils;->dp2px(F)I

    move-result v6

    invoke-virtual {v14, v2, v8, v9, v6}, Landroidx/appcompat/widget/SwitchCompat;->setPadding(IIII)V

    .line 94
    invoke-virtual {v14}, Landroidx/appcompat/widget/SwitchCompat;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v14, v2}, Lru/vtosters/hooks/SwitchHook;->setSwitchCompatColors(Landroidx/appcompat/widget/SwitchCompat;Landroid/content/Context;)V

    .line 96
    invoke-static {v4, v4}, Lru/vtosters/lite/utils/LayoutUtils;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    .line 97
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v2, -0x2

    .line 99
    invoke-static {v4, v2}, Lru/vtosters/lite/utils/LayoutUtils;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    invoke-static {v4, v2}, Lru/vtosters/lite/utils/LayoutUtils;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    new-instance v2, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-direct {v2, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f1216ac

    .line 103
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f121746

    .line 104
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v2

    const/4 v4, 0x1

    .line 105
    invoke-virtual {v2, v4}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setCancelable(Z)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v2

    .line 106
    invoke-virtual {v2, v1}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f12018a

    .line 107
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1217c8

    .line 108
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v14, Lru/vtosters/lite/ui/dialogs/MessageSettings$$ExternalSyntheticLambda1;

    move-object v2, v14

    move-object v4, v5

    move-object v5, v7

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    move-object v9, v13

    invoke-direct/range {v2 .. v9}, Lru/vtosters/lite/ui/dialogs/MessageSettings$$ExternalSyntheticLambda1;-><init>(Landroid/widget/RadioGroup;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    invoke-virtual {v1, v0, v14}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x657 -> :sswitch_4
        0x65c -> :sswitch_3
        0x6d8 -> :sswitch_2
        0xbecf -> :sswitch_1
        0xc266 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$argDialog$0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 89
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lru/vtosters/lite/ui/dialogs/MessageSettings;->isSilentEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic lambda$argDialog$1(Landroid/widget/RadioGroup;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 109
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p0

    .line 111
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    if-ne p0, p1, :cond_0

    const-string p0, "0"

    .line 112
    sput-object p0, Lru/vtosters/lite/ui/dialogs/MessageSettings;->bombCount:Ljava/lang/String;

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p2}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    if-ne p0, p1, :cond_1

    const-string p0, "15s"

    .line 114
    sput-object p0, Lru/vtosters/lite/ui/dialogs/MessageSettings;->bombCount:Ljava/lang/String;

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p3}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    if-ne p0, p1, :cond_2

    const-string p0, "1m"

    .line 116
    sput-object p0, Lru/vtosters/lite/ui/dialogs/MessageSettings;->bombCount:Ljava/lang/String;

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {p4}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    if-ne p0, p1, :cond_3

    const-string p0, "5m"

    .line 118
    sput-object p0, Lru/vtosters/lite/ui/dialogs/MessageSettings;->bombCount:Ljava/lang/String;

    goto :goto_0

    .line 119
    :cond_3
    invoke-virtual {p5}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    if-ne p0, p1, :cond_4

    const-string p0, "1h"

    .line 120
    sput-object p0, Lru/vtosters/lite/ui/dialogs/MessageSettings;->bombCount:Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_4
    invoke-virtual {p6}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    if-ne p0, p1, :cond_5

    const-string p0, "24h"

    .line 122
    sput-object p0, Lru/vtosters/lite/ui/dialogs/MessageSettings;->bombCount:Ljava/lang/String;

    :cond_5
    :goto_0
    return-void
.end method
