.class public final synthetic Lru/vtosters/lite/ui/PreferenceFragmentUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lru/vtosters/lite/ui/PreferenceFragmentUtils$onPreferenceTextValueChangeListener;

.field public final synthetic f$1:Landroidx/preference/Preference;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Landroidx/preference/PreferenceScreen;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lru/vtosters/lite/ui/PreferenceFragmentUtils$onPreferenceTextValueChangeListener;Landroidx/preference/Preference;Landroid/widget/EditText;Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/ui/PreferenceFragmentUtils$$ExternalSyntheticLambda1;->f$0:Lru/vtosters/lite/ui/PreferenceFragmentUtils$onPreferenceTextValueChangeListener;

    iput-object p2, p0, Lru/vtosters/lite/ui/PreferenceFragmentUtils$$ExternalSyntheticLambda1;->f$1:Landroidx/preference/Preference;

    iput-object p3, p0, Lru/vtosters/lite/ui/PreferenceFragmentUtils$$ExternalSyntheticLambda1;->f$2:Landroid/widget/EditText;

    iput-object p4, p0, Lru/vtosters/lite/ui/PreferenceFragmentUtils$$ExternalSyntheticLambda1;->f$3:Landroidx/preference/PreferenceScreen;

    iput-object p5, p0, Lru/vtosters/lite/ui/PreferenceFragmentUtils$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v0, p0, Lru/vtosters/lite/ui/PreferenceFragmentUtils$$ExternalSyntheticLambda1;->f$0:Lru/vtosters/lite/ui/PreferenceFragmentUtils$onPreferenceTextValueChangeListener;

    iget-object v1, p0, Lru/vtosters/lite/ui/PreferenceFragmentUtils$$ExternalSyntheticLambda1;->f$1:Landroidx/preference/Preference;

    iget-object v2, p0, Lru/vtosters/lite/ui/PreferenceFragmentUtils$$ExternalSyntheticLambda1;->f$2:Landroid/widget/EditText;

    iget-object v3, p0, Lru/vtosters/lite/ui/PreferenceFragmentUtils$$ExternalSyntheticLambda1;->f$3:Landroidx/preference/PreferenceScreen;

    iget-object v4, p0, Lru/vtosters/lite/ui/PreferenceFragmentUtils$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->lambda$addEditTextPreference$0(Lru/vtosters/lite/ui/PreferenceFragmentUtils$onPreferenceTextValueChangeListener;Landroidx/preference/Preference;Landroid/widget/EditText;Landroidx/preference/PreferenceScreen;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
