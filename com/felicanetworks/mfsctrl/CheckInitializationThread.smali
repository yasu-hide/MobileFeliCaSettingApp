.class public Lcom/felicanetworks/mfsctrl/CheckInitializationThread;
.super Ljava/lang/Object;
.source "CheckInitializationThread.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;
    }
.end annotation


# instance fields
.field private _context:Lcom/felicanetworks/mfslib/MfsAppContext;

.field private _thread:Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/mfslib/MfsAppContext;)V
    .locals 1
    .param p1, "context"    # Lcom/felicanetworks/mfslib/MfsAppContext;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    .line 32
    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->_thread:Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    .line 65
    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->_thread:Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    return-object v0
.end method

.method static synthetic access$102(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;
    .locals 0
    .param p0, "x0"    # Lcom/felicanetworks/mfsctrl/CheckInitializationThread;
    .param p1, "x1"    # Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->_thread:Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    return-object p1
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 1102
    const/4 v0, 0x1

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 1107
    const/16 v0, 0x21

    return v0
.end method

.method public declared-synchronized isAliveThread()Z
    .locals 2

    .prologue
    .line 532
    monitor-enter p0

    const/4 v0, 0x0

    .line 533
    .local v0, "ret":Z
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->_thread:Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    if-eqz v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->_thread:Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    invoke-virtual {v1}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->isAlive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 542
    :cond_0
    monitor-exit p0

    return v0

    .line 532
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized startThread(Lcom/felicanetworks/mfsctrl/CheckInitializationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/felicanetworks/mfsctrl/CheckInitializationListener;

    .prologue
    .line 394
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->isAliveThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    new-instance v0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    invoke-direct {v0, p0, p1}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;-><init>(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;Lcom/felicanetworks/mfsctrl/CheckInitializationListener;)V

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->_thread:Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    .line 402
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->_thread:Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    invoke-virtual {v0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    :cond_0
    monitor-exit p0

    return-void

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopThread()V
    .locals 1

    .prologue
    .line 470
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->_thread:Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->_thread:Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    invoke-virtual {v0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->setCancel()V

    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->_thread:Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    :cond_0
    monitor-exit p0

    return-void

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
