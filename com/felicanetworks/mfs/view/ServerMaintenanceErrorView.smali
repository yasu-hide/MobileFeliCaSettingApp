.class public Lcom/felicanetworks/mfs/view/ServerMaintenanceErrorView;
.super Lcom/felicanetworks/mfs/view/BaseMsg1Btn1DialogView;
.source "ServerMaintenanceErrorView.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1DialogView;-><init>(Landroid/app/Activity;)V

    .line 64
    return-void
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 181
    const/16 v0, 0x18

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 186
    const/16 v0, 0x20

    return v0
.end method

.method public onDialogButtonClick()V
    .locals 4

    .prologue
    .line 94
    const/16 v2, 0x3e8

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/felicanetworks/mfs/view/ServerMaintenanceErrorView;->transferState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v2

    iget-object v2, v2, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v2, v3, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "errorId":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/felicanetworks/mfs/view/ServerMaintenanceErrorView;->transferFatalError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSetViewParts()V
    .locals 1

    .prologue
    .line 166
    const v0, 0x7f050055

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/ServerMaintenanceErrorView;->setTitleMsg(I)V

    .line 168
    const v0, 0x7f020036

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/ServerMaintenanceErrorView;->setTitleIcon(I)V

    .line 170
    const v0, 0x7f05003b

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/ServerMaintenanceErrorView;->setBtn1Text(I)V

    .line 172
    const v0, 0x7f050019

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/ServerMaintenanceErrorView;->setMsg1Text(I)V

    .line 176
    return-void
.end method
