.class public final Lcom/vk/newsfeed/holders/AdMarkHolder;
.super Lcom/vk/newsfeed/holders/BaseNewsEntryHolder;
.source "AdMarkHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vk/newsfeed/holders/BaseNewsEntryHolder<",
        "Lcom/vk/dto/newsfeed/entries/NewsEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final F:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2

    const v0, 0x7f0d0307

    .line 30
    invoke-direct {p0, v0, p1}, Lcom/vk/newsfeed/holders/BaseNewsEntryHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 31
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    .line 32
    move-object v1, v0

    check-cast v1, Landroid/view/View$OnClickListener;

    const v1, 0x7f0a0d4e

    invoke-static {p1, v1, v0}, Lcom/vk/extensions/ViewExtKt;->a(Landroid/view/View;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/vk/newsfeed/holders/AdMarkHolder;->F:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic lambda$b$2(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u0417\u0430\u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u043d\u043e \u043f\u043e \u0432\u044b\u0440\u0430\u0436\u0435\u043d\u0438\u044e: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->sponsorFiltersBanWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$voteDialog$3(IIILandroid/content/DialogInterface;I)V
    .locals 0

    const/4 p3, 0x1

    .line 87
    invoke-static {p0, p1, p2, p3}, Lru/vtosters/sponsorpost/internal/VotesService;->ratePost(IIIZ)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "code"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0xc9

    if-eq p0, p1, :cond_1

    const/16 p1, 0x64

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "\u0412\u0430\u0448 \u0433\u043e\u043b\u043e\u0441 \u0443\u0436\u0435 \u0443\u0447\u0442\u0435\u043d"

    .line 92
    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "\u0421\u043f\u0430\u0441\u0438\u0431\u043e \u0437\u0430 \u0433\u043e\u043b\u043e\u0441!"

    .line 90
    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method static synthetic lambda$voteDialog$4(IIILandroid/content/DialogInterface;I)V
    .locals 0

    const/4 p3, 0x0

    .line 96
    invoke-static {p0, p1, p2, p3}, Lru/vtosters/sponsorpost/internal/VotesService;->ratePost(IIIZ)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "code"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0xc9

    if-eq p0, p1, :cond_1

    const/16 p1, 0x64

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "\u0412\u0430\u0448 \u0433\u043e\u043b\u043e\u0441 \u0443\u0436\u0435 \u0443\u0447\u0442\u0435\u043d"

    .line 101
    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "\u0421\u043f\u0430\u0441\u0438\u0431\u043e \u0437\u0430 \u0433\u043e\u043b\u043e\u0441!"

    .line 99
    invoke-static {p0}, Lru/vtosters/lite/utils/AndroidUtils;->sendToast(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static voteDialog(IIILandroid/content/Context;)V
    .locals 2

    .line 83
    new-instance v0, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    invoke-direct {v0, p3}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p3, "SponsorPost"

    .line 84
    invoke-virtual {v0, p3}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p3

    const-string v0, "\u042d\u0442\u043e\u0442 \u043f\u043e\u0441\u0442 \u044f\u0432\u043b\u044f\u0435\u0442\u0441\u044f \u0440\u0435\u043a\u043b\u0430\u043c\u043d\u044b\u043c?"

    .line 85
    invoke-virtual {p3, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p3

    new-instance v0, Lcom/vk/newsfeed/holders/AdMarkHolder$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/vk/newsfeed/holders/AdMarkHolder$$ExternalSyntheticLambda3;-><init>(III)V

    const-string v1, "\u0414\u0430"

    .line 86
    invoke-virtual {p3, v1, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p3

    new-instance v0, Lcom/vk/newsfeed/holders/AdMarkHolder$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lcom/vk/newsfeed/holders/AdMarkHolder$$ExternalSyntheticLambda4;-><init>(III)V

    const-string p0, "\u041d\u0435\u0442"

    .line 95
    invoke-virtual {p3, p0, v0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;

    move-result-object p0

    .line 104
    invoke-virtual {p0}, Lcom/vk/core/dialogs/alert/VkAlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public b(Lcom/vk/dto/newsfeed/entries/NewsEntry;)V
    .locals 10

    .line 41
    instance-of v0, p1, Lcom/vk/dto/newsfeed/entries/Post;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 42
    check-cast p1, Lcom/vk/dto/newsfeed/entries/Post;

    .line 43
    invoke-virtual {p1}, Lcom/vk/dto/newsfeed/entries/Post;->L1()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f0808cf

    const v2, 0x7f040256

    .line 44
    invoke-static {v0, v2}, Lcom/vk/core/ui/themes/VKThemeHelper;->a(II)Lcom/vk/core/drawable/RecoloredDrawable;

    move-result-object v0

    .line 45
    invoke-virtual {p1}, Lcom/vk/dto/newsfeed/entries/Post;->b()I

    move-result v2

    .line 46
    invoke-virtual {p1}, Lcom/vk/dto/newsfeed/entries/Post;->P1()I

    move-result v3

    .line 47
    invoke-virtual {p1}, Lcom/vk/dto/newsfeed/entries/Post;->K()I

    move-result v4

    .line 48
    invoke-virtual {p1}, Lcom/vk/dto/newsfeed/entries/Post;->getText()Ljava/lang/String;

    move-result-object p1

    int-to-long v5, v2

    int-to-long v7, v3

    .line 50
    invoke-static {v5, v6, v7, v8}, Lru/vtosters/sponsorpost/utils/PostsPreferences;->isPostAd(JJ)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 52
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->isValidSignature()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lru/vtosters/sponsorpost/internal/Native;->canVote()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/vk/newsfeed/holders/AdMarkHolder;->F:Landroid/widget/TextView;

    new-instance v5, Lcom/vk/newsfeed/holders/AdMarkHolder$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v2, v3, v4}, Lcom/vk/newsfeed/holders/AdMarkHolder$$ExternalSyntheticLambda0;-><init>(Lcom/vk/newsfeed/holders/AdMarkHolder;III)V

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const-string p1, "SponsorPost: \u0420\u0435\u043a\u043b\u0430\u043c\u0430"

    goto :goto_0

    .line 55
    :cond_1
    invoke-static {v5, v6, v7, v8}, Lru/vtosters/sponsorpost/internal/VotesPreferences;->isPostAd(JJ)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 57
    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->isValidSignature()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lru/vtosters/sponsorpost/internal/Native;->canVote()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 58
    iget-object p1, p0, Lcom/vk/newsfeed/holders/AdMarkHolder;->F:Landroid/widget/TextView;

    new-instance v5, Lcom/vk/newsfeed/holders/AdMarkHolder$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v2, v3, v4}, Lcom/vk/newsfeed/holders/AdMarkHolder$$ExternalSyntheticLambda1;-><init>(Lcom/vk/newsfeed/holders/AdMarkHolder;III)V

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const-string p1, "SponsorPost: \u0412\u043e\u0437\u043c\u043e\u0436\u043d\u043e \u0440\u0435\u043a\u043b\u0430\u043c\u0430"

    goto :goto_0

    .line 60
    :cond_3
    invoke-static {p1}, Lru/vtosters/lite/utils/newsfeed/NewsFeedFiltersUtils;->sponsorFilters(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 62
    iget-object v2, p0, Lcom/vk/newsfeed/holders/AdMarkHolder;->F:Landroid/widget/TextView;

    new-instance v3, Lcom/vk/newsfeed/holders/AdMarkHolder$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1}, Lcom/vk/newsfeed/holders/AdMarkHolder$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "SponsorPost: \u0417\u0430\u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u043d\u043e \u0444\u0438\u043b\u044c\u0442\u0440\u0430\u043c\u0438"

    goto :goto_0

    :cond_4
    const p1, 0x7f120def

    .line 64
    invoke-virtual {p0, p1}, Lcom/vk/newsfeed/holders/AdMarkHolder;->m(I)Ljava/lang/String;

    move-result-object p1

    .line 67
    :goto_0
    invoke-virtual {p0}, Lcom/vk/newsfeed/holders/AdMarkHolder;->e0()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    .line 69
    :cond_5
    instance-of v0, p1, Lcom/vk/dto/newsfeed/entries/PromoPost;

    if-eqz v0, :cond_6

    .line 70
    check-cast p1, Lcom/vk/dto/newsfeed/entries/PromoPost;

    .line 71
    invoke-virtual {p1}, Lcom/vk/dto/newsfeed/entries/PromoPost;->E1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 72
    invoke-virtual {p0}, Lcom/vk/newsfeed/holders/AdMarkHolder;->e0()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0701b9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 73
    invoke-virtual {p1}, Lcom/vk/dto/newsfeed/entries/PromoPost;->E1()Ljava/lang/String;

    move-result-object p1

    move-object v0, v1

    goto :goto_1

    :cond_6
    move-object p1, v1

    move-object v0, p1

    .line 77
    :goto_1
    iget-object v3, p0, Lcom/vk/newsfeed/holders/AdMarkHolder;->F:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object v0, p0, Lcom/vk/newsfeed/holders/AdMarkHolder;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 79
    iget-object v0, p0, Lcom/vk/newsfeed/holders/AdMarkHolder;->F:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/vk/dto/newsfeed/entries/NewsEntry;

    invoke-virtual {p0, p1}, Lcom/vk/newsfeed/holders/AdMarkHolder;->b(Lcom/vk/dto/newsfeed/entries/NewsEntry;)V

    return-void
.end method

.method synthetic lambda$b$0$com-vk-newsfeed-holders-AdMarkHolder(IIILandroid/view/View;)V
    .locals 0

    .line 53
    iget-object p4, p0, Lcom/vk/newsfeed/holders/AdMarkHolder;->F:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p1, p2, p3, p4}, Lcom/vk/newsfeed/holders/AdMarkHolder;->voteDialog(IIILandroid/content/Context;)V

    return-void
.end method

.method synthetic lambda$b$1$com-vk-newsfeed-holders-AdMarkHolder(IIILandroid/view/View;)V
    .locals 0

    .line 58
    iget-object p4, p0, Lcom/vk/newsfeed/holders/AdMarkHolder;->F:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p1, p2, p3, p4}, Lcom/vk/newsfeed/holders/AdMarkHolder;->voteDialog(IIILandroid/content/Context;)V

    return-void
.end method
