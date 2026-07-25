.class public final synthetic Lru/vtosters/sponsorpost/services/PostService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:Lorg/json/JSONArray;


# direct methods
.method public synthetic constructor <init>(Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/sponsorpost/services/PostService$$ExternalSyntheticLambda1;->f$0:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lru/vtosters/sponsorpost/services/PostService$$ExternalSyntheticLambda1;->f$0:Lorg/json/JSONArray;

    invoke-static {v0, p1}, Lru/vtosters/sponsorpost/services/PostService;->lambda$parseJSONPosts$1(Lorg/json/JSONArray;I)Lru/vtosters/sponsorpost/data/Post;

    move-result-object p1

    return-object p1
.end method
