.class public Lcom/felicanetworks/mfc/FSC;
.super Landroid/app/Service;
.source "FSC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfc/FSC$BindTimerHandler;,
        Lcom/felicanetworks/mfc/FSC$ListenerParameter;,
        Lcom/felicanetworks/mfc/FSC$LocalBinder;,
        Lcom/felicanetworks/mfc/FSC$MfcConnection;
    }
.end annotation


# static fields
.field static final DEFAULT_BIND_TIMEOUT:I = 0x2710

.field private static final EXC_CURRENTLY_ONLINE:Ljava/lang/String; = "Currently online."

.field private static final EXC_DEVICE_LIST_NOT_SET:Ljava/lang/String; = "Device list not set."

.field private static final EXC_ERR_UNKNOWN:Ljava/lang/String; = "Unknown error."

.field private static final EXC_FELICA_NOT_OPEND:Ljava/lang/String; = "FeliCa chip is not opened yet."

.field private static final EXC_FELICA_NOT_SET:Ljava/lang/String; = "Felica not set."

.field private static final EXC_INTERRUPTED_BY_USER:Ljava/lang/String; = "Interrupted."

.field private static final EXC_INVALID_URL:Ljava/lang/String; = "The specified URL is null."

.field private static final EXC_LISTENER_NOT_SET:Ljava/lang/String; = "Listener not set."

.field private static final EXC_RUNTIME:Ljava/lang/String; = "java.lang.RuntimeException: A runtime exception was thrown within FSC."

.field private static final MFC_ADAPTER_CLASS_NAME:Ljava/lang/String; = "com.felicanetworks.mfc.FSCAdapter"

.field private static final MFC_PACKAGE_NAME:Ljava/lang/String; = "com.felicanetworks.mfc"

.field static bindTimeout:I


# instance fields
.field private bindTimerHandler:Lcom/felicanetworks/mfc/FSC$BindTimerHandler;

.field private canceled:Z

.field private connectionHooker:Lcom/felicanetworks/mfc/FSC$MfcConnection;

.field private deviceList:Lcom/felicanetworks/mfc/DeviceList;

.field private felica:Lcom/felicanetworks/mfc/Felica;

.field private fsc:Lcom/felicanetworks/mfc/IFSC;

.field private fscEventListener:Lcom/felicanetworks/mfc/FSCEventListener;

.field private ifscEventHooker:Lcom/felicanetworks/mfc/IFSCEventListener;

.field private final mBinder:Landroid/os/IBinder;

.field private online:Z

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    const/16 v0, 0x2710

    sput v0, Lcom/felicanetworks/mfc/FSC;->bindTimeout:I

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 292
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 123
    new-instance v0, Lcom/felicanetworks/mfc/FSC$BindTimerHandler;

    invoke-direct {v0, p0}, Lcom/felicanetworks/mfc/FSC$BindTimerHandler;-><init>(Lcom/felicanetworks/mfc/FSC;)V

    iput-object v0, p0, Lcom/felicanetworks/mfc/FSC;->bindTimerHandler:Lcom/felicanetworks/mfc/FSC$BindTimerHandler;

    .line 133
    iput-boolean v3, p0, Lcom/felicanetworks/mfc/FSC;->online:Z

    .line 138
    iput-boolean v3, p0, Lcom/felicanetworks/mfc/FSC;->canceled:Z

    .line 148
    new-instance v0, Lcom/felicanetworks/mfc/FSC$1;

    invoke-direct {v0, p0}, Lcom/felicanetworks/mfc/FSC$1;-><init>(Lcom/felicanetworks/mfc/FSC;)V

    iput-object v0, p0, Lcom/felicanetworks/mfc/FSC;->ifscEventHooker:Lcom/felicanetworks/mfc/IFSCEventListener;

    .line 708
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfc/FSC;->fsc:Lcom/felicanetworks/mfc/IFSC;

    .line 713
    new-instance v0, Lcom/felicanetworks/mfc/FSC$MfcConnection;

    invoke-direct {v0, p0}, Lcom/felicanetworks/mfc/FSC$MfcConnection;-><init>(Lcom/felicanetworks/mfc/FSC;)V

    iput-object v0, p0, Lcom/felicanetworks/mfc/FSC;->connectionHooker:Lcom/felicanetworks/mfc/FSC$MfcConnection;

    .line 990
    new-instance v0, Lcom/felicanetworks/mfc/FSC$LocalBinder;

    invoke-direct {v0, p0}, Lcom/felicanetworks/mfc/FSC$LocalBinder;-><init>(Lcom/felicanetworks/mfc/FSC;)V

    iput-object v0, p0, Lcom/felicanetworks/mfc/FSC;->mBinder:Landroid/os/IBinder;

    .line 293
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 294
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 295
    return-void
.end method

.method static synthetic access$0(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/FSCEventListener;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/felicanetworks/mfc/FSC;->fscEventListener:Lcom/felicanetworks/mfc/FSCEventListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/felicanetworks/mfc/FSC;)V
    .locals 0

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/felicanetworks/mfc/FSC;->terminate()V

    return-void
.end method

.method static synthetic access$10(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/Felica;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/felicanetworks/mfc/FSC;->felica:Lcom/felicanetworks/mfc/Felica;

    return-object v0
.end method

.method static synthetic access$11(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/DeviceList;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/felicanetworks/mfc/FSC;->deviceList:Lcom/felicanetworks/mfc/DeviceList;

    return-object v0
.end method

.method static synthetic access$12(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/IFSCEventListener;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/felicanetworks/mfc/FSC;->ifscEventHooker:Lcom/felicanetworks/mfc/IFSCEventListener;

    return-object v0
.end method

.method static synthetic access$13(Lcom/felicanetworks/mfc/FSC;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/felicanetworks/mfc/FSC;->url:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/IFSC;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/felicanetworks/mfc/FSC;->fsc:Lcom/felicanetworks/mfc/IFSC;

    return-object v0
.end method

.method static synthetic access$3(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/FSC$BindTimerHandler;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/felicanetworks/mfc/FSC;->bindTimerHandler:Lcom/felicanetworks/mfc/FSC$BindTimerHandler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/felicanetworks/mfc/FSC;)Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/FSC;->online:Z

    return v0
.end method

.method static synthetic access$5(Lcom/felicanetworks/mfc/FSC;Z)V
    .locals 0

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/felicanetworks/mfc/FSC;->canceled:Z

    return-void
.end method

.method static synthetic access$6(Lcom/felicanetworks/mfc/FSC;Z)V
    .locals 0

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/felicanetworks/mfc/FSC;->online:Z

    return-void
.end method

.method static synthetic access$7(Lcom/felicanetworks/mfc/FSC;Lcom/felicanetworks/mfc/IFSC;)V
    .locals 0

    .prologue
    .line 708
    iput-object p1, p0, Lcom/felicanetworks/mfc/FSC;->fsc:Lcom/felicanetworks/mfc/IFSC;

    return-void
.end method

.method static synthetic access$8(Lcom/felicanetworks/mfc/FSC;)Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/FSC;->canceled:Z

    return v0
.end method

.method static synthetic access$9(Lcom/felicanetworks/mfc/FSC;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/felicanetworks/mfc/FSC;->url:Ljava/lang/String;

    return-object v0
.end method

.method private checkNotOnline()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 593
    const-string v0, "%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "000"

    aput-object v2, v1, v4

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 594
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/FSC;->online:Z

    if-eqz v0, :cond_0

    .line 595
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "700"

    aput-object v2, v1, v4

    const-string v2, "online processing"

    aput-object v2, v1, v5

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 596
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    invoke-direct {v0, v3, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 599
    :cond_0
    const-string v0, "%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "999"

    aput-object v2, v1, v4

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 600
    return-void
.end method

.method private declared-synchronized terminate()V
    .locals 5

    .prologue
    .line 567
    monitor-enter p0

    const/4 v0, 0x7

    :try_start_0
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "000"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 568
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/mfc/FSC;->canceled:Z

    .line 569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/mfc/FSC;->online:Z

    .line 570
    const/4 v0, 0x7

    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "999"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    monitor-exit p0

    return-void

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected bindMfc()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 719
    const-string v2, "%s"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "000"

    aput-object v4, v3, v6

    invoke-static {v7, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 722
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 723
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.felicanetworks.mfc"

    const-string v4, "com.felicanetworks.mfc.FSCAdapter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 728
    iget-object v2, p0, Lcom/felicanetworks/mfc/FSC;->connectionHooker:Lcom/felicanetworks/mfc/FSC$MfcConnection;

    .line 726
    invoke-virtual {p0, v0, v2, v5}, Lcom/felicanetworks/mfc/FSC;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 730
    .local v1, "result":Z
    if-nez v1, :cond_0

    .line 732
    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "700"

    aput-object v4, v3, v6

    const-string v4, "Failed to connect for MFC Service"

    aput-object v4, v3, v5

    invoke-static {v7, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 733
    new-instance v2, Lcom/felicanetworks/mfc/FelicaException;

    const/16 v3, 0x2f

    invoke-direct {v2, v5, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v2

    .line 737
    :cond_0
    iget-object v2, p0, Lcom/felicanetworks/mfc/FSC;->bindTimerHandler:Lcom/felicanetworks/mfc/FSC$BindTimerHandler;

    sget v3, Lcom/felicanetworks/mfc/FSC;->bindTimeout:I

    invoke-virtual {v2, v3}, Lcom/felicanetworks/mfc/FSC$BindTimerHandler;->startTimer(I)V

    .line 739
    const-string v2, "%s"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "999"

    aput-object v4, v3, v6

    invoke-static {v7, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 740
    return-void
.end method

.method protected convExceptionToListenerParameter(Lcom/felicanetworks/mfc/FelicaException;)Lcom/felicanetworks/mfc/FSC$ListenerParameter;
    .locals 8
    .param p1, "e"    # Lcom/felicanetworks/mfc/FelicaException;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x7

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 651
    const-string v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "000"

    aput-object v3, v2, v5

    invoke-static {v6, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 652
    invoke-virtual {p1}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 678
    const-string v1, "%s id:%d type:%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "700"

    aput-object v3, v2, v5

    invoke-virtual {p1}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v7, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 679
    const-string v0, "Unknown error."

    .line 682
    .local v0, "msg":Ljava/lang/String;
    :goto_0
    const-string v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "999"

    aput-object v3, v2, v5

    invoke-static {v6, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 683
    new-instance v1, Lcom/felicanetworks/mfc/FSC$ListenerParameter;

    invoke-direct {v1, p0, v4, v0}, Lcom/felicanetworks/mfc/FSC$ListenerParameter;-><init>(Lcom/felicanetworks/mfc/FSC;ILjava/lang/String;)V

    return-object v1

    .line 654
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_0
    const-string v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "001"

    aput-object v3, v2, v5

    invoke-static {v6, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 655
    const-string v0, "Currently online."

    .line 656
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 658
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_1
    const-string v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "002"

    aput-object v3, v2, v5

    invoke-static {v6, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 659
    const-string v0, "Felica not set."

    .line 660
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 662
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_2
    const-string v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "003"

    aput-object v3, v2, v5

    invoke-static {v6, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 663
    const-string v0, "Device list not set."

    .line 664
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 666
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_3
    const-string v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "004"

    aput-object v3, v2, v5

    invoke-static {v6, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 667
    const-string v0, "Listener not set."

    .line 668
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 670
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_4
    const-string v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "005"

    aput-object v3, v2, v5

    invoke-static {v6, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 671
    const-string v0, "FeliCa chip is not opened yet."

    .line 672
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 674
    .end local v0    # "msg":Ljava/lang/String;
    :sswitch_5
    const-string v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "006"

    aput-object v3, v2, v5

    invoke-static {v6, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 675
    const-string v0, "Unknown error."

    .line 676
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 652
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_2
        0x1a -> :sswitch_3
        0x1b -> :sswitch_5
    .end sparse-switch
.end method

.method protected convExceptionToListenerParameter(Ljava/lang/Exception;)Lcom/felicanetworks/mfc/FSC$ListenerParameter;
    .locals 7
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 690
    const/4 v0, 0x6

    const-string v1, "%s %s msg:%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "000"

    aput-object v3, v2, v6

    const-string v3, "Exception"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 691
    const/4 v0, 0x7

    const-string v1, "%s"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "999"

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 692
    new-instance v0, Lcom/felicanetworks/mfc/FSC$ListenerParameter;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v5, v1}, Lcom/felicanetworks/mfc/FSC$ListenerParameter;-><init>(Lcom/felicanetworks/mfc/FSC;ILjava/lang/String;)V

    return-object v0
.end method

.method protected convExceptionToListenerParameter(Ljava/lang/IllegalArgumentException;)Lcom/felicanetworks/mfc/FSC$ListenerParameter;
    .locals 7
    .param p1, "e"    # Ljava/lang/IllegalArgumentException;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 641
    const/4 v0, 0x6

    const-string v1, "%s %s msg:%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "000"

    aput-object v3, v2, v6

    const-string v3, "IllegalArgumentException"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 642
    const/4 v0, 0x7

    const-string v1, "%s"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "999"

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 643
    new-instance v0, Lcom/felicanetworks/mfc/FSC$ListenerParameter;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v5, v1}, Lcom/felicanetworks/mfc/FSC$ListenerParameter;-><init>(Lcom/felicanetworks/mfc/FSC;ILjava/lang/String;)V

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 999
    const/4 v7, 0x3

    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "000"

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1002
    :try_start_0
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/FSC;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1003
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/FSC;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1004
    .local v4, "pkgname":Ljava/lang/String;
    const/4 v7, 0x4

    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 1005
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 1006
    .local v2, "infos":[Landroid/content/pm/ServiceInfo;
    const/4 v6, 0x0

    .line 1008
    .local v6, "targetInfo":Landroid/content/pm/ServiceInfo;
    array-length v8, v2

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v8, :cond_0

    .line 1015
    :goto_1
    if-nez v6, :cond_2

    .line 1017
    const/4 v7, 0x1

    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "800 service tag is not found."

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1018
    const/4 v7, 0x0

    .line 1033
    .end local v2    # "infos":[Landroid/content/pm/ServiceInfo;
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    .end local v4    # "pkgname":Ljava/lang/String;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "targetInfo":Landroid/content/pm/ServiceInfo;
    :goto_2
    return-object v7

    .line 1008
    .restart local v2    # "infos":[Landroid/content/pm/ServiceInfo;
    .restart local v3    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v4    # "pkgname":Ljava/lang/String;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "targetInfo":Landroid/content/pm/ServiceInfo;
    :cond_0
    aget-object v1, v2, v7

    .line 1009
    .local v1, "info":Landroid/content/pm/ServiceInfo;
    iget-object v9, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1010
    const/4 v7, 0x7

    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "001"

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1011
    move-object v6, v1

    .line 1012
    goto :goto_1

    .line 1008
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1020
    .end local v1    # "info":Landroid/content/pm/ServiceInfo;
    :cond_2
    iget-boolean v7, v6, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v7, :cond_3

    .line 1022
    const/4 v7, 0x1

    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "801 exported tag is enable."

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1023
    const/4 v7, 0x0

    goto :goto_2

    .line 1026
    :cond_3
    const/4 v7, 0x3

    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "999"

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1027
    iget-object v7, p0, Lcom/felicanetworks/mfc/FSC;->mBinder:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1030
    .end local v2    # "infos":[Landroid/content/pm/ServiceInfo;
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    .end local v4    # "pkgname":Ljava/lang/String;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "targetInfo":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    .line 1032
    .local v0, "e":Ljava/lang/Exception;
    const/4 v7, 0x1

    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "802"

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1033
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 11

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1044
    const-string v1, "%s"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "000"

    aput-object v3, v2, v6

    invoke-static {v9, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1046
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1047
    const/4 v1, 0x7

    :try_start_1
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "001"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1049
    :try_start_2
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC;->fsc:Lcom/felicanetworks/mfc/IFSC;

    if-eqz v1, :cond_0

    .line 1050
    const/4 v1, 0x7

    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "002"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1051
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC;->fsc:Lcom/felicanetworks/mfc/IFSC;

    invoke-interface {v1}, Lcom/felicanetworks/mfc/IFSC;->stop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1057
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/FSC;->unbindMfc()V

    .line 1059
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/felicanetworks/mfc/FSC;->fscEventListener:Lcom/felicanetworks/mfc/FSCEventListener;

    .line 1046
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1065
    :goto_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1066
    const-string v1, "%s"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "999"

    aput-object v3, v2, v6

    invoke-static {v9, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1067
    return-void

    .line 1053
    :catch_0
    move-exception v0

    .line 1054
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x6

    :try_start_4
    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "003"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1046
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1061
    :catch_1
    move-exception v0

    .line 1062
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "%s %s"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "004"

    aput-object v3, v2, v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v10, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1077
    const-string v1, "%s"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "000"

    aput-object v3, v2, v6

    invoke-static {v9, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1079
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1080
    const/4 v1, 0x7

    :try_start_1
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "001"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1082
    :try_start_2
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC;->fsc:Lcom/felicanetworks/mfc/IFSC;

    if-eqz v1, :cond_0

    .line 1083
    const/4 v1, 0x7

    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "002"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1084
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC;->fsc:Lcom/felicanetworks/mfc/IFSC;

    invoke-interface {v1}, Lcom/felicanetworks/mfc/IFSC;->stop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1090
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/FSC;->unbindMfc()V

    .line 1092
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/felicanetworks/mfc/FSC;->fscEventListener:Lcom/felicanetworks/mfc/FSCEventListener;

    .line 1079
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1097
    :goto_1
    const-string v1, "%s"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "999"

    aput-object v3, v2, v6

    invoke-static {v9, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1098
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v1

    return v1

    .line 1086
    :catch_0
    move-exception v0

    .line 1087
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x6

    :try_start_4
    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "003"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1079
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1094
    :catch_1
    move-exception v0

    .line 1095
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "%s %s"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "004"

    aput-object v3, v2, v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v10, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public declared-synchronized setDeviceList(Lcom/felicanetworks/mfc/DeviceList;)V
    .locals 5
    .param p1, "deviceList"    # Lcom/felicanetworks/mfc/DeviceList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 373
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "000"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 374
    invoke-direct {p0}, Lcom/felicanetworks/mfc/FSC;->checkNotOnline()V

    .line 375
    iput-object p1, p0, Lcom/felicanetworks/mfc/FSC;->deviceList:Lcom/felicanetworks/mfc/DeviceList;

    .line 376
    const/4 v0, 0x3

    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "999"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    monitor-exit p0

    return-void

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFSCEventListener(Lcom/felicanetworks/mfc/FSCEventListener;)V
    .locals 5
    .param p1, "fscEventListener"    # Lcom/felicanetworks/mfc/FSCEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 346
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "000"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 347
    invoke-direct {p0}, Lcom/felicanetworks/mfc/FSC;->checkNotOnline()V

    .line 348
    iput-object p1, p0, Lcom/felicanetworks/mfc/FSC;->fscEventListener:Lcom/felicanetworks/mfc/FSCEventListener;

    .line 349
    const/4 v0, 0x3

    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "999"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    monitor-exit p0

    return-void

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFelica(Lcom/felicanetworks/mfc/Felica;)V
    .locals 5
    .param p1, "felica"    # Lcom/felicanetworks/mfc/Felica;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 318
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "000"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 319
    invoke-direct {p0}, Lcom/felicanetworks/mfc/FSC;->checkNotOnline()V

    .line 320
    iput-object p1, p0, Lcom/felicanetworks/mfc/FSC;->felica:Lcom/felicanetworks/mfc/Felica;

    .line 321
    const/4 v0, 0x3

    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "999"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    monitor-exit p0

    return-void

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start(Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 434
    monitor-enter p0

    const/4 v3, 0x3

    :try_start_0
    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "000"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 439
    if-nez p1, :cond_0

    .line 440
    const/4 v3, 0x2

    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "700"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "The specified URL is null."

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 441
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The specified URL is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 445
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/felicanetworks/mfc/FSC;->checkNotOnline()V

    .line 450
    iget-object v3, p0, Lcom/felicanetworks/mfc/FSC;->felica:Lcom/felicanetworks/mfc/Felica;

    if-nez v3, :cond_1

    .line 451
    const/4 v3, 0x2

    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "701"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "Felica is null"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 452
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x2

    .line 453
    const/16 v5, 0x18

    .line 452
    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3

    .line 457
    :cond_1
    iget-object v3, p0, Lcom/felicanetworks/mfc/FSC;->deviceList:Lcom/felicanetworks/mfc/DeviceList;

    if-nez v3, :cond_2

    .line 458
    const/4 v3, 0x2

    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "702"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "DeviceList is null"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 459
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x2

    .line 460
    const/16 v5, 0x19

    .line 459
    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3

    .line 464
    :cond_2
    iget-object v3, p0, Lcom/felicanetworks/mfc/FSC;->fscEventListener:Lcom/felicanetworks/mfc/FSCEventListener;

    if-nez v3, :cond_3

    .line 465
    const/4 v3, 0x2

    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "703"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "FSCEventListener is null"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 466
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x2

    .line 467
    const/16 v5, 0x1a

    .line 466
    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/felicanetworks/mfc/FSC;->felica:Lcom/felicanetworks/mfc/Felica;

    invoke-virtual {v3}, Lcom/felicanetworks/mfc/Felica;->checkOnlineAccess()V
    :try_end_2
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 484
    :try_start_3
    iget-object v3, p0, Lcom/felicanetworks/mfc/FSC;->fsc:Lcom/felicanetworks/mfc/IFSC;

    if-nez v3, :cond_4

    .line 486
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/felicanetworks/mfc/FSC;->canceled:Z

    .line 488
    iput-object p1, p0, Lcom/felicanetworks/mfc/FSC;->url:Ljava/lang/String;

    .line 490
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/FSC;->bindMfc()V

    .line 495
    :goto_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/felicanetworks/mfc/FSC;->online:Z
    :try_end_3
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 506
    const/4 v3, 0x3

    :try_start_4
    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "999"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 507
    monitor-exit p0

    return-void

    .line 473
    :catch_0
    move-exception v1

    .line 474
    .local v1, "fe":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v3, 0x2

    :try_start_5
    const-string v4, "%s %s id:%s type:%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "712"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "FelicaException"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 475
    throw v1

    .line 476
    .end local v1    # "fe":Lcom/felicanetworks/mfc/FelicaException;
    :catch_1
    move-exception v2

    .line 477
    .local v2, "ne":Ljava/lang/NumberFormatException;
    const/4 v3, 0x2

    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "711"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "NumberFormatException"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 478
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x1

    const/16 v5, 0x1b

    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 492
    .end local v2    # "ne":Ljava/lang/NumberFormatException;
    :cond_4
    :try_start_6
    iget-object v3, p0, Lcom/felicanetworks/mfc/FSC;->fsc:Lcom/felicanetworks/mfc/IFSC;

    iget-object v4, p0, Lcom/felicanetworks/mfc/FSC;->deviceList:Lcom/felicanetworks/mfc/DeviceList;

    iget-object v5, p0, Lcom/felicanetworks/mfc/FSC;->ifscEventHooker:Lcom/felicanetworks/mfc/IFSCEventListener;

    iget-object v6, p0, Lcom/felicanetworks/mfc/FSC;->felica:Lcom/felicanetworks/mfc/Felica;

    invoke-virtual {v6}, Lcom/felicanetworks/mfc/Felica;->getIFelica()Lcom/felicanetworks/mfc/IFelica;

    move-result-object v6

    invoke-interface {v3, p1, v4, v5, v6}, Lcom/felicanetworks/mfc/IFSC;->start(Ljava/lang/String;Lcom/felicanetworks/mfc/DeviceList;Lcom/felicanetworks/mfc/IFSCEventListener;Lcom/felicanetworks/mfc/IFelica;)Lcom/felicanetworks/mfc/FelicaResultInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/felicanetworks/mfc/MfcUtil;->checkMfcResult(Lcom/felicanetworks/mfc/FelicaResultInfo;)V
    :try_end_6
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 496
    :catch_2
    move-exception v0

    .line 497
    .local v0, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v3, 0x2

    :try_start_7
    const-string v4, "%s %s id:%s type:%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "710"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "FelicaException"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 498
    throw v0

    .line 499
    .end local v0    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catch_3
    move-exception v0

    .line 500
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x2

    const-string v4, "%s %s msg:%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "711"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "IllegalArgumentException"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 501
    throw v0

    .line 502
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v0

    .line 503
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "%s %s msg:%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "799"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "Exception"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 504
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x1

    const/16 v5, 0x2f

    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public declared-synchronized stop()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 530
    monitor-enter p0

    const/4 v1, 0x3

    :try_start_0
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "000"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 533
    iget-boolean v1, p0, Lcom/felicanetworks/mfc/FSC;->online:Z

    if-nez v1, :cond_0

    .line 534
    const/4 v1, 0x3

    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "997"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "Not online"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    :goto_0
    monitor-exit p0

    return-void

    .line 538
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC;->fsc:Lcom/felicanetworks/mfc/IFSC;

    if-nez v1, :cond_1

    .line 539
    const/4 v1, 0x3

    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "998"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "Connecting now. canceled flag On"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 540
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/felicanetworks/mfc/FSC;->canceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 530
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 546
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC;->fsc:Lcom/felicanetworks/mfc/IFSC;

    invoke-interface {v1}, Lcom/felicanetworks/mfc/IFSC;->stop()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 557
    :goto_1
    const/4 v1, 0x3

    :try_start_3
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "999"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 547
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x1

    const-string v2, "%s %s msg:%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "700"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "RemoteException"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 550
    new-instance v1, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x1

    const/16 v3, 0x2f

    invoke-direct {v1, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v1

    .line 551
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    const-string v2, "%s %s msg:%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "799"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "Exception"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method protected unbindMfc()V
    .locals 8

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x7

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 746
    const-string v1, "%s"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "000"

    aput-object v3, v2, v5

    invoke-static {v7, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 753
    const-string v1, "%s"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "001"

    aput-object v3, v2, v5

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 755
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC;->connectionHooker:Lcom/felicanetworks/mfc/FSC$MfcConnection;

    invoke-virtual {p0, v1}, Lcom/felicanetworks/mfc/FSC;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/felicanetworks/mfc/FSC;->fsc:Lcom/felicanetworks/mfc/IFSC;

    .line 762
    iput-boolean v5, p0, Lcom/felicanetworks/mfc/FSC;->online:Z

    .line 763
    iput-boolean v5, p0, Lcom/felicanetworks/mfc/FSC;->canceled:Z

    .line 765
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC;->bindTimerHandler:Lcom/felicanetworks/mfc/FSC$BindTimerHandler;

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/FSC$BindTimerHandler;->stopTimer()V

    .line 767
    const-string v1, "%s"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "999"

    aput-object v3, v2, v5

    invoke-static {v7, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 768
    return-void

    .line 756
    :catch_0
    move-exception v0

    .line 758
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "%s %s msg:"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "002"

    aput-object v3, v2, v5

    const-string v3, "Exception"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v7, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
