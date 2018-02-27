.class public Lcom/felicanetworks/mfsctrl/RunInitializationThread;
.super Ljava/lang/Object;
.source "RunInitializationThread.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;
    }
.end annotation


# instance fields
.field private _context:Lcom/felicanetworks/mfslib/MfsAppContext;

.field private _thread:Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/mfslib/MfsAppContext;)V
    .locals 1
    .param p1, "context"    # Lcom/felicanetworks/mfslib/MfsAppContext;

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    .line 42
    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->_thread:Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    .line 67
    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    return-object v0
.end method

.method static synthetic access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->_thread:Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    return-object v0
.end method

.method static synthetic access$202(Lcom/felicanetworks/mfsctrl/RunInitializationThread;Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;
    .locals 0
    .param p0, "x0"    # Lcom/felicanetworks/mfsctrl/RunInitializationThread;
    .param p1, "x1"    # Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->_thread:Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    return-object p1
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 2149
    const/4 v0, 0x4

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 2154
    const/16 v0, 0x21

    return v0
.end method

.method public declared-synchronized isAliveThread()Z
    .locals 2

    .prologue
    .line 850
    monitor-enter p0

    const/4 v0, 0x0

    .line 851
    .local v0, "ret":Z
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->_thread:Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    if-eqz v1, :cond_0

    .line 855
    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->_thread:Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    invoke-virtual {v1}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->isAlive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 860
    :cond_0
    monitor-exit p0

    return v0

    .line 850
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized startThread(Lcom/felicanetworks/mfsctrl/RunInitializationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/felicanetworks/mfsctrl/RunInitializationListener;

    .prologue
    .line 732
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->isAliveThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 738
    new-instance v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    invoke-direct {v0, p0, p1}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;-><init>(Lcom/felicanetworks/mfsctrl/RunInitializationThread;Lcom/felicanetworks/mfsctrl/RunInitializationListener;)V

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->_thread:Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    .line 739
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->_thread:Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    invoke-virtual {v0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    :cond_0
    monitor-exit p0

    return-void

    .line 732
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopThread()V
    .locals 1

    .prologue
    .line 790
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->_thread:Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->_thread:Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    invoke-virtual {v0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->setCancel()V

    .line 795
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->_thread:Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    :cond_0
    monitor-exit p0

    return-void

    .line 790
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
