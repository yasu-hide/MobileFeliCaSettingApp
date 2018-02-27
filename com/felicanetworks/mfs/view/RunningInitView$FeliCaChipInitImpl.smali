.class public Lcom/felicanetworks/mfs/view/RunningInitView$FeliCaChipInitImpl;
.super Ljava/lang/Object;
.source "RunningInitView.java"

# interfaces
.implements Lcom/felicanetworks/mfsctrl/RunInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfs/view/RunningInitView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FeliCaChipInitImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfs/view/RunningInitView;


# direct methods
.method protected constructor <init>(Lcom/felicanetworks/mfs/view/RunningInitView;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/RunningInitView$FeliCaChipInitImpl;->this$0:Lcom/felicanetworks/mfs/view/RunningInitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 5

    .prologue
    .line 243
    :try_start_0
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/RunningInitView$FeliCaChipInitImpl;->this$0:Lcom/felicanetworks/mfs/view/RunningInitView;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/felicanetworks/mfs/view/RunningInitView;->updateProgress(I)V

    .line 246
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/RunningInitView$FeliCaChipInitImpl;->this$0:Lcom/felicanetworks/mfs/view/RunningInitView;

    iget-object v2, v2, Lcom/felicanetworks/mfs/view/RunningInitView;->appStatus:Lcom/felicanetworks/mfs/AppStatus;

    sget-object v3, Lcom/felicanetworks/mfs/AppStatus$State;->INIT_SUCCESS:Lcom/felicanetworks/mfs/AppStatus$State;

    iput-object v3, v2, Lcom/felicanetworks/mfs/AppStatus;->felicaInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    .line 247
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/RunningInitView$FeliCaChipInitImpl;->this$0:Lcom/felicanetworks/mfs/view/RunningInitView;

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Lcom/felicanetworks/mfs/view/RunningInitView;->transferState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v2

    iget-object v2, v2, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v4, p0, Lcom/felicanetworks/mfs/view/RunningInitView$FeliCaChipInitImpl;->this$0:Lcom/felicanetworks/mfs/view/RunningInitView;

    invoke-virtual {v2, v3, v4, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "errorId":Ljava/lang/String;
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/RunningInitView$FeliCaChipInitImpl;->this$0:Lcom/felicanetworks/mfs/view/RunningInitView;

    invoke-virtual {v2, v1}, Lcom/felicanetworks/mfs/view/RunningInitView;->transferFatalError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onError(ILjava/lang/String;Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
    .locals 6
    .param p1, "errType"    # I
    .param p2, "errCode"    # Ljava/lang/String;
    .param p3, "felicaErrInfo"    # Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    .prologue
    .line 492
    :try_start_0
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/RunningInitView$FeliCaChipInitImpl;->this$0:Lcom/felicanetworks/mfs/view/RunningInitView;

    iget-object v3, v3, Lcom/felicanetworks/mfs/view/RunningInitView;->appStatus:Lcom/felicanetworks/mfs/AppStatus;

    sget-object v4, Lcom/felicanetworks/mfs/AppStatus$State;->INIT_FAILED:Lcom/felicanetworks/mfs/AppStatus$State;

    iput-object v4, v3, Lcom/felicanetworks/mfs/AppStatus;->felicaInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    .line 493
    new-instance v2, Lcom/felicanetworks/mfs/MfsTransferStateData;

    invoke-direct {v2}, Lcom/felicanetworks/mfs/MfsTransferStateData;-><init>()V

    .line 494
    .local v2, "tData":Lcom/felicanetworks/mfs/MfsTransferStateData;
    packed-switch p1, :pswitch_data_0

    .line 525
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/RunningInitView$FeliCaChipInitImpl;->this$0:Lcom/felicanetworks/mfs/view/RunningInitView;

    invoke-virtual {v3, p2}, Lcom/felicanetworks/mfs/view/RunningInitView;->transferFatalError(Ljava/lang/String;)V

    .line 543
    .end local v2    # "tData":Lcom/felicanetworks/mfs/MfsTransferStateData;
    :goto_0
    return-void

    .line 500
    .restart local v2    # "tData":Lcom/felicanetworks/mfs/MfsTransferStateData;
    :pswitch_0
    iput-object p2, v2, Lcom/felicanetworks/mfs/MfsTransferStateData;->errorId:Ljava/lang/String;

    .line 501
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/RunningInitView$FeliCaChipInitImpl;->this$0:Lcom/felicanetworks/mfs/view/RunningInitView;

    const/16 v4, 0x15

    invoke-virtual {v3, v4, v2}, Lcom/felicanetworks/mfs/view/RunningInitView;->transferState(ILcom/felicanetworks/cmnview/TransferStateData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 528
    .end local v2    # "tData":Lcom/felicanetworks/mfs/MfsTransferStateData;
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v3

    iget-object v3, v3, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v4, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v5, p0, Lcom/felicanetworks/mfs/view/RunningInitView$FeliCaChipInitImpl;->this$0:Lcom/felicanetworks/mfs/view/RunningInitView;

    invoke-virtual {v3, v4, v5, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, "errorId":Ljava/lang/String;
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/RunningInitView$FeliCaChipInitImpl;->this$0:Lcom/felicanetworks/mfs/view/RunningInitView;

    invoke-virtual {v3, v1}, Lcom/felicanetworks/mfs/view/RunningInitView;->transferFatalError(Ljava/lang/String;)V

    goto :goto_0

    .line 508
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "errorId":Ljava/lang/String;
    .restart local v2    # "tData":Lcom/felicanetworks/mfs/MfsTransferStateData;
    :pswitch_1
    :try_start_1
    iput-object p2, v2, Lcom/felicanetworks/mfs/MfsTransferStateData;->errorId:Ljava/lang/String;

    .line 509
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/RunningInitView$FeliCaChipInitImpl;->this$0:Lcom/felicanetworks/mfs/view/RunningInitView;

    const/16 v4, 0x16

    invoke-virtual {v3, v4, v2}, Lcom/felicanetworks/mfs/view/RunningInitView;->transferState(ILcom/felicanetworks/cmnview/TransferStateData;)V

    goto :goto_0

    .line 516
    :pswitch_2
    iput-object p2, v2, Lcom/felicanetworks/mfs/MfsTransferStateData;->errorId:Ljava/lang/String;

    .line 517
    iput-object p3, v2, Lcom/felicanetworks/mfs/MfsTransferStateData;->felicaErrInfo:Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    .line 518
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/RunningInitView$FeliCaChipInitImpl;->this$0:Lcom/felicanetworks/mfs/view/RunningInitView;

    const/16 v4, 0x17

    invoke-virtual {v3, v4, v2}, Lcom/felicanetworks/mfs/view/RunningInitView;->transferState(ILcom/felicanetworks/cmnview/TransferStateData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 494
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onProgress(I)V
    .locals 7
    .param p1, "percentage"    # I

    .prologue
    .line 303
    :try_start_0
    iget-object v4, p0, Lcom/felicanetworks/mfs/view/RunningInitView$FeliCaChipInitImpl;->this$0:Lcom/felicanetworks/mfs/view/RunningInitView;

    invoke-virtual {v4, p1}, Lcom/felicanetworks/mfs/view/RunningInitView;->updateProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v1

    .line 310
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->getInstance()Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    move-result-object v0

    .line 311
    .local v0, "cfl":Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;
    invoke-virtual {v0}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->stopRunInitialization()V
    :try_end_1
    .catch Lcom/felicanetworks/mfsctrl/ControlFunctionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 320
    .end local v0    # "cfl":Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;
    :goto_1
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v4

    iget-object v4, v4, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v5, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v6, p0, Lcom/felicanetworks/mfs/view/RunningInitView$FeliCaChipInitImpl;->this$0:Lcom/felicanetworks/mfs/view/RunningInitView;

    invoke-virtual {v4, v5, v6, v1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    .line 324
    .local v3, "errorId":Ljava/lang/String;
    iget-object v4, p0, Lcom/felicanetworks/mfs/view/RunningInitView$FeliCaChipInitImpl;->this$0:Lcom/felicanetworks/mfs/view/RunningInitView;

    invoke-virtual {v4, v3}, Lcom/felicanetworks/mfs/view/RunningInitView;->transferFatalError(Ljava/lang/String;)V

    goto :goto_0

    .line 312
    .end local v3    # "errorId":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 316
    .local v2, "e1":Lcom/felicanetworks/mfsctrl/ControlFunctionException;
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v4

    iget-object v4, v4, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v5, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v6, p0, Lcom/felicanetworks/mfs/view/RunningInitView$FeliCaChipInitImpl;->this$0:Lcom/felicanetworks/mfs/view/RunningInitView;

    invoke-virtual {v4, v5, v6, v2}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto :goto_1
.end method

.method public onWarning(II)V
    .locals 8
    .param p1, "warnCode"    # I
    .param p2, "data"    # I

    .prologue
    .line 388
    :try_start_0
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/RunningInitView$FeliCaChipInitImpl;->this$0:Lcom/felicanetworks/mfs/view/RunningInitView;

    iget-object v3, v3, Lcom/felicanetworks/mfs/view/RunningInitView;->appStatus:Lcom/felicanetworks/mfs/AppStatus;

    sget-object v4, Lcom/felicanetworks/mfs/AppStatus$State;->INIT_FAILED:Lcom/felicanetworks/mfs/AppStatus$State;

    iput-object v4, v3, Lcom/felicanetworks/mfs/AppStatus;->felicaInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    .line 389
    packed-switch p1, :pswitch_data_0

    .line 445
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v3

    iget-object v3, v3, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v4, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v5, p0, Lcom/felicanetworks/mfs/view/RunningInitView$FeliCaChipInitImpl;->this$0:Lcom/felicanetworks/mfs/view/RunningInitView;

    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Other Error at Running Initialization"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "errorId":Ljava/lang/String;
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/RunningInitView$FeliCaChipInitImpl;->this$0:Lcom/felicanetworks/mfs/view/RunningInitView;

    invoke-virtual {v3, v1}, Lcom/felicanetworks/mfs/view/RunningInitView;->transferFatalError(Ljava/lang/String;)V

    .line 466
    .end local v1    # "errorId":Ljava/lang/String;
    :goto_0
    return-void

    .line 395
    :pswitch_0
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/RunningInitView$FeliCaChipInitImpl;->this$0:Lcom/felicanetworks/mfs/view/RunningInitView;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/felicanetworks/mfs/view/RunningInitView;->transferState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 452
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v3

    iget-object v3, v3, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v4, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v5, p0, Lcom/felicanetworks/mfs/view/RunningInitView$FeliCaChipInitImpl;->this$0:Lcom/felicanetworks/mfs/view/RunningInitView;

    invoke-virtual {v3, v4, v5, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 461
    .restart local v1    # "errorId":Ljava/lang/String;
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/RunningInitView$FeliCaChipInitImpl;->this$0:Lcom/felicanetworks/mfs/view/RunningInitView;

    invoke-virtual {v3, v1}, Lcom/felicanetworks/mfs/view/RunningInitView;->transferFatalError(Ljava/lang/String;)V

    goto :goto_0

    .line 403
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "errorId":Ljava/lang/String;
    :pswitch_1
    :try_start_1
    new-instance v2, Lcom/felicanetworks/mfs/MfsTransferStateData;

    invoke-direct {v2}, Lcom/felicanetworks/mfs/MfsTransferStateData;-><init>()V

    .line 404
    .local v2, "tData":Lcom/felicanetworks/mfs/MfsTransferStateData;
    iput p2, v2, Lcom/felicanetworks/mfs/MfsTransferStateData;->pid:I

    .line 405
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/RunningInitView$FeliCaChipInitImpl;->this$0:Lcom/felicanetworks/mfs/view/RunningInitView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4, v2}, Lcom/felicanetworks/mfs/view/RunningInitView;->transferState(ILcom/felicanetworks/cmnview/TransferStateData;)V

    goto :goto_0

    .line 413
    .end local v2    # "tData":Lcom/felicanetworks/mfs/MfsTransferStateData;
    :pswitch_2
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/RunningInitView$FeliCaChipInitImpl;->this$0:Lcom/felicanetworks/mfs/view/RunningInitView;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lcom/felicanetworks/mfs/view/RunningInitView;->transferState(I)V

    goto :goto_0

    .line 421
    :pswitch_3
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/RunningInitView$FeliCaChipInitImpl;->this$0:Lcom/felicanetworks/mfs/view/RunningInitView;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/felicanetworks/mfs/view/RunningInitView;->transferState(I)V

    goto :goto_0

    .line 429
    :pswitch_4
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/RunningInitView$FeliCaChipInitImpl;->this$0:Lcom/felicanetworks/mfs/view/RunningInitView;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/felicanetworks/mfs/view/RunningInitView;->transferState(I)V

    goto :goto_0

    .line 437
    :pswitch_5
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/RunningInitView$FeliCaChipInitImpl;->this$0:Lcom/felicanetworks/mfs/view/RunningInitView;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lcom/felicanetworks/mfs/view/RunningInitView;->transferState(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 389
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
