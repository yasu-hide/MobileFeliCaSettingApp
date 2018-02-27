.class public abstract Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;
.super Lcom/felicanetworks/cmnview/BaseDialogView;
.source "BaseMsg1Btn1ProgressDialogView.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$1;,
        Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;,
        Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$OnButtonClickListener;
    }
.end annotation


# instance fields
.field private _button1:Landroid/widget/Button;

.field _dialog:Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;

.field private _message1:Landroid/widget/TextView;

.field private _titleIcon:Landroid/widget/ImageView;

.field private _titleMsg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnview/BaseDialogView;-><init>(Landroid/app/Activity;)V

    .line 60
    iput-object v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;->_dialog:Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;

    .line 61
    iput-object v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;->_button1:Landroid/widget/Button;

    .line 62
    iput-object v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;->_titleIcon:Landroid/widget/ImageView;

    .line 63
    iput-object v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;->_titleMsg:Landroid/widget/TextView;

    .line 64
    iput-object v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;->_message1:Landroid/widget/TextView;

    .line 95
    return-void
.end method

.method static synthetic access$002(Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;->_titleMsg:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$102(Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;->_titleIcon:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$202(Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;->_message1:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;->_button1:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$302(Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;->_button1:Landroid/widget/Button;

    return-object p1
.end method


# virtual methods
.method public defaultButton()V
    .locals 0

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;->onDialogButtonClick()V

    .line 386
    return-void
.end method

.method public onCreateDialogView(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 121
    new-instance v0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;

    invoke-direct {v0, p0, p1}, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;-><init>(Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;->_dialog:Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;

    .line 126
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;->_dialog:Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;

    return-object v0
.end method

.method public abstract onDialogButtonClick()V
.end method

.method public abstract onSetViewParts()V
.end method

.method public setBtn1Text(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;->_button1:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 194
    return-void
.end method

.method public setMsg1Text(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;->_message1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 160
    return-void
.end method

.method public setTitleIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;->_titleIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 261
    return-void
.end method

.method public setTitleMsg(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 223
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;->_titleMsg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 227
    return-void
.end method

.method public updateProgress(I)V
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 296
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;->_dialog:Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;->_dialog:Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;

    invoke-virtual {v0, p1}, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->updateProgress(I)V

    .line 305
    :cond_0
    return-void
.end method
