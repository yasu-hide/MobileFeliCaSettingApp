.class Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;
.super Ljava/lang/Object;
.source "IFelica.java"

# interfaces
.implements Lcom/felicanetworks/mfc/IFelica;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfc/IFelica$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    iput-object p1, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 513
    return-void
.end method


# virtual methods
.method public activateFelica([Ljava/lang/String;Lcom/felicanetworks/mfc/IFelicaEventListener;)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 6
    .param p1, "permitList"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/felicanetworks/mfc/IFelicaEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 557
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 558
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 561
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 562
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 563
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/felicanetworks/mfc/IFelicaEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 564
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 565
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 566
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 567
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 575
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 577
    return-object v2

    .line 563
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 570
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    goto :goto_1

    .line 573
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :catchall_0
    move-exception v3

    .line 574
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 575
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 576
    throw v3
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public checkOnlineAccess()Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2428
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2429
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2432
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2433
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2434
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2435
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2436
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2443
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2446
    return-object v2

    .line 2439
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    goto :goto_0

    .line 2442
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :catchall_0
    move-exception v3

    .line 2443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2445
    throw v3
.end method

.method public close()Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 605
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 606
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 609
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 610
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 611
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 612
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 613
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 623
    return-object v2

    .line 616
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    goto :goto_0

    .line 619
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :catchall_0
    move-exception v3

    .line 620
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 622
    throw v3
.end method

.method public getBlockCountInformation([III)Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;
    .locals 6
    .param p1, "nodeCodeList"    # [I
    .param p2, "timeout"    # I
    .param p3, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 689
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 690
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 693
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 694
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 695
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 698
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 699
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 700
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 710
    return-object v2

    .line 703
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;
    goto :goto_0

    .line 706
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;
    :catchall_0
    move-exception v3

    .line 707
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 709
    throw v3
.end method

.method public getContainerId(II)Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    .locals 6
    .param p1, "timeout"    # I
    .param p2, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 765
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 766
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 769
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 770
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 771
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 772
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 773
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 774
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 775
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 783
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 785
    return-object v2

    .line 778
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    goto :goto_0

    .line 781
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :catchall_0
    move-exception v3

    .line 782
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 783
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 784
    throw v3
.end method

.method public getContainerIssueInformation(II)Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    .locals 6
    .param p1, "timeout"    # I
    .param p2, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 836
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 837
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 840
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 841
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 842
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 843
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 844
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 845
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 846
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 853
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 856
    return-object v2

    .line 849
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    goto :goto_0

    .line 852
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :catchall_0
    move-exception v3

    .line 853
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 855
    throw v3
.end method

.method public getICCode()Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 893
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 894
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 897
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 898
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 899
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 900
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 901
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 908
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 909
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 911
    return-object v2

    .line 904
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    goto :goto_0

    .line 907
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :catchall_0
    move-exception v3

    .line 908
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 909
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 910
    throw v3
.end method

.method public getIDm()Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 948
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 949
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 952
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 953
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 954
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 955
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 956
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 963
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 966
    return-object v2

    .line 959
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    goto :goto_0

    .line 962
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :catchall_0
    move-exception v3

    .line 963
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 965
    throw v3
.end method

.method public getInterface()Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1019
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1020
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1023
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1024
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1025
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1026
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1027
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfoInt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1034
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1035
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1037
    return-object v2

    .line 1030
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    goto :goto_0

    .line 1033
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :catchall_0
    move-exception v3

    .line 1034
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1035
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1036
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 520
    const-string v0, "com.felicanetworks.mfc.IFelica"

    return-object v0
.end method

.method public getKeyVersion(III)Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    .locals 6
    .param p1, "serviceCode"    # I
    .param p2, "timeout"    # I
    .param p3, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1103
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1106
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1107
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1108
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1109
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1110
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1111
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1112
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1113
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfoInt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1120
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1123
    return-object v2

    .line 1116
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    goto :goto_0

    .line 1119
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :catchall_0
    move-exception v3

    .line 1120
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1122
    throw v3
.end method

.method public getNodeInformation(III)Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    .locals 6
    .param p1, "parentAreaCode"    # I
    .param p2, "timeout"    # I
    .param p3, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1194
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1197
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1198
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1199
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1200
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1201
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1202
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1203
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1204
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1211
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1214
    return-object v2

    .line 1207
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    goto :goto_0

    .line 1210
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    :catchall_0
    move-exception v3

    .line 1211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1213
    throw v3
.end method

.method public getPrivacyNodeInformation(III)Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    .locals 6
    .param p1, "parentAreaCode"    # I
    .param p2, "timeout"    # I
    .param p3, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1289
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1290
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1293
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1294
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1295
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1296
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1297
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1298
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1299
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1300
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1307
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1310
    return-object v2

    .line 1303
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    goto :goto_0

    .line 1306
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    :catchall_0
    move-exception v3

    .line 1307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1309
    throw v3
.end method

.method public getRFSState()Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1340
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1343
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1344
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1345
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1346
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1347
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1354
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1357
    return-object v2

    .line 1350
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;
    goto :goto_0

    .line 1353
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;
    :catchall_0
    move-exception v3

    .line 1354
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1356
    throw v3
.end method

.method public getSystemCode()Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1391
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1394
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1395
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1396
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1397
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1398
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfoInt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1405
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1408
    return-object v2

    .line 1401
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    goto :goto_0

    .line 1404
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :catchall_0
    move-exception v3

    .line 1405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1407
    throw v3
.end method

.method public getSystemCodeList(II)Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;
    .locals 6
    .param p1, "timeout"    # I
    .param p2, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1463
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1464
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1467
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1468
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1469
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1470
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1471
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1472
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1473
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1480
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1481
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1483
    return-object v2

    .line 1476
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;
    goto :goto_0

    .line 1479
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;
    :catchall_0
    move-exception v3

    .line 1480
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1481
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1482
    throw v3
.end method

.method public inactivateFelica()Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1508
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1511
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1512
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1513
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1514
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1515
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1522
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1525
    return-object v2

    .line 1518
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    goto :goto_0

    .line 1521
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :catchall_0
    move-exception v3

    .line 1522
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1524
    throw v3
.end method

.method public open()Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1569
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1570
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1573
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1574
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1575
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1576
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1577
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1584
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1585
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1587
    return-object v2

    .line 1580
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    goto :goto_0

    .line 1583
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :catchall_0
    move-exception v3

    .line 1584
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1585
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1586
    throw v3
.end method

.method public push(Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper;)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 6
    .param p1, "pushSegmentParcelableWrapper"    # Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1633
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1634
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1637
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1638
    if-eqz p1, :cond_0

    .line 1639
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1640
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1645
    :goto_0
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1646
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1647
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1648
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1655
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1658
    return-object v2

    .line 1643
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1654
    :catchall_0
    move-exception v3

    .line 1655
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1657
    throw v3

    .line 1651
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    goto :goto_1
.end method

.method public read(Lcom/felicanetworks/mfc/BlockList;II)Lcom/felicanetworks/mfc/FelicaResultInfoDataArray;
    .locals 6
    .param p1, "blockList"    # Lcom/felicanetworks/mfc/BlockList;
    .param p2, "timeout"    # I
    .param p3, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1740
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1743
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1744
    if-eqz p1, :cond_0

    .line 1745
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1746
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/felicanetworks/mfc/BlockList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1751
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1752
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1753
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1754
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1755
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1756
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfoDataArray;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfoDataArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1763
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoDataArray;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1766
    return-object v2

    .line 1749
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoDataArray;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1762
    :catchall_0
    move-exception v3

    .line 1763
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1765
    throw v3

    .line 1759
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoDataArray;
    goto :goto_1
.end method

.method public reset()Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1816
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1817
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1820
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1821
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1822
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1823
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1824
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1831
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1832
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1834
    return-object v2

    .line 1827
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    goto :goto_0

    .line 1830
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :catchall_0
    move-exception v3

    .line 1831
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1832
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1833
    throw v3
.end method

.method public select(I)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 6
    .param p1, "systemCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1889
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1890
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1893
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1894
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1895
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1896
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1897
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1898
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1905
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1908
    return-object v2

    .line 1901
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    goto :goto_0

    .line 1904
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :catchall_0
    move-exception v3

    .line 1905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1907
    throw v3
.end method

.method public selectWithTarget(II)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 6
    .param p1, "target"    # I
    .param p2, "systemCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1983
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1984
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1987
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1988
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1989
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1990
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1991
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1992
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1993
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2000
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2003
    return-object v2

    .line 1996
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    goto :goto_0

    .line 1999
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :catchall_0
    move-exception v3

    .line 2000
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2002
    throw v3
.end method

.method public setNodeCodeSize(III)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 6
    .param p1, "nodeCodeSize"    # I
    .param p2, "timeout"    # I
    .param p3, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2382
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2383
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2386
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2387
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2388
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2389
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2390
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x19

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2391
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2392
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2393
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2400
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2403
    return-object v2

    .line 2396
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    goto :goto_0

    .line 2399
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :catchall_0
    move-exception v3

    .line 2400
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2402
    throw v3
.end method

.method public setPrivacy([Lcom/felicanetworks/mfc/PrivacySettingData;II)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 6
    .param p1, "privacySettingData"    # [Lcom/felicanetworks/mfc/PrivacySettingData;
    .param p2, "timeout"    # I
    .param p3, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2102
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2105
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2106
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2107
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2108
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2109
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2110
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2111
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2112
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2119
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2122
    return-object v2

    .line 2115
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    goto :goto_0

    .line 2118
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :catchall_0
    move-exception v3

    .line 2119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2121
    throw v3
.end method

.method public setPushNotificationListener(Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener;Ljava/lang/String;)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 6
    .param p1, "listener"    # Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener;
    .param p2, "appIdentificationCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2289
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2290
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2293
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2294
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2295
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2296
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2297
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2298
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 2299
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2306
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2309
    return-object v2

    .line 2294
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 2302
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    goto :goto_1

    .line 2305
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :catchall_0
    move-exception v3

    .line 2306
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2308
    throw v3
.end method

.method public write(Lcom/felicanetworks/mfc/BlockDataList;II)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 6
    .param p1, "blockDataList"    # Lcom/felicanetworks/mfc/BlockDataList;
    .param p2, "timeout"    # I
    .param p3, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2226
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2229
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2230
    if-eqz p1, :cond_0

    .line 2231
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2232
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/felicanetworks/mfc/BlockDataList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2237
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2238
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2239
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2240
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2241
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 2242
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2249
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2252
    return-object v2

    .line 2235
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2248
    :catchall_0
    move-exception v3

    .line 2249
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2251
    throw v3

    .line 2245
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    goto :goto_1
.end method
