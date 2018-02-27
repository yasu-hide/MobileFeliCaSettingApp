.class public Lcom/felicanetworks/mfs/view/MultiplexStartView;
.super Lcom/felicanetworks/mfs/view/BaseMsg1Btn1DialogView;
.source "MultiplexStartView.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# instance fields
.field private _activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1DialogView;-><init>(Landroid/app/Activity;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfs/view/MultiplexStartView;->_activity:Landroid/app/Activity;

    .line 65
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/MultiplexStartView;->_activity:Landroid/app/Activity;

    .line 71
    return-void
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 180
    const/16 v0, 0x15

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 185
    const/16 v0, 0x20

    return v0
.end method

.method public onDialogButtonClick()V
    .locals 1

    .prologue
    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/MultiplexStartView;->_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSetViewParts()V
    .locals 1

    .prologue
    .line 166
    const v0, 0x7f050050

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/MultiplexStartView;->setTitleMsg(I)V

    .line 168
    const v0, 0x7f020036

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/MultiplexStartView;->setTitleIcon(I)V

    .line 170
    const v0, 0x7f050036

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/MultiplexStartView;->setBtn1Text(I)V

    .line 172
    const v0, 0x7f050014

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfs/view/MultiplexStartView;->setMsg1Text(I)V

    .line 176
    return-void
.end method
