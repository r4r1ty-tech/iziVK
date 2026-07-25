.class public final synthetic Lru/vtosters/sponsorpost/utils/FiltersPreferences$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lru/vtosters/sponsorpost/data/Filter;


# direct methods
.method public synthetic constructor <init>(Lru/vtosters/sponsorpost/data/Filter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/sponsorpost/utils/FiltersPreferences$$ExternalSyntheticLambda9;->f$0:Lru/vtosters/sponsorpost/data/Filter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lru/vtosters/sponsorpost/utils/FiltersPreferences$$ExternalSyntheticLambda9;->f$0:Lru/vtosters/sponsorpost/data/Filter;

    invoke-static {v0}, Lru/vtosters/sponsorpost/utils/FiltersPreferences;->lambda$saveFilter$3(Lru/vtosters/sponsorpost/data/Filter;)V

    return-void
.end method
