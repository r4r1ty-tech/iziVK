.class public final synthetic Lru/vtosters/lite/utils/CrashReporter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic f$0:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/vtosters/lite/utils/CrashReporter$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object p2, p0, Lru/vtosters/lite/utils/CrashReporter$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lru/vtosters/lite/utils/CrashReporter$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Thread$UncaughtExceptionHandler;

    iget-object v1, p0, Lru/vtosters/lite/utils/CrashReporter$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    invoke-static {v0, v1, p1, p2}, Lru/vtosters/lite/utils/CrashReporter;->lambda$init$0(Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/app/Activity;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
