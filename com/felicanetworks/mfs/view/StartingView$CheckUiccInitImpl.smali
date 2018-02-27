.class public Lcom/felicanetworks/mfs/view/StartingView$CheckUiccInitImpl;
.super Ljava/lang/Object;
.source "StartingView.java"

# interfaces
.implements Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfs/view/StartingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CheckUiccInitImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfs/view/StartingView;


# direct methods
.method protected constructor <init>(Lcom/felicanetworks/mfs/view/StartingView;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckUiccInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$CompleteCode;)V
    .locals 5
    .param p1, "code"    # Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$CompleteCode;

    .prologue
    .line 403
    :try_start_0
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckUiccInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    iget-object v2, v2, Lcom/felicanetworks/mfs/view/StartingView;->appStatus:Lcom/felicanetworks/mfs/AppStatus;

    iput-object p1, v2, Lcom/felicanetworks/mfs/AppStatus;->uiccStatus:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$CompleteCode;

    .line 404
    sget-object v2, Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$CompleteCode;->COMP_RESULT_UNINIT_UICC:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$CompleteCode;

    if-ne p1, v2, :cond_0

    .line 408
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckUiccInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    iget-object v2, v2, Lcom/felicanetworks/mfs/view/StartingView;->appStatus:Lcom/felicanetworks/mfs/AppStatus;

    sget-object v3, Lcom/felicanetworks/mfs/AppStatus$State;->CHECK_NEEDINIT:Lcom/felicanetworks/mfs/AppStatus$State;

    iput-object v3, v2, Lcom/felicanetworks/mfs/AppStatus;->uiccInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    .line 415
    :goto_0
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckUiccInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    invoke-virtual {v2}, Lcom/felicanetworks/mfs/view/StartingView;->judgeStatus()V

    .line 426
    :goto_1
    return-void

    .line 413
    :cond_0
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckUiccInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    iget-object v2, v2, Lcom/felicanetworks/mfs/view/StartingView;->appStatus:Lcom/felicanetworks/mfs/AppStatus;

    sget-object v3, Lcom/felicanetworks/mfs/AppStatus$State;->CHECK_DONEINIT:Lcom/felicanetworks/mfs/AppStatus$State;

    iput-object v3, v2, Lcom/felicanetworks/mfs/AppStatus;->uiccInitState:Lcom/felicanetworks/mfs/AppStatus$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v2

    iget-object v2, v2, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v4, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckUiccInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    invoke-virtual {v2, v3, v4, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, "errorId":Ljava/lang/String;
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckUiccInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    invoke-virtual {v2, v1}, Lcom/felicanetworks/mfs/view/StartingView;->transferFatalError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onError(Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;Ljava/lang/String;Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;)V
    .locals 5
    .param p1, "code"    # Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "ge"    # Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;

    .prologue
    .line 434
    :try_start_0
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckUiccInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    iget-object v2, v2, Lcom/felicanetworks/mfs/view/StartingView;->appStatus:Lcom/felicanetworks/mfs/AppStatus;

    sget-object v3, Lcom/felicanetworks/mfs/AppStatus$State;->CHECK_FAILED:Lcom/felicanetworks/mfs/AppStatus$State;

    iput-object v3, v2, Lcom/felicanetworks/mfs/AppStatus;->uiccInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    .line 435
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckUiccInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    iget-object v2, v2, Lcom/felicanetworks/mfs/view/StartingView;->appStatus:Lcom/felicanetworks/mfs/AppStatus;

    iput-object p3, v2, Lcom/felicanetworks/mfs/AppStatus;->gpasException:Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;

    .line 436
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckUiccInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    invoke-virtual {v2}, Lcom/felicanetworks/mfs/view/StartingView;->judgeStatus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :goto_0
    return-void

    .line 437
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v2

    iget-object v2, v2, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v4, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckUiccInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    invoke-virtual {v2, v3, v4, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, "errorId":Ljava/lang/String;
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckUiccInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    invoke-virtual {v2, v1}, Lcom/felicanetworks/mfs/view/StartingView;->transferFatalError(Ljava/lang/String;)V

    goto :goto_0
.end method
