.class public Lru/vtosters/lite/dialogs/DNRPrefs;
.super Ljava/lang/Object;
.source "DNRPrefs.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivity(I)Z
    .locals 0

    .line 62
    invoke-static {p0}, Lru/vtosters/lite/dialogs/DNRPrefs;->isInDNTExceptions(I)Z

    move-result p0

    return p0
.end method

.method public static getActivityWithoutExceptions(I)Z
    .locals 2

    .line 54
    invoke-static {p0}, Lru/vtosters/lite/dialogs/DNRPrefs;->writePM(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 56
    :cond_0
    invoke-static {p0}, Lru/vtosters/lite/dialogs/DNRPrefs;->writeConversations(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 58
    :cond_1
    invoke-static {p0}, Lru/vtosters/lite/dialogs/DNRPrefs;->writeBots(I)Z

    move-result p0

    return p0
.end method

.method public static getMarkAsRead(I)Z
    .locals 0

    .line 18
    invoke-static {p0}, Lru/vtosters/lite/dialogs/DNRPrefs;->isInDNRExceptions(I)Z

    move-result p0

    return p0
.end method

.method public static getMarkAsReadWithoutExceptions(I)Z
    .locals 2

    .line 10
    invoke-static {p0}, Lru/vtosters/lite/dialogs/DNRPrefs;->readPM(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 12
    :cond_0
    invoke-static {p0}, Lru/vtosters/lite/dialogs/DNRPrefs;->readConversations(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 14
    :cond_1
    invoke-static {p0}, Lru/vtosters/lite/dialogs/DNRPrefs;->readBots(I)Z

    move-result p0

    return p0
.end method

.method public static isInDNRExceptions(I)Z
    .locals 1

    .line 22
    sget-object v0, Lru/vtosters/hooks/MessagesActivityHook;->mDoNotReadDBHelper:Lru/vtosters/lite/dialogs/helpers/DoNotReadDBHelper;

    invoke-virtual {v0, p0}, Lru/vtosters/lite/dialogs/helpers/DoNotReadDBHelper;->isEnabledForPeerId(I)Z

    move-result p0

    return p0
.end method

.method public static isInDNTExceptions(I)Z
    .locals 1

    .line 26
    sget-object v0, Lru/vtosters/hooks/MessagesActivityHook;->mDoNotTypeDBHelper:Lru/vtosters/lite/dialogs/helpers/DoNotTypeDBHelper;

    invoke-virtual {v0, p0}, Lru/vtosters/lite/dialogs/helpers/DoNotTypeDBHelper;->isEnabledForPeerId(I)Z

    move-result p0

    return p0
.end method

.method private static readBots(I)Z
    .locals 2

    const/4 v0, 0x0

    if-gez p0, :cond_0

    const-string p0, "read_bot"

    .line 38
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v1}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static readConversations(I)Z
    .locals 2

    const v0, 0x77359400

    const/4 v1, 0x0

    if-le p0, v0, :cond_0

    const-string p0, "read_conversations"

    .line 34
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static readPM(I)Z
    .locals 2

    const/4 v0, 0x0

    if-lez p0, :cond_0

    const v1, 0x77359400

    if-ge p0, v1, :cond_0

    const-string p0, "read_pm"

    .line 30
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v1}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static writeBots(I)Z
    .locals 2

    const/4 v0, 0x0

    if-gez p0, :cond_0

    const-string p0, "write_bot"

    .line 50
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v1}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static writeConversations(I)Z
    .locals 2

    const v0, 0x77359400

    const/4 v1, 0x0

    if-le p0, v0, :cond_0

    const-string p0, "write_conversations"

    .line 46
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static writePM(I)Z
    .locals 2

    const/4 v0, 0x0

    if-lez p0, :cond_0

    const v1, 0x77359400

    if-ge p0, v1, :cond_0

    const-string p0, "write_pm"

    .line 42
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v1}, Lru/vtosters/hooks/other/Preferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
