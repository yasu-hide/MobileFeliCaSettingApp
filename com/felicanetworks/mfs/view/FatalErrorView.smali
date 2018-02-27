.class public Lcom/felicanetworks/mfs/view/FatalErrorView;
.super Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;
.source "FatalErrorView.java"

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
    .line 80
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;-><init>(Landroid/app/Activity;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfs/view/FatalErrorView;->_errorId:Ljava/lang/String;

    .line 84
    if-eqz p2, :cond_0

    .line 85
    iput-object p2, p0, Lcom/felicanetworks/mfs/view/FatalErrorView;->_errorId:Ljava/lang/String;

    .line 92
    :goto_0
    return-void

    .line 87
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/felicanetworks/mfs/view/FatalErrorView;->_errorId:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 216
    const/16 v0, 0xf

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 221
    const/16 v0, 0x20

    return v0
.end method

.method public onDialogButtonClick()V
    .locals 3

    .prologue
    .line 127
    const/16 v1, 0x3e8

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/felicanetworks/mfs/view/FatalErrorView;->transferState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 133
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
    .line 200
    const v0, 0x7f050059

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/FatalErrorView;->setTitleMsg(I)V

    .line 202
    const v0, 0x7f020036

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/FatalErrorView;->setTitleIcon(I)V

    .line 204
    const v0, 0x7f05003d

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/FatalErrorView;->setBtn1Text(I)V

    .line 207
    const v0, 0x7f05001b

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/FatalErrorView;->setMsg1Text(I)V

    .line 208
    const v0, 0x7f05001f

    iget-object v1, p0, Lcom/felicanetworks/mfs/view/FatalErrorView;->_errorId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/felicanetworks/mfs/view/FatalErrorView;->setMsg2Text(ILjava/lang/String;)V

    .line 212
    return-void
.end method
