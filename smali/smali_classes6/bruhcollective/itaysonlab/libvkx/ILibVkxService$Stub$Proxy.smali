.class Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILibVkxService.java"

# interfaces
.implements Lbruhcollective/itaysonlab/libvkx/ILibVkxService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lbruhcollective/itaysonlab/libvkx/ILibVkxService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public addPlaylistToCache(IILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 482
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 483
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "bruhcollective.itaysonlab.libvkx.ILibVkxService"

    .line 485
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 489
    iget-object v2, p0, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 491
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getDefaultImpl()Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 492
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getDefaultImpl()Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService;->addPlaylistToCache(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 496
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 501
    throw p1
.end method

.method public addTrackToCache(IILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 342
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "bruhcollective.itaysonlab.libvkx.ILibVkxService"

    .line 345
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 349
    iget-object v2, p0, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 351
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getDefaultImpl()Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 352
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getDefaultImpl()Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService;->addTrackToCache(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 356
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 361
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 286
    iget-object v0, p0, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public deletePlaylistFromCache(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 505
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 506
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "bruhcollective.itaysonlab.libvkx.ILibVkxService"

    .line 508
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    iget-object v2, p0, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 513
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getDefaultImpl()Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 514
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getDefaultImpl()Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService;->deletePlaylistFromCache(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 518
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 521
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 521
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 523
    throw p1
.end method

.method public deleteTrackFromCache(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 366
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "bruhcollective.itaysonlab.libvkx.ILibVkxService"

    .line 368
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    iget-object v2, p0, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 373
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getDefaultImpl()Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 374
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getDefaultImpl()Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService;->deleteTrackFromCache(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 378
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 381
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 383
    throw p1
.end method

.method public downloadPlaylist(IILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 459
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 460
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "bruhcollective.itaysonlab.libvkx.ILibVkxService"

    .line 462
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 466
    iget-object v2, p0, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 468
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getDefaultImpl()Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 469
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getDefaultImpl()Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService;->downloadPlaylist(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 473
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 476
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 478
    throw p1
.end method

.method public downloadTrack(IILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 436
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "bruhcollective.itaysonlab.libvkx.ILibVkxService"

    .line 439
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 443
    iget-object v2, p0, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 445
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getDefaultImpl()Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 446
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getDefaultImpl()Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService;->downloadTrack(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 450
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 453
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 455
    throw p1
.end method

.method public getCache()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 413
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 414
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "bruhcollective.itaysonlab.libvkx.ILibVkxService"

    .line 417
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 418
    iget-object v2, p0, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 420
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getDefaultImpl()Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 421
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getDefaultImpl()Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    move-result-object v2

    invoke-interface {v2}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService;->getCache()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 424
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 425
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 428
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 428
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 430
    throw v2
.end method

.method public getCacheCatalog()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 528
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 529
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "bruhcollective.itaysonlab.libvkx.ILibVkxService"

    .line 532
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 533
    iget-object v2, p0, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 535
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getDefaultImpl()Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 536
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getDefaultImpl()Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    move-result-object v2

    invoke-interface {v2}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService;->getCacheCatalog()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 539
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 540
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 545
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "bruhcollective.itaysonlab.libvkx.ILibVkxService"

    return-object v0
.end method

.method public getPlaylistDefJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 574
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 575
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "bruhcollective.itaysonlab.libvkx.ILibVkxService"

    .line 578
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 580
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 581
    iget-object v2, p0, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 583
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getDefaultImpl()Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 584
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getDefaultImpl()Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService;->getPlaylistDefJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 587
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 588
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 591
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 591
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 593
    throw p1
.end method

.method public getTracksInPlaylist(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 550
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 551
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "bruhcollective.itaysonlab.libvkx.ILibVkxService"

    .line 554
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 557
    iget-object v2, p0, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 559
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getDefaultImpl()Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 560
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getDefaultImpl()Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService;->getTracksInPlaylist(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 563
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 564
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 567
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 567
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 569
    throw p1
.end method

.method public getUserId()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "bruhcollective.itaysonlab.libvkx.ILibVkxService"

    .line 323
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 324
    iget-object v2, p0, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 326
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getDefaultImpl()Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 327
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getDefaultImpl()Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    move-result-object v2

    invoke-interface {v2}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService;->getUserId()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 330
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 331
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 334
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 336
    throw v2
.end method

.method public isPlaylistCached(II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 599
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 600
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "bruhcollective.itaysonlab.libvkx.ILibVkxService"

    .line 603
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 604
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    iget-object v2, p0, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 608
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getDefaultImpl()Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 609
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getDefaultImpl()Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService;->isPlaylistCached(II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 617
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 612
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 613
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 616
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 617
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 616
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 617
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 618
    throw p1
.end method

.method public isTrackCached(II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 387
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 388
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "bruhcollective.itaysonlab.libvkx.ILibVkxService"

    .line 391
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    iget-object v2, p0, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 396
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getDefaultImpl()Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 397
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getDefaultImpl()Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService;->isTrackCached(II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 400
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 401
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 404
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 404
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 406
    throw p1
.end method

.method public play(Ljava/util/List;ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "bruhcollective.itaysonlab.libvkx.ILibVkxService"

    .line 298
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 300
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget-object v2, p0, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 304
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getDefaultImpl()Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 305
    invoke-static {}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService$Stub;->getDefaultImpl()Lbruhcollective/itaysonlab/libvkx/ILibVkxService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lbruhcollective/itaysonlab/libvkx/ILibVkxService;->play(Ljava/util/List;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 309
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 314
    throw p1
.end method
