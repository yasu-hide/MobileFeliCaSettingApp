.class public Lcom/felicanetworks/mfs/view/FeliCaInUseProcessingView;
.super Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;
.source "FeliCaInUseProcessingView.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# instance fields
.field private final APPNAME_PARENTHESIS_END:Ljava/lang/String;

.field private final APPNAME_PARENTHESIS_START:Ljava/lang/String;

.field private final APPNAME_SEPARATOR:Ljava/lang/String;

.field private _activity:Landroid/app/Activity;

.field private _pid:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "pid"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;-><init>(Landroid/app/Activity;)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/mfs/view/FeliCaInUseProcessingView;->_pid:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfs/view/FeliCaInUseProcessingView;->_activity:Landroid/app/Activity;

    .line 44
    const-string v0, "["

    iput-object v0, p0, Lcom/felicanetworks/mfs/view/FeliCaInUseProcessingView;->APPNAME_PARENTHESIS_START:Ljava/lang/String;

    .line 45
    const-string v0, "]"

    iput-object v0, p0, Lcom/felicanetworks/mfs/view/FeliCaInUseProcessingView;->APPNAME_PARENTHESIS_END:Ljava/lang/String;

    .line 46
    const-string v0, "\n"

    iput-object v0, p0, Lcom/felicanetworks/mfs/view/FeliCaInUseProcessingView;->APPNAME_SEPARATOR:Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/FeliCaInUseProcessingView;->_activity:Landroid/app/Activity;

    .line 82
    iput p2, p0, Lcom/felicanetworks/mfs/view/FeliCaInUseProcessingView;->_pid:I

    .line 86
    return-void
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 286
    const/16 v0, 0x10

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 291
    const/16 v0, 0x20

    return v0
.end method

.method public onDialogButtonClick()V
    .locals 4

    .prologue
    .line 115
    const/16 v2, 0x3e8

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/felicanetworks/mfs/view/FeliCaInUseProcessingView;->transferState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v2

    iget-object v2, v2, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v2, v3, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "errorId":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/felicanetworks/mfs/view/FeliCaInUseProcessingView;->transferFatalError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSetViewParts()V
    .locals 6

    .prologue
    .line 222
    const v4, 0x7f050057

    invoke-virtual {p0, v4}, Lcom/felicanetworks/mfs/view/FeliCaInUseProcessingView;->setTitleMsg(I)V

    .line 224
    const v4, 0x7f020036

    invoke-virtual {p0, v4}, Lcom/felicanetworks/mfs/view/FeliCaInUseProcessingView;->setTitleIcon(I)V

    .line 226
    const v4, 0x7f05003e

    invoke-virtual {p0, v4}, Lcom/felicanetworks/mfs/view/FeliCaInUseProcessingView;->setBtn1Text(I)V

    .line 228
    const v4, 0x7f05001c

    invoke-virtual {p0, v4}, Lcom/felicanetworks/mfs/view/FeliCaInUseProcessingView;->setMsg1Text(I)V

    .line 230
    const-string v3, ""

    .line 237
    .local v3, "replaceStr":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v4

    iget-object v4, v4, Lcom/felicanetworks/cmnview/AppData;->appContext:Lcom/felicanetworks/cmnlib/AppContext;

    iget v5, p0, Lcom/felicanetworks/mfs/view/FeliCaInUseProcessingView;->_pid:I

    invoke-static {v4, v5}, Lcom/felicanetworks/cmnlib/util/CommonUtil;->getAppInfo(Lcom/felicanetworks/cmnlib/AppContext;I)[Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "appList":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 243
    array-length v1, v0

    .line 250
    .local v1, "appNum":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 254
    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 255
    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 256
    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 257
    add-int/lit8 v4, v1, -0x1

    if-ge v2, v4, :cond_0

    .line 262
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 250
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 248
    .end local v1    # "appNum":I
    .end local v2    # "i":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "appNum":I
    goto :goto_0

    .line 268
    .end local v0    # "appList":[Ljava/lang/String;
    .end local v1    # "appNum":I
    :catch_0
    move-exception v4

    .line 277
    :cond_2
    const v4, 0x7f05001d

    invoke-virtual {p0, v4, v3}, Lcom/felicanetworks/mfs/view/FeliCaInUseProcessingView;->setMsg2Text(ILjava/lang/String;)V

    .line 282
    return-void
.end method
