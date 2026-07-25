.class public Lcom/vk/music/view/x/LyricsHolder$b;
.super Ljava/lang/Object;
.source "LyricsHolder.java"

# interfaces
.implements Lcom/vk/api/base/ApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/music/view/x/LyricsHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vk/api/base/ApiCallback<",
        "Lcom/vk/api/audio/AudioGetLyrics$a;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/vk/dto/music/MusicTrack;

.field final synthetic this$0:Lcom/vk/music/view/x/LyricsHolder;


# direct methods
.method constructor <init>(Lcom/vk/music/view/x/LyricsHolder;Lcom/vk/dto/music/MusicTrack;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/vk/music/view/x/LyricsHolder$b;->this$0:Lcom/vk/music/view/x/LyricsHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p2, p0, Lcom/vk/music/view/x/LyricsHolder$b;->a:Lcom/vk/dto/music/MusicTrack;

    return-void
.end method


# virtual methods
.method public a(Lcom/vk/api/audio/AudioGetLyrics$a;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/vk/music/view/x/LyricsHolder$b;->a:Lcom/vk/dto/music/MusicTrack;

    iget-object p1, p1, Lcom/vk/api/audio/AudioGetLyrics$a;->a:Ljava/lang/String;

    iput-object p1, v0, Lcom/vk/dto/music/MusicTrack;->H:Ljava/lang/String;

    .line 150
    iget-object p1, p0, Lcom/vk/music/view/x/LyricsHolder$b;->this$0:Lcom/vk/music/view/x/LyricsHolder;

    invoke-static {p1}, Lcom/vk/music/view/x/LyricsHolder;->-$$Nest$fgetf18328f(Lcom/vk/music/view/x/LyricsHolder;)Lcom/vtosters/lite/ui/MusicErrorViewHelper;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/vtosters/lite/ui/MusicErrorViewHelper;->b(I)V

    .line 151
    iget-object p1, p0, Lcom/vk/music/view/x/LyricsHolder$b;->this$0:Lcom/vk/music/view/x/LyricsHolder;

    invoke-static {p1}, Lcom/vk/music/view/x/LyricsHolder;->-$$Nest$fgetg(Lcom/vk/music/view/x/LyricsHolder;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/vtosters/lite/ViewUtils;->a(Landroid/view/View;I)V

    .line 152
    iget-object p1, p0, Lcom/vk/music/view/x/LyricsHolder$b;->this$0:Lcom/vk/music/view/x/LyricsHolder;

    invoke-static {p1}, Lcom/vk/music/view/x/LyricsHolder;->-$$Nest$fgeth(Lcom/vk/music/view/x/LyricsHolder;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/vtosters/lite/ViewUtils;->a(Landroid/view/View;I)V

    .line 153
    iget-object p1, p0, Lcom/vk/music/view/x/LyricsHolder$b;->this$0:Lcom/vk/music/view/x/LyricsHolder;

    invoke-virtual {p1}, Lcom/vk/music/view/x/LyricsHolder;->f0()V

    .line 154
    iget-object p1, p0, Lcom/vk/music/view/x/LyricsHolder$b;->this$0:Lcom/vk/music/view/x/LyricsHolder;

    invoke-static {p1}, Lcom/vk/music/view/x/LyricsHolder;->-$$Nest$fgetB(Lcom/vk/music/view/x/LyricsHolder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public a(Lcom/vk/api/sdk/exceptions/VKApiExecutionException;)V
    .locals 3

    const/4 v0, 0x0

    .line 159
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "useGenius"

    invoke-static {v2, v1}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lru/vtosters/hooks/other/Preferences;->serverFeaturesDisable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    iget-object p1, p0, Lcom/vk/music/view/x/LyricsHolder$b;->a:Lcom/vk/dto/music/MusicTrack;

    invoke-static {p1}, Lru/vtosters/lite/music/Genius;->getTextMusic(Lcom/vk/dto/music/MusicTrack;)Ljava/lang/String;

    move-result-object p1

    .line 161
    new-instance v0, Lcom/vk/api/audio/AudioGetLyrics$a;

    invoke-direct {v0}, Lcom/vk/api/audio/AudioGetLyrics$a;-><init>()V

    .line 162
    iput-object p1, v0, Lcom/vk/api/audio/AudioGetLyrics$a;->a:Ljava/lang/String;

    .line 163
    invoke-virtual {p0, v0}, Lcom/vk/music/view/x/LyricsHolder$b;->a(Lcom/vk/api/audio/AudioGetLyrics$a;)V

    return-void

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/vk/music/view/x/LyricsHolder$b;->this$0:Lcom/vk/music/view/x/LyricsHolder;

    invoke-static {v1}, Lcom/vk/music/view/x/LyricsHolder;->-$$Nest$fgetB(Lcom/vk/music/view/x/LyricsHolder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 168
    iget-object v1, p0, Lcom/vk/music/view/x/LyricsHolder$b;->this$0:Lcom/vk/music/view/x/LyricsHolder;

    invoke-static {v1}, Lcom/vk/music/view/x/LyricsHolder;->-$$Nest$fgetf18328f(Lcom/vk/music/view/x/LyricsHolder;)Lcom/vtosters/lite/ui/MusicErrorViewHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/vtosters/lite/ui/MusicErrorViewHelper;->a(Lcom/vk/api/sdk/exceptions/VKApiExecutionException;)V

    .line 169
    iget-object p1, p0, Lcom/vk/music/view/x/LyricsHolder$b;->this$0:Lcom/vk/music/view/x/LyricsHolder;

    invoke-static {p1}, Lcom/vk/music/view/x/LyricsHolder;->-$$Nest$fgetf18328f(Lcom/vk/music/view/x/LyricsHolder;)Lcom/vtosters/lite/ui/MusicErrorViewHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/vtosters/lite/ui/MusicErrorViewHelper;->b(I)V

    .line 170
    iget-object p1, p0, Lcom/vk/music/view/x/LyricsHolder$b;->this$0:Lcom/vk/music/view/x/LyricsHolder;

    invoke-static {p1}, Lcom/vk/music/view/x/LyricsHolder;->-$$Nest$fgetg(Lcom/vk/music/view/x/LyricsHolder;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/vtosters/lite/ViewUtils;->a(Landroid/view/View;I)V

    .line 171
    iget-object p1, p0, Lcom/vk/music/view/x/LyricsHolder$b;->this$0:Lcom/vk/music/view/x/LyricsHolder;

    invoke-static {p1}, Lcom/vk/music/view/x/LyricsHolder;->-$$Nest$fgeth(Lcom/vk/music/view/x/LyricsHolder;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/vtosters/lite/ViewUtils;->a(Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 140
    check-cast p1, Lcom/vk/api/audio/AudioGetLyrics$a;

    invoke-virtual {p0, p1}, Lcom/vk/music/view/x/LyricsHolder$b;->a(Lcom/vk/api/audio/AudioGetLyrics$a;)V

    return-void
.end method
