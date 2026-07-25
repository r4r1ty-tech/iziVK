.class public final synthetic Lru/vtosters/lite/ui/PreferenceFragmentUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Landroidx/preference/PreferenceScreen;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/CharSequence;

.field public final synthetic f$3:Lru/vtosters/lite/ui/PreferenceFragmentUtils$onPreferenceTextValueChangeListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Lru/vtosters/lite/ui/PreferenceFragmentUtils$onPreferenceTextValueChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/ui/PreferenceFragmentUtils$$ExternalSyntheticLambda0;->f$0:Landroidx/preference/PreferenceScreen;

    iput-object p2, p0, Lru/vtosters/lite/ui/PreferenceFragmentUtils$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lru/vtosters/lite/ui/PreferenceFragmentUtils$$ExternalSyntheticLambda0;->f$2:Ljava/lang/CharSequence;

    iput-object p4, p0, Lru/vtosters/lite/ui/PreferenceFragmentUtils$$ExternalSyntheticLambda0;->f$3:Lru/vtosters/lite/ui/PreferenceFragmentUtils$onPreferenceTextValueChangeListener;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Lru/vtosters/lite/ui/PreferenceFragmentUtils$$ExternalSyntheticLambda0;->f$0:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lru/vtosters/lite/ui/PreferenceFragmentUtils$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lru/vtosters/lite/ui/PreferenceFragmentUtils$$ExternalSyntheticLambda0;->f$2:Ljava/lang/CharSequence;

    iget-object v3, p0, Lru/vtosters/lite/ui/PreferenceFragmentUtils$$ExternalSyntheticLambda0;->f$3:Lru/vtosters/lite/ui/PreferenceFragmentUtils$onPreferenceTextValueChangeListener;

    invoke-static {v0, v1, v2, v3, p1}, Lru/vtosters/lite/ui/PreferenceFragmentUtils;->lambda$addEditTextPreference$1(Landroidx/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/CharSequence;Lru/vtosters/lite/ui/PreferenceFragmentUtils$onPreferenceTextValueChangeListener;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
