.class public Lcom/felicanetworks/mfs/view/LogSendingView;
.super Lcom/felicanetworks/cmnview/BaseWindowView;
.source "LogSendingView.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfs/view/LogSendingView$LogMgrEventImpl;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnview/BaseWindowView;-><init>(Landroid/app/Activity;)V

    .line 71
    const v1, 0x7f03000c

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 75
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v1

    iget-object v1, v1, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    new-instance v2, Lcom/felicanetworks/mfs/view/LogSendingView$LogMgrEventImpl;

    invoke-direct {v2, p0}, Lcom/felicanetworks/mfs/view/LogSendingView$LogMgrEventImpl;-><init>(Lcom/felicanetworks/mfs/view/LogSendingView;)V

    invoke-virtual {v1, v2}, Lcom/felicanetworks/cmnlib/log/LogMgr;->sendErrReport(Lcom/felicanetworks/cmnlib/log/LogMgrEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v1

    iget-object v1, v1, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    invoke-virtual {v1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->deleteErrReport()V

    .line 92
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/felicanetworks/mfs/view/LogSendingView;->transferState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v1

    iget-object v1, v1, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    invoke-virtual {v1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->deleteErrReport()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v2

    iget-object v2, v2, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    invoke-virtual {v2}, Lcom/felicanetworks/cmnlib/log/LogMgr;->deleteErrReport()V

    throw v1
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 213
    const/16 v0, 0x14

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 218
    const/16 v0, 0x20

    return v0
.end method

.method public onActivityDestroy()V
    .locals 3

    .prologue
    .line 132
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v1

    iget-object v1, v1, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    invoke-virtual {v1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->stopSendingErrReport()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v1

    iget-object v1, v1, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v2, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v1, v2, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto :goto_0
.end method
