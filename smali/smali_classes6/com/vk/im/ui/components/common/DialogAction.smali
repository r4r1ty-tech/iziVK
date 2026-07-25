.class public final enum Lcom/vk/im/ui/components/common/DialogAction;
.super Ljava/lang/Enum;
.source "DialogAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vk/im/ui/components/common/DialogAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum ADD_CHAT_MEMBER:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum AUDIO_BTN_AUDIO_CALL:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum AUDIO_BTN_VIDEO_CALL:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum CHANNEL_INVITE_LINK:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum CHAT_SETTINGS:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum CLEAR_HISTORY:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum CLEAR_HISTORY_AND_LEAVE:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum CREATE_SHORTCUT:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum DNR_OFF:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum DNR_ON:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum DNT_OFF:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum DNT_ON:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum DOWNLOAD:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum ENCRYPT:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum ENCRYPT_SETT:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum GROUP_RECEIVE_MSGS_DISABLE:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum GROUP_RECEIVE_MSGS_ENABLE:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum GROUP_RECEIVE_NOTIFY_DISABLE:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum LEAVE:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum LEAVE_CHANNEL:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum MARK_AS_READ:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum NOTIFICATIONS_OFF:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum NOTIFICATIONS_ON:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum OPEN_GROUP_PROFILE:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum OPEN_USER_PROFILE:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum PINNED_MSG_DETACH:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum PINNED_MSG_HIDE:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum PINNED_MSG_SHOW:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum RETURN:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum RETURN_TO_CHANNEL:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum SEARCH:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum SHOW_ATTACHES:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum STAT:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum VIDEO_BTN_AUDIO_CALL:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum VIDEO_BTN_VIDEO_CALL:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum pinmsg:Lcom/vk/im/ui/components/common/DialogAction;

.field public static final enum unpinmsg:Lcom/vk/im/ui/components/common/DialogAction;


# direct methods
.method private static synthetic $values()[Lcom/vk/im/ui/components/common/DialogAction;
    .locals 3

    const/16 v0, 0x25

    new-array v0, v0, [Lcom/vk/im/ui/components/common/DialogAction;

    const/4 v1, 0x0

    .line 3
    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->OPEN_USER_PROFILE:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->OPEN_GROUP_PROFILE:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->CHAT_SETTINGS:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->SEARCH:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->ADD_CHAT_MEMBER:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->CREATE_SHORTCUT:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->PINNED_MSG_HIDE:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->PINNED_MSG_SHOW:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->PINNED_MSG_DETACH:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->SHOW_ATTACHES:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->NOTIFICATIONS_ON:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->NOTIFICATIONS_OFF:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->GROUP_RECEIVE_MSGS_ENABLE:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->GROUP_RECEIVE_MSGS_DISABLE:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->GROUP_RECEIVE_NOTIFY_DISABLE:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->CHANNEL_INVITE_LINK:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->CLEAR_HISTORY:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->CLEAR_HISTORY_AND_LEAVE:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->LEAVE:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->LEAVE_CHANNEL:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->RETURN:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->RETURN_TO_CHANNEL:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->MARK_AS_READ:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->AUDIO_BTN_AUDIO_CALL:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->AUDIO_BTN_VIDEO_CALL:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->VIDEO_BTN_VIDEO_CALL:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->VIDEO_BTN_AUDIO_CALL:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->DNR_ON:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->DNR_OFF:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->DNT_ON:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->DNT_OFF:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->pinmsg:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->unpinmsg:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->ENCRYPT_SETT:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->ENCRYPT:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->DOWNLOAD:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/vk/im/ui/components/common/DialogAction;->STAT:Lcom/vk/im/ui/components/common/DialogAction;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "OPEN_USER_PROFILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->OPEN_USER_PROFILE:Lcom/vk/im/ui/components/common/DialogAction;

    .line 5
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "OPEN_GROUP_PROFILE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->OPEN_GROUP_PROFILE:Lcom/vk/im/ui/components/common/DialogAction;

    .line 6
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "CHAT_SETTINGS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->CHAT_SETTINGS:Lcom/vk/im/ui/components/common/DialogAction;

    .line 7
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "SEARCH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->SEARCH:Lcom/vk/im/ui/components/common/DialogAction;

    .line 8
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "ADD_CHAT_MEMBER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->ADD_CHAT_MEMBER:Lcom/vk/im/ui/components/common/DialogAction;

    .line 9
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "CREATE_SHORTCUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->CREATE_SHORTCUT:Lcom/vk/im/ui/components/common/DialogAction;

    .line 10
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "PINNED_MSG_HIDE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->PINNED_MSG_HIDE:Lcom/vk/im/ui/components/common/DialogAction;

    .line 11
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "PINNED_MSG_SHOW"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->PINNED_MSG_SHOW:Lcom/vk/im/ui/components/common/DialogAction;

    .line 12
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "PINNED_MSG_DETACH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->PINNED_MSG_DETACH:Lcom/vk/im/ui/components/common/DialogAction;

    .line 13
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "SHOW_ATTACHES"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->SHOW_ATTACHES:Lcom/vk/im/ui/components/common/DialogAction;

    .line 14
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "NOTIFICATIONS_ON"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->NOTIFICATIONS_ON:Lcom/vk/im/ui/components/common/DialogAction;

    .line 15
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "NOTIFICATIONS_OFF"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->NOTIFICATIONS_OFF:Lcom/vk/im/ui/components/common/DialogAction;

    .line 16
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "GROUP_RECEIVE_MSGS_ENABLE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->GROUP_RECEIVE_MSGS_ENABLE:Lcom/vk/im/ui/components/common/DialogAction;

    .line 17
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "GROUP_RECEIVE_MSGS_DISABLE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->GROUP_RECEIVE_MSGS_DISABLE:Lcom/vk/im/ui/components/common/DialogAction;

    .line 18
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "GROUP_RECEIVE_NOTIFY_DISABLE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->GROUP_RECEIVE_NOTIFY_DISABLE:Lcom/vk/im/ui/components/common/DialogAction;

    .line 19
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "CHANNEL_INVITE_LINK"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->CHANNEL_INVITE_LINK:Lcom/vk/im/ui/components/common/DialogAction;

    .line 20
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "CLEAR_HISTORY"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->CLEAR_HISTORY:Lcom/vk/im/ui/components/common/DialogAction;

    .line 21
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "CLEAR_HISTORY_AND_LEAVE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->CLEAR_HISTORY_AND_LEAVE:Lcom/vk/im/ui/components/common/DialogAction;

    .line 22
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "LEAVE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->LEAVE:Lcom/vk/im/ui/components/common/DialogAction;

    .line 23
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "LEAVE_CHANNEL"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->LEAVE_CHANNEL:Lcom/vk/im/ui/components/common/DialogAction;

    .line 24
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "RETURN"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->RETURN:Lcom/vk/im/ui/components/common/DialogAction;

    .line 25
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "RETURN_TO_CHANNEL"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->RETURN_TO_CHANNEL:Lcom/vk/im/ui/components/common/DialogAction;

    .line 26
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "MARK_AS_READ"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->MARK_AS_READ:Lcom/vk/im/ui/components/common/DialogAction;

    .line 27
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "AUDIO_BTN_AUDIO_CALL"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->AUDIO_BTN_AUDIO_CALL:Lcom/vk/im/ui/components/common/DialogAction;

    .line 28
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "AUDIO_BTN_VIDEO_CALL"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->AUDIO_BTN_VIDEO_CALL:Lcom/vk/im/ui/components/common/DialogAction;

    .line 29
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "VIDEO_BTN_VIDEO_CALL"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->VIDEO_BTN_VIDEO_CALL:Lcom/vk/im/ui/components/common/DialogAction;

    .line 30
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "VIDEO_BTN_AUDIO_CALL"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->VIDEO_BTN_AUDIO_CALL:Lcom/vk/im/ui/components/common/DialogAction;

    .line 31
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "DNR_ON"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->DNR_ON:Lcom/vk/im/ui/components/common/DialogAction;

    .line 32
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "DNR_OFF"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->DNR_OFF:Lcom/vk/im/ui/components/common/DialogAction;

    .line 33
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "DNT_ON"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->DNT_ON:Lcom/vk/im/ui/components/common/DialogAction;

    .line 34
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "DNT_OFF"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->DNT_OFF:Lcom/vk/im/ui/components/common/DialogAction;

    .line 35
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "pinmsg"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->pinmsg:Lcom/vk/im/ui/components/common/DialogAction;

    .line 36
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "unpinmsg"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->unpinmsg:Lcom/vk/im/ui/components/common/DialogAction;

    .line 37
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "ENCRYPT_SETT"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->ENCRYPT_SETT:Lcom/vk/im/ui/components/common/DialogAction;

    .line 38
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "ENCRYPT"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->ENCRYPT:Lcom/vk/im/ui/components/common/DialogAction;

    .line 39
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "DOWNLOAD"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->DOWNLOAD:Lcom/vk/im/ui/components/common/DialogAction;

    .line 40
    new-instance v0, Lcom/vk/im/ui/components/common/DialogAction;

    const-string v1, "STAT"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/vk/im/ui/components/common/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->STAT:Lcom/vk/im/ui/components/common/DialogAction;

    .line 3
    invoke-static {}, Lcom/vk/im/ui/components/common/DialogAction;->$values()[Lcom/vk/im/ui/components/common/DialogAction;

    move-result-object v0

    sput-object v0, Lcom/vk/im/ui/components/common/DialogAction;->$VALUES:[Lcom/vk/im/ui/components/common/DialogAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vk/im/ui/components/common/DialogAction;
    .locals 1

    .line 3
    const-class v0, Lcom/vk/im/ui/components/common/DialogAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vk/im/ui/components/common/DialogAction;

    return-object p0
.end method

.method public static values()[Lcom/vk/im/ui/components/common/DialogAction;
    .locals 1

    .line 3
    sget-object v0, Lcom/vk/im/ui/components/common/DialogAction;->$VALUES:[Lcom/vk/im/ui/components/common/DialogAction;

    invoke-virtual {v0}, [Lcom/vk/im/ui/components/common/DialogAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vk/im/ui/components/common/DialogAction;

    return-object v0
.end method
