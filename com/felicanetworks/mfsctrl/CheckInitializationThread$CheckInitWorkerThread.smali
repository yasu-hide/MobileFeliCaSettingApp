.class public Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;
.super Ljava/lang/Thread;
.source "CheckInitializationThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfsctrl/CheckInitializationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CheckInitWorkerThread"
.end annotation


# static fields
.field private static final RESULT_KIND_CANCELED:I = 0x3

.field private static final RESULT_KIND_COMPLETE:I = 0x0

.field private static final RESULT_KIND_ERROR:I = 0x2

.field private static final RESULT_KIND_WARNING:I = 0x1


# instance fields
.field private _compState:I

.field private _errorId:Ljava/lang/String;

.field private _errorType:I

.field private _faImpl:Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;

.field private _felicaErrInfo:Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

.field private _listener:Lcom/felicanetworks/mfsctrl/CheckInitializationListener;

.field private _mfa:Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

.field private _resultKind:I

.field private _warnCode:I

.field private _warnData:I

.field final synthetic this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;


# direct methods
.method constructor <init>(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;Lcom/felicanetworks/mfsctrl/CheckInitializationListener;)V
    .locals 3
    .param p2, "listener"    # Lcom/felicanetworks/mfsctrl/CheckInitializationListener;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 553
    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 563
    iput-object v2, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/CheckInitializationListener;

    .line 566
    iput-object v2, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_mfa:Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

    .line 569
    new-instance v0, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;

    invoke-direct {v0}, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_faImpl:Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;

    .line 572
    iput v1, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_resultKind:I

    .line 580
    iput v1, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_compState:I

    .line 583
    iput v1, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_warnCode:I

    .line 584
    iput v1, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_warnData:I

    .line 587
    iput-object v2, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_errorId:Ljava/lang/String;

    .line 589
    iput v1, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_errorType:I

    .line 591
    iput-object v2, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_felicaErrInfo:Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    .line 560
    iput-object p2, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/CheckInitializationListener;

    .line 561
    return-void
.end method

.method private declared-synchronized checkCancel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1088
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1088
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1097
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized finishFeliCaAccess()V
    .locals 1

    .prologue
    .line 993
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_mfa:Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_mfa:Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

    invoke-virtual {v0}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->felicaUseEnd()V

    .line 998
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_mfa:Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1004
    :cond_0
    monitor-exit p0

    return-void

    .line 993
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private notifyResult()V
    .locals 4

    .prologue
    .line 691
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/CheckInitializationListener;

    if-eqz v0, :cond_0

    .line 695
    iget v0, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_resultKind:I

    packed-switch v0, :pswitch_data_0

    .line 722
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/CheckInitializationListener;

    .line 727
    :cond_0
    return-void

    .line 700
    :pswitch_0
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/CheckInitializationListener;

    iget v1, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_compState:I

    invoke-interface {v0, v1}, Lcom/felicanetworks/mfsctrl/CheckInitializationListener;->onComplete(I)V

    goto :goto_0

    .line 706
    :pswitch_1
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/CheckInitializationListener;

    iget v1, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_warnCode:I

    iget v2, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_warnData:I

    invoke-interface {v0, v1, v2}, Lcom/felicanetworks/mfsctrl/CheckInitializationListener;->onWarning(II)V

    goto :goto_0

    .line 712
    :pswitch_2
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/CheckInitializationListener;

    iget v1, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_errorType:I

    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_errorId:Ljava/lang/String;

    iget-object v3, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_felicaErrInfo:Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/felicanetworks/mfsctrl/CheckInitializationListener;->onError(ILjava/lang/String;Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V

    goto :goto_0

    .line 695
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setResultComplete(I)V
    .locals 1
    .param p1, "compState"    # I

    .prologue
    .line 611
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_resultKind:I

    .line 612
    iput p1, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_compState:I

    .line 616
    return-void
.end method

.method private setResultError(Ljava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
    .locals 1
    .param p1, "errorId"    # Ljava/lang/String;
    .param p2, "errorType"    # I
    .param p3, "felicaErrInfo"    # Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    .prologue
    .line 665
    const/4 v0, 0x2

    iput v0, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_resultKind:I

    .line 666
    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_errorId:Ljava/lang/String;

    .line 667
    iput p2, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_errorType:I

    .line 668
    iput-object p3, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_felicaErrInfo:Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    .line 672
    return-void
.end method

.method private setResultWarning(II)V
    .locals 1
    .param p1, "warnCode"    # I
    .param p2, "warnData"    # I

    .prologue
    .line 638
    const/4 v0, 0x1

    iput v0, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_resultKind:I

    .line 639
    iput p1, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_warnCode:I

    .line 640
    iput p2, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_warnData:I

    .line 644
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x3

    .line 749
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    .line 754
    :try_start_1
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->checkCancel()V

    .line 755
    new-instance v5, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

    iget-object v6, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v6}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;-><init>(Lcom/felicanetworks/mfslib/MfsAppContext;)V

    iput-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_mfa:Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

    .line 756
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_mfa:Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

    iget-object v6, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_faImpl:Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;

    invoke-virtual {v5, v6}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->felicaUseStart(Lcom/felicanetworks/cmnctrl/chip/FelicaAccessListener;)V

    .line 757
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 763
    :try_start_2
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_faImpl:Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;

    invoke-virtual {v5}, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->pause()V

    .line 766
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->checkCancel()V

    .line 769
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_faImpl:Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;

    invoke-virtual {v5}, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->getResult()I

    move-result v4

    .line 772
    .local v4, "res":I
    packed-switch v4, :pswitch_data_0

    .line 828
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v5

    iget-object v5, v5, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v6, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v7, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    new-instance v8, Lcom/felicanetworks/mfsctrl/ControlFunctionException;

    const-string v9, "Unknown Result : MFC Access"

    const/4 v10, 0x3

    invoke-direct {v8, v9, v10}, Lcom/felicanetworks/mfsctrl/ControlFunctionException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v6, v7, v8}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    .line 829
    .local v2, "errorId2":Ljava/lang/String;
    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-direct {p0, v2, v5, v6}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->setResultError(Ljava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    .line 906
    iget-object v6, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    monitor-enter v6

    .line 911
    :try_start_3
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$100(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$100(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 916
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$102(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    .line 925
    :goto_0
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 932
    :try_start_4
    invoke-virtual {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 937
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->finishFeliCaAccess()V

    .line 939
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->notifyResult()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 952
    .end local v2    # "errorId2":Ljava/lang/String;
    .end local v4    # "res":I
    :cond_0
    :goto_1
    return-void

    .line 757
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_b

    .line 863
    :catch_0
    move-exception v0

    .line 869
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v5, 0x3

    :try_start_7
    iput v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_resultKind:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    .line 906
    iget-object v6, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    monitor-enter v6

    .line 911
    :try_start_8
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$100(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$100(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 916
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$102(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    .line 925
    :goto_2
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    .line 932
    :try_start_9
    invoke-virtual {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 937
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->finishFeliCaAccess()V

    .line 939
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->notifyResult()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_1

    .line 941
    :catch_1
    move-exception v0

    .line 946
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v5

    iget-object v5, v5, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v6, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v7, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-virtual {v5, v6, v7, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto :goto_1

    .line 785
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "res":I
    :pswitch_0
    const/4 v5, 0x2

    :try_start_a
    iget-object v6, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_faImpl:Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;

    invoke-virtual {v6}, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->getPid()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->setResultWarning(II)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    .line 906
    iget-object v6, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    monitor-enter v6

    .line 911
    :try_start_b
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$100(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$100(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 916
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$102(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    .line 925
    :goto_3
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 932
    :try_start_c
    invoke-virtual {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 937
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->finishFeliCaAccess()V

    .line 939
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->notifyResult()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_1

    .line 941
    :catch_2
    move-exception v0

    .line 946
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v5

    iget-object v5, v5, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v6, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v7, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-virtual {v5, v6, v7, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto/16 :goto_1

    .line 923
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v5, 0x0

    :try_start_d
    iput-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/CheckInitializationListener;

    goto :goto_3

    .line 925
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v5

    .line 792
    :pswitch_1
    const/4 v5, 0x3

    const/4 v6, 0x0

    :try_start_e
    invoke-direct {p0, v5, v6}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->setResultWarning(II)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    .line 906
    iget-object v6, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    monitor-enter v6

    .line 911
    :try_start_f
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$100(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$100(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 916
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$102(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    .line 925
    :goto_4
    monitor-exit v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 932
    :try_start_10
    invoke-virtual {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 937
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->finishFeliCaAccess()V

    .line 939
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->notifyResult()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    goto/16 :goto_1

    .line 941
    :catch_3
    move-exception v0

    .line 946
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v5

    iget-object v5, v5, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v6, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v7, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-virtual {v5, v6, v7, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto/16 :goto_1

    .line 923
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v5, 0x0

    :try_start_11
    iput-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/CheckInitializationListener;

    goto :goto_4

    .line 925
    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    throw v5

    .line 799
    :pswitch_2
    :try_start_12
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_faImpl:Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;

    invoke-virtual {v5}, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->getErrorId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    iget-object v7, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_faImpl:Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;

    invoke-virtual {v7}, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->getFelicaErrInfo()Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->setResultError(Ljava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    .line 906
    iget-object v6, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    monitor-enter v6

    .line 911
    :try_start_13
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$100(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$100(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 916
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$102(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    .line 925
    :goto_5
    monitor-exit v6
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 932
    :try_start_14
    invoke-virtual {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 937
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->finishFeliCaAccess()V

    .line 939
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->notifyResult()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4

    goto/16 :goto_1

    .line 941
    :catch_4
    move-exception v0

    .line 946
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v5

    iget-object v5, v5, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v6, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v7, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-virtual {v5, v6, v7, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto/16 :goto_1

    .line 923
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v5, 0x0

    :try_start_15
    iput-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/CheckInitializationListener;

    goto :goto_5

    .line 925
    :catchall_3
    move-exception v5

    monitor-exit v6
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    throw v5

    .line 806
    :pswitch_3
    :try_start_16
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_faImpl:Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;

    invoke-virtual {v5}, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->getErrorId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    iget-object v7, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_faImpl:Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;

    invoke-virtual {v7}, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->getFelicaErrInfo()Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->setResultError(Ljava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_16 .. :try_end_16} :catch_a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_c
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    .line 906
    iget-object v6, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    monitor-enter v6

    .line 911
    :try_start_17
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$100(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$100(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 916
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$102(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    .line 925
    :goto_6
    monitor-exit v6
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 932
    :try_start_18
    invoke-virtual {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 937
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->finishFeliCaAccess()V

    .line 939
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->notifyResult()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_5

    goto/16 :goto_1

    .line 941
    :catch_5
    move-exception v0

    .line 946
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v5

    iget-object v5, v5, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v6, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v7, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-virtual {v5, v6, v7, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto/16 :goto_1

    .line 923
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v5, 0x0

    :try_start_19
    iput-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/CheckInitializationListener;

    goto :goto_6

    .line 925
    :catchall_4
    move-exception v5

    monitor-exit v6
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    throw v5

    .line 813
    :pswitch_4
    :try_start_1a
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_faImpl:Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;

    invoke-virtual {v5}, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->getErrorId()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    iget-object v7, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_faImpl:Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;

    invoke-virtual {v7}, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->getFelicaErrInfo()Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->setResultError(Ljava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1a} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_1a .. :try_end_1a} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_c
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    .line 906
    iget-object v6, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    monitor-enter v6

    .line 911
    :try_start_1b
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$100(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$100(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 916
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$102(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    .line 925
    :goto_7
    monitor-exit v6
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    .line 932
    :try_start_1c
    invoke-virtual {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 937
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->finishFeliCaAccess()V

    .line 939
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->notifyResult()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_6

    goto/16 :goto_1

    .line 941
    :catch_6
    move-exception v0

    .line 946
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v5

    iget-object v5, v5, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v6, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v7, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-virtual {v5, v6, v7, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto/16 :goto_1

    .line 923
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v5, 0x0

    :try_start_1d
    iput-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/CheckInitializationListener;

    goto :goto_7

    .line 925
    :catchall_5
    move-exception v5

    monitor-exit v6
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    throw v5

    .line 820
    :pswitch_5
    :try_start_1e
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_faImpl:Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;

    invoke-virtual {v5}, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->getErrorId()Ljava/lang/String;

    move-result-object v1

    .line 821
    .local v1, "errorId":Ljava/lang/String;
    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-direct {p0, v1, v5, v6}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->setResultError(Ljava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_1e} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_1e .. :try_end_1e} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_c
    .catchall {:try_start_1e .. :try_end_1e} :catchall_b

    .line 906
    iget-object v6, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    monitor-enter v6

    .line 911
    :try_start_1f
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$100(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$100(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 916
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$102(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    .line 925
    :goto_8
    monitor-exit v6
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    .line 932
    :try_start_20
    invoke-virtual {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 937
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->finishFeliCaAccess()V

    .line 939
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->notifyResult()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_7

    goto/16 :goto_1

    .line 941
    :catch_7
    move-exception v0

    .line 946
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v5

    iget-object v5, v5, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v6, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v7, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-virtual {v5, v6, v7, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto/16 :goto_1

    .line 923
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    const/4 v5, 0x0

    :try_start_21
    iput-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/CheckInitializationListener;

    goto :goto_8

    .line 925
    :catchall_6
    move-exception v5

    monitor-exit v6
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    throw v5

    .line 923
    .end local v1    # "errorId":Ljava/lang/String;
    .restart local v2    # "errorId2":Ljava/lang/String;
    :cond_7
    const/4 v5, 0x0

    :try_start_22
    iput-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/CheckInitializationListener;

    goto/16 :goto_0

    .line 925
    :catchall_7
    move-exception v5

    monitor-exit v6
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    throw v5

    .line 941
    :catch_8
    move-exception v0

    .line 946
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v5

    iget-object v5, v5, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v6, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v7, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-virtual {v5, v6, v7, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto/16 :goto_1

    .line 834
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "errorId2":Ljava/lang/String;
    :pswitch_6
    :try_start_23
    monitor-enter p0
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_23} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_23 .. :try_end_23} :catch_a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_c
    .catchall {:try_start_23 .. :try_end_23} :catchall_b

    .line 839
    :try_start_24
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->checkCancel()V

    .line 841
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_mfa:Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

    invoke-virtual {v5}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->getIssueStateResult()Lcom/felicanetworks/cmnctrl/data/IssueStateData;

    move-result-object v3

    .line 842
    .local v3, "isd":Lcom/felicanetworks/cmnctrl/data/IssueStateData;
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_8

    .line 846
    :try_start_25
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->checkCancel()V

    .line 849
    iget-boolean v5, v3, Lcom/felicanetworks/cmnctrl/data/IssueStateData;->issueStateResult:Z

    if-eqz v5, :cond_8

    .line 854
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->setResultComplete(I)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_25} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_25 .. :try_end_25} :catch_a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_c
    .catchall {:try_start_25 .. :try_end_25} :catchall_b

    .line 906
    :goto_9
    iget-object v6, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    monitor-enter v6

    .line 911
    :try_start_26
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$100(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$100(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 916
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$102(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    .line 925
    :goto_a
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_9

    .line 932
    :try_start_27
    invoke-virtual {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 937
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->finishFeliCaAccess()V

    .line 939
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->notifyResult()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_9

    goto/16 :goto_1

    .line 941
    :catch_9
    move-exception v0

    .line 946
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v5

    iget-object v5, v5, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v6, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v7, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-virtual {v5, v6, v7, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto/16 :goto_1

    .line 842
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "isd":Lcom/felicanetworks/cmnctrl/data/IssueStateData;
    :catchall_8
    move-exception v5

    :try_start_28
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_8

    :try_start_29
    throw v5
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_29} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_29 .. :try_end_29} :catch_a
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_c
    .catchall {:try_start_29 .. :try_end_29} :catchall_b

    .line 870
    .end local v4    # "res":I
    :catch_a
    move-exception v0

    .line 874
    .local v0, "e":Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;
    :try_start_2a
    invoke-virtual {v0}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;->getErrorId()I

    move-result v5

    if-ne v5, v12, :cond_b

    .line 879
    invoke-virtual {v0}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;->getErrIdentifierCode()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    invoke-virtual {v0}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;->getFelicaErrInfo()Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->setResultError(Ljava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_b

    .line 906
    :goto_b
    iget-object v6, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    monitor-enter v6

    .line 911
    :try_start_2b
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$100(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    move-result-object v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$100(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 916
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$102(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    .line 925
    :goto_c
    monitor-exit v6
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_c

    .line 932
    :try_start_2c
    invoke-virtual {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 937
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->finishFeliCaAccess()V

    .line 939
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->notifyResult()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_b

    goto/16 :goto_1

    .line 941
    :catch_b
    move-exception v0

    .line 946
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v5

    iget-object v5, v5, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v6, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v7, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-virtual {v5, v6, v7, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto/16 :goto_1

    .line 860
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "isd":Lcom/felicanetworks/cmnctrl/data/IssueStateData;
    .restart local v4    # "res":I
    :cond_8
    const/4 v5, 0x0

    :try_start_2d
    invoke-direct {p0, v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->setResultComplete(I)V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_2d} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_2d .. :try_end_2d} :catch_a
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_c
    .catchall {:try_start_2d .. :try_end_2d} :catchall_b

    goto/16 :goto_9

    .line 893
    .end local v3    # "isd":Lcom/felicanetworks/cmnctrl/data/IssueStateData;
    .end local v4    # "res":I
    :catch_c
    move-exception v0

    .line 898
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_2e
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v5

    iget-object v5, v5, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v6, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v7, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-virtual {v5, v6, v7, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 899
    .restart local v1    # "errorId":Ljava/lang/String;
    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-direct {p0, v1, v5, v6}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->setResultError(Ljava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_b

    .line 906
    iget-object v6, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    monitor-enter v6

    .line 911
    :try_start_2f
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$100(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    move-result-object v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$100(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 916
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$102(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    .line 925
    :goto_d
    monitor-exit v6
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_d

    .line 932
    :try_start_30
    invoke-virtual {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 937
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->finishFeliCaAccess()V

    .line 939
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->notifyResult()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_d

    goto/16 :goto_1

    .line 941
    :catch_d
    move-exception v0

    .line 946
    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v5}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v5

    iget-object v5, v5, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v6, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v7, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-virtual {v5, v6, v7, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto/16 :goto_1

    .line 923
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "errorId":Ljava/lang/String;
    .restart local v3    # "isd":Lcom/felicanetworks/cmnctrl/data/IssueStateData;
    .restart local v4    # "res":I
    :cond_9
    const/4 v5, 0x0

    :try_start_31
    iput-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/CheckInitializationListener;

    goto/16 :goto_a

    .line 925
    :catchall_9
    move-exception v5

    monitor-exit v6
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_9

    throw v5

    .line 923
    .end local v3    # "isd":Lcom/felicanetworks/cmnctrl/data/IssueStateData;
    .end local v4    # "res":I
    .local v0, "e":Ljava/lang/InterruptedException;
    :cond_a
    const/4 v5, 0x0

    :try_start_32
    iput-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/CheckInitializationListener;

    goto/16 :goto_2

    .line 925
    :catchall_a
    move-exception v5

    monitor-exit v6
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_a

    throw v5

    .line 880
    .local v0, "e":Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;
    :cond_b
    :try_start_33
    invoke-virtual {v0}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;->getErrorId()I

    move-result v5

    if-ne v5, v11, :cond_d

    .line 885
    invoke-virtual {v0}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;->getErrIdentifierCode()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v0}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;->getFelicaErrInfo()Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->setResultError(Ljava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_b

    goto/16 :goto_b

    .line 906
    .end local v0    # "e":Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;
    :catchall_b
    move-exception v5

    iget-object v6, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    monitor-enter v6

    .line 911
    :try_start_34
    iget-object v7, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v7}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$100(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    move-result-object v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v7}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$100(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 916
    iget-object v7, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$102(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;)Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;

    .line 925
    :goto_e
    monitor-exit v6
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_e

    .line 932
    :try_start_35
    invoke-virtual {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->isInterrupted()Z

    move-result v6

    if-nez v6, :cond_c

    .line 937
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->finishFeliCaAccess()V

    .line 939
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->notifyResult()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_e

    .line 947
    :cond_c
    :goto_f
    throw v5

    .line 891
    .restart local v0    # "e":Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;
    :cond_d
    :try_start_36
    invoke-virtual {v0}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;->getErrIdentifierCode()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v7}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->setResultError(Ljava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_b

    goto/16 :goto_b

    .line 923
    :cond_e
    const/4 v5, 0x0

    :try_start_37
    iput-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/CheckInitializationListener;

    goto/16 :goto_c

    .line 925
    :catchall_c
    move-exception v5

    monitor-exit v6
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_c

    throw v5

    .line 923
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "errorId":Ljava/lang/String;
    :cond_f
    const/4 v5, 0x0

    :try_start_38
    iput-object v5, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/CheckInitializationListener;

    goto/16 :goto_d

    .line 925
    :catchall_d
    move-exception v5

    monitor-exit v6
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_d

    throw v5

    .line 923
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "errorId":Ljava/lang/String;
    :cond_10
    const/4 v7, 0x0

    :try_start_39
    iput-object v7, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/CheckInitializationListener;

    goto :goto_e

    .line 925
    :catchall_e
    move-exception v5

    monitor-exit v6
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_e

    throw v5

    .line 941
    :catch_e
    move-exception v0

    .line 946
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-static {v6}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/CheckInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v6

    iget-object v6, v6, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v7, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v8, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/CheckInitializationThread;

    invoke-virtual {v6, v7, v8, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto :goto_f

    .line 772
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public declared-synchronized setCancel()V
    .locals 1

    .prologue
    .line 1036
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->interrupt()V

    .line 1038
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->_faImpl:Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;

    invoke-virtual {v0}, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->restart()V

    .line 1040
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/CheckInitializationThread$CheckInitWorkerThread;->finishFeliCaAccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1044
    monitor-exit p0

    return-void

    .line 1036
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
