.class public Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;
.super Ljava/lang/Object;
.source "ControlFunctionLibrary.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary$FscConnImpl;,
        Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary$FeliCaConnImpl;
    }
.end annotation


# static fields
.field private static _thisInstance:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;


# instance fields
.field private _bindFelica:Lcom/felicanetworks/cmnctrl/chip/BindFelica;

.field private _bindFsc:Lcom/felicanetworks/mfsctrl/chip/BindFsc;

.field private _chkInitUiccListener:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener;

.field private _ciThread:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

.field private _gpas:Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;

.field private _initAppListener:Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;

.field private _mfsContext:Lcom/felicanetworks/mfslib/MfsAppContext;

.field private _riThread:Lcom/felicanetworks/mfsctrl/RunInitializationThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    invoke-direct {v0}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_thisInstance:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_mfsContext:Lcom/felicanetworks/mfslib/MfsAppContext;

    .line 36
    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_ciThread:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    .line 39
    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_riThread:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    .line 42
    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_initAppListener:Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;

    .line 45
    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_chkInitUiccListener:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener;

    .line 48
    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_gpas:Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;

    .line 51
    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_bindFelica:Lcom/felicanetworks/cmnctrl/chip/BindFelica;

    .line 54
    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_bindFsc:Lcom/felicanetworks/mfsctrl/chip/BindFsc;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;)Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_initAppListener:Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;)Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;
    .locals 0
    .param p0, "x0"    # Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;
    .param p1, "x1"    # Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_initAppListener:Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;

    return-object p1
.end method

.method static synthetic access$100(Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;)Lcom/felicanetworks/mfsctrl/chip/BindFsc;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_bindFsc:Lcom/felicanetworks/mfsctrl/chip/BindFsc;

    return-object v0
.end method

.method static synthetic access$200(Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;)Lcom/felicanetworks/mfslib/MfsAppContext;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_mfsContext:Lcom/felicanetworks/mfslib/MfsAppContext;

    return-object v0
.end method

.method private destroyInstance()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 497
    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_gpas:Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;

    .line 498
    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_chkInitUiccListener:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener;

    .line 502
    return-void
.end method

.method public static getInstance()Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_thisInstance:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    return-object v0
.end method


# virtual methods
.method public deinitializeApplication()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_initAppListener:Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;

    .line 167
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_bindFsc:Lcom/felicanetworks/mfsctrl/chip/BindFsc;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_bindFsc:Lcom/felicanetworks/mfsctrl/chip/BindFsc;

    invoke-virtual {v0}, Lcom/felicanetworks/mfsctrl/chip/BindFsc;->unbindFsc()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_bindFsc:Lcom/felicanetworks/mfsctrl/chip/BindFsc;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_bindFelica:Lcom/felicanetworks/cmnctrl/chip/BindFelica;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_bindFelica:Lcom/felicanetworks/cmnctrl/chip/BindFelica;

    invoke-virtual {v0}, Lcom/felicanetworks/cmnctrl/chip/BindFelica;->unbindFelica()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_bindFelica:Lcom/felicanetworks/cmnctrl/chip/BindFelica;

    .line 185
    :cond_1
    invoke-static {}, Lcom/felicanetworks/cmnctrl/database/DatabaseAccess;->clearInstance()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getClassCode()I
    .locals 1

    .prologue
    .line 749
    const/4 v0, 0x2

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 754
    const/16 v0, 0x21

    return v0
.end method

.method public initializeApplication(Lcom/felicanetworks/mfslib/MfsAppContext;Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;)V
    .locals 5
    .param p1, "mfsContext"    # Lcom/felicanetworks/mfslib/MfsAppContext;
    .param p2, "listener"    # Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfsctrl/ControlFunctionException;
        }
    .end annotation

    .prologue
    .line 99
    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_mfsContext:Lcom/felicanetworks/mfslib/MfsAppContext;

    .line 102
    if-nez p2, :cond_0

    .line 107
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Bad Param : Listener is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_initAppListener:Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;

    .line 145
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_mfsContext:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v2, v2, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v2, v3, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "errorMsg":Ljava/lang/String;
    new-instance v2, Lcom/felicanetworks/mfsctrl/ControlFunctionException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v2, v3, v1, v4}, Lcom/felicanetworks/mfsctrl/ControlFunctionException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 109
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_ciThread:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_ciThread:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-virtual {v2}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->isAliveThread()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_riThread:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_riThread:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    invoke-virtual {v2}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->isAliveThread()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 114
    :cond_2
    new-instance v2, Ljava/lang/IllegalThreadStateException;

    const-string v3, "Running Other Process"

    invoke-direct {v2, v3}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :cond_3
    iput-object p2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_initAppListener:Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;

    .line 121
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_bindFelica:Lcom/felicanetworks/cmnctrl/chip/BindFelica;

    if-eqz v2, :cond_4

    .line 125
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_bindFelica:Lcom/felicanetworks/cmnctrl/chip/BindFelica;

    invoke-virtual {v2}, Lcom/felicanetworks/cmnctrl/chip/BindFelica;->unbindFelica()V

    .line 128
    :cond_4
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_bindFsc:Lcom/felicanetworks/mfsctrl/chip/BindFsc;

    if-eqz v2, :cond_5

    .line 132
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_bindFsc:Lcom/felicanetworks/mfsctrl/chip/BindFsc;

    invoke-virtual {v2}, Lcom/felicanetworks/mfsctrl/chip/BindFsc;->unbindFsc()V

    .line 135
    :cond_5
    new-instance v2, Lcom/felicanetworks/cmnctrl/chip/BindFelica;

    invoke-direct {v2, p1}, Lcom/felicanetworks/cmnctrl/chip/BindFelica;-><init>(Lcom/felicanetworks/cmnlib/AppContext;)V

    iput-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_bindFelica:Lcom/felicanetworks/cmnctrl/chip/BindFelica;

    .line 136
    new-instance v2, Lcom/felicanetworks/mfsctrl/chip/BindFsc;

    invoke-direct {v2, p1}, Lcom/felicanetworks/mfsctrl/chip/BindFsc;-><init>(Lcom/felicanetworks/mfslib/MfsAppContext;)V

    iput-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_bindFsc:Lcom/felicanetworks/mfsctrl/chip/BindFsc;

    .line 137
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_bindFelica:Lcom/felicanetworks/cmnctrl/chip/BindFelica;

    new-instance v3, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary$FeliCaConnImpl;

    invoke-direct {v3, p0}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary$FeliCaConnImpl;-><init>(Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;)V

    invoke-virtual {v2, v3}, Lcom/felicanetworks/cmnctrl/chip/BindFelica;->bindFelica(Lcom/felicanetworks/cmnctrl/chip/BindFelicaListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 151
    return-void
.end method

.method public startCheckInitialization(Lcom/felicanetworks/mfsctrl/CheckInitializationListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/felicanetworks/mfsctrl/CheckInitializationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfsctrl/ControlFunctionException;
        }
    .end annotation

    .prologue
    .line 218
    if-nez p1, :cond_0

    .line 222
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Bad Param : Listener is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_mfsContext:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v2, v2, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v2, v3, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "errorMsg":Ljava/lang/String;
    new-instance v2, Lcom/felicanetworks/mfsctrl/ControlFunctionException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v2, v3, v1, v4}, Lcom/felicanetworks/mfsctrl/ControlFunctionException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 228
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_ciThread:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_ciThread:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-virtual {v2}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->isAliveThread()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_riThread:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_riThread:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    invoke-virtual {v2}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->isAliveThread()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 233
    :cond_2
    new-instance v2, Ljava/lang/IllegalThreadStateException;

    const-string v3, "Running Process"

    invoke-direct {v2, v3}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 237
    :cond_3
    new-instance v2, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    iget-object v3, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_mfsContext:Lcom/felicanetworks/mfslib/MfsAppContext;

    invoke-direct {v2, v3}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;-><init>(Lcom/felicanetworks/mfslib/MfsAppContext;)V

    iput-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_ciThread:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    .line 240
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_ciThread:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-virtual {v2, p1}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->startThread(Lcom/felicanetworks/mfsctrl/CheckInitializationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 252
    return-void
.end method

.method public declared-synchronized startCheckInitializeUicc(Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfsctrl/ControlFunctionException;,
            Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;
        }
    .end annotation

    .prologue
    .line 419
    monitor-enter p0

    if-nez p1, :cond_0

    .line 424
    :try_start_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Bad Param : Listener is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    :catch_0
    move-exception v2

    .line 444
    .local v2, "ge":Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    .end local v2    # "ge":Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;
    :catchall_0
    move-exception v3

    :try_start_2
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->destroyInstance()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 419
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 427
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_ciThread:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_ciThread:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-virtual {v3}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->isAliveThread()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_riThread:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_riThread:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    invoke-virtual {v3}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->isAliveThread()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 431
    :cond_2
    new-instance v3, Ljava/lang/IllegalThreadStateException;

    const-string v4, "Running Other Process"

    invoke-direct {v3, v4}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 445
    :catch_1
    move-exception v0

    .line 449
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v3, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_mfsContext:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v3, v3, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v4, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v3, v4, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, "errorMsg":Ljava/lang/String;
    new-instance v3, Lcom/felicanetworks/mfsctrl/ControlFunctionException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v3, v4, v1, v5}, Lcom/felicanetworks/mfsctrl/ControlFunctionException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 434
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_3
    :try_start_5
    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_chkInitUiccListener:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener;

    .line 436
    new-instance v3, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;

    iget-object v4, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_mfsContext:Lcom/felicanetworks/mfslib/MfsAppContext;

    invoke-direct {v3, v4}, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;-><init>(Lcom/felicanetworks/mfslib/MfsAppContext;)V

    iput-object v3, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_gpas:Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;

    .line 438
    iget-object v3, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_gpas:Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;

    new-instance v4, Lcom/felicanetworks/mfsctrl/GpasInitImpl;

    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_gpas:Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;

    iget-object v6, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_chkInitUiccListener:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener;

    invoke-direct {v4, v5, v6}, Lcom/felicanetworks/mfsctrl/GpasInitImpl;-><init>(Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener;)V

    invoke-virtual {v3, v4}, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->startGpas(Lcom/felicanetworks/mfsctrl/gpas/GpasGetFactoryListener;)V
    :try_end_5
    .catch Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 456
    :try_start_6
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->destroyInstance()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 461
    monitor-exit p0

    return-void
.end method

.method public startRunInitialization(Lcom/felicanetworks/mfsctrl/RunInitializationListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/felicanetworks/mfsctrl/RunInitializationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfsctrl/ControlFunctionException;
        }
    .end annotation

    .prologue
    .line 310
    if-nez p1, :cond_0

    .line 314
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Bad Param : Listener is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_mfsContext:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v2, v2, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v2, v3, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "errorMsg":Ljava/lang/String;
    new-instance v2, Lcom/felicanetworks/mfsctrl/ControlFunctionException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v2, v3, v1, v4}, Lcom/felicanetworks/mfsctrl/ControlFunctionException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 320
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_ciThread:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_ciThread:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-virtual {v2}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->isAliveThread()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_riThread:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_riThread:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    invoke-virtual {v2}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->isAliveThread()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 325
    :cond_2
    new-instance v2, Ljava/lang/IllegalThreadStateException;

    const-string v3, "Running Process"

    invoke-direct {v2, v3}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 329
    :cond_3
    new-instance v2, Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    iget-object v3, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_mfsContext:Lcom/felicanetworks/mfslib/MfsAppContext;

    invoke-direct {v2, v3}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;-><init>(Lcom/felicanetworks/mfslib/MfsAppContext;)V

    iput-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_riThread:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    .line 332
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_riThread:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    invoke-virtual {v2, p1}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->startThread(Lcom/felicanetworks/mfsctrl/RunInitializationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 344
    return-void
.end method

.method public stopCheckInitialization()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfsctrl/ControlFunctionException;
        }
    .end annotation

    .prologue
    .line 270
    :try_start_0
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_ciThread:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_ciThread:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-virtual {v2}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->isAliveThread()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_ciThread:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-virtual {v2}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->stopThread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_mfsContext:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v2, v2, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v2, v3, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "errorMsg":Ljava/lang/String;
    new-instance v2, Lcom/felicanetworks/mfsctrl/ControlFunctionException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v2, v3, v1, v4}, Lcom/felicanetworks/mfsctrl/ControlFunctionException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2
.end method

.method public declared-synchronized stopCheckInitializeUicc()V
    .locals 1

    .prologue
    .line 476
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_gpas:Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_gpas:Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;

    invoke-virtual {v0}, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->stopGpas()V

    .line 483
    :cond_0
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->destroyInstance()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    monitor-exit p0

    return-void

    .line 476
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopRunInitialization()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfsctrl/ControlFunctionException;
        }
    .end annotation

    .prologue
    .line 362
    :try_start_0
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_riThread:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_riThread:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    invoke-virtual {v2}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->isAliveThread()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_riThread:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    invoke-virtual {v2}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->stopThread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :cond_0
    return-void

    .line 369
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->_mfsContext:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v2, v2, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v2, v3, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, "errorMsg":Ljava/lang/String;
    new-instance v2, Lcom/felicanetworks/mfsctrl/ControlFunctionException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v2, v3, v1, v4}, Lcom/felicanetworks/mfsctrl/ControlFunctionException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2
.end method
