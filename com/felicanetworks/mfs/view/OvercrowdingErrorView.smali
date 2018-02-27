.class public Lcom/felicanetworks/mfs/view/OvercrowdingErrorView;
.super Lcom/felicanetworks/mfs/view/BaseMsg1Btn1DialogView;
.source "OvercrowdingErrorView.java"

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
    .line 179
    const/16 v0, 0x16

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 184
    const/16 v0, 0x20

    return v0
.end method

.method public onDialogButtonClick()V
    .locals 4

    .prologue
    .line 93
    const/16 v2, 0x3e8

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/felicanetworks/mfs/view/OvercrowdingErrorView;->transferState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v2

    iget-object v2, v2, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v2, v3, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "errorId":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/felicanetworks/mfs/view/OvercrowdingErrorView;->transferFatalError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSetViewParts()V
    .locals 1

    .prologue
    .line 165
    const v0, 0x7f050054

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/OvercrowdingErrorView;->setTitleMsg(I)V

    .line 167
    const v0, 0x7f020036

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/OvercrowdingErrorView;->setTitleIcon(I)V

    .line 169
    const v0, 0x7f05003a

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/OvercrowdingErrorView;->setBtn1Text(I)V

    .line 171
    const v0, 0x7f050018

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/OvercrowdingErrorView;->setMsg1Text(I)V

    .line 175
    return-void
.end method
