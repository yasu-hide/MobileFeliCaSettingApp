.class public Lcom/felicanetworks/mfs/view/Msg1Chk1Btn1DialogView;
.super Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;
.source "Msg1Chk1Btn1DialogView.java"


# instance fields
.field protected _checkbox1:Landroid/widget/CheckBox;

.field protected _messageR:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 24
    iput-object v0, p0, Lcom/felicanetworks/mfs/view/Msg1Chk1Btn1DialogView;->_checkbox1:Landroid/widget/CheckBox;

    .line 27
    iput-object v0, p0, Lcom/felicanetworks/mfs/view/Msg1Chk1Btn1DialogView;->_messageR:Landroid/widget/TextView;

    .line 41
    return-void
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0x1f

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0x20

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/Msg1Chk1Btn1DialogView;->dispInfo:Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;

    iget v0, v0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->layoutId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/felicanetworks/mfs/view/Msg1Chk1Btn1DialogView;->dispInfo:Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;

    iget v0, v0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->layoutId:I

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f030004

    goto :goto_0
.end method

.method public onDialogButton1Click()V
    .locals 3

    .prologue
    .line 64
    iget-object v1, p0, Lcom/felicanetworks/mfs/view/Msg1Chk1Btn1DialogView;->_checkbox1:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 65
    .local v0, "c":Z
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getAppStatus()Lcom/felicanetworks/mfs/AppStatus;

    move-result-object v2

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v2, Lcom/felicanetworks/mfs/AppStatus;->chk:I

    .line 66
    invoke-super {p0}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->onDialogButton1Click()V

    .line 67
    return-void

    .line 65
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected setupLayout(Landroid/view/View;)V
    .locals 2
    .param p1, "layout"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->setupLayout(Landroid/view/View;)V

    .line 50
    const v0, 0x7f080019

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/felicanetworks/mfs/view/Msg1Chk1Btn1DialogView;->_checkbox1:Landroid/widget/CheckBox;

    .line 51
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/Msg1Chk1Btn1DialogView;->_checkbox1:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 52
    const v0, 0x7f08001a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/felicanetworks/mfs/view/Msg1Chk1Btn1DialogView;->_messageR:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/Msg1Chk1Btn1DialogView;->_messageR:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/felicanetworks/mfs/view/Msg1Chk1Btn1DialogView;->dispInfo:Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;

    iget-object v1, v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->message2Id:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 54
    return-void
.end method
