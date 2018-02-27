.class public Lcom/felicanetworks/mfs/view/StartingView;
.super Lcom/felicanetworks/cmnview/BaseWindowView;
.source "StartingView.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfs/view/StartingView$CheckUiccInitImpl;,
        Lcom/felicanetworks/mfs/view/StartingView$CheckFelicaInitImpl;
    }
.end annotation


# instance fields
.field private _activity:Landroid/app/Activity;

.field private _cfl:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

.field protected appStatus:Lcom/felicanetworks/mfs/AppStatus;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnview/BaseWindowView;-><init>(Landroid/app/Activity;)V

    .line 36
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/felicanetworks/mfs/view/StartingView;->_activity:Landroid/app/Activity;

    .line 38
    invoke-static {}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->getInstance()Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    move-result-object v2

    iput-object v2, p0, Lcom/felicanetworks/mfs/view/StartingView;->_cfl:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    .line 41
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getAppStatus()Lcom/felicanetworks/mfs/AppStatus;

    move-result-object v2

    iput-object v2, p0, Lcom/felicanetworks/mfs/view/StartingView;->appStatus:Lcom/felicanetworks/mfs/AppStatus;

    .line 65
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/StartingView;->_activity:Landroid/app/Activity;

    .line 68
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/StartingView;->_activity:Landroid/app/Activity;

    const v3, 0x7f03000c

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 71
    :try_start_0
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/StartingView;->_cfl:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    new-instance v3, Lcom/felicanetworks/mfs/view/StartingView$CheckFelicaInitImpl;

    invoke-direct {v3, p0}, Lcom/felicanetworks/mfs/view/StartingView$CheckFelicaInitImpl;-><init>(Lcom/felicanetworks/mfs/view/StartingView;)V

    invoke-virtual {v2, v3}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->startCheckInitialization(Lcom/felicanetworks/mfsctrl/CheckInitializationListener;)V
    :try_end_0
    .catch Lcom/felicanetworks/mfsctrl/ControlFunctionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Lcom/felicanetworks/mfsctrl/ControlFunctionException;
    invoke-static {}, Lcom/felicanetworks/cmnview/AppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v2

    iget-object v2, v2, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v2, v3, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "errorId":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/felicanetworks/mfs/view/StartingView;->transferFatalError(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 498
    const/16 v0, 0x19

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 502
    const/16 v0, 0x20

    return v0
.end method

.method protected judgeStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x2

    .line 457
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/StartingView;->appStatus:Lcom/felicanetworks/mfs/AppStatus;

    iget-boolean v0, v0, Lcom/felicanetworks/mfs/AppStatus;->isNeedUiccInit:Z

    if-eqz v0, :cond_2

    .line 458
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/StartingView;->appStatus:Lcom/felicanetworks/mfs/AppStatus;

    iget-object v0, v0, Lcom/felicanetworks/mfs/AppStatus;->felicaInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    sget-object v1, Lcom/felicanetworks/mfs/AppStatus$State;->CHECK_DONEINIT:Lcom/felicanetworks/mfs/AppStatus$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/felicanetworks/mfs/view/StartingView;->appStatus:Lcom/felicanetworks/mfs/AppStatus;

    iget-object v0, v0, Lcom/felicanetworks/mfs/AppStatus;->uiccInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    sget-object v1, Lcom/felicanetworks/mfs/AppStatus$State;->CHECK_DONEINIT:Lcom/felicanetworks/mfs/AppStatus$State;

    if-ne v0, v1, :cond_0

    .line 462
    invoke-virtual {p0, v3}, Lcom/felicanetworks/mfs/view/StartingView;->transferState(I)V

    .line 494
    :goto_0
    return-void

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/StartingView;->appStatus:Lcom/felicanetworks/mfs/AppStatus;

    iget-object v0, v0, Lcom/felicanetworks/mfs/AppStatus;->felicaInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    sget-object v1, Lcom/felicanetworks/mfs/AppStatus$State;->CHECK_DONEINIT:Lcom/felicanetworks/mfs/AppStatus$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/felicanetworks/mfs/view/StartingView;->appStatus:Lcom/felicanetworks/mfs/AppStatus;

    iget-object v0, v0, Lcom/felicanetworks/mfs/AppStatus;->uiccInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    sget-object v1, Lcom/felicanetworks/mfs/AppStatus$State;->CHECK_FAILED:Lcom/felicanetworks/mfs/AppStatus$State;

    if-ne v0, v1, :cond_1

    .line 468
    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/StartingView;->transferState(I)V

    goto :goto_0

    .line 474
    :cond_1
    invoke-virtual {p0, v2}, Lcom/felicanetworks/mfs/view/StartingView;->transferState(I)V

    goto :goto_0

    .line 478
    :cond_2
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/StartingView;->appStatus:Lcom/felicanetworks/mfs/AppStatus;

    iget-object v0, v0, Lcom/felicanetworks/mfs/AppStatus;->felicaInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    sget-object v1, Lcom/felicanetworks/mfs/AppStatus$State;->CHECK_DONEINIT:Lcom/felicanetworks/mfs/AppStatus$State;

    if-ne v0, v1, :cond_3

    .line 482
    invoke-virtual {p0, v3}, Lcom/felicanetworks/mfs/view/StartingView;->transferState(I)V

    goto :goto_0

    .line 488
    :cond_3
    invoke-virtual {p0, v2}, Lcom/felicanetworks/mfs/view/StartingView;->transferState(I)V

    goto :goto_0
.end method

.method public onActivityDestroy()V
    .locals 3

    .prologue
    .line 99
    invoke-super {p0}, Lcom/felicanetworks/cmnview/BaseWindowView;->onActivityDestroy()V

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfs/view/StartingView;->_cfl:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    invoke-virtual {v1}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->stopCheckInitialization()V
    :try_end_0
    .catch Lcom/felicanetworks/mfsctrl/ControlFunctionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    iget-object v1, p0, Lcom/felicanetworks/mfs/view/StartingView;->_cfl:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    invoke-virtual {v1}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->stopCheckInitializeUicc()V

    .line 112
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Lcom/felicanetworks/mfsctrl/ControlFunctionException;
    invoke-static {}, Lcom/felicanetworks/cmnview/AppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v1

    iget-object v1, v1, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v2, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v1, v2, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto :goto_0
.end method

.method protected startCheckInitializeUicc()V
    .locals 4

    .prologue
    .line 361
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/StartingView;->appStatus:Lcom/felicanetworks/mfs/AppStatus;

    iget-boolean v2, v2, Lcom/felicanetworks/mfs/AppStatus;->isNeedUiccInit:Z

    if-eqz v2, :cond_0

    .line 366
    :try_start_0
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/StartingView;->_cfl:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    new-instance v3, Lcom/felicanetworks/mfs/view/StartingView$CheckUiccInitImpl;

    invoke-direct {v3, p0}, Lcom/felicanetworks/mfs/view/StartingView$CheckUiccInitImpl;-><init>(Lcom/felicanetworks/mfs/view/StartingView;)V

    invoke-virtual {v2, v3}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->startCheckInitializeUicc(Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener;)V
    :try_end_0
    .catch Lcom/felicanetworks/mfsctrl/ControlFunctionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 391
    :goto_0
    return-void

    .line 367
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Lcom/felicanetworks/mfsctrl/ControlFunctionException;
    invoke-static {}, Lcom/felicanetworks/cmnview/AppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v2

    iget-object v2, v2, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v2, v3, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "errorId":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/felicanetworks/mfs/view/StartingView;->transferFatalError(Ljava/lang/String;)V

    goto :goto_0

    .line 373
    .end local v0    # "e":Lcom/felicanetworks/mfsctrl/ControlFunctionException;
    .end local v1    # "errorId":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 377
    .local v0, "e":Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/StartingView;->appStatus:Lcom/felicanetworks/mfs/AppStatus;

    sget-object v3, Lcom/felicanetworks/mfs/AppStatus$State;->CHECK_FAILED:Lcom/felicanetworks/mfs/AppStatus$State;

    iput-object v3, v2, Lcom/felicanetworks/mfs/AppStatus;->uiccInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    .line 378
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/StartingView;->appStatus:Lcom/felicanetworks/mfs/AppStatus;

    iput-object v0, v2, Lcom/felicanetworks/mfs/AppStatus;->gpasException:Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;

    .line 379
    invoke-virtual {p0}, Lcom/felicanetworks/mfs/view/StartingView;->judgeStatus()V

    goto :goto_0

    .line 386
    .end local v0    # "e":Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;
    :cond_0
    invoke-virtual {p0}, Lcom/felicanetworks/mfs/view/StartingView;->judgeStatus()V

    goto :goto_0
.end method
