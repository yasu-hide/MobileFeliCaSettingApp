.class public Lcom/felicanetworks/mfs/view/AlreadyInitView;
.super Lcom/felicanetworks/mfs/view/BaseMsg1Btn1DialogView;
.source "AlreadyInitView.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1DialogView;-><init>(Landroid/app/Activity;)V

    .line 68
    return-void
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x2

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 188
    const/16 v0, 0x20

    return v0
.end method

.method public onDialogButtonClick()V
    .locals 4

    .prologue
    .line 97
    const/16 v2, 0x3e8

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/felicanetworks/mfs/view/AlreadyInitView;->transferState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v2

    iget-object v2, v2, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v2, v3, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "errorId":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/felicanetworks/mfs/view/AlreadyInitView;->transferFatalError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSetViewParts()V
    .locals 1

    .prologue
    .line 169
    const v0, 0x7f05004d

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/AlreadyInitView;->setTitleMsg(I)V

    .line 171
    const v0, 0x7f020037

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/AlreadyInitView;->setTitleIcon(I)V

    .line 173
    const v0, 0x7f050033

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/AlreadyInitView;->setBtn1Text(I)V

    .line 175
    const v0, 0x7f050011

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/AlreadyInitView;->setMsg1Text(I)V

    .line 179
    return-void
.end method
