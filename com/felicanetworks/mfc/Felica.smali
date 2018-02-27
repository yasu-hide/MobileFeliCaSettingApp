.class public Lcom/felicanetworks/mfc/Felica;
.super Landroid/app/Service;
.source "Felica.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfc/Felica$BindTimerHandler;,
        Lcom/felicanetworks/mfc/Felica$FelicaEventListenerStub;,
        Lcom/felicanetworks/mfc/Felica$LocalBinder;,
        Lcom/felicanetworks/mfc/Felica$MfcConnection;,
        Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;
    }
.end annotation


# static fields
.field private static final APP_CODE_LENGTH:I = 0x6

.field static final DEFAULT_BIND_TIMEOUT:I = 0x2710

.field public static final DEFAULT_RETRY_COUNT:I = 0x0

.field public static final DEFAULT_TIMEOUT:I = 0x3e8

.field private static final EXC_INVALID_BLOCK_DATA_LIST:Ljava/lang/String; = "The specified BlockDataList is null or empty."

.field private static final EXC_INVALID_BLOCK_LIST:Ljava/lang/String; = "The specified BlockList is null or empty."

.field private static final EXC_INVALID_LISTENER:Ljava/lang/String; = "The specified Listener is null."

.field private static final EXC_INVALID_NODECODESIZE:Ljava/lang/String; = "The specified NodeCodeSize is invalid value."

.field private static final EXC_INVALID_NODE_CODE_LIST:Ljava/lang/String; = "The specified parameter is invalid."

.field private static final EXC_INVALID_PRIVACY_SETTING_DATA_LIST:Ljava/lang/String; = "The specified parameter is invalid."

.field private static final EXC_INVALID_PUSH_SEGMENT_DATA_LIST:Ljava/lang/String; = "The specified parameter is invalid."

.field private static final EXC_INVALID_SET_PUSH_LISTENER_PRM:Ljava/lang/String; = "The specified parameter is invalid."

.field private static final EXC_INVALID_SYSTEM_CODE:Ljava/lang/String; = "The specified System Code is out of range."

.field private static final EXC_INVALID_TARGET:Ljava/lang/String; = "The specified Target is invalid value."

.field private static final EXC_MAX_SIZE_PERMIT_LIST:Ljava/lang/String; = "The size of permit list exceeds the maximum value."

.field private static final GET_SYSTEM_CODE_WILD1:I = 0xffff

.field private static final GET_SYSTEM_CODE_WILD2:I = 0xff00

.field private static final GET_SYSTEM_CODE_WILD3:I = 0xff

.field public static final INTERFACE_WIRED:I = 0x0

.field public static final INTERFACE_WIRELESS:I = 0x1

.field public static final MAX_PERMIT_LIST_SIZE:I = 0x32

.field public static final MAX_RETRY_COUNT:I = 0xa

.field private static final MAX_SYSTEM_CODE:I = 0xffff

.field public static final MAX_TIMEOUT:I = 0xea60

.field private static final MFC_ADAPTER_CLASS_NAME:Ljava/lang/String; = "com.felicanetworks.mfc.FelicaAdapter"

.field private static final MFC_PACKAGE_NAME:Ljava/lang/String; = "com.felicanetworks.mfc"

.field public static final MIN_RETRY_COUNT:I = 0x0

.field private static final MIN_SYSTEM_CODE:I = 0x0

.field public static final MIN_TIMEOUT:I = 0x0

.field public static final NODECODESIZE_2:I = 0x2

.field public static final NODECODESIZE_4:I = 0x4

.field private static final NONEXISTENT_SERVICE:I = 0xffff

.field static bindTimeout:I


# instance fields
.field private bindTimerHandler:Lcom/felicanetworks/mfc/Felica$BindTimerHandler;

.field private connecting:Z

.field private connectionHooker:Lcom/felicanetworks/mfc/Felica$MfcConnection;

.field private felica:Lcom/felicanetworks/mfc/IFelica;

.field private felicaEventListener:Lcom/felicanetworks/mfc/FelicaEventListener;

.field private iFelicaEventListener:Lcom/felicanetworks/mfc/IFelicaEventListener;

.field private final mBinder:Landroid/os/IBinder;

.field private permitList:[Ljava/lang/String;

.field private pushAppNotificationHooker:Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;

.field private retryCount:I

.field private timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 206
    const/16 v0, 0x2710

    sput v0, Lcom/felicanetworks/mfc/Felica;->bindTimeout:I

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 236
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 211
    new-instance v0, Lcom/felicanetworks/mfc/Felica$BindTimerHandler;

    invoke-direct {v0, p0}, Lcom/felicanetworks/mfc/Felica$BindTimerHandler;-><init>(Lcom/felicanetworks/mfc/Felica;)V

    iput-object v0, p0, Lcom/felicanetworks/mfc/Felica;->bindTimerHandler:Lcom/felicanetworks/mfc/Felica$BindTimerHandler;

    .line 216
    new-instance v0, Lcom/felicanetworks/mfc/Felica$MfcConnection;

    invoke-direct {v0, p0}, Lcom/felicanetworks/mfc/Felica$MfcConnection;-><init>(Lcom/felicanetworks/mfc/Felica;)V

    iput-object v0, p0, Lcom/felicanetworks/mfc/Felica;->connectionHooker:Lcom/felicanetworks/mfc/Felica$MfcConnection;

    .line 226
    new-instance v0, Lcom/felicanetworks/mfc/Felica$FelicaEventListenerStub;

    invoke-direct {v0, p0}, Lcom/felicanetworks/mfc/Felica$FelicaEventListenerStub;-><init>(Lcom/felicanetworks/mfc/Felica;)V

    iput-object v0, p0, Lcom/felicanetworks/mfc/Felica;->iFelicaEventListener:Lcom/felicanetworks/mfc/IFelicaEventListener;

    .line 2663
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    .line 2668
    iput-boolean v3, p0, Lcom/felicanetworks/mfc/Felica;->connecting:Z

    .line 2981
    new-instance v0, Lcom/felicanetworks/mfc/Felica$LocalBinder;

    invoke-direct {v0, p0}, Lcom/felicanetworks/mfc/Felica$LocalBinder;-><init>(Lcom/felicanetworks/mfc/Felica;)V

    iput-object v0, p0, Lcom/felicanetworks/mfc/Felica;->mBinder:Landroid/os/IBinder;

    .line 237
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 mfc/Felica"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 239
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/felicanetworks/mfc/Felica;->timeout:I

    .line 240
    iput v3, p0, Lcom/felicanetworks/mfc/Felica;->retryCount:I

    .line 241
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999 mfc/Felica"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 242
    return-void
.end method

.method static synthetic access$0(Lcom/felicanetworks/mfc/Felica;)Lcom/felicanetworks/mfc/FelicaEventListener;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->felicaEventListener:Lcom/felicanetworks/mfc/FelicaEventListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/felicanetworks/mfc/Felica;Lcom/felicanetworks/mfc/FelicaEventListener;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/felicanetworks/mfc/Felica;->felicaEventListener:Lcom/felicanetworks/mfc/FelicaEventListener;

    return-void
.end method

.method static synthetic access$2(Lcom/felicanetworks/mfc/Felica;)Lcom/felicanetworks/mfc/Felica$BindTimerHandler;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->bindTimerHandler:Lcom/felicanetworks/mfc/Felica$BindTimerHandler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/felicanetworks/mfc/Felica;)Z
    .locals 1

    .prologue
    .line 2668
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->connecting:Z

    return v0
.end method

.method static synthetic access$4(Lcom/felicanetworks/mfc/Felica;)Lcom/felicanetworks/mfc/IFelica;
    .locals 1

    .prologue
    .line 2663
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    return-object v0
.end method

.method static synthetic access$5(Lcom/felicanetworks/mfc/Felica;Lcom/felicanetworks/mfc/IFelica;)V
    .locals 0

    .prologue
    .line 2663
    iput-object p1, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    return-void
.end method

.method static synthetic access$6(Lcom/felicanetworks/mfc/Felica;Z)V
    .locals 0

    .prologue
    .line 2668
    iput-boolean p1, p0, Lcom/felicanetworks/mfc/Felica;->connecting:Z

    return-void
.end method

.method static synthetic access$7(Lcom/felicanetworks/mfc/Felica;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/felicanetworks/mfc/Felica;->permitList:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/felicanetworks/mfc/Felica;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->permitList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/felicanetworks/mfc/Felica;)Lcom/felicanetworks/mfc/IFelicaEventListener;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->iFelicaEventListener:Lcom/felicanetworks/mfc/IFelicaEventListener;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized activateFelica([Ljava/lang/String;Lcom/felicanetworks/mfc/FelicaEventListener;)V
    .locals 6
    .param p1, "permitList"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/felicanetworks/mfc/FelicaEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 357
    monitor-enter p0

    const/4 v1, 0x3

    :try_start_0
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "000 activateFelica"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 359
    if-nez p2, :cond_0

    .line 360
    const/4 v1, 0x2

    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "710 activateFelica"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "Parameter Error"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 361
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The specified Listener is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 364
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    array-length v1, p1

    const/16 v2, 0x32

    if-le v1, v2, :cond_1

    .line 365
    const/4 v1, 0x2

    const-string v2, "%s permitList.length > MAX_PERMIT_LIST_SIZE"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "711 activateFelica"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 366
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The size of permit list exceeds the maximum value."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 370
    :cond_1
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkNotActivated()V

    .line 373
    iput-object p1, p0, Lcom/felicanetworks/mfc/Felica;->permitList:[Ljava/lang/String;

    .line 374
    iput-object p2, p0, Lcom/felicanetworks/mfc/Felica;->felicaEventListener:Lcom/felicanetworks/mfc/FelicaEventListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    :try_start_2
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->bindMfc()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 385
    const/4 v1, 0x3

    :try_start_3
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "999 activateFelica"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 386
    monitor-exit p0

    return-void

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x2

    :try_start_4
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "712 activateFelica"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 381
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/felicanetworks/mfc/Felica;->permitList:[Ljava/lang/String;

    .line 382
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/felicanetworks/mfc/Felica;->felicaEventListener:Lcom/felicanetworks/mfc/FelicaEventListener;

    .line 383
    new-instance v1, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x1

    const/16 v3, 0x2f

    invoke-direct {v1, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

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

    .line 2707
    const-string v2, "%s"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "000 bindMfc"

    aput-object v4, v3, v6

    invoke-static {v7, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2710
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2711
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.felicanetworks.mfc"

    const-string v4, "com.felicanetworks.mfc.FelicaAdapter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2716
    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica;->connectionHooker:Lcom/felicanetworks/mfc/Felica$MfcConnection;

    .line 2714
    invoke-virtual {p0, v0, v2, v5}, Lcom/felicanetworks/mfc/Felica;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 2718
    .local v1, "result":Z
    if-nez v1, :cond_0

    .line 2720
    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "700 bindMfc"

    aput-object v4, v3, v6

    const-string v4, "Failed to connect for MFC Service"

    aput-object v4, v3, v5

    invoke-static {v7, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2721
    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica;->connectionHooker:Lcom/felicanetworks/mfc/Felica$MfcConnection;

    invoke-virtual {p0, v2}, Lcom/felicanetworks/mfc/Felica;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2722
    new-instance v2, Lcom/felicanetworks/mfc/FelicaException;

    const/16 v3, 0x2f

    invoke-direct {v2, v5, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v2

    .line 2726
    :cond_0
    iput-boolean v5, p0, Lcom/felicanetworks/mfc/Felica;->connecting:Z

    .line 2729
    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica;->bindTimerHandler:Lcom/felicanetworks/mfc/Felica$BindTimerHandler;

    sget v3, Lcom/felicanetworks/mfc/Felica;->bindTimeout:I

    invoke-virtual {v2, v3}, Lcom/felicanetworks/mfc/Felica$BindTimerHandler;->startTimer(I)V

    .line 2731
    const-string v2, "%s"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "999 bindMfc"

    aput-object v4, v3, v6

    invoke-static {v7, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2732
    return-void
.end method

.method protected checkActivated()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2674
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 checkActivated"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2675
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->connecting:Z

    if-eqz v0, :cond_1

    .line 2676
    :cond_0
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "001 checkActivated"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2677
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v1, 0x2

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 2679
    :cond_1
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999 checkActivated"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2680
    return-void
.end method

.method protected checkNotActivated()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 2686
    const/4 v0, 0x7

    const-string v1, "%s"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "000 checkNotActivated"

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2688
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/Felica;->connecting:Z

    if-eqz v0, :cond_0

    .line 2691
    const-string v0, "%s %s id:%d type:%d"

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "700 checkNotActivated"

    aput-object v2, v1, v5

    const-string v2, "FelicaException"

    aput-object v2, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v7, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2692
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/16 v1, 0x31

    invoke-direct {v0, v4, v1}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 2694
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    if-eqz v0, :cond_1

    .line 2696
    const-string v0, "%s %s id:%d type:%d"

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "701 checkNotActivated"

    aput-object v2, v1, v5

    const-string v2, "FelicaException"

    aput-object v2, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v7, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2697
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    const/16 v1, 0x2a

    invoke-direct {v0, v4, v1}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 2699
    :cond_1
    const/4 v0, 0x7

    const-string v1, "%s"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "999 checkNotActivated"

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2700
    return-void
.end method

.method declared-synchronized checkOnlineAccess()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 2452
    monitor-enter p0

    const/4 v1, 0x3

    :try_start_0
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "000 checkOnlineAccess"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2456
    :try_start_1
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 2459
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    invoke-interface {v1}, Lcom/felicanetworks/mfc/IFelica;->checkOnlineAccess()Lcom/felicanetworks/mfc/FelicaResultInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/felicanetworks/mfc/MfcUtil;->checkMfcResult(Lcom/felicanetworks/mfc/FelicaResultInfo;)V
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2473
    const/4 v1, 0x3

    :try_start_2
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "999 checkOnlineAccess"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2474
    monitor-exit p0

    return-void

    .line 2461
    :catch_0
    move-exception v0

    .line 2462
    .local v0, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v1, 0x2

    :try_start_3
    const-string v2, "%s %s id:%d type:%d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "700 checkOnlineAccess"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "FelicaException"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2463
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2452
    .end local v0    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2464
    :catch_1
    move-exception v0

    .line 2465
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x2

    :try_start_4
    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "701 checkOnlineAccess"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "NumberFormatException"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2466
    throw v0

    .line 2467
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v0

    .line 2469
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x2

    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "702 checkOnlineAccess"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "Other Exception"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2470
    new-instance v1, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x1

    const/16 v3, 0x2f

    invoke-direct {v1, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method protected cleanUp()V
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2622
    const-string v0, "%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "000 cleanUp"

    aput-object v2, v1, v4

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2625
    iput-object v3, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    .line 2627
    iput-boolean v4, p0, Lcom/felicanetworks/mfc/Felica;->connecting:Z

    .line 2629
    iput-object v3, p0, Lcom/felicanetworks/mfc/Felica;->felicaEventListener:Lcom/felicanetworks/mfc/FelicaEventListener;

    .line 2630
    iput-object v3, p0, Lcom/felicanetworks/mfc/Felica;->permitList:[Ljava/lang/String;

    .line 2632
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->pushAppNotificationHooker:Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;

    if-eqz v0, :cond_0

    .line 2633
    const-string v0, "%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "001 cleanUp"

    aput-object v2, v1, v4

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2635
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->pushAppNotificationHooker:Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;

    invoke-virtual {v0, v3}, Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;->setListener(Lcom/felicanetworks/mfc/PushAppNotificationListener;)V

    .line 2637
    :cond_0
    iput-object v3, p0, Lcom/felicanetworks/mfc/Felica;->pushAppNotificationHooker:Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;

    .line 2639
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/felicanetworks/mfc/Felica;->timeout:I

    .line 2641
    iput v4, p0, Lcom/felicanetworks/mfc/Felica;->retryCount:I

    .line 2643
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->bindTimerHandler:Lcom/felicanetworks/mfc/Felica$BindTimerHandler;

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/Felica$BindTimerHandler;->stopTimer()V

    .line 2644
    const-string v0, "%s timeout = %d, retryCount = %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "001 cleanUp"

    aput-object v2, v1, v4

    iget v2, p0, Lcom/felicanetworks/mfc/Felica;->timeout:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    iget v3, p0, Lcom/felicanetworks/mfc/Felica;->retryCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2646
    const-string v0, "%s"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "999 cleanUp"

    aput-object v2, v1, v4

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2647
    return-void
.end method

.method public declared-synchronized close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 529
    monitor-enter p0

    const/4 v1, 0x3

    :try_start_0
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "000 close"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 531
    :try_start_1
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 532
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    invoke-interface {v1}, Lcom/felicanetworks/mfc/IFelica;->close()Lcom/felicanetworks/mfc/FelicaResultInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/felicanetworks/mfc/MfcUtil;->checkMfcResult(Lcom/felicanetworks/mfc/FelicaResultInfo;)V
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    const/4 v1, 0x7

    :try_start_2
    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "001 close"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "cleanup pushlistener"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 543
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->pushAppNotificationHooker:Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;

    if-eqz v1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->pushAppNotificationHooker:Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;->setListener(Lcom/felicanetworks/mfc/PushAppNotificationListener;)V

    .line 546
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/felicanetworks/mfc/Felica;->pushAppNotificationHooker:Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;

    .line 547
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/felicanetworks/mfc/Felica;->timeout:I

    .line 548
    const/4 v1, 0x0

    iput v1, p0, Lcom/felicanetworks/mfc/Felica;->retryCount:I

    .line 550
    const/4 v1, 0x3

    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "999 close"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 552
    monitor-exit p0

    return-void

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v1, 0x2

    :try_start_3
    const-string v2, "%s %s id:%d type:%d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "700 close"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "FelicaException"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 535
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 540
    .end local v0    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catchall_0
    move-exception v1

    .line 541
    const/4 v2, 0x7

    :try_start_4
    const-string v3, "%s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "001 close"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "cleanup pushlistener"

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 543
    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica;->pushAppNotificationHooker:Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;

    if-eqz v2, :cond_1

    .line 544
    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica;->pushAppNotificationHooker:Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;->setListener(Lcom/felicanetworks/mfc/PushAppNotificationListener;)V

    .line 546
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/felicanetworks/mfc/Felica;->pushAppNotificationHooker:Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;

    .line 547
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/felicanetworks/mfc/Felica;->timeout:I

    .line 548
    const/4 v2, 0x0

    iput v2, p0, Lcom/felicanetworks/mfc/Felica;->retryCount:I

    .line 549
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 529
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 536
    :catch_1
    move-exception v0

    .line 538
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x2

    :try_start_5
    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "701 close"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "Other Exception"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 539
    new-instance v1, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x1

    const/16 v3, 0x2f

    invoke-direct {v1, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized getBlockCountInformation([I)[Lcom/felicanetworks/mfc/BlockCountInformation;
    .locals 9
    .param p1, "nodeCodeList"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 1924
    monitor-enter p0

    const/4 v3, 0x3

    :try_start_0
    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "000 getBlockCountInformation"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1929
    :try_start_1
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 1932
    if-eqz p1, :cond_0

    array-length v3, p1

    if-lt v3, v8, :cond_0

    array-length v3, p1

    const/16 v4, 0x20

    if-le v3, v4, :cond_1

    .line 1933
    :cond_0
    const/4 v3, 0x1

    const-string v4, "%s invalid NodeCodeList"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "800 getBlockCountInformation"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1934
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The specified parameter is invalid."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1942
    :catch_0
    move-exception v0

    .line 1943
    .local v0, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v3, 0x2

    :try_start_2
    const-string v4, "%s %s id:%d type:%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "700 getBlockCountInformation"

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

    .line 1944
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1924
    .end local v0    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1939
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    iget v4, p0, Lcom/felicanetworks/mfc/Felica;->timeout:I

    iget v5, p0, Lcom/felicanetworks/mfc/Felica;->retryCount:I

    invoke-interface {v3, p1, v4, v5}, Lcom/felicanetworks/mfc/IFelica;->getBlockCountInformation([III)Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;

    move-result-object v1

    .line 1940
    .local v1, "result":Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;
    invoke-static {v1}, Lcom/felicanetworks/mfc/MfcUtil;->checkMfcResult(Lcom/felicanetworks/mfc/FelicaResultInfo;)V

    .line 1941
    invoke-virtual {v1}, Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/felicanetworks/mfc/BlockCountInformation;
    :try_end_3
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1953
    .local v2, "ret":[Lcom/felicanetworks/mfc/BlockCountInformation;
    const/4 v3, 0x3

    :try_start_4
    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "999 getBlockCountInformation"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1954
    monitor-exit p0

    return-object v2

    .line 1945
    .end local v1    # "result":Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;
    .end local v2    # "ret":[Lcom/felicanetworks/mfc/BlockCountInformation;
    :catch_1
    move-exception v0

    .line 1946
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x2

    :try_start_5
    const-string v4, "%s IllegalArgumentException"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "702 getBlockCountInformation"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1947
    throw v0

    .line 1948
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1950
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "701 getBlockCountInformation"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "Other Exception"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1951
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x1

    const/16 v5, 0x2f

    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized getContainerId()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 2208
    monitor-enter p0

    const/4 v3, 0x3

    :try_start_0
    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "000 getContainerId"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2211
    :try_start_1
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 2212
    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    iget v4, p0, Lcom/felicanetworks/mfc/Felica;->timeout:I

    iget v5, p0, Lcom/felicanetworks/mfc/Felica;->retryCount:I

    invoke-interface {v3, v4, v5}, Lcom/felicanetworks/mfc/IFelica;->getContainerId(II)Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;

    move-result-object v1

    .line 2213
    .local v1, "result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    invoke-static {v1}, Lcom/felicanetworks/mfc/MfcUtil;->checkMfcResult(Lcom/felicanetworks/mfc/FelicaResultInfo;)V

    .line 2214
    invoke-virtual {v1}, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2223
    .local v2, "ret":[B
    const/4 v3, 0x3

    :try_start_2
    const-string v4, "%s returned %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "999 getContainerId"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2224
    monitor-exit p0

    return-object v2

    .line 2215
    .end local v1    # "result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    .end local v2    # "ret":[B
    :catch_0
    move-exception v0

    .line 2216
    .local v0, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v3, 0x2

    :try_start_3
    const-string v4, "%s %s id:%d type:%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "700 getContainerId"

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

    .line 2217
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2208
    .end local v0    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2218
    :catch_1
    move-exception v0

    .line 2220
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    :try_start_4
    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "701 getContainerId"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "Other Exception"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2221
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x1

    const/16 v5, 0x2f

    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized getContainerIssueInformation()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 1157
    monitor-enter p0

    const/4 v3, 0x3

    :try_start_0
    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "000 getContainerIssueInformation"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1160
    :try_start_1
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 1161
    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    iget v4, p0, Lcom/felicanetworks/mfc/Felica;->timeout:I

    iget v5, p0, Lcom/felicanetworks/mfc/Felica;->retryCount:I

    invoke-interface {v3, v4, v5}, Lcom/felicanetworks/mfc/IFelica;->getContainerIssueInformation(II)Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;

    move-result-object v1

    .line 1162
    .local v1, "result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    invoke-static {v1}, Lcom/felicanetworks/mfc/MfcUtil;->checkMfcResult(Lcom/felicanetworks/mfc/FelicaResultInfo;)V

    .line 1163
    invoke-virtual {v1}, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1172
    .local v2, "ret":[B
    const/4 v3, 0x3

    :try_start_2
    const-string v4, "%s returned %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "999 getContainerIssueInformation"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1173
    monitor-exit p0

    return-object v2

    .line 1164
    .end local v1    # "result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    .end local v2    # "ret":[B
    :catch_0
    move-exception v0

    .line 1165
    .local v0, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v3, 0x2

    :try_start_3
    const-string v4, "%s %s id:%d type:%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "700 getContainerIssueInformation"

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

    .line 1166
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1157
    .end local v0    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1167
    :catch_1
    move-exception v0

    .line 1169
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    :try_start_4
    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "701 getContainerIssueInformation"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "Other Exception"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1170
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x1

    const/16 v5, 0x2f

    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized getICCode()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 996
    monitor-enter p0

    const/4 v3, 0x3

    :try_start_0
    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "000 getICCode"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1000
    :try_start_1
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 1001
    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    invoke-interface {v3}, Lcom/felicanetworks/mfc/IFelica;->getICCode()Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;

    move-result-object v1

    .line 1002
    .local v1, "result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    invoke-static {v1}, Lcom/felicanetworks/mfc/MfcUtil;->checkMfcResult(Lcom/felicanetworks/mfc/FelicaResultInfo;)V

    .line 1003
    invoke-virtual {v1}, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1012
    .local v2, "ret":[B
    const/4 v3, 0x3

    :try_start_2
    const-string v4, "%s returned %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "999 getICCode"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1013
    monitor-exit p0

    return-object v2

    .line 1004
    .end local v1    # "result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    .end local v2    # "ret":[B
    :catch_0
    move-exception v0

    .line 1005
    .local v0, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v3, 0x2

    :try_start_3
    const-string v4, "%s %s id:%d type:%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "700 getICCode"

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

    .line 1006
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 996
    .end local v0    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1007
    :catch_1
    move-exception v0

    .line 1009
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    :try_start_4
    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "701 getICCode"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "Other Exception"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1010
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x1

    const/16 v5, 0x2f

    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized getIDm()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 940
    monitor-enter p0

    const/4 v3, 0x3

    :try_start_0
    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "000 getIDm"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    :try_start_1
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 944
    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    invoke-interface {v3}, Lcom/felicanetworks/mfc/IFelica;->getIDm()Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;

    move-result-object v1

    .line 945
    .local v1, "result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    invoke-static {v1}, Lcom/felicanetworks/mfc/MfcUtil;->checkMfcResult(Lcom/felicanetworks/mfc/FelicaResultInfo;)V

    .line 946
    invoke-virtual {v1}, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 955
    .local v2, "ret":[B
    const/4 v3, 0x3

    :try_start_2
    const-string v4, "%s returned %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "999 getIDm"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 956
    monitor-exit p0

    return-object v2

    .line 947
    .end local v1    # "result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    .end local v2    # "ret":[B
    :catch_0
    move-exception v0

    .line 948
    .local v0, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v3, 0x2

    :try_start_3
    const-string v4, "%s %s id:%d type:%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "700 getIDm"

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

    .line 949
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 940
    .end local v0    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 950
    :catch_1
    move-exception v0

    .line 952
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    :try_start_4
    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "701 getIDm"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "Other Exception"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 953
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x1

    const/16 v5, 0x2f

    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method declared-synchronized getIFelica()Lcom/felicanetworks/mfc/IFelica;
    .locals 5

    .prologue
    .line 2956
    monitor-enter p0

    const/4 v0, 0x7

    :try_start_0
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "000 getIFelica"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2957
    const/4 v0, 0x7

    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "999 getIFelica"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2958
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2956
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInterface()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 883
    monitor-enter p0

    const/4 v3, 0x3

    :try_start_0
    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "000 getInterface"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    :try_start_1
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 888
    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    invoke-interface {v3}, Lcom/felicanetworks/mfc/IFelica;->getInterface()Lcom/felicanetworks/mfc/FelicaResultInfoInt;

    move-result-object v1

    .line 889
    .local v1, "result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    invoke-static {v1}, Lcom/felicanetworks/mfc/MfcUtil;->checkMfcResult(Lcom/felicanetworks/mfc/FelicaResultInfo;)V

    .line 890
    invoke-virtual {v1}, Lcom/felicanetworks/mfc/FelicaResultInfoInt;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 899
    .local v2, "ret":I
    const/4 v3, 0x3

    :try_start_2
    const-string v4, "%s returned %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "999 getInterface"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 900
    monitor-exit p0

    return v2

    .line 891
    .end local v1    # "result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    .end local v2    # "ret":I
    :catch_0
    move-exception v0

    .line 892
    .local v0, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v3, 0x2

    :try_start_3
    const-string v4, "%s %s id:%d type:%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "700 getInterface"

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

    .line 893
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 883
    .end local v0    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 894
    :catch_1
    move-exception v0

    .line 896
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    :try_start_4
    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "701 getInterface"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "Other Exception"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 897
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x1

    const/16 v5, 0x2f

    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized getKeyVersion(I)I
    .locals 8
    .param p1, "serviceCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 1080
    monitor-enter p0

    const/4 v3, 0x3

    :try_start_0
    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "000 getKeyVersion"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1088
    :try_start_1
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 1089
    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    iget v4, p0, Lcom/felicanetworks/mfc/Felica;->timeout:I

    iget v5, p0, Lcom/felicanetworks/mfc/Felica;->retryCount:I

    invoke-interface {v3, p1, v4, v5}, Lcom/felicanetworks/mfc/IFelica;->getKeyVersion(III)Lcom/felicanetworks/mfc/FelicaResultInfoInt;

    move-result-object v1

    .line 1090
    .local v1, "result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    invoke-static {v1}, Lcom/felicanetworks/mfc/MfcUtil;->checkMfcResult(Lcom/felicanetworks/mfc/FelicaResultInfo;)V

    .line 1091
    invoke-virtual {v1}, Lcom/felicanetworks/mfc/FelicaResultInfoInt;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 1103
    .local v2, "ret":I
    const/4 v3, 0x3

    :try_start_2
    const-string v4, "%s returned %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "999 getKeyVersion"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1104
    monitor-exit p0

    return v2

    .line 1092
    .end local v1    # "result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    .end local v2    # "ret":I
    :catch_0
    move-exception v0

    .line 1093
    .local v0, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v3, 0x2

    :try_start_3
    const-string v4, "%s %s id:%d type:%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "700 getKeyVersion"

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

    .line 1094
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1080
    .end local v0    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1095
    :catch_1
    move-exception v0

    .line 1096
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x2

    :try_start_4
    const-string v4, "%s serviceCode:%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "702 getKeyVersion"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1097
    throw v0

    .line 1098
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1100
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "701 getKeyVersion"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "Other Exception"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1101
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x1

    const/16 v5, 0x2f

    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized getNodeInformation(I)Lcom/felicanetworks/mfc/NodeInformation;
    .locals 8
    .param p1, "parentAreaCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 1723
    monitor-enter p0

    const/4 v3, 0x3

    :try_start_0
    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "000 getNodeInformation"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1728
    :try_start_1
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 1730
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/felicanetworks/mfc/ServiceUtil;->checkAreaCode(I)V

    .line 1732
    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    iget v4, p0, Lcom/felicanetworks/mfc/Felica;->timeout:I

    iget v5, p0, Lcom/felicanetworks/mfc/Felica;->retryCount:I

    invoke-interface {v3, p1, v4, v5}, Lcom/felicanetworks/mfc/IFelica;->getNodeInformation(III)Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;

    move-result-object v1

    .line 1733
    .local v1, "result":Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    invoke-static {v1}, Lcom/felicanetworks/mfc/MfcUtil;->checkMfcResult(Lcom/felicanetworks/mfc/FelicaResultInfo;)V

    .line 1734
    invoke-virtual {v1}, Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/NodeInformation;
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1746
    .local v2, "ret":Lcom/felicanetworks/mfc/NodeInformation;
    const/4 v3, 0x3

    :try_start_2
    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "999 getNodeInformation"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1747
    monitor-exit p0

    return-object v2

    .line 1735
    .end local v1    # "result":Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    .end local v2    # "ret":Lcom/felicanetworks/mfc/NodeInformation;
    :catch_0
    move-exception v0

    .line 1736
    .local v0, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v3, 0x2

    :try_start_3
    const-string v4, "%s %s id:%d type:%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "700 getNodeInformation"

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

    .line 1737
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1723
    .end local v0    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1738
    :catch_1
    move-exception v0

    .line 1739
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x2

    :try_start_4
    const-string v4, "%s IllegalArgumentException"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "702 getNodeInformation"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1740
    throw v0

    .line 1741
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1743
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "701 getNodeInformation"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "Other Exception"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1744
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x1

    const/16 v5, 0x2f

    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized getPrivacyNodeInformation(I)Lcom/felicanetworks/mfc/NodeInformation;
    .locals 8
    .param p1, "parentAreaCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 1823
    monitor-enter p0

    const/4 v3, 0x3

    :try_start_0
    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "000 getPrivacyNodeInformation"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1828
    :try_start_1
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 1830
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/felicanetworks/mfc/ServiceUtil;->checkAreaCode(I)V

    .line 1832
    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    iget v4, p0, Lcom/felicanetworks/mfc/Felica;->timeout:I

    iget v5, p0, Lcom/felicanetworks/mfc/Felica;->retryCount:I

    invoke-interface {v3, p1, v4, v5}, Lcom/felicanetworks/mfc/IFelica;->getPrivacyNodeInformation(III)Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;

    move-result-object v1

    .line 1833
    .local v1, "result":Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    invoke-static {v1}, Lcom/felicanetworks/mfc/MfcUtil;->checkMfcResult(Lcom/felicanetworks/mfc/FelicaResultInfo;)V

    .line 1834
    invoke-virtual {v1}, Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/NodeInformation;
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1846
    .local v2, "ret":Lcom/felicanetworks/mfc/NodeInformation;
    const/4 v3, 0x3

    :try_start_2
    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "999 getPrivacyNodeInformation"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1847
    monitor-exit p0

    return-object v2

    .line 1835
    .end local v1    # "result":Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    .end local v2    # "ret":Lcom/felicanetworks/mfc/NodeInformation;
    :catch_0
    move-exception v0

    .line 1836
    .local v0, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v3, 0x2

    :try_start_3
    const-string v4, "%s %s id:%d type:%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "700 getPrivacyNodeInformation"

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

    .line 1837
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1823
    .end local v0    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1838
    :catch_1
    move-exception v0

    .line 1839
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x2

    :try_start_4
    const-string v4, "%s IllegalArgumentException"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "702 getPrivacyNodeInformation"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1840
    throw v0

    .line 1841
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1843
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "701 getPrivacyNodeInformation"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "Other Exception"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1844
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x1

    const/16 v5, 0x2f

    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized getRFSState()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 1991
    monitor-enter p0

    const/4 v3, 0x3

    :try_start_0
    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "000 getRFSState"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1994
    :try_start_1
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 1995
    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    invoke-interface {v3}, Lcom/felicanetworks/mfc/IFelica;->getRFSState()Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;

    move-result-object v1

    .line 1996
    .local v1, "result":Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;
    invoke-static {v1}, Lcom/felicanetworks/mfc/MfcUtil;->checkMfcResult(Lcom/felicanetworks/mfc/FelicaResultInfo;)V

    .line 1997
    invoke-virtual {v1}, Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 2006
    .local v2, "ret":Z
    const/4 v3, 0x3

    :try_start_2
    const-string v4, "%s returned %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "999 getRFSState"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2007
    monitor-exit p0

    return v2

    .line 1998
    .end local v1    # "result":Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;
    .end local v2    # "ret":Z
    :catch_0
    move-exception v0

    .line 1999
    .local v0, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v3, 0x2

    :try_start_3
    const-string v4, "%s %s id:%d type:%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "700 getRFSState"

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

    .line 2000
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1991
    .end local v0    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2001
    :catch_1
    move-exception v0

    .line 2003
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    :try_start_4
    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "701 getRFSState"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "Other Exception"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2004
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x1

    const/16 v5, 0x2f

    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public getRetryCount()I
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 292
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 getRetryCount"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 293
    const-string v0, "%s %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "999 getRetryCount"

    aput-object v2, v1, v3

    const-string v2, "retryCount"

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 294
    iget v0, p0, Lcom/felicanetworks/mfc/Felica;->retryCount:I

    return v0
.end method

.method public declared-synchronized getSystemCode()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 810
    monitor-enter p0

    const/4 v3, 0x3

    :try_start_0
    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "000 getSystemCode"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    :try_start_1
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 815
    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    invoke-interface {v3}, Lcom/felicanetworks/mfc/IFelica;->getSystemCode()Lcom/felicanetworks/mfc/FelicaResultInfoInt;

    move-result-object v1

    .line 816
    .local v1, "result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    invoke-static {v1}, Lcom/felicanetworks/mfc/MfcUtil;->checkMfcResult(Lcom/felicanetworks/mfc/FelicaResultInfo;)V

    .line 817
    invoke-virtual {v1}, Lcom/felicanetworks/mfc/FelicaResultInfoInt;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 826
    .local v2, "ret":I
    const/4 v3, 0x3

    :try_start_2
    const-string v4, "%s returned %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "999 getSystemCode"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 827
    monitor-exit p0

    return v2

    .line 818
    .end local v1    # "result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    .end local v2    # "ret":I
    :catch_0
    move-exception v0

    .line 819
    .local v0, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v3, 0x2

    :try_start_3
    const-string v4, "%s %s id:%d type:%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "700 getSystemCode"

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

    .line 820
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 810
    .end local v0    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 821
    :catch_1
    move-exception v0

    .line 823
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    :try_start_4
    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "701 getSystemCode"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "Other Exception"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 824
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x1

    const/16 v5, 0x2f

    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized getSystemCodeList()[I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 1637
    monitor-enter p0

    const/4 v3, 0x3

    :try_start_0
    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "000 getSystemCodeList"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1639
    :try_start_1
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 1640
    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    iget v4, p0, Lcom/felicanetworks/mfc/Felica;->timeout:I

    iget v5, p0, Lcom/felicanetworks/mfc/Felica;->retryCount:I

    invoke-interface {v3, v4, v5}, Lcom/felicanetworks/mfc/IFelica;->getSystemCodeList(II)Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;

    move-result-object v1

    .line 1641
    .local v1, "result":Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;
    invoke-static {v1}, Lcom/felicanetworks/mfc/MfcUtil;->checkMfcResult(Lcom/felicanetworks/mfc/FelicaResultInfo;)V

    .line 1642
    invoke-virtual {v1}, Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1651
    .local v2, "ret":[I
    const/4 v3, 0x3

    :try_start_2
    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "999 getSystemCodeList"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1652
    monitor-exit p0

    return-object v2

    .line 1643
    .end local v1    # "result":Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;
    .end local v2    # "ret":[I
    :catch_0
    move-exception v0

    .line 1644
    .local v0, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v3, 0x2

    :try_start_3
    const-string v4, "%s %s id:%d type:%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "700 getSystemCodeList"

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

    .line 1645
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1637
    .end local v0    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1646
    :catch_1
    move-exception v0

    .line 1648
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    :try_start_4
    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "701 getSystemCodeList"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "Other Exception"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1649
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x1

    const/16 v5, 0x2f

    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public getTimeout()I
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 251
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 getTimeout"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 252
    const-string v0, "%s timeout:%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "999 getTimeout"

    aput-object v2, v1, v3

    iget v2, p0, Lcom/felicanetworks/mfc/Felica;->timeout:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 253
    iget v0, p0, Lcom/felicanetworks/mfc/Felica;->timeout:I

    return v0
.end method

.method public declared-synchronized inactivateFelica()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    .line 411
    monitor-enter p0

    const/4 v2, 0x3

    :try_start_0
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "000 inactivateFelica"

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    :try_start_1
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 414
    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    invoke-interface {v2}, Lcom/felicanetworks/mfc/IFelica;->inactivateFelica()Lcom/felicanetworks/mfc/FelicaResultInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/felicanetworks/mfc/MfcUtil;->checkMfcResult(Lcom/felicanetworks/mfc/FelicaResultInfo;)V
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 432
    const/4 v2, 0x7

    :try_start_2
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "003 inactivateFelica"

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 435
    :try_start_3
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->unbindMfc()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 441
    const/4 v2, 0x3

    :try_start_4
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "999 inactivateFelica"

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 442
    :goto_0
    monitor-exit p0

    return-void

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v2, 0x2

    :try_start_5
    const-string v3, "%s %s id:%d type:%d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "700 inactivateFelica"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "FelicaException"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 418
    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v2

    if-ne v2, v7, :cond_0

    .line 419
    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 420
    const/4 v2, 0x7

    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "001 inactivateFelica"

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 432
    const/4 v2, 0x7

    :try_start_6
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "003 inactivateFelica"

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 435
    :try_start_7
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->unbindMfc()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 436
    :catch_1
    move-exception v1

    .line 437
    .local v1, "e2":Ljava/lang/Exception;
    const/4 v2, 0x1

    :try_start_8
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "900 inactivateFelica"

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 438
    new-instance v2, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v3, 0x1

    const/16 v4, 0x2f

    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 411
    .end local v0    # "e":Lcom/felicanetworks/mfc/FelicaException;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 424
    .restart local v0    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :cond_0
    const/4 v2, 0x7

    :try_start_9
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "002 inactivateFelica"

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 425
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 431
    .end local v0    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catchall_1
    move-exception v2

    .line 432
    const/4 v3, 0x7

    :try_start_a
    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "003 inactivateFelica"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 435
    :try_start_b
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->unbindMfc()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 440
    :try_start_c
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 427
    :catch_2
    move-exception v0

    .line 429
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x2

    :try_start_d
    const-string v3, "%s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "701 inactivateFelica"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "Other Exception"

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 430
    new-instance v2, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v3, 0x1

    const/16 v4, 0x2f

    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 436
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 437
    .restart local v1    # "e2":Ljava/lang/Exception;
    const/4 v2, 0x1

    :try_start_e
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "900 inactivateFelica"

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 438
    new-instance v2, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v3, 0x1

    const/16 v4, 0x2f

    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v2

    .line 436
    .end local v1    # "e2":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 437
    .restart local v1    # "e2":Ljava/lang/Exception;
    const/4 v2, 0x1

    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "900 inactivateFelica"

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 438
    new-instance v2, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v3, 0x1

    const/16 v4, 0x2f

    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2990
    const/4 v7, 0x3

    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "000 onBind"

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2993
    :try_start_0
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2994
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2995
    .local v4, "pkgname":Ljava/lang/String;
    const/4 v7, 0x4

    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 2996
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 2997
    .local v2, "infos":[Landroid/content/pm/ServiceInfo;
    const/4 v6, 0x0

    .line 2999
    .local v6, "targetInfo":Landroid/content/pm/ServiceInfo;
    array-length v8, v2

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v8, :cond_0

    .line 3006
    :goto_1
    if-nez v6, :cond_2

    .line 3008
    const/4 v7, 0x1

    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "800 onBind service tag is not found."

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 3009
    const/4 v7, 0x0

    .line 3024
    .end local v2    # "infos":[Landroid/content/pm/ServiceInfo;
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    .end local v4    # "pkgname":Ljava/lang/String;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "targetInfo":Landroid/content/pm/ServiceInfo;
    :goto_2
    return-object v7

    .line 2999
    .restart local v2    # "infos":[Landroid/content/pm/ServiceInfo;
    .restart local v3    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v4    # "pkgname":Ljava/lang/String;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "targetInfo":Landroid/content/pm/ServiceInfo;
    :cond_0
    aget-object v1, v2, v7

    .line 3000
    .local v1, "info":Landroid/content/pm/ServiceInfo;
    iget-object v9, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3001
    const/4 v7, 0x7

    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "001 onBind"

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 3002
    move-object v6, v1

    .line 3003
    goto :goto_1

    .line 2999
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3011
    .end local v1    # "info":Landroid/content/pm/ServiceInfo;
    :cond_2
    iget-boolean v7, v6, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v7, :cond_3

    .line 3013
    const/4 v7, 0x1

    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "801 onBind exported tag is enable."

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 3014
    const/4 v7, 0x0

    goto :goto_2

    .line 3017
    :cond_3
    const/4 v7, 0x3

    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "999 onBind"

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 3018
    iget-object v7, p0, Lcom/felicanetworks/mfc/Felica;->mBinder:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 3021
    .end local v2    # "infos":[Landroid/content/pm/ServiceInfo;
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    .end local v4    # "pkgname":Ljava/lang/String;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "targetInfo":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    .line 3023
    .local v0, "e":Ljava/lang/Exception;
    const/4 v7, 0x1

    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "802 onBind"

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 3024
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

    .line 3035
    const-string v1, "%s"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "000 onDestroy"

    aput-object v3, v2, v6

    invoke-static {v9, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 3037
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3038
    const/4 v1, 0x7

    :try_start_1
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "001 onDestroy"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3040
    :try_start_2
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    if-eqz v1, :cond_0

    .line 3041
    const/4 v1, 0x7

    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "002 onDestroy"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 3042
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    invoke-interface {v1}, Lcom/felicanetworks/mfc/IFelica;->close()Lcom/felicanetworks/mfc/FelicaResultInfo;

    .line 3043
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    invoke-interface {v1}, Lcom/felicanetworks/mfc/IFelica;->inactivateFelica()Lcom/felicanetworks/mfc/FelicaResultInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3049
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->unbindMfc()V

    .line 3037
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3055
    :goto_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 3056
    const-string v1, "%s"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "999 onDestroy"

    aput-object v3, v2, v6

    invoke-static {v9, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 3057
    return-void

    .line 3045
    :catch_0
    move-exception v0

    .line 3046
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x6

    :try_start_4
    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "003 onDestroy"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3037
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

    .line 3051
    :catch_1
    move-exception v0

    .line 3052
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "%s %s"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "004 onDestroy"

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

    .line 3066
    const-string v1, "%s"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "000 onUnbind"

    aput-object v3, v2, v6

    invoke-static {v9, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 3068
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3069
    const/4 v1, 0x7

    :try_start_1
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "001 onUnbind"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3071
    :try_start_2
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    if-eqz v1, :cond_0

    .line 3072
    const/4 v1, 0x7

    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "002 onUnbind"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 3073
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    invoke-interface {v1}, Lcom/felicanetworks/mfc/IFelica;->close()Lcom/felicanetworks/mfc/FelicaResultInfo;

    .line 3074
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    invoke-interface {v1}, Lcom/felicanetworks/mfc/IFelica;->inactivateFelica()Lcom/felicanetworks/mfc/FelicaResultInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3080
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->unbindMfc()V

    .line 3068
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3085
    :goto_1
    const-string v1, "%s"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "999 onUnbind"

    aput-object v3, v2, v6

    invoke-static {v9, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 3086
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v1

    return v1

    .line 3076
    :catch_0
    move-exception v0

    .line 3077
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x6

    :try_start_4
    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "003 onUnbind"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3068
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

    .line 3082
    :catch_1
    move-exception v0

    .line 3083
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "%s %s"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "004 onUnbind"

    aput-object v3, v2, v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v10, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public declared-synchronized open()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 488
    monitor-enter p0

    const/4 v1, 0x3

    :try_start_0
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "000 open"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    :try_start_1
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 491
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    invoke-interface {v1}, Lcom/felicanetworks/mfc/IFelica;->open()Lcom/felicanetworks/mfc/FelicaResultInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/felicanetworks/mfc/MfcUtil;->checkMfcResult(Lcom/felicanetworks/mfc/FelicaResultInfo;)V
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 501
    const/4 v1, 0x3

    :try_start_2
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "999 open"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 502
    monitor-exit p0

    return-void

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v1, 0x2

    :try_start_3
    const-string v2, "%s %s id:%d type:%d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "700 open"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "FelicaException"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 495
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 488
    .end local v0    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 496
    :catch_1
    move-exception v0

    .line 498
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x2

    :try_start_4
    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "701 open"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "Other Exception"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 499
    new-instance v1, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x1

    const/16 v3, 0x2f

    invoke-direct {v1, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized push(Lcom/felicanetworks/mfc/PushSegment;)V
    .locals 6
    .param p1, "pushSegment"    # Lcom/felicanetworks/mfc/PushSegment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 2277
    monitor-enter p0

    const/4 v1, 0x3

    :try_start_0
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "000 push"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2281
    :try_start_1
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 2284
    if-nez p1, :cond_0

    .line 2285
    const/4 v1, 0x2

    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "710 push"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "Parameter Error"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2286
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The specified parameter is invalid."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2291
    :catch_0
    move-exception v0

    .line 2292
    .local v0, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v1, 0x2

    :try_start_2
    const-string v2, "%s %s id:%d type:%d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "700 push"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "FelicaException"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2293
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2277
    .end local v0    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2290
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    new-instance v2, Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper;

    invoke-direct {v2, p1}, Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper;-><init>(Lcom/felicanetworks/mfc/PushSegment;)V

    invoke-interface {v1, v2}, Lcom/felicanetworks/mfc/IFelica;->push(Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper;)Lcom/felicanetworks/mfc/FelicaResultInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/felicanetworks/mfc/MfcUtil;->checkMfcResult(Lcom/felicanetworks/mfc/FelicaResultInfo;)V
    :try_end_3
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2303
    const/4 v1, 0x3

    :try_start_4
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "999 push"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2304
    monitor-exit p0

    return-void

    .line 2294
    :catch_1
    move-exception v0

    .line 2295
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x2

    :try_start_5
    const-string v2, "%s %s %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "702 push"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "IllegalArgumentException"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2296
    throw v0

    .line 2297
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 2299
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x2

    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "701 push"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "Other Exception"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2300
    new-instance v1, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x1

    const/16 v3, 0x2f

    invoke-direct {v1, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized read(Lcom/felicanetworks/mfc/BlockList;)[Lcom/felicanetworks/mfc/Data;
    .locals 8
    .param p1, "blockList"    # Lcom/felicanetworks/mfc/BlockList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 1353
    monitor-enter p0

    const/4 v3, 0x3

    :try_start_0
    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "000 read"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1360
    :try_start_1
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 1362
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/felicanetworks/mfc/BlockList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1363
    :cond_0
    const/4 v3, 0x2

    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "710 read"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "Parameter Error"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1364
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The specified BlockList is null or empty."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1370
    :catch_0
    move-exception v0

    .line 1371
    .local v0, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v3, 0x2

    :try_start_2
    const-string v4, "%s %s id:%d type:%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "700 read"

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

    .line 1372
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1353
    .end local v0    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1367
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    iget v4, p0, Lcom/felicanetworks/mfc/Felica;->timeout:I

    iget v5, p0, Lcom/felicanetworks/mfc/Felica;->retryCount:I

    invoke-interface {v3, p1, v4, v5}, Lcom/felicanetworks/mfc/IFelica;->read(Lcom/felicanetworks/mfc/BlockList;II)Lcom/felicanetworks/mfc/FelicaResultInfoDataArray;

    move-result-object v1

    .line 1368
    .local v1, "result":Lcom/felicanetworks/mfc/FelicaResultInfoDataArray;
    invoke-static {v1}, Lcom/felicanetworks/mfc/MfcUtil;->checkMfcResult(Lcom/felicanetworks/mfc/FelicaResultInfo;)V

    .line 1369
    invoke-virtual {v1}, Lcom/felicanetworks/mfc/FelicaResultInfoDataArray;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/felicanetworks/mfc/Data;
    :try_end_3
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1381
    .local v2, "ret":[Lcom/felicanetworks/mfc/Data;
    const/4 v3, 0x3

    :try_start_4
    const-string v4, "%s returned %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "999 read"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1382
    monitor-exit p0

    return-object v2

    .line 1373
    .end local v1    # "result":Lcom/felicanetworks/mfc/FelicaResultInfoDataArray;
    .end local v2    # "ret":[Lcom/felicanetworks/mfc/Data;
    :catch_1
    move-exception v0

    .line 1374
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x2

    :try_start_5
    const-string v4, "%s IllegalArgumentException"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "702 read"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1375
    throw v0

    .line 1376
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1378
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "701 read"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "Other Exception"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1379
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x1

    const/16 v5, 0x2f

    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized reset()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 1566
    monitor-enter p0

    const/4 v1, 0x3

    :try_start_0
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "000 reset"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1569
    :try_start_1
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 1570
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    invoke-interface {v1}, Lcom/felicanetworks/mfc/IFelica;->reset()Lcom/felicanetworks/mfc/FelicaResultInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/felicanetworks/mfc/MfcUtil;->checkMfcResult(Lcom/felicanetworks/mfc/FelicaResultInfo;)V
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1579
    const/4 v1, 0x3

    :try_start_2
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "999 reset"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1580
    monitor-exit p0

    return-void

    .line 1571
    :catch_0
    move-exception v0

    .line 1572
    .local v0, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v1, 0x2

    :try_start_3
    const-string v2, "%s %s id:%d type:%d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "700 reset"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "FelicaException"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1573
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1566
    .end local v0    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1574
    :catch_1
    move-exception v0

    .line 1576
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x2

    :try_start_4
    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "701 reset"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "Other Exception"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1577
    new-instance v1, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x1

    const/16 v3, 0x2f

    invoke-direct {v1, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized select(I)V
    .locals 7
    .param p1, "systemCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    const v6, 0xff00

    .line 615
    monitor-enter p0

    const/4 v1, 0x3

    :try_start_0
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "000 select"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    :try_start_1
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 623
    if-ltz p1, :cond_0

    const v1, 0xffff

    if-le p1, v1, :cond_1

    .line 624
    :cond_0
    const/4 v1, 0x2

    const-string v2, "%s systemCode:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "710 select"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 625
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The specified System Code is out of range."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v1, 0x2

    :try_start_2
    const-string v2, "%s %s id:%d type:%d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "700 select"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "FelicaException"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 640
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 615
    .end local v0    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 628
    :cond_1
    const v1, 0xffff

    if-eq p1, v1, :cond_2

    .line 629
    and-int v1, p1, v6

    if-eq v1, v6, :cond_2

    .line 630
    and-int/lit16 v1, p1, 0xff

    const/16 v2, 0xff

    if-ne v1, v2, :cond_3

    .line 631
    :cond_2
    const/4 v1, 0x2

    :try_start_3
    const-string v2, "%s systemCode:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "711 select"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 632
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The specified System Code is out of range."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 641
    :catch_1
    move-exception v0

    .line 642
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x2

    :try_start_4
    const-string v2, "%s systemCode:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "702 select"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 643
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 636
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    :try_start_5
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    invoke-interface {v1, p1}, Lcom/felicanetworks/mfc/IFelica;->select(I)Lcom/felicanetworks/mfc/FelicaResultInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/felicanetworks/mfc/MfcUtil;->checkMfcResult(Lcom/felicanetworks/mfc/FelicaResultInfo;)V
    :try_end_5
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 649
    const/4 v1, 0x3

    :try_start_6
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "999 select"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 651
    monitor-exit p0

    return-void

    .line 644
    :catch_2
    move-exception v0

    .line 646
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x2

    :try_start_7
    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "701 select"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "Other Exception"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 647
    new-instance v1, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x1

    const/16 v3, 0x2f

    invoke-direct {v1, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public declared-synchronized select(II)V
    .locals 8
    .param p1, "target"    # I
    .param p2, "systemCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    const v7, 0xff00

    const/4 v6, 0x1

    .line 734
    monitor-enter p0

    const/4 v1, 0x3

    :try_start_0
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "000 select"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    :try_start_1
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 740
    if-eqz p1, :cond_0

    if-eq p1, v6, :cond_0

    .line 741
    const/4 v1, 0x2

    const-string v2, "%s target:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "710 select"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 742
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The specified Target is invalid value."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 759
    :catch_0
    move-exception v0

    .line 760
    .local v0, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v1, 0x2

    :try_start_2
    const-string v2, "%s %s id:%d type:%d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "700 select"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "FelicaException"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 761
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 734
    .end local v0    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 745
    :cond_0
    if-ltz p2, :cond_1

    const v1, 0xffff

    if-le p2, v1, :cond_2

    .line 746
    :cond_1
    const/4 v1, 0x2

    :try_start_3
    const-string v2, "%s systemCode:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "711 select"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 747
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The specified System Code is out of range."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 762
    :catch_1
    move-exception v0

    .line 763
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x2

    :try_start_4
    const-string v2, "%s systemCode:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "702 select"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 764
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 750
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    const v1, 0xffff

    if-eq p2, v1, :cond_3

    .line 751
    and-int v1, p2, v7

    if-eq v1, v7, :cond_3

    .line 752
    and-int/lit16 v1, p2, 0xff

    const/16 v2, 0xff

    if-ne v1, v2, :cond_4

    .line 753
    :cond_3
    const/4 v1, 0x2

    :try_start_5
    const-string v2, "%s systemCode:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "712 select"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 754
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The specified System Code is out of range."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 765
    :catch_2
    move-exception v0

    .line 767
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x2

    :try_start_6
    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "701 select"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "Other Exception"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 768
    new-instance v1, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x1

    const/16 v3, 0x2f

    invoke-direct {v1, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 758
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_7
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    invoke-interface {v1, p1, p2}, Lcom/felicanetworks/mfc/IFelica;->selectWithTarget(II)Lcom/felicanetworks/mfc/FelicaResultInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/felicanetworks/mfc/MfcUtil;->checkMfcResult(Lcom/felicanetworks/mfc/FelicaResultInfo;)V
    :try_end_7
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 770
    const/4 v1, 0x3

    :try_start_8
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "999 select"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 772
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setNodeCodeSize(I)V
    .locals 8
    .param p1, "nodeCodeSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    .line 1247
    monitor-enter p0

    const/4 v1, 0x3

    :try_start_0
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "000 setNodeCodeSize"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1251
    :try_start_1
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 1253
    if-eq p1, v6, :cond_0

    if-eq p1, v7, :cond_0

    .line 1254
    const/4 v1, 0x2

    const-string v2, "%s %s nodeCodeSize:%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "710 setNodeCodeSize"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "Parameter Error"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1255
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The specified NodeCodeSize is invalid value."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1259
    :catch_0
    move-exception v0

    .line 1260
    .local v0, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v1, 0x2

    :try_start_2
    const-string v2, "%s %s id:%d type:%d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "700 setNodeCodeSize"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "FelicaException"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1261
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1247
    .end local v0    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1258
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    iget v2, p0, Lcom/felicanetworks/mfc/Felica;->timeout:I

    iget v3, p0, Lcom/felicanetworks/mfc/Felica;->retryCount:I

    invoke-interface {v1, p1, v2, v3}, Lcom/felicanetworks/mfc/IFelica;->setNodeCodeSize(III)Lcom/felicanetworks/mfc/FelicaResultInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/felicanetworks/mfc/MfcUtil;->checkMfcResult(Lcom/felicanetworks/mfc/FelicaResultInfo;)V
    :try_end_3
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1271
    const/4 v1, 0x3

    :try_start_4
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "999 setNodeCodeSize"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1272
    monitor-exit p0

    return-void

    .line 1262
    :catch_1
    move-exception v0

    .line 1263
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x2

    :try_start_5
    const-string v2, "%s IllegalArgumentException nodeCodeSize:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "702 setNodeCodeSize"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1264
    throw v0

    .line 1265
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1267
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x2

    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "701 setNodeCodeSize"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "Other Exception"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1268
    new-instance v1, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x1

    const/16 v3, 0x2f

    invoke-direct {v1, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized setPrivacy([Lcom/felicanetworks/mfc/PrivacySettingData;)V
    .locals 6
    .param p1, "privacySettingData"    # [Lcom/felicanetworks/mfc/PrivacySettingData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 2130
    monitor-enter p0

    const/4 v1, 0x3

    :try_start_0
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "000 setPrivacy"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2134
    :try_start_1
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 2137
    if-eqz p1, :cond_0

    array-length v1, p1

    if-gtz v1, :cond_1

    .line 2138
    :cond_0
    const/4 v1, 0x2

    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "710 setPrivacy"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "Parameter Error"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2139
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The specified parameter is invalid."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2143
    :catch_0
    move-exception v0

    .line 2144
    .local v0, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v1, 0x2

    :try_start_2
    const-string v2, "%s %s id:%d type:%d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "700 setPrivacy"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "FelicaException"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2145
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2130
    .end local v0    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2142
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    iget v2, p0, Lcom/felicanetworks/mfc/Felica;->timeout:I

    iget v3, p0, Lcom/felicanetworks/mfc/Felica;->retryCount:I

    invoke-interface {v1, p1, v2, v3}, Lcom/felicanetworks/mfc/IFelica;->setPrivacy([Lcom/felicanetworks/mfc/PrivacySettingData;II)Lcom/felicanetworks/mfc/FelicaResultInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/felicanetworks/mfc/MfcUtil;->checkMfcResult(Lcom/felicanetworks/mfc/FelicaResultInfo;)V
    :try_end_3
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2155
    const/4 v1, 0x3

    :try_start_4
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "999 setPrivacy"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2156
    monitor-exit p0

    return-void

    .line 2146
    :catch_1
    move-exception v0

    .line 2147
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x2

    :try_start_5
    const-string v2, "%s %s %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "702 setPrivacy"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "IllegalArgumentException"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2148
    throw v0

    .line 2149
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 2151
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x2

    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "701 setPrivacy"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "Other Exception"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2152
    new-instance v1, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x1

    const/16 v3, 0x2f

    invoke-direct {v1, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized setPushNotificationListener(Lcom/felicanetworks/mfc/PushAppNotificationListener;Ljava/lang/String;)V
    .locals 8
    .param p1, "listener"    # Lcom/felicanetworks/mfc/PushAppNotificationListener;
    .param p2, "appIdentificationCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 2347
    monitor-enter p0

    const/4 v3, 0x3

    :try_start_0
    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "000 setPushNotificationListener"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2351
    :try_start_1
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 2354
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 2356
    const/4 v3, 0x2

    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "001 setPushNotificationListener"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2357
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The specified parameter is invalid."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2404
    :catch_0
    move-exception v0

    .line 2405
    .local v0, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v3, 0x2

    :try_start_2
    const-string v4, "%s %s id:%d type:%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "700 setPushNotificationListener"

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

    .line 2406
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2347
    .end local v0    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2361
    :cond_0
    if-eqz p2, :cond_2

    .line 2362
    const/4 v3, 0x7

    :try_start_3
    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "002 setPushNotificationListener"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2364
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    .line 2365
    const/4 v3, 0x1

    const-string v4, "%s invalid parameter"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "800 setPushNotificationListener"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2366
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The specified parameter is invalid."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2407
    :catch_1
    move-exception v0

    .line 2408
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x2

    :try_start_4
    const-string v4, "%s %s %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "702 setPushNotificationListener"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "IllegalArgumentException"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2409
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2369
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_5

    .line 2378
    .end local v1    # "i":I
    :cond_2
    const/4 v2, 0x0

    .line 2379
    .local v2, "mfcListener":Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;
    if-eqz p1, :cond_3

    .line 2380
    const/4 v3, 0x7

    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "003 setPushNotificationListener"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2381
    new-instance v2, Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;

    .end local v2    # "mfcListener":Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;
    invoke-direct {v2, p0, p1}, Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;-><init>(Lcom/felicanetworks/mfc/Felica;Lcom/felicanetworks/mfc/PushAppNotificationListener;)V
    :try_end_5
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2386
    .restart local v2    # "mfcListener":Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;
    :cond_3
    :try_start_6
    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    invoke-interface {v3, v2, p2}, Lcom/felicanetworks/mfc/IFelica;->setPushNotificationListener(Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener;Ljava/lang/String;)Lcom/felicanetworks/mfc/FelicaResultInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/felicanetworks/mfc/MfcUtil;->checkMfcResult(Lcom/felicanetworks/mfc/FelicaResultInfo;)V

    .line 2389
    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->pushAppNotificationHooker:Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;

    if-eqz v3, :cond_4

    .line 2391
    const/4 v3, 0x7

    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "004 setPushNotificationListener"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2392
    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica;->pushAppNotificationHooker:Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;->setListener(Lcom/felicanetworks/mfc/PushAppNotificationListener;)V

    .line 2394
    :cond_4
    iput-object v2, p0, Lcom/felicanetworks/mfc/Felica;->pushAppNotificationHooker:Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2416
    const/4 v3, 0x3

    :try_start_7
    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "999 setPushNotificationListener"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2417
    monitor-exit p0

    return-void

    .line 2370
    .end local v2    # "mfcListener":Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;
    .restart local v1    # "i":I
    :cond_5
    :try_start_8
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-lt v3, v4, :cond_6

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7e

    if-le v3, v4, :cond_7

    .line 2371
    :cond_6
    const/4 v3, 0x1

    const-string v4, "%s not ASCII code"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "801 setPushNotificationListener"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2372
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The specified parameter is invalid."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_8
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2410
    .end local v1    # "i":I
    :catch_2
    move-exception v0

    .line 2412
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    :try_start_9
    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "701 setPushNotificationListener"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "Other Exception"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2413
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x1

    const/16 v5, 0x2f

    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2369
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2396
    .end local v1    # "i":I
    .restart local v2    # "mfcListener":Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;
    :catch_3
    move-exception v0

    .line 2397
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    :try_start_a
    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "710 setPushNotificationListener"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "Error was happend in returening procedure"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2400
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;->setListener(Lcom/felicanetworks/mfc/PushAppNotificationListener;)V

    .line 2401
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/felicanetworks/mfc/Felica;->pushAppNotificationHooker:Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;

    .line 2402
    throw v0
    :try_end_a
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method public declared-synchronized setRetryCount(I)V
    .locals 5
    .param p1, "retryCount"    # I

    .prologue
    .line 309
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    const-string v1, "%s retryCount:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "000 setRetryCount"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 311
    if-gez p1, :cond_0

    .line 312
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/mfc/Felica;->retryCount:I

    .line 313
    const/4 v0, 0x7

    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "001 setRetryCount"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 322
    :goto_0
    const/4 v0, 0x3

    const-string v1, "%s retryCount:%d is set"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "999 setRetryCount"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/felicanetworks/mfc/Felica;->retryCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    monitor-exit p0

    return-void

    .line 314
    :cond_0
    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    .line 315
    const/16 v0, 0xa

    :try_start_1
    iput v0, p0, Lcom/felicanetworks/mfc/Felica;->retryCount:I

    .line 316
    const/4 v0, 0x7

    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "002 setRetryCount"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 318
    :cond_1
    :try_start_2
    iput p1, p0, Lcom/felicanetworks/mfc/Felica;->retryCount:I

    .line 319
    const/4 v0, 0x7

    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "003 setRetryCount"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized setTimeout(I)V
    .locals 5
    .param p1, "timeout"    # I

    .prologue
    .line 268
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    const-string v1, "%s timeout:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "000 setTimeout"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 270
    if-gez p1, :cond_0

    .line 271
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/mfc/Felica;->timeout:I

    .line 272
    const/4 v0, 0x7

    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "001 setTimeout"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 280
    :goto_0
    const/4 v0, 0x3

    const-string v1, "%s timeout:%d is set"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "999 setTimeout"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/felicanetworks/mfc/Felica;->timeout:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    monitor-exit p0

    return-void

    .line 273
    :cond_0
    const v0, 0xea60

    if-le p1, v0, :cond_1

    .line 274
    const v0, 0xea60

    :try_start_1
    iput v0, p0, Lcom/felicanetworks/mfc/Felica;->timeout:I

    .line 275
    const/4 v0, 0x7

    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "002 setTimeout"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 277
    :cond_1
    :try_start_2
    iput p1, p0, Lcom/felicanetworks/mfc/Felica;->timeout:I

    .line 278
    const/4 v0, 0x7

    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "003 setTimeout"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected unbindMfc()V
    .locals 9

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2738
    const-string v1, "%s"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "000 unbindMfc"

    aput-object v3, v2, v6

    invoke-static {v8, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2745
    const/4 v1, 0x3

    :try_start_0
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "001 unbindMfc"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2746
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->connectionHooker:Lcom/felicanetworks/mfc/Felica$MfcConnection;

    invoke-virtual {p0, v1}, Lcom/felicanetworks/mfc/Felica;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2747
    const/4 v1, 0x3

    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "002 unbindMfc"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2752
    const-string v1, "%s"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "003 unbindMfc"

    aput-object v3, v2, v6

    invoke-static {v8, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2754
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->cleanUp()V

    .line 2756
    :goto_0
    const-string v1, "%s"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "999 unbindMfc"

    aput-object v3, v2, v6

    invoke-static {v8, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2757
    return-void

    .line 2748
    :catch_0
    move-exception v0

    .line 2750
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x7

    :try_start_1
    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "004 unbindMfc"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "Unbind failed"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2752
    const-string v1, "%s"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "003 unbindMfc"

    aput-object v3, v2, v6

    invoke-static {v8, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2754
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->cleanUp()V

    goto :goto_0

    .line 2751
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 2752
    const-string v2, "%s"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "003 unbindMfc"

    aput-object v4, v3, v6

    invoke-static {v8, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2754
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->cleanUp()V

    .line 2755
    throw v1
.end method

.method public declared-synchronized write(Lcom/felicanetworks/mfc/BlockDataList;)V
    .locals 6
    .param p1, "blockDataList"    # Lcom/felicanetworks/mfc/BlockDataList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 1488
    monitor-enter p0

    const/4 v1, 0x3

    :try_start_0
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "000 write"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1492
    :try_start_1
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica;->checkActivated()V

    .line 1494
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/felicanetworks/mfc/BlockDataList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1495
    :cond_0
    const/4 v1, 0x2

    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "710 write"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "Parameter Error"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1496
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The specified BlockDataList is null or empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1500
    :catch_0
    move-exception v0

    .line 1501
    .local v0, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v1, 0x2

    :try_start_2
    const-string v2, "%s %s id:%d type:%d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "700 write"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "FelicaException"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1502
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1488
    .end local v0    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1499
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica;->felica:Lcom/felicanetworks/mfc/IFelica;

    iget v2, p0, Lcom/felicanetworks/mfc/Felica;->timeout:I

    iget v3, p0, Lcom/felicanetworks/mfc/Felica;->retryCount:I

    invoke-interface {v1, p1, v2, v3}, Lcom/felicanetworks/mfc/IFelica;->write(Lcom/felicanetworks/mfc/BlockDataList;II)Lcom/felicanetworks/mfc/FelicaResultInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/felicanetworks/mfc/MfcUtil;->checkMfcResult(Lcom/felicanetworks/mfc/FelicaResultInfo;)V
    :try_end_3
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1511
    const/4 v1, 0x3

    :try_start_4
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "999 write"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1512
    monitor-exit p0

    return-void

    .line 1503
    :catch_1
    move-exception v0

    .line 1504
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x2

    :try_start_5
    const-string v2, "%s IllegalArgumentException"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "702 write"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1505
    throw v0

    .line 1506
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1508
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x2

    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "701 write"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "Other Exception"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1509
    new-instance v1, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v2, 0x1

    const/16 v3, 0x2f

    invoke-direct {v1, v2, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
