.class public Lcom/felicanetworks/mfs/view/FeliCaOtherErrorView;
.super Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;
.source "FeliCaOtherErrorView.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# instance fields
.field private _activity:Landroid/app/Activity;

.field private _errorId:Ljava/lang/String;

.field private _mfcErrorId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "errorId"    # Ljava/lang/String;
    .param p3, "felicaErrInfo"    # Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;-><init>(Landroid/app/Activity;)V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/felicanetworks/mfs/view/FeliCaOtherErrorView;->_errorId:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/felicanetworks/mfs/view/FeliCaOtherErrorView;->_mfcErrorId:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfs/view/FeliCaOtherErrorView;->_activity:Landroid/app/Activity;

    .line 57
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/FeliCaOtherErrorView;->_activity:Landroid/app/Activity;

    .line 59
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iput-object p2, p0, Lcom/felicanetworks/mfs/view/FeliCaOtherErrorView;->_errorId:Ljava/lang/String;

    .line 65
    :cond_0
    if-eqz p3, :cond_1

    .line 70
    invoke-direct {p0, p3}, Lcom/felicanetworks/mfs/view/FeliCaOtherErrorView;->makeMfcErrorId(Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfs/view/FeliCaOtherErrorView;->_mfcErrorId:Ljava/lang/String;

    .line 75
    :cond_1
    return-void
.end method

.method private makeMfcErrorId(Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "data"    # Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 142
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 144
    .local v0, "strBuff":Ljava/lang/StringBuffer;
    iget-object v1, p1, Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;->genTypeValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    const-string v1, "%02d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p1, Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;->errorID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    const-string v1, "%03d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p1, Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;->errorType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 157
    const/16 v0, 0x1d

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 162
    const/16 v0, 0x20

    return v0
.end method

.method public onDialogButtonClick()V
    .locals 3

    .prologue
    .line 88
    const/16 v1, 0x3e9

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/felicanetworks/mfs/view/FeliCaOtherErrorView;->transferState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v1

    iget-object v1, v1, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v2, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v1, v2, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto :goto_0
.end method

.method public onSetViewParts()V
    .locals 5

    .prologue
    .line 109
    const v3, 0x7f05005d

    invoke-virtual {p0, v3}, Lcom/felicanetworks/mfs/view/FeliCaOtherErrorView;->setTitleMsg(I)V

    .line 111
    const v3, 0x7f020036

    invoke-virtual {p0, v3}, Lcom/felicanetworks/mfs/view/FeliCaOtherErrorView;->setTitleIcon(I)V

    .line 113
    const v3, 0x7f050043

    invoke-virtual {p0, v3}, Lcom/felicanetworks/mfs/view/FeliCaOtherErrorView;->setBtn1Text(I)V

    .line 116
    const v3, 0x7f050027

    invoke-virtual {p0, v3}, Lcom/felicanetworks/mfs/view/FeliCaOtherErrorView;->setMsg1Text(I)V

    .line 118
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/FeliCaOtherErrorView;->_activity:Landroid/app/Activity;

    const v4, 0x7f050028

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "dlgbase_text":Ljava/lang/String;
    const-string v3, "%s"

    iget-object v4, p0, Lcom/felicanetworks/mfs/view/FeliCaOtherErrorView;->_errorId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "tmpStrDlg":Ljava/lang/String;
    const-string v3, "%s"

    iget-object v4, p0, Lcom/felicanetworks/mfs/view/FeliCaOtherErrorView;->_mfcErrorId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "newStrDlg":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/felicanetworks/mfs/view/FeliCaOtherErrorView;->setMsg2Text(Ljava/lang/String;)V

    .line 126
    return-void
.end method
