.class public abstract Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;
.super Landroid/os/Binder;
.source "ILibVkxService.java"

# interfaces
.implements Lbruhcollective/itaysonlab/libvkx/ILibVkxService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbruhcollective/itaysonlab/libvkx/ILibVkxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addPlaylistToCache:I = 0xa

.field static final TRANSACTION_addTrackToCache:I = 0x4

.field static final TRANSACTION_deletePlaylistFromCache:I = 0xb

.field static final TRANSACTION_deleteTrackFromCache:I = 0x5

.field static final TRANSACTION_downloadPlaylist:I = 0x9

.field static final TRANSACTION_downloadTrack:I = 0x8

.field static final TRANSACTION_getCache:I = 0x7

.field static final TRANSACTION_getCacheCatalog:I = 0xc

.field static final TRANSACTION_getPlaylistDefJson:I = 0xe

.field static final TRANSACTION_getTracksInPlaylist:I = 0xd

.field static final TRANSACTION_getUserId:I = 0x3

.field static final TRANSACTION_isPlaylistCached:I = 0xf

.field static final TRANSACTION_isTrackCached:I = 0x6

.field static final TRANSACTION_play:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "bruhcollective.itaysonlab.libvkx.ILibVkxService"

    .line 78
    invoke-virtual {p0, p0, v0}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lbruhcollective/itaysonlab/libvkx/ILibVkxService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "bruhcollective.itaysonlab.libvkx.ILibVkxService"

    .line 89
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    instance-of v1, v0, Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    if-eqz v1, :cond_1

    .line 91
    check-cast v0, Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    return-object v0

    .line 93
    :cond_1
    new-instance v0, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub$Proxy;

    invoke-direct {v0, p0}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lbruhcollective/itaysonlab/libvkx/ILibVkxService;
    .locals 1

    .line 651
    sget-object v0, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub$Proxy;->sDefaultImpl:Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    return-object v0
.end method

.method public static setDefaultImpl(Lbruhcollective/itaysonlab/libvkx/ILibVkxService;)Z
    .locals 1

    .line 641
    sget-object v0, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub$Proxy;->sDefaultImpl:Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 645
    sput-object p0, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub$Proxy;->sDefaultImpl:Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 642
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "bruhcollective.itaysonlab.libvkx.ILibVkxService"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 273
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 261
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 266
    invoke-virtual {p0, p1, p2}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->isPlaylistCached(II)Z

    move-result p1

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 249
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 254
    invoke-virtual {p0, p1, p2}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getPlaylistDefJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 237
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 242
    invoke-virtual {p0, p1, p2}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getTracksInPlaylist(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 229
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getCacheCatalog()Ljava/lang/String;

    move-result-object p1

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 218
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 223
    invoke-virtual {p0, p1, p2}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->deletePlaylistFromCache(II)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 205
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 212
    invoke-virtual {p0, p1, p4, p2}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->addPlaylistToCache(IILjava/lang/String;)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 192
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 199
    invoke-virtual {p0, p1, p4, p2}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->downloadPlaylist(IILjava/lang/String;)V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 179
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 186
    invoke-virtual {p0, p1, p4, p2}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->downloadTrack(IILjava/lang/String;)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 171
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getCache()Ljava/util/List;

    move-result-object p1

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 159
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 164
    invoke-virtual {p0, p1, p2}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->isTrackCached(II)Z

    move-result p1

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 148
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 153
    invoke-virtual {p0, p1, p2}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->deleteTrackFromCache(II)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 135
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 142
    invoke-virtual {p0, p1, p4, p2}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->addTrackToCache(IILjava/lang/String;)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 127
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getUserId()I

    move-result p1

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 114
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 121
    invoke-virtual {p0, p1, p4, p2}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->play(Ljava/util/List;ILjava/lang/String;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 106
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
