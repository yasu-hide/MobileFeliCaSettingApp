.class public Lcom/felicanetworks/mfsctrl/GpasInitImpl;
.super Ljava/lang/Object;
.source "GpasInitImpl.java"

# interfaces
.implements Lcom/felicanetworks/mfsctrl/gpas/GpasGetFactoryListener;
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# instance fields
.field private chkInitUiccListener:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener;

.field private gpas:Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;

.field private notifyCompCode:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$CompleteCode;

.field private notifyErrCode:Ljava/lang/String;

.field private notifyErrorCode:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;

.field private notifyException:Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener;)V
    .locals 1
    .param p1, "gpas"    # Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;
    .param p2, "listner"    # Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->gpas:Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;

    .line 26
    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->chkInitUiccListener:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener;

    .line 29
    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->notifyCompCode:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$CompleteCode;

    .line 30
    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->notifyErrorCode:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;

    .line 31
    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->notifyErrCode:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->notifyException:Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;

    .line 41
    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->gpas:Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;

    .line 42
    iput-object p2, p0, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->chkInitUiccListener:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener;

    .line 43
    return-void
.end method

.method private declared-synchronized notifyResult()V
    .locals 4

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->chkInitUiccListener:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->notifyCompCode:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$CompleteCode;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->chkInitUiccListener:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener;

    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->notifyCompCode:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$CompleteCode;

    invoke-interface {v0, v1}, Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener;->onComplete(Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$CompleteCode;)V

    .line 80
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->chkInitUiccListener:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->gpas:Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    monitor-exit p0

    return-void

    .line 77
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->chkInitUiccListener:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener;

    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->notifyErrorCode:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;

    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->notifyErrCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->notifyException:Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;

    invoke-interface {v0, v1, v2, v3}, Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener;->onError(Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;Ljava/lang/String;Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setNotifyComplete(Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$CompleteCode;)V
    .locals 0
    .param p1, "code"    # Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$CompleteCode;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->notifyCompCode:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$CompleteCode;

    .line 52
    return-void
.end method

.method private setNotifyError(Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;Ljava/lang/String;Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;)V
    .locals 0
    .param p1, "code"    # Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;
    .param p2, "errCode"    # Ljava/lang/String;
    .param p3, "ge"    # Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->notifyErrorCode:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;

    .line 63
    iput-object p2, p0, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->notifyErrCode:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->notifyException:Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;

    .line 65
    return-void
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x5

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 140
    const/16 v0, 0x21

    return v0
.end method

.method public notifyComplete()V
    .locals 3

    .prologue
    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->gpas:Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;

    invoke-virtual {v1}, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->isUiccInitState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    sget-object v1, Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$CompleteCode;->COMP_RESULT_INIT_UICC:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$CompleteCode;

    invoke-direct {p0, v1}, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->setNotifyComplete(Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$CompleteCode;)V
    :try_end_0
    .catch Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :goto_0
    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->gpas:Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;

    invoke-virtual {v1}, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->stopGpas()V

    .line 114
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->notifyResult()V

    .line 116
    :goto_1
    return-void

    .line 100
    :cond_0
    :try_start_1
    sget-object v1, Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$CompleteCode;->COMP_RESULT_UNINIT_UICC:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$CompleteCode;

    invoke-direct {p0, v1}, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->setNotifyComplete(Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$CompleteCode;)V
    :try_end_1
    .catch Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "ge":Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;
    :try_start_2
    invoke-virtual {v0}, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;->getErrorId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 105
    sget-object v1, Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;->ERROR_RESULT_GPAS_ACCESS:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;

    invoke-virtual {v0}, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;->getErrIdentifierCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->setNotifyError(Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;Ljava/lang/String;Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    :goto_2
    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->gpas:Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;

    invoke-virtual {v1}, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->stopGpas()V

    .line 114
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->notifyResult()V

    goto :goto_1

    .line 108
    :cond_1
    :try_start_3
    sget-object v1, Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;->ERROR_RESULT_OTHER:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;

    invoke-virtual {v0}, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;->getErrIdentifierCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->setNotifyError(Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;Ljava/lang/String;Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 112
    .end local v0    # "ge":Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->gpas:Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;

    invoke-virtual {v2}, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->stopGpas()V

    .line 114
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->notifyResult()V

    throw v1
.end method

.method public notifyError(Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;)V
    .locals 2
    .param p1, "ge"    # Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;

    .prologue
    .line 128
    sget-object v0, Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;->ERROR_RESULT_GPAS_ACCESS:Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;

    invoke-virtual {p1}, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;->getErrIdentifierCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->setNotifyError(Lcom/felicanetworks/mfsctrl/CheckInitializeUiccListener$ErrorCode;Ljava/lang/String;Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;)V

    .line 130
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/GpasInitImpl;->notifyResult()V

    .line 131
    return-void
.end method
