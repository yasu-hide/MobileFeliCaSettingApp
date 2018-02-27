.class public Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;
.super Ljava/lang/Object;
.source "RunInitializationThread.java"

# interfaces
.implements Lcom/felicanetworks/mfsctrl/chip/FelicaInitializeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FeliCaInitImpl"
.end annotation


# static fields
.field public static final COMMUNICATION_ERROR:I = 0x3

.field public static final FAILED:I = 0x2

.field public static final FAITAL_ERROR:I = 0x4

.field public static final RESULT_NONE:I = 0x0

.field public static final SUCCESS:I = 0x1


# instance fields
.field private _errorId:Ljava/lang/String;

.field private _pauseFlg:Z

.field private _result:I

.field final synthetic this$1:Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;


# direct methods
.method protected constructor <init>(Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;)V
    .locals 1

    .prologue
    .line 1799
    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;->this$1:Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1802
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;->_result:I

    .line 1805
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;->_errorId:Ljava/lang/String;

    .line 1808
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;->_pauseFlg:Z

    return-void
.end method

.method static synthetic access$100(Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1799
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;->pause()V

    return-void
.end method

.method private pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 2029
    monitor-enter p0

    .line 2033
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;->_pauseFlg:Z

    if-eqz v0, :cond_0

    .line 2037
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 2039
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2043
    return-void
.end method


# virtual methods
.method public getErrorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2142
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;->_errorId:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 2110
    iget v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;->_result:I

    return v0
.end method

.method public onComplete()V
    .locals 1

    .prologue
    .line 1876
    const/4 v0, 0x1

    iput v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;->_result:I

    .line 1877
    invoke-virtual {p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;->restart()V

    .line 1881
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorId"    # Ljava/lang/String;

    .prologue
    .line 1911
    const/4 v0, 0x4

    iput v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;->_result:I

    .line 1912
    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;->_errorId:Ljava/lang/String;

    .line 1913
    invoke-virtual {p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;->restart()V

    .line 1917
    return-void
.end method

.method public onWarning(I)V
    .locals 6
    .param p1, "warnCode"    # I

    .prologue
    const/4 v5, 0x3

    .line 1963
    packed-switch p1, :pswitch_data_0

    .line 1979
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;->this$1:Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    invoke-static {v0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v0

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v1, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;->this$1:Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    iget-object v2, v2, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    new-instance v3, Lcom/felicanetworks/mfsctrl/ControlFunctionException;

    const-string v4, "Illegal Warning Code"

    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfsctrl/ControlFunctionException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;->_errorId:Ljava/lang/String;

    .line 1980
    const/4 v0, 0x4

    iput v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;->_result:I

    .line 1984
    :goto_0
    invoke-virtual {p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;->restart()V

    .line 1988
    return-void

    .line 1968
    :pswitch_0
    iput v5, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;->_result:I

    goto :goto_0

    .line 1975
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;->_result:I

    goto :goto_0

    .line 1963
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public restart()V
    .locals 1

    .prologue
    .line 2071
    monitor-enter p0

    .line 2075
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;->_pauseFlg:Z

    .line 2076
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2077
    monitor-exit p0

    .line 2081
    return-void

    .line 2077
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
