.class public Lru/vtosters/lite/ui/components/FragAnimationKit;
.super Ljava/lang/Object;
.source "FragAnimationKit.java"


# static fields
.field private static final SSTactCloseEnter:I

.field private static final SSTactCloseExit:I

.field private static final SSTactOpenEnter:I

.field private static final SSTactOpenExit:I

.field private static final SSactCloseEnter:I

.field private static final SSactCloseExit:I

.field private static final SSactOpenEnter:I

.field private static final SSactOpenExit:I

.field private static final SactCloseEnter:I = 0x7f01004a

.field private static final SactCloseExit:I = 0x7f01004b

.field private static final SactOpenEnter:I = 0x7f010048

.field private static final SactOpenExit:I = 0x7f010049

.field private static final actCloseEnter:I = 0x7f01004f

.field private static final actCloseExit:I = 0x7f010050

.field private static final actOpenEnter:I = 0x7f01004d

.field private static final actOpenExit:I = 0x7f01004e

.field private static final resources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 22
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lru/vtosters/lite/ui/components/FragAnimationKit;->resources:Landroid/content/res/Resources;

    const-string v1, "activity_open_enter"

    const-string v2, "anim"

    const-string v3, "android"

    .line 23
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lru/vtosters/lite/ui/components/FragAnimationKit;->SSactOpenEnter:I

    const-string v1, "activity_open_exit"

    .line 24
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lru/vtosters/lite/ui/components/FragAnimationKit;->SSactOpenExit:I

    const-string v1, "activity_close_enter"

    .line 25
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lru/vtosters/lite/ui/components/FragAnimationKit;->SSactCloseEnter:I

    const-string v1, "activity_close_exit"

    .line 26
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lru/vtosters/lite/ui/components/FragAnimationKit;->SSactCloseExit:I

    const-string v1, "task_open_enter"

    .line 28
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lru/vtosters/lite/ui/components/FragAnimationKit;->SSTactOpenEnter:I

    const-string v1, "task_open_exit"

    .line 29
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lru/vtosters/lite/ui/components/FragAnimationKit;->SSTactOpenExit:I

    const-string v1, "task_close_enter"

    .line 30
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lru/vtosters/lite/ui/components/FragAnimationKit;->SSTactCloseEnter:I

    const-string v1, "task_close_exit"

    .line 31
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lru/vtosters/lite/ui/components/FragAnimationKit;->SSTactCloseExit:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setAnimations(Landroidx/fragment/app/FragmentTransaction;)V
    .locals 4

    if-eqz p0, :cond_6

    const-string v0, "anim_rtrn_type"

    .line 34
    invoke-static {v0}, Lru/vtosters/hooks/other/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "noanim"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 35
    invoke-static {v0}, Lru/vtosters/hooks/other/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "frag_fade"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1
    const-string v1, "slide"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_2
    const-string v1, "q"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_4
    const-string v1, "frag_enter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_5
    const-string v1, "system_task"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x1003

    .line 55
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    :pswitch_1
    const v0, 0x7f01004a

    const v1, 0x7f01004b

    const v2, 0x7f010048

    const v3, 0x7f010049

    .line 42
    invoke-virtual {p0, v2, v3, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    :pswitch_2
    const v0, 0x7f01004f

    const v1, 0x7f010050

    const v2, 0x7f01004d

    const v3, 0x7f01004e

    .line 36
    invoke-virtual {p0, v2, v3, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    .line 48
    :pswitch_3
    sget v0, Lru/vtosters/lite/ui/components/FragAnimationKit;->SSactOpenEnter:I

    sget v1, Lru/vtosters/lite/ui/components/FragAnimationKit;->SSactOpenExit:I

    sget v2, Lru/vtosters/lite/ui/components/FragAnimationKit;->SSactCloseEnter:I

    sget v3, Lru/vtosters/lite/ui/components/FragAnimationKit;->SSactCloseExit:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    :pswitch_4
    const/16 v0, 0x1001

    .line 54
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    .line 56
    :pswitch_5
    sget v0, Lru/vtosters/lite/ui/components/FragAnimationKit;->SSTactOpenEnter:I

    sget v1, Lru/vtosters/lite/ui/components/FragAnimationKit;->SSTactOpenExit:I

    sget v2, Lru/vtosters/lite/ui/components/FragAnimationKit;->SSTactCloseEnter:I

    sget v3, Lru/vtosters/lite/ui/components/FragAnimationKit;->SSTactCloseExit:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    :cond_6
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5b807e6b -> :sswitch_5
        -0x57703db5 -> :sswitch_4
        -0x34e38dd1 -> :sswitch_3
        0x71 -> :sswitch_2
        0x6873db1 -> :sswitch_1
        0x15f460a9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
