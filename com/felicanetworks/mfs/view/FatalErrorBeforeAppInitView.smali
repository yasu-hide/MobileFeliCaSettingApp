.class public Lcom/felicanetworks/mfs/view/FatalErrorBeforeAppInitView;
.super Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;
.source "FatalErrorBeforeAppInitView.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# instance fields
.field private _activity:Landroid/app/Activity;

.field private _errorId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "errorId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;-><init>(Landroid/app/Activity;)V

    .line 31
    iput-object v0, p0, Lcom/felicanetworks/mfs/view/FatalErrorBeforeAppInitView;->_errorId:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/felicanetworks/mfs/view/FatalErrorBeforeAppInitView;->_activity:Landroid/app/Activity;

    .line 85
    if-eqz p2, :cond_0

    .line 86
    iput-object p2, p0, Lcom/felicanetworks/mfs/view/FatalErrorBeforeAppInitView;->_errorId:Ljava/lang/String;

    .line 92
    :goto_0
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/FatalErrorBeforeAppInitView;->_activity:Landroid/app/Activity;

    .line 100
    return-void

    .line 88
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/felicanetworks/mfs/view/FatalErrorBeforeAppInitView;->_errorId:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 251
    const/16 v0, 0xe

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 256
    const/16 v0, 0x20

    return v0
.end method

.method public onActivityDestroy()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;->onActivityDestroy()V

    .line 126
    invoke-virtual {p0}, Lcom/felicanetworks/mfs/view/FatalErrorBeforeAppInitView;->dismiss()V

    .line 127
    return-void
.end method

.method public onDialogButtonClick()V
    .locals 1

    .prologue
    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/FatalErrorBeforeAppInitView;->_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSetViewParts()V
    .locals 2

    .prologue
    .line 235
    const v0, 0x7f05005a

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/FatalErrorBeforeAppInitView;->setTitleMsg(I)V

    .line 237
    const v0, 0x7f020036

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/FatalErrorBeforeAppInitView;->setTitleIcon(I)V

    .line 239
    const v0, 0x7f050040

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/FatalErrorBeforeAppInitView;->setBtn1Text(I)V

    .line 242
    const v0, 0x7f050021

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/FatalErrorBeforeAppInitView;->setMsg1Text(I)V

    .line 243
    const v0, 0x7f050022

    iget-object v1, p0, Lcom/felicanetworks/mfs/view/FatalErrorBeforeAppInitView;->_errorId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/felicanetworks/mfs/view/FatalErrorBeforeAppInitView;->setMsg2Text(ILjava/lang/String;)V

    .line 247
    return-void
.end method
