.class public Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;
.super Ljava/lang/Thread;
.source "RunInitializationThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfsctrl/RunInitializationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RunInitWorkerThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;,
        Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$NetworkConnImpl;
    }
.end annotation


# static fields
.field private static final NETWORK_NOTIFICATION_TIMES:I = 0x1

.field private static final NOTIFY_PROGRESS_1ST:I = 0x0

.field private static final NOTIFY_PROGRESS_2ND:I = 0xa

.field private static final NOTIFY_PROGRESS_3RD:I = 0x14

.field private static final NOTIFY_PROGRESS_4TH:I = 0x1e

.field private static final NOTIFY_PROGRESS_5TH:I = 0x28

.field private static final NOTIFY_PROGRESS_6TH:I = 0x5a

.field private static final RESULT_KIND_CANCELED:I = 0x3

.field private static final RESULT_KIND_COMPLETE:I = 0x0

.field private static final RESULT_KIND_ERROR:I = 0x2

.field private static final RESULT_KIND_WARNING:I = 0x1

.field private static final SERVER_MAINTENANCE:Ljava/lang/String; = "9201"

.field private static final SERVER_OVERCROWDING:Ljava/lang/String; = "9101"


# instance fields
.field private _errorId:Ljava/lang/String;

.field private _errorType:I

.field private _faImpl:Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;

.field private _felicaErrInfo:Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

.field private _fiImpl:Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;

.field private _listener:Lcom/felicanetworks/mfsctrl/RunInitializationListener;

.field private _mfa:Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

.field private _na:Lcom/felicanetworks/cmnctrl/net/NetworkAccess;

.field private _resultKind:I

.field private _warnCode:I

.field private _warnData:I

.field final synthetic this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;


# direct methods
.method constructor <init>(Lcom/felicanetworks/mfsctrl/RunInitializationThread;Lcom/felicanetworks/mfsctrl/RunInitializationListener;)V
    .locals 4
    .param p2, "listener"    # Lcom/felicanetworks/mfsctrl/RunInitializationListener;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 931
    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 872
    iput-object v3, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/RunInitializationListener;

    .line 875
    iput-object v3, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_mfa:Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

    .line 878
    new-instance v0, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;

    invoke-direct {v0}, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_faImpl:Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;

    .line 881
    new-instance v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;

    invoke-direct {v0, p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;-><init>(Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;)V

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_fiImpl:Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;

    .line 884
    new-instance v0, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;

    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    invoke-static {v1}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;-><init>(Lcom/felicanetworks/cmnlib/AppContext;)V

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_na:Lcom/felicanetworks/cmnctrl/net/NetworkAccess;

    .line 890
    iput v2, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_resultKind:I

    .line 898
    iput v2, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_warnCode:I

    .line 899
    iput v2, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_warnData:I

    .line 902
    iput-object v3, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_errorId:Ljava/lang/String;

    .line 904
    iput v2, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_errorType:I

    .line 906
    iput-object v3, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_felicaErrInfo:Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    .line 938
    iput-object p2, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/RunInitializationListener;

    .line 939
    return-void
.end method

.method static synthetic access$300(Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;I)V
    .locals 0
    .param p0, "x0"    # Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;
    .param p1, "x1"    # I

    .prologue
    .line 869
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->notifyProgress(I)V

    return-void
.end method

.method private declared-synchronized notifyProgress(I)V
    .locals 1
    .param p1, "per"    # I

    .prologue
    .line 1088
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->checkCancel()V

    .line 1090
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/RunInitializationListener;

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/RunInitializationListener;

    invoke-interface {v0, p1}, Lcom/felicanetworks/mfsctrl/RunInitializationListener;->onProgress(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1105
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1088
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1096
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private notifyResult()V
    .locals 4

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/RunInitializationListener;

    if-eqz v0, :cond_0

    .line 1043
    iget v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_resultKind:I

    packed-switch v0, :pswitch_data_0

    .line 1069
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/RunInitializationListener;

    .line 1074
    :cond_0
    return-void

    .line 1048
    :pswitch_0
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/RunInitializationListener;

    invoke-interface {v0}, Lcom/felicanetworks/mfsctrl/RunInitializationListener;->onComplete()V

    goto :goto_0

    .line 1054
    :pswitch_1
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/RunInitializationListener;

    iget v1, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_warnCode:I

    iget v2, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_warnData:I

    invoke-interface {v0, v1, v2}, Lcom/felicanetworks/mfsctrl/RunInitializationListener;->onWarning(II)V

    goto :goto_0

    .line 1060
    :pswitch_2
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/RunInitializationListener;

    iget v1, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_errorType:I

    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_errorId:Ljava/lang/String;

    iget-object v3, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_felicaErrInfo:Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/felicanetworks/mfsctrl/RunInitializationListener;->onError(ILjava/lang/String;Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V

    goto :goto_0

    .line 1043
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setResultComplete()V
    .locals 1

    .prologue
    .line 953
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_resultKind:I

    .line 957
    return-void
.end method

.method private setResultError(Ljava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
    .locals 1
    .param p1, "errorId"    # Ljava/lang/String;
    .param p2, "errorType"    # I
    .param p3, "felicaErrInfo"    # Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    .prologue
    .line 1008
    const/4 v0, 0x2

    iput v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_resultKind:I

    .line 1009
    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_errorId:Ljava/lang/String;

    .line 1010
    iput p2, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_errorType:I

    .line 1011
    iput-object p3, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_felicaErrInfo:Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    .line 1015
    return-void
.end method

.method private setResultWarning(II)V
    .locals 1
    .param p1, "warnCode"    # I
    .param p2, "warnData"    # I

    .prologue
    .line 987
    const/4 v0, 0x1

    iput v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_resultKind:I

    .line 988
    iput p1, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_warnCode:I

    .line 989
    iput p2, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_warnData:I

    .line 993
    return-void
.end method


# virtual methods
.method public declared-synchronized checkCancel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1704
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1708
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1704
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1713
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized finishFeliCaAccess()V
    .locals 1

    .prologue
    .line 1602
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_mfa:Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

    if-eqz v0, :cond_0

    .line 1606
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_mfa:Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

    invoke-virtual {v0}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->felicaUseEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1611
    :cond_0
    monitor-exit p0

    return-void

    .line 1602
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 25

    .prologue
    .line 1125
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->checkCancel()V

    .line 1128
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->notifyProgress(I)V

    .line 1131
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_15
    .catchall {:try_start_0 .. :try_end_0} :catchall_10

    .line 1136
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->checkCancel()V

    .line 1137
    new-instance v19, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;-><init>(Lcom/felicanetworks/mfslib/MfsAppContext;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_mfa:Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_mfa:Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_faImpl:Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->felicaUseStart(Lcom/felicanetworks/cmnctrl/chip/FelicaAccessListener;)V

    .line 1139
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1145
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_faImpl:Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->pause()V

    .line 1148
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->checkCancel()V

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_faImpl:Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->getResult()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    move-object/from16 v19, v0

    sget-object v20, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v21, v0

    new-instance v22, Lcom/felicanetworks/mfsctrl/ControlFunctionException;

    const-string v23, "Unknown Result : FeliCa Access"

    const/16 v24, 0x3

    invoke-direct/range {v22 .. v24}, Lcom/felicanetworks/mfsctrl/ControlFunctionException;-><init>(Ljava/lang/String;I)V

    invoke-virtual/range {v19 .. v22}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v7

    .line 1214
    .local v7, "errorId2":Ljava/lang/String;
    const/16 v19, 0x9

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v7, v1, v2}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->setResultError(Ljava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_15
    .catchall {:try_start_2 .. :try_end_2} :catchall_10

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1522
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$202(Lcom/felicanetworks/mfsctrl/RunInitializationThread;Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    .line 1535
    :goto_0
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 1541
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->isInterrupted()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1546
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->finishFeliCaAccess()V

    .line 1549
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->notifyResult()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 1562
    .end local v7    # "errorId2":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 1139
    :catchall_0
    move-exception v19

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v19
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_15
    .catchall {:try_start_6 .. :try_end_6} :catchall_10

    .line 1460
    :catch_0
    move-exception v5

    .line 1466
    .local v5, "e":Ljava/lang/InterruptedException;
    const/16 v19, 0x3

    :try_start_7
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_resultKind:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_10

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1522
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    if-eqz v19, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$202(Lcom/felicanetworks/mfsctrl/RunInitializationThread;Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    .line 1535
    :goto_2
    monitor-exit v20
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_12

    .line 1541
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->isInterrupted()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1546
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->finishFeliCaAccess()V

    .line 1549
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->notifyResult()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_1

    .line 1551
    :catch_1
    move-exception v5

    .line 1556
    .local v5, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    move-object/from16 v19, v0

    sget-object v20, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v5}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto :goto_1

    .line 1165
    .end local v5    # "e":Ljava/lang/Exception;
    :pswitch_0
    const/16 v19, 0x6

    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_faImpl:Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->getPid()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->setResultWarning(II)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_a .. :try_end_a} :catch_e
    .catch Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException; {:try_start_a .. :try_end_a} :catch_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_15
    .catchall {:try_start_a .. :try_end_a} :catchall_10

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1522
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$202(Lcom/felicanetworks/mfsctrl/RunInitializationThread;Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    .line 1535
    :goto_3
    monitor-exit v20
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1541
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->isInterrupted()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1546
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->finishFeliCaAccess()V

    .line 1549
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->notifyResult()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_1

    .line 1551
    :catch_2
    move-exception v5

    .line 1556
    .restart local v5    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    move-object/from16 v19, v0

    sget-object v20, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v5}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto/16 :goto_1

    .line 1533
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    const/16 v19, 0x0

    :try_start_d
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/RunInitializationListener;

    goto :goto_3

    .line 1535
    :catchall_1
    move-exception v19

    monitor-exit v20
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v19

    .line 1173
    :pswitch_1
    const/16 v19, 0x7

    const/16 v20, 0x0

    :try_start_e
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->setResultWarning(II)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_e .. :try_end_e} :catch_e
    .catch Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException; {:try_start_e .. :try_end_e} :catch_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_15
    .catchall {:try_start_e .. :try_end_e} :catchall_10

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1522
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$202(Lcom/felicanetworks/mfsctrl/RunInitializationThread;Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    .line 1535
    :goto_4
    monitor-exit v20
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 1541
    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->isInterrupted()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1546
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->finishFeliCaAccess()V

    .line 1549
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->notifyResult()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    goto/16 :goto_1

    .line 1551
    :catch_3
    move-exception v5

    .line 1556
    .restart local v5    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    move-object/from16 v19, v0

    sget-object v20, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v5}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto/16 :goto_1

    .line 1533
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    const/16 v19, 0x0

    :try_start_11
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/RunInitializationListener;

    goto :goto_4

    .line 1535
    :catchall_2
    move-exception v19

    monitor-exit v20
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    throw v19

    .line 1181
    :pswitch_2
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_faImpl:Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->getErrorId()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_faImpl:Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->getFelicaErrInfo()Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->setResultError(Ljava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_12 .. :try_end_12} :catch_e
    .catch Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException; {:try_start_12 .. :try_end_12} :catch_13
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_15
    .catchall {:try_start_12 .. :try_end_12} :catchall_10

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1522
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$202(Lcom/felicanetworks/mfsctrl/RunInitializationThread;Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    .line 1535
    :goto_5
    monitor-exit v20
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 1541
    :try_start_14
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->isInterrupted()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1546
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->finishFeliCaAccess()V

    .line 1549
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->notifyResult()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4

    goto/16 :goto_1

    .line 1551
    :catch_4
    move-exception v5

    .line 1556
    .restart local v5    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    move-object/from16 v19, v0

    sget-object v20, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v5}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto/16 :goto_1

    .line 1533
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_3
    const/16 v19, 0x0

    :try_start_15
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/RunInitializationListener;

    goto :goto_5

    .line 1535
    :catchall_3
    move-exception v19

    monitor-exit v20
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    throw v19

    .line 1189
    :pswitch_3
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_faImpl:Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->getErrorId()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_faImpl:Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->getFelicaErrInfo()Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->setResultError(Ljava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_16 .. :try_end_16} :catch_e
    .catch Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException; {:try_start_16 .. :try_end_16} :catch_13
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_15
    .catchall {:try_start_16 .. :try_end_16} :catchall_10

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1522
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$202(Lcom/felicanetworks/mfsctrl/RunInitializationThread;Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    .line 1535
    :goto_6
    monitor-exit v20
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 1541
    :try_start_18
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->isInterrupted()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1546
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->finishFeliCaAccess()V

    .line 1549
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->notifyResult()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_5

    goto/16 :goto_1

    .line 1551
    :catch_5
    move-exception v5

    .line 1556
    .restart local v5    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    move-object/from16 v19, v0

    sget-object v20, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v5}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto/16 :goto_1

    .line 1533
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_4
    const/16 v19, 0x0

    :try_start_19
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/RunInitializationListener;

    goto :goto_6

    .line 1535
    :catchall_4
    move-exception v19

    monitor-exit v20
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    throw v19

    .line 1197
    :pswitch_4
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_faImpl:Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->getErrorId()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_faImpl:Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->getFelicaErrInfo()Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->setResultError(Ljava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1a} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_1a .. :try_end_1a} :catch_e
    .catch Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException; {:try_start_1a .. :try_end_1a} :catch_13
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_15
    .catchall {:try_start_1a .. :try_end_1a} :catchall_10

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1522
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$202(Lcom/felicanetworks/mfsctrl/RunInitializationThread;Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    .line 1535
    :goto_7
    monitor-exit v20
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    .line 1541
    :try_start_1c
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->isInterrupted()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1546
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->finishFeliCaAccess()V

    .line 1549
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->notifyResult()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_6

    goto/16 :goto_1

    .line 1551
    :catch_6
    move-exception v5

    .line 1556
    .restart local v5    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    move-object/from16 v19, v0

    sget-object v20, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v5}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto/16 :goto_1

    .line 1533
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5
    const/16 v19, 0x0

    :try_start_1d
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/RunInitializationListener;

    goto :goto_7

    .line 1535
    :catchall_5
    move-exception v19

    monitor-exit v20
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    throw v19

    .line 1205
    :pswitch_5
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_faImpl:Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->getErrorId()Ljava/lang/String;

    move-result-object v6

    .line 1206
    .local v6, "errorId":Ljava/lang/String;
    const/16 v19, 0x9

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v6, v1, v2}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->setResultError(Ljava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_1e} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_1e .. :try_end_1e} :catch_e
    .catch Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException; {:try_start_1e .. :try_end_1e} :catch_13
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_15
    .catchall {:try_start_1e .. :try_end_1e} :catchall_10

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1522
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$202(Lcom/felicanetworks/mfsctrl/RunInitializationThread;Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    .line 1535
    :goto_8
    monitor-exit v20
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    .line 1541
    :try_start_20
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->isInterrupted()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1546
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->finishFeliCaAccess()V

    .line 1549
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->notifyResult()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_7

    goto/16 :goto_1

    .line 1551
    :catch_7
    move-exception v5

    .line 1556
    .restart local v5    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    move-object/from16 v19, v0

    sget-object v20, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v5}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto/16 :goto_1

    .line 1533
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_6
    const/16 v19, 0x0

    :try_start_21
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/RunInitializationListener;

    goto :goto_8

    .line 1535
    :catchall_6
    move-exception v19

    monitor-exit v20
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    throw v19

    .line 1533
    .end local v6    # "errorId":Ljava/lang/String;
    .restart local v7    # "errorId2":Ljava/lang/String;
    :cond_7
    const/16 v19, 0x0

    :try_start_22
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/RunInitializationListener;

    goto/16 :goto_0

    .line 1535
    :catchall_7
    move-exception v19

    monitor-exit v20
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    throw v19

    .line 1551
    :catch_8
    move-exception v5

    .line 1556
    .restart local v5    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    move-object/from16 v19, v0

    sget-object v20, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v5}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto/16 :goto_1

    .line 1219
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "errorId2":Ljava/lang/String;
    :pswitch_6
    :try_start_23
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->checkCancel()V

    .line 1223
    const/16 v19, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->notifyProgress(I)V

    .line 1226
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->checkCancel()V

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    check-cast v12, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;

    .line 1230
    .local v12, "msm":Lcom/felicanetworks/mfslib/sg/MfsSgMgr;
    const/16 v19, 0x1b

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->getSgValue(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [B

    move-object/from16 v0, v19

    check-cast v0, [B

    move-object v8, v0

    .line 1231
    .local v8, "initInfo":[B
    const v19, 0x100001c

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->getSgValue(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1232
    .local v11, "mobileInfo":Ljava/lang/String;
    const/16 v19, 0x35

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/felicanetworks/mfslib/sg/MfsSgMgr;->getSgValue(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 1235
    .local v9, "interval":Ljava/lang/Integer;
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->checkCancel()V

    .line 1238
    new-instance v17, Lcom/felicanetworks/mfsctrl/text/TextUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/felicanetworks/mfsctrl/text/TextUtils;-><init>(Lcom/felicanetworks/mfslib/MfsAppContext;)V

    .line 1239
    .local v17, "ticketInst":Lcom/felicanetworks/mfsctrl/text/TextUtils;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_mfa:Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v8, v11, v1, v2}, Lcom/felicanetworks/mfsctrl/text/TextUtils;->createTicket([BLjava/lang/String;ILcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;)[B

    move-result-object v16

    .line 1242
    .local v16, "ticket":[B
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->checkCancel()V

    .line 1245
    if-nez v16, :cond_9

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    move-object/from16 v19, v0

    sget-object v20, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v21, v0

    new-instance v22, Lcom/felicanetworks/mfsctrl/ControlFunctionException;

    const-string v23, "Creating Ticket Failed"

    const/16 v24, 0x3

    invoke-direct/range {v22 .. v24}, Lcom/felicanetworks/mfsctrl/ControlFunctionException;-><init>(Ljava/lang/String;I)V

    invoke-virtual/range {v19 .. v22}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    .line 1250
    .restart local v6    # "errorId":Ljava/lang/String;
    const/16 v19, 0x9

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v6, v1, v2}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->setResultError(Ljava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_23} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_23 .. :try_end_23} :catch_e
    .catch Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException; {:try_start_23 .. :try_end_23} :catch_13
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_15
    .catchall {:try_start_23 .. :try_end_23} :catchall_10

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1522
    :try_start_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$202(Lcom/felicanetworks/mfsctrl/RunInitializationThread;Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    .line 1535
    :goto_9
    monitor-exit v20
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_8

    .line 1541
    :try_start_25
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->isInterrupted()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1546
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->finishFeliCaAccess()V

    .line 1549
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->notifyResult()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_9

    goto/16 :goto_1

    .line 1551
    :catch_9
    move-exception v5

    .line 1556
    .restart local v5    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    move-object/from16 v19, v0

    sget-object v20, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v5}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto/16 :goto_1

    .line 1533
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_8
    const/16 v19, 0x0

    :try_start_26
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/RunInitializationListener;

    goto :goto_9

    .line 1535
    :catchall_8
    move-exception v19

    monitor-exit v20
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_8

    throw v19

    .line 1255
    .end local v6    # "errorId":Ljava/lang/String;
    :cond_9
    :try_start_27
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->checkCancel()V

    .line 1259
    const/16 v19, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->notifyProgress(I)V

    .line 1262
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->checkCancel()V

    .line 1265
    new-instance v10, Lcom/felicanetworks/mfsctrl/net/MfsDataParser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Lcom/felicanetworks/mfsctrl/net/MfsDataParser;-><init>(Lcom/felicanetworks/mfslib/MfsAppContext;)V

    .line 1266
    .local v10, "mdp":Lcom/felicanetworks/mfsctrl/net/MfsDataParser;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/felicanetworks/mfsctrl/net/MfsDataParser;->createAuthQuerryData([B)Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;

    move-result-object v14

    .line 1269
    .local v14, "reqData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->checkCancel()V

    .line 1272
    new-instance v13, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$NetworkConnImpl;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$NetworkConnImpl;-><init>(Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;)V

    .line 1273
    .local v13, "ncImpl":Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$NetworkConnImpl;
    iput-object v13, v14, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;->listener:Lcom/felicanetworks/cmnctrl/net/NetworkAccessListener;

    .line 1274
    const/16 v19, 0x1

    move/from16 v0, v19

    iput v0, v14, Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;->noticeCnt:I
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_27} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_27 .. :try_end_27} :catch_e
    .catch Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException; {:try_start_27 .. :try_end_27} :catch_13
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_15
    .catchall {:try_start_27 .. :try_end_27} :catchall_10

    .line 1279
    const/4 v15, 0x0

    .line 1284
    .local v15, "resData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;
    :try_start_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_na:Lcom/felicanetworks/cmnctrl/net/NetworkAccess;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->connect(Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;)Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;
    :try_end_28
    .catch Lcom/felicanetworks/cmnctrl/net/NetworkAccessException; {:try_start_28 .. :try_end_28} :catch_b
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_28} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_28 .. :try_end_28} :catch_e
    .catch Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException; {:try_start_28 .. :try_end_28} :catch_13
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_15
    .catchall {:try_start_28 .. :try_end_28} :catchall_10

    move-result-object v15

    .line 1320
    :try_start_29
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->checkCancel()V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_29} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_29 .. :try_end_29} :catch_e
    .catch Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException; {:try_start_29 .. :try_end_29} :catch_13
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_15
    .catchall {:try_start_29 .. :try_end_29} :catchall_10

    .line 1326
    const/4 v4, 0x0

    .line 1332
    .local v4, "authData":Lcom/felicanetworks/mfsctrl/data/AuthResponseData;
    :try_start_2a
    invoke-virtual {v10, v15}, Lcom/felicanetworks/mfsctrl/net/MfsDataParser;->parseAuthResponseData(Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;)Lcom/felicanetworks/mfsctrl/data/AuthResponseData;
    :try_end_2a
    .catch Lcom/felicanetworks/cmnctrl/net/DataParseException; {:try_start_2a .. :try_end_2a} :catch_10
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2a} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_2a .. :try_end_2a} :catch_e
    .catch Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException; {:try_start_2a .. :try_end_2a} :catch_13
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_15
    .catchall {:try_start_2a .. :try_end_2a} :catchall_10

    move-result-object v4

    .line 1345
    :try_start_2b
    iget v0, v4, Lcom/felicanetworks/mfsctrl/data/AuthResponseData;->resCode:I

    move/from16 v19, v0

    if-nez v19, :cond_d

    .line 1388
    const/16 v18, 0x0

    .line 1389
    .local v18, "url":Ljava/lang/String;
    iget-object v0, v4, Lcom/felicanetworks/mfsctrl/data/AuthResponseData;->startUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_13

    .line 1394
    iget-object v0, v4, Lcom/felicanetworks/mfsctrl/data/AuthResponseData;->startUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1406
    monitor-enter p0
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2b} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_2b .. :try_end_2b} :catch_e
    .catch Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException; {:try_start_2b .. :try_end_2b} :catch_13
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_15
    .catchall {:try_start_2b .. :try_end_2b} :catchall_10

    .line 1411
    :try_start_2c
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->checkCancel()V

    .line 1413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_mfa:Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_fiImpl:Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->startInitialization(Ljava/lang/String;Lcom/felicanetworks/mfsctrl/chip/FelicaInitializeListener;)V

    .line 1414
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_f

    .line 1417
    :try_start_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_fiImpl:Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;->access$100(Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;)V

    .line 1420
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->checkCancel()V

    .line 1423
    const/16 v19, 0x5a

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->notifyProgress(I)V

    .line 1426
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->checkCancel()V

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_fiImpl:Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;->getResult()I

    move-result v19

    packed-switch v19, :pswitch_data_1

    .line 1456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_fiImpl:Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;->getErrorId()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x9

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->setResultError(Ljava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_2d} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_2d .. :try_end_2d} :catch_e
    .catch Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException; {:try_start_2d .. :try_end_2d} :catch_13
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_15
    .catchall {:try_start_2d .. :try_end_2d} :catchall_10

    .line 1517
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1522
    :try_start_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    if-eqz v19, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$202(Lcom/felicanetworks/mfsctrl/RunInitializationThread;Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    .line 1535
    :goto_b
    monitor-exit v20
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_11

    .line 1541
    :try_start_2f
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->isInterrupted()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1546
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->finishFeliCaAccess()V

    .line 1549
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->notifyResult()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_a

    goto/16 :goto_1

    .line 1551
    :catch_a
    move-exception v5

    .line 1556
    .restart local v5    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    move-object/from16 v19, v0

    sget-object v20, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v5}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto/16 :goto_1

    .line 1285
    .end local v4    # "authData":Lcom/felicanetworks/mfsctrl/data/AuthResponseData;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v18    # "url":Ljava/lang/String;
    :catch_b
    move-exception v5

    .line 1289
    .local v5, "e":Lcom/felicanetworks/cmnctrl/net/NetworkAccessException;
    :try_start_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    move-object/from16 v19, v0

    sget-object v20, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v5}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    .line 1291
    invoke-virtual {v5}, Lcom/felicanetworks/cmnctrl/net/NetworkAccessException;->getErrorId()I

    move-result v19

    packed-switch v19, :pswitch_data_2

    .line 1312
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    move-object/from16 v19, v0

    sget-object v20, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v5}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    .line 1313
    .restart local v6    # "errorId":Ljava/lang/String;
    const/16 v19, 0x9

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v6, v1, v2}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->setResultError(Ljava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_30} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_30 .. :try_end_30} :catch_e
    .catch Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException; {:try_start_30 .. :try_end_30} :catch_13
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_15
    .catchall {:try_start_30 .. :try_end_30} :catchall_10

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1522
    :try_start_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$202(Lcom/felicanetworks/mfsctrl/RunInitializationThread;Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    .line 1535
    :goto_c
    monitor-exit v20
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_a

    .line 1541
    :try_start_32
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->isInterrupted()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1546
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->finishFeliCaAccess()V

    .line 1549
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->notifyResult()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_c

    goto/16 :goto_1

    .line 1551
    :catch_c
    move-exception v5

    .line 1556
    .local v5, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    move-object/from16 v19, v0

    sget-object v20, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v5}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto/16 :goto_1

    .line 1298
    .end local v6    # "errorId":Ljava/lang/String;
    .local v5, "e":Lcom/felicanetworks/cmnctrl/net/NetworkAccessException;
    :pswitch_8
    :try_start_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    move-object/from16 v19, v0

    sget-object v20, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v5}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    .line 1301
    const/16 v19, 0x8

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->setResultWarning(II)V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_33} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_33 .. :try_end_33} :catch_e
    .catch Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException; {:try_start_33 .. :try_end_33} :catch_13
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_15
    .catchall {:try_start_33 .. :try_end_33} :catchall_10

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1522
    :try_start_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$202(Lcom/felicanetworks/mfsctrl/RunInitializationThread;Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    .line 1535
    :goto_d
    monitor-exit v20
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_9

    .line 1541
    :try_start_35
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->isInterrupted()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1546
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->finishFeliCaAccess()V

    .line 1549
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->notifyResult()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_d

    goto/16 :goto_1

    .line 1551
    :catch_d
    move-exception v5

    .line 1556
    .local v5, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    move-object/from16 v19, v0

    sget-object v20, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v5}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto/16 :goto_1

    .line 1533
    .local v5, "e":Lcom/felicanetworks/cmnctrl/net/NetworkAccessException;
    :cond_a
    const/16 v19, 0x0

    :try_start_36
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/RunInitializationListener;

    goto :goto_d

    .line 1535
    :catchall_9
    move-exception v19

    monitor-exit v20
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_9

    throw v19

    .line 1307
    :pswitch_9
    :try_start_37
    new-instance v19, Ljava/lang/InterruptedException;

    const-string v20, "Network is canceled"

    invoke-direct/range {v19 .. v20}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_37} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_37 .. :try_end_37} :catch_e
    .catch Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException; {:try_start_37 .. :try_end_37} :catch_13
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_15
    .catchall {:try_start_37 .. :try_end_37} :catchall_10

    .line 1468
    .end local v5    # "e":Lcom/felicanetworks/cmnctrl/net/NetworkAccessException;
    .end local v8    # "initInfo":[B
    .end local v9    # "interval":Ljava/lang/Integer;
    .end local v10    # "mdp":Lcom/felicanetworks/mfsctrl/net/MfsDataParser;
    .end local v11    # "mobileInfo":Ljava/lang/String;
    .end local v12    # "msm":Lcom/felicanetworks/mfslib/sg/MfsSgMgr;
    .end local v13    # "ncImpl":Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$NetworkConnImpl;
    .end local v14    # "reqData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;
    .end local v15    # "resData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;
    .end local v16    # "ticket":[B
    .end local v17    # "ticketInst":Lcom/felicanetworks/mfsctrl/text/TextUtils;
    :catch_e
    move-exception v5

    .line 1472
    .local v5, "e":Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;
    :try_start_38
    invoke-virtual {v5}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;->getErrorId()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_18

    .line 1477
    invoke-virtual {v5}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;->getErrIdentifierCode()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual {v5}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;->getFelicaErrInfo()Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->setResultError(Ljava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_10

    .line 1517
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1522
    :try_start_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    if-eqz v19, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$202(Lcom/felicanetworks/mfsctrl/RunInitializationThread;Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    .line 1535
    :goto_f
    monitor-exit v20
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_13

    .line 1541
    :try_start_3a
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->isInterrupted()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1546
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->finishFeliCaAccess()V

    .line 1549
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->notifyResult()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_f

    goto/16 :goto_1

    .line 1551
    :catch_f
    move-exception v5

    .line 1556
    .local v5, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    move-object/from16 v19, v0

    sget-object v20, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v5}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto/16 :goto_1

    .line 1533
    .local v5, "e":Lcom/felicanetworks/cmnctrl/net/NetworkAccessException;
    .restart local v6    # "errorId":Ljava/lang/String;
    .restart local v8    # "initInfo":[B
    .restart local v9    # "interval":Ljava/lang/Integer;
    .restart local v10    # "mdp":Lcom/felicanetworks/mfsctrl/net/MfsDataParser;
    .restart local v11    # "mobileInfo":Ljava/lang/String;
    .restart local v12    # "msm":Lcom/felicanetworks/mfslib/sg/MfsSgMgr;
    .restart local v13    # "ncImpl":Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$NetworkConnImpl;
    .restart local v14    # "reqData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;
    .restart local v15    # "resData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;
    .restart local v16    # "ticket":[B
    .restart local v17    # "ticketInst":Lcom/felicanetworks/mfsctrl/text/TextUtils;
    :cond_b
    const/16 v19, 0x0

    :try_start_3b
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/RunInitializationListener;

    goto/16 :goto_c

    .line 1535
    :catchall_a
    move-exception v19

    monitor-exit v20
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_a

    throw v19

    .line 1334
    .end local v5    # "e":Lcom/felicanetworks/cmnctrl/net/NetworkAccessException;
    .end local v6    # "errorId":Ljava/lang/String;
    .restart local v4    # "authData":Lcom/felicanetworks/mfsctrl/data/AuthResponseData;
    :catch_10
    move-exception v5

    .line 1338
    .local v5, "e":Lcom/felicanetworks/cmnctrl/net/DataParseException;
    :try_start_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    move-object/from16 v19, v0

    sget-object v20, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v5}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    .line 1340
    const/16 v19, 0x8

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->setResultWarning(II)V
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_3c} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_3c .. :try_end_3c} :catch_e
    .catch Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException; {:try_start_3c .. :try_end_3c} :catch_13
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_15
    .catchall {:try_start_3c .. :try_end_3c} :catchall_10

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1522
    :try_start_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$202(Lcom/felicanetworks/mfsctrl/RunInitializationThread;Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    .line 1535
    :goto_10
    monitor-exit v20
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_b

    .line 1541
    :try_start_3e
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->isInterrupted()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1546
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->finishFeliCaAccess()V

    .line 1549
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->notifyResult()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_11

    goto/16 :goto_1

    .line 1551
    :catch_11
    move-exception v5

    .line 1556
    .local v5, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    move-object/from16 v19, v0

    sget-object v20, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v5}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto/16 :goto_1

    .line 1533
    .local v5, "e":Lcom/felicanetworks/cmnctrl/net/DataParseException;
    :cond_c
    const/16 v19, 0x0

    :try_start_3f
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/RunInitializationListener;

    goto :goto_10

    .line 1535
    :catchall_b
    move-exception v19

    monitor-exit v20
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_b

    throw v19

    .line 1351
    .end local v5    # "e":Lcom/felicanetworks/cmnctrl/net/DataParseException;
    :cond_d
    const/16 v19, 0x1

    :try_start_40
    iget v0, v4, Lcom/felicanetworks/mfsctrl/data/AuthResponseData;->resCode:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 1356
    iget-object v0, v4, Lcom/felicanetworks/mfsctrl/data/AuthResponseData;->authFinishCode:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "9101"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 1361
    const/16 v19, 0x3

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->setResultWarning(II)V
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_40} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_40 .. :try_end_40} :catch_e
    .catch Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException; {:try_start_40 .. :try_end_40} :catch_13
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_15
    .catchall {:try_start_40 .. :try_end_40} :catchall_10

    .line 1517
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1522
    :try_start_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$202(Lcom/felicanetworks/mfsctrl/RunInitializationThread;Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    .line 1535
    :goto_12
    monitor-exit v20
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_c

    .line 1541
    :try_start_42
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->isInterrupted()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1546
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->finishFeliCaAccess()V

    .line 1549
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->notifyResult()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_12

    goto/16 :goto_1

    .line 1551
    :catch_12
    move-exception v5

    .line 1556
    .local v5, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    move-object/from16 v19, v0

    sget-object v20, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v5}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto/16 :goto_1

    .line 1362
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_e
    :try_start_43
    iget-object v0, v4, Lcom/felicanetworks/mfsctrl/data/AuthResponseData;->authFinishCode:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "9201"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 1367
    const/16 v19, 0x4

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->setResultWarning(II)V
    :try_end_43
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_43} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_43 .. :try_end_43} :catch_e
    .catch Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException; {:try_start_43 .. :try_end_43} :catch_13
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_15
    .catchall {:try_start_43 .. :try_end_43} :catchall_10

    goto/16 :goto_11

    .line 1486
    .end local v4    # "authData":Lcom/felicanetworks/mfsctrl/data/AuthResponseData;
    .end local v8    # "initInfo":[B
    .end local v9    # "interval":Ljava/lang/Integer;
    .end local v10    # "mdp":Lcom/felicanetworks/mfsctrl/net/MfsDataParser;
    .end local v11    # "mobileInfo":Ljava/lang/String;
    .end local v12    # "msm":Lcom/felicanetworks/mfslib/sg/MfsSgMgr;
    .end local v13    # "ncImpl":Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$NetworkConnImpl;
    .end local v14    # "reqData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;
    .end local v15    # "resData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;
    .end local v16    # "ticket":[B
    .end local v17    # "ticketInst":Lcom/felicanetworks/mfsctrl/text/TextUtils;
    :catch_13
    move-exception v5

    .line 1490
    .local v5, "e":Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;
    :try_start_44
    invoke-virtual {v5}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;->getErrorId()I

    move-result v19

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1a

    .line 1495
    invoke-virtual {v5}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;->getErrIdentifierCode()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual {v5}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;->getFelicaErrInfo()Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->setResultError(Ljava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_10

    .line 1517
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1522
    :try_start_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    if-eqz v19, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$202(Lcom/felicanetworks/mfsctrl/RunInitializationThread;Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    .line 1535
    :goto_14
    monitor-exit v20
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_14

    .line 1541
    :try_start_46
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->isInterrupted()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1546
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->finishFeliCaAccess()V

    .line 1549
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->notifyResult()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_14

    goto/16 :goto_1

    .line 1551
    :catch_14
    move-exception v5

    .line 1556
    .local v5, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    move-object/from16 v19, v0

    sget-object v20, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v5}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto/16 :goto_1

    .line 1373
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "authData":Lcom/felicanetworks/mfsctrl/data/AuthResponseData;
    .restart local v8    # "initInfo":[B
    .restart local v9    # "interval":Ljava/lang/Integer;
    .restart local v10    # "mdp":Lcom/felicanetworks/mfsctrl/net/MfsDataParser;
    .restart local v11    # "mobileInfo":Ljava/lang/String;
    .restart local v12    # "msm":Lcom/felicanetworks/mfslib/sg/MfsSgMgr;
    .restart local v13    # "ncImpl":Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$NetworkConnImpl;
    .restart local v14    # "reqData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;
    .restart local v15    # "resData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;
    .restart local v16    # "ticket":[B
    .restart local v17    # "ticketInst":Lcom/felicanetworks/mfsctrl/text/TextUtils;
    :cond_f
    const/16 v19, 0x5

    const/16 v20, 0x0

    :try_start_47
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->setResultWarning(II)V
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_47} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_47 .. :try_end_47} :catch_e
    .catch Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException; {:try_start_47 .. :try_end_47} :catch_13
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_15
    .catchall {:try_start_47 .. :try_end_47} :catchall_10

    goto/16 :goto_11

    .line 1504
    .end local v4    # "authData":Lcom/felicanetworks/mfsctrl/data/AuthResponseData;
    .end local v8    # "initInfo":[B
    .end local v9    # "interval":Ljava/lang/Integer;
    .end local v10    # "mdp":Lcom/felicanetworks/mfsctrl/net/MfsDataParser;
    .end local v11    # "mobileInfo":Ljava/lang/String;
    .end local v12    # "msm":Lcom/felicanetworks/mfslib/sg/MfsSgMgr;
    .end local v13    # "ncImpl":Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$NetworkConnImpl;
    .end local v14    # "reqData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;
    .end local v15    # "resData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;
    .end local v16    # "ticket":[B
    .end local v17    # "ticketInst":Lcom/felicanetworks/mfsctrl/text/TextUtils;
    :catch_15
    move-exception v5

    .line 1509
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    move-object/from16 v19, v0

    sget-object v20, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v5}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    .line 1510
    .restart local v6    # "errorId":Ljava/lang/String;
    const/16 v19, 0x9

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v6, v1, v2}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->setResultError(Ljava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_10

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1522
    :try_start_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    if-eqz v19, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$202(Lcom/felicanetworks/mfsctrl/RunInitializationThread;Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    .line 1535
    :goto_15
    monitor-exit v20
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_15

    .line 1541
    :try_start_4a
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->isInterrupted()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1546
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->finishFeliCaAccess()V

    .line 1549
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->notifyResult()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_16

    goto/16 :goto_1

    .line 1551
    :catch_16
    move-exception v5

    .line 1556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    move-object/from16 v19, v0

    sget-object v20, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v5}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto/16 :goto_1

    .line 1533
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "errorId":Ljava/lang/String;
    .restart local v4    # "authData":Lcom/felicanetworks/mfsctrl/data/AuthResponseData;
    .restart local v8    # "initInfo":[B
    .restart local v9    # "interval":Ljava/lang/Integer;
    .restart local v10    # "mdp":Lcom/felicanetworks/mfsctrl/net/MfsDataParser;
    .restart local v11    # "mobileInfo":Ljava/lang/String;
    .restart local v12    # "msm":Lcom/felicanetworks/mfslib/sg/MfsSgMgr;
    .restart local v13    # "ncImpl":Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$NetworkConnImpl;
    .restart local v14    # "reqData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;
    .restart local v15    # "resData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;
    .restart local v16    # "ticket":[B
    .restart local v17    # "ticketInst":Lcom/felicanetworks/mfsctrl/text/TextUtils;
    :cond_10
    const/16 v19, 0x0

    :try_start_4b
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/RunInitializationListener;

    goto/16 :goto_12

    .line 1535
    :catchall_c
    move-exception v19

    monitor-exit v20
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_c

    throw v19

    .line 1381
    :cond_11
    :try_start_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    move-object/from16 v19, v0

    sget-object v20, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v21, v0

    new-instance v22, Lcom/felicanetworks/mfsctrl/ControlFunctionException;

    const-string v23, "Unknown Result : Network Access"

    const/16 v24, 0x3

    invoke-direct/range {v22 .. v24}, Lcom/felicanetworks/mfsctrl/ControlFunctionException;-><init>(Ljava/lang/String;I)V

    invoke-virtual/range {v19 .. v22}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    .line 1382
    .restart local v6    # "errorId":Ljava/lang/String;
    const/16 v19, 0x9

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v6, v1, v2}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->setResultError(Ljava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
    :try_end_4c
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_4c} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_4c .. :try_end_4c} :catch_e
    .catch Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException; {:try_start_4c .. :try_end_4c} :catch_13
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_15
    .catchall {:try_start_4c .. :try_end_4c} :catchall_10

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1522
    :try_start_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    if-eqz v19, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$202(Lcom/felicanetworks/mfsctrl/RunInitializationThread;Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    .line 1535
    :goto_16
    monitor-exit v20
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_d

    .line 1541
    :try_start_4e
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->isInterrupted()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1546
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->finishFeliCaAccess()V

    .line 1549
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->notifyResult()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_17

    goto/16 :goto_1

    .line 1551
    :catch_17
    move-exception v5

    .line 1556
    .restart local v5    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    move-object/from16 v19, v0

    sget-object v20, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v5}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto/16 :goto_1

    .line 1533
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_12
    const/16 v19, 0x0

    :try_start_4f
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/RunInitializationListener;

    goto :goto_16

    .line 1535
    :catchall_d
    move-exception v19

    monitor-exit v20
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_d

    throw v19

    .line 1401
    .end local v6    # "errorId":Ljava/lang/String;
    .restart local v18    # "url":Ljava/lang/String;
    :cond_13
    :try_start_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    move-object/from16 v19, v0

    sget-object v20, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v21, v0

    new-instance v22, Lcom/felicanetworks/mfsctrl/ControlFunctionException;

    const-string v23, "URL Nothing"

    const/16 v24, 0x3

    invoke-direct/range {v22 .. v24}, Lcom/felicanetworks/mfsctrl/ControlFunctionException;-><init>(Ljava/lang/String;I)V

    invoke-virtual/range {v19 .. v22}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    .line 1402
    .restart local v6    # "errorId":Ljava/lang/String;
    const/16 v19, 0x9

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v6, v1, v2}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->setResultError(Ljava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_50} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_50 .. :try_end_50} :catch_e
    .catch Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException; {:try_start_50 .. :try_end_50} :catch_13
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_15
    .catchall {:try_start_50 .. :try_end_50} :catchall_10

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1522
    :try_start_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    if-eqz v19, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$202(Lcom/felicanetworks/mfsctrl/RunInitializationThread;Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    .line 1535
    :goto_17
    monitor-exit v20
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_e

    .line 1541
    :try_start_52
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->isInterrupted()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1546
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->finishFeliCaAccess()V

    .line 1549
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->notifyResult()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_18

    goto/16 :goto_1

    .line 1551
    :catch_18
    move-exception v5

    .line 1556
    .restart local v5    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    move-object/from16 v19, v0

    sget-object v20, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v5}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto/16 :goto_1

    .line 1533
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_14
    const/16 v19, 0x0

    :try_start_53
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/RunInitializationListener;

    goto :goto_17

    .line 1535
    :catchall_e
    move-exception v19

    monitor-exit v20
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_e

    throw v19

    .line 1414
    .end local v6    # "errorId":Ljava/lang/String;
    :catchall_f
    move-exception v19

    :try_start_54
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_f

    :try_start_55
    throw v19
    :try_end_55
    .catch Ljava/lang/InterruptedException; {:try_start_55 .. :try_end_55} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_55 .. :try_end_55} :catch_e
    .catch Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException; {:try_start_55 .. :try_end_55} :catch_13
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_15
    .catchall {:try_start_55 .. :try_end_55} :catchall_10

    .line 1517
    .end local v4    # "authData":Lcom/felicanetworks/mfsctrl/data/AuthResponseData;
    .end local v8    # "initInfo":[B
    .end local v9    # "interval":Ljava/lang/Integer;
    .end local v10    # "mdp":Lcom/felicanetworks/mfsctrl/net/MfsDataParser;
    .end local v11    # "mobileInfo":Ljava/lang/String;
    .end local v12    # "msm":Lcom/felicanetworks/mfslib/sg/MfsSgMgr;
    .end local v13    # "ncImpl":Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$NetworkConnImpl;
    .end local v14    # "reqData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;
    .end local v15    # "resData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;
    .end local v16    # "ticket":[B
    .end local v17    # "ticketInst":Lcom/felicanetworks/mfsctrl/text/TextUtils;
    .end local v18    # "url":Ljava/lang/String;
    :catchall_10
    move-exception v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1522
    :try_start_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v21

    if-eqz v21, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$200(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1d

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$202(Lcom/felicanetworks/mfsctrl/RunInitializationThread;Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;)Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    .line 1535
    :goto_18
    monitor-exit v20
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_16

    .line 1541
    :try_start_57
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->isInterrupted()Z

    move-result v20

    if-nez v20, :cond_15

    .line 1546
    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->finishFeliCaAccess()V

    .line 1549
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->notifyResult()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_57} :catch_19

    .line 1557
    :cond_15
    :goto_19
    throw v19

    .line 1434
    .restart local v4    # "authData":Lcom/felicanetworks/mfsctrl/data/AuthResponseData;
    .restart local v8    # "initInfo":[B
    .restart local v9    # "interval":Ljava/lang/Integer;
    .restart local v10    # "mdp":Lcom/felicanetworks/mfsctrl/net/MfsDataParser;
    .restart local v11    # "mobileInfo":Ljava/lang/String;
    .restart local v12    # "msm":Lcom/felicanetworks/mfslib/sg/MfsSgMgr;
    .restart local v13    # "ncImpl":Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$NetworkConnImpl;
    .restart local v14    # "reqData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;
    .restart local v15    # "resData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;
    .restart local v16    # "ticket":[B
    .restart local v17    # "ticketInst":Lcom/felicanetworks/mfsctrl/text/TextUtils;
    .restart local v18    # "url":Ljava/lang/String;
    :pswitch_a
    :try_start_58
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->setResultComplete()V

    goto/16 :goto_a

    .line 1441
    :pswitch_b
    const/16 v19, 0x5

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->setResultWarning(II)V

    goto/16 :goto_a

    .line 1448
    :pswitch_c
    const/16 v19, 0x8

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->setResultWarning(II)V
    :try_end_58
    .catch Ljava/lang/InterruptedException; {:try_start_58 .. :try_end_58} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException; {:try_start_58 .. :try_end_58} :catch_e
    .catch Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException; {:try_start_58 .. :try_end_58} :catch_13
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_58} :catch_15
    .catchall {:try_start_58 .. :try_end_58} :catchall_10

    goto/16 :goto_a

    .line 1533
    :cond_16
    const/16 v19, 0x0

    :try_start_59
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/RunInitializationListener;

    goto/16 :goto_b

    .line 1535
    :catchall_11
    move-exception v19

    monitor-exit v20
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_11

    throw v19

    .line 1533
    .end local v4    # "authData":Lcom/felicanetworks/mfsctrl/data/AuthResponseData;
    .end local v8    # "initInfo":[B
    .end local v9    # "interval":Ljava/lang/Integer;
    .end local v10    # "mdp":Lcom/felicanetworks/mfsctrl/net/MfsDataParser;
    .end local v11    # "mobileInfo":Ljava/lang/String;
    .end local v12    # "msm":Lcom/felicanetworks/mfslib/sg/MfsSgMgr;
    .end local v13    # "ncImpl":Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$NetworkConnImpl;
    .end local v14    # "reqData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;
    .end local v15    # "resData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;
    .end local v16    # "ticket":[B
    .end local v17    # "ticketInst":Lcom/felicanetworks/mfsctrl/text/TextUtils;
    .end local v18    # "url":Ljava/lang/String;
    .local v5, "e":Ljava/lang/InterruptedException;
    :cond_17
    const/16 v19, 0x0

    :try_start_5a
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/RunInitializationListener;

    goto/16 :goto_2

    .line 1535
    :catchall_12
    move-exception v19

    monitor-exit v20
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_12

    throw v19

    .line 1483
    .local v5, "e":Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;
    :cond_18
    :try_start_5b
    invoke-virtual {v5}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;->getErrIdentifierCode()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x9

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->setResultError(Ljava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_10

    goto/16 :goto_e

    .line 1533
    :cond_19
    const/16 v19, 0x0

    :try_start_5c
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/RunInitializationListener;

    goto/16 :goto_f

    .line 1535
    :catchall_13
    move-exception v19

    monitor-exit v20
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_13

    throw v19

    .line 1501
    .local v5, "e":Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;
    :cond_1a
    :try_start_5d
    invoke-virtual {v5}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;->getErrIdentifierCode()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x9

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->setResultError(Ljava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_10

    goto/16 :goto_13

    .line 1533
    :cond_1b
    const/16 v19, 0x0

    :try_start_5e
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/RunInitializationListener;

    goto/16 :goto_14

    .line 1535
    :catchall_14
    move-exception v19

    monitor-exit v20
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_14

    throw v19

    .line 1533
    .local v5, "e":Ljava/lang/Exception;
    .restart local v6    # "errorId":Ljava/lang/String;
    :cond_1c
    const/16 v19, 0x0

    :try_start_5f
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/RunInitializationListener;

    goto/16 :goto_15

    .line 1535
    :catchall_15
    move-exception v19

    monitor-exit v20
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_15

    throw v19

    .line 1533
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "errorId":Ljava/lang/String;
    :cond_1d
    const/16 v21, 0x0

    :try_start_60
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_listener:Lcom/felicanetworks/mfsctrl/RunInitializationListener;

    goto/16 :goto_18

    .line 1535
    :catchall_16
    move-exception v19

    monitor-exit v20
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_16

    throw v19

    .line 1551
    :catch_19
    move-exception v5

    .line 1556
    .restart local v5    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/felicanetworks/mfsctrl/RunInitializationThread;->access$000(Lcom/felicanetworks/mfsctrl/RunInitializationThread;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    move-object/from16 v20, v0

    sget-object v21, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->this$0:Lcom/felicanetworks/mfsctrl/RunInitializationThread;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v5}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto/16 :goto_19

    .line 1151
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

    .line 1429
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 1291
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public declared-synchronized setCancel()V
    .locals 1

    .prologue
    .line 1649
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->interrupt()V

    .line 1651
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_faImpl:Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;

    invoke-virtual {v0}, Lcom/felicanetworks/mfsctrl/FeliCaAccessImpl;->restart()V

    .line 1652
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_fiImpl:Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;

    invoke-virtual {v0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$FeliCaInitImpl;->restart()V

    .line 1654
    invoke-virtual {p0}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->finishFeliCaAccess()V

    .line 1656
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->_na:Lcom/felicanetworks/cmnctrl/net/NetworkAccess;

    invoke-virtual {v0}, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1661
    monitor-exit p0

    return-void

    .line 1649
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
