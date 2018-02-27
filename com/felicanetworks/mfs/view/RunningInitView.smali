.class public Lcom/felicanetworks/mfs/view/RunningInitView;
.super Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;
.source "RunningInitView.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfs/view/RunningInitView$FeliCaChipInitImpl;
    }
.end annotation


# instance fields
.field private final PROGRESS_MAXVAL:I

.field protected appStatus:Lcom/felicanetworks/mfs/AppStatus;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;-><init>(Landroid/app/Activity;)V

    .line 32
    const/16 v0, 0x64

    iput v0, p0, Lcom/felicanetworks/mfs/view/RunningInitView;->PROGRESS_MAXVAL:I

    .line 34
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getAppStatus()Lcom/felicanetworks/mfs/AppStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfs/view/RunningInitView;->appStatus:Lcom/felicanetworks/mfs/AppStatus;

    .line 45
    return-void
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 548
    const/16 v0, 0x17

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 553
    const/16 v0, 0x20

    return v0
.end method

.method public onActivityDestroy()V
    .locals 4

    .prologue
    .line 204
    invoke-super {p0}, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;->onActivityDestroy()V

    .line 208
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->getInstance()Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    move-result-object v0

    .line 209
    .local v0, "cfl":Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;
    invoke-virtual {v0}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->stopRunInitialization()V
    :try_end_0
    .catch Lcom/felicanetworks/mfsctrl/ControlFunctionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v0    # "cfl":Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v1

    .line 214
    .local v1, "e":Lcom/felicanetworks/mfsctrl/ControlFunctionException;
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v2

    iget-object v2, v2, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v2, v3, p0, v1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto :goto_0
.end method

.method public onDialogButtonClick()V
    .locals 5

    .prologue
    .line 97
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->getInstance()Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    move-result-object v0

    .line 98
    .local v0, "cfl":Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;
    invoke-virtual {v0}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->stopRunInitialization()V

    .line 100
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/RunningInitView;->appStatus:Lcom/felicanetworks/mfs/AppStatus;

    sget-object v4, Lcom/felicanetworks/mfs/AppStatus$State;->INIT_CANCEL:Lcom/felicanetworks/mfs/AppStatus$State;

    iput-object v4, v3, Lcom/felicanetworks/mfs/AppStatus;->felicaInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    .line 101
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/RunningInitView;->appStatus:Lcom/felicanetworks/mfs/AppStatus;

    iget-boolean v3, v3, Lcom/felicanetworks/mfs/AppStatus;->isNeedUiccInit:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/felicanetworks/mfs/view/RunningInitView;->appStatus:Lcom/felicanetworks/mfs/AppStatus;

    iget-object v3, v3, Lcom/felicanetworks/mfs/AppStatus;->uiccInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    sget-object v4, Lcom/felicanetworks/mfs/AppStatus$State;->CHECK_NEEDINIT:Lcom/felicanetworks/mfs/AppStatus$State;

    if-ne v3, v4, :cond_0

    .line 105
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/RunningInitView;->appStatus:Lcom/felicanetworks/mfs/AppStatus;

    sget-object v4, Lcom/felicanetworks/mfs/AppStatus$State;->INIT_CANCEL:Lcom/felicanetworks/mfs/AppStatus$State;

    iput-object v4, v3, Lcom/felicanetworks/mfs/AppStatus;->uiccInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    .line 108
    :cond_0
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/felicanetworks/mfs/view/RunningInitView;->transferState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v0    # "cfl":Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v3

    iget-object v3, v3, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v4, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v3, v4, p0, v1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "errorId":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/felicanetworks/mfs/view/RunningInitView;->transferFatalError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSetViewParts()V
    .locals 1

    .prologue
    .line 178
    const v0, 0x7f05004b

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/RunningInitView;->setTitleMsg(I)V

    .line 180
    const v0, 0x7f020037

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/RunningInitView;->setTitleIcon(I)V

    .line 182
    const v0, 0x7f050031

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/RunningInitView;->setBtn1Text(I)V

    .line 184
    const v0, 0x7f05000f

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/RunningInitView;->setMsg1Text(I)V

    .line 188
    return-void
.end method

.method public onStartDialog()V
    .locals 5

    .prologue
    .line 63
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->getInstance()Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    move-result-object v0

    .line 65
    .local v0, "cfl":Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;
    new-instance v3, Lcom/felicanetworks/mfs/view/RunningInitView$FeliCaChipInitImpl;

    invoke-direct {v3, p0}, Lcom/felicanetworks/mfs/view/RunningInitView$FeliCaChipInitImpl;-><init>(Lcom/felicanetworks/mfs/view/RunningInitView;)V

    invoke-virtual {v0, v3}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->startRunInitialization(Lcom/felicanetworks/mfsctrl/RunInitializationListener;)V
    :try_end_0
    .catch Lcom/felicanetworks/mfsctrl/ControlFunctionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v0    # "cfl":Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Lcom/felicanetworks/mfsctrl/ControlFunctionException;
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v3

    iget-object v3, v3, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v4, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v3, v4, p0, v1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "errorId":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/felicanetworks/mfs/view/RunningInitView;->transferFatalError(Ljava/lang/String;)V

    goto :goto_0
.end method
