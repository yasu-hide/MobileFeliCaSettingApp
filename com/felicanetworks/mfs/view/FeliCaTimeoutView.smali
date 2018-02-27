.class public Lcom/felicanetworks/mfs/view/FeliCaTimeoutView;
.super Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;
.source "FeliCaTimeoutView.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# instance fields
.field private _errorId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "errorId"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;-><init>(Landroid/app/Activity;)V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/felicanetworks/mfs/view/FeliCaTimeoutView;->_errorId:Ljava/lang/String;

    .line 48
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iput-object p2, p0, Lcom/felicanetworks/mfs/view/FeliCaTimeoutView;->_errorId:Ljava/lang/String;

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0x1c

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 112
    const/16 v0, 0x20

    return v0
.end method

.method public onDialogButtonClick()V
    .locals 3

    .prologue
    .line 70
    const/16 v1, 0x3e9

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/felicanetworks/mfs/view/FeliCaTimeoutView;->transferState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v1

    iget-object v1, v1, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v2, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v1, v2, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto :goto_0
.end method

.method public onSetViewParts()V
    .locals 2

    .prologue
    .line 91
    const v0, 0x7f05005c

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/FeliCaTimeoutView;->setTitleMsg(I)V

    .line 93
    const v0, 0x7f020036

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/FeliCaTimeoutView;->setTitleIcon(I)V

    .line 95
    const v0, 0x7f050042

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/FeliCaTimeoutView;->setBtn1Text(I)V

    .line 98
    const v0, 0x7f050025

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/FeliCaTimeoutView;->setMsg1Text(I)V

    .line 99
    const v0, 0x7f050026

    iget-object v1, p0, Lcom/felicanetworks/mfs/view/FeliCaTimeoutView;->_errorId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/felicanetworks/mfs/view/FeliCaTimeoutView;->setMsg2Text(ILjava/lang/String;)V

    .line 103
    return-void
.end method
