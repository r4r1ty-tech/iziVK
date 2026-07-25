.class public final synthetic Lru/vtosters/lite/utils/SuperAppUtils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic f$0:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/utils/SuperAppUtils$$ExternalSyntheticLambda2;->f$0:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lru/vtosters/lite/utils/SuperAppUtils$$ExternalSyntheticLambda2;->f$0:[Ljava/lang/String;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lru/vtosters/lite/utils/SuperAppUtils;->lambda$superapp$1([Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result p1

    return p1
.end method
