.class public abstract Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;
.super Lcom/felicanetworks/cmnview/BaseDialogView;
.source "BaseMsg2Btn1DialogView.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView$1;,
        Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView$OnButtonClockListener;
    }
.end annotation


# instance fields
.field private final REGULAR_EXPRESSION:Ljava/lang/String;

.field private _activity:Landroid/app/Activity;

.field private _button1:Landroid/widget/Button;

.field private _message1:Landroid/widget/TextView;

.field private _message2:Landroid/widget/TextView;

.field private _titleIcon:Landroid/widget/ImageView;

.field private _titleMsg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnview/BaseDialogView;-><init>(Landroid/app/Activity;)V

    .line 42
    iput-object v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;->_activity:Landroid/app/Activity;

    .line 43
    iput-object v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;->_titleIcon:Landroid/widget/ImageView;

    .line 44
    iput-object v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;->_titleMsg:Landroid/widget/TextView;

    .line 45
    iput-object v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;->_message1:Landroid/widget/TextView;

    .line 46
    iput-object v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;->_message2:Landroid/widget/TextView;

    .line 47
    iput-object v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;->_button1:Landroid/widget/Button;

    .line 49
    const-string v0, "%s"

    iput-object v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;->REGULAR_EXPRESSION:Ljava/lang/String;

    .line 81
    return-void
.end method


# virtual methods
.method public defaultButton()V
    .locals 0

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;->onDialogButtonClick()V

    .line 582
    return-void
.end method

.method public onCreateDialogView(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x0

    .line 165
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;->_activity:Landroid/app/Activity;

    .line 167
    const/4 v1, 0x0

    .line 168
    .local v1, "dialog":Lcom/felicanetworks/mfs/view/CustomAlertDialog;
    const/4 v0, 0x0

    .line 169
    .local v0, "builder":Lcom/felicanetworks/mfs/view/CustomAlertDialog$Builder;
    const/4 v2, 0x0

    .line 170
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const/4 v3, 0x0

    .line 173
    .local v3, "layout":Landroid/view/View;
    iget-object v4, p0, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;->_activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 174
    const v4, 0x7f030006

    invoke-virtual {v2, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 177
    const v4, 0x7f080013

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;->_titleMsg:Landroid/widget/TextView;

    .line 179
    const v4, 0x7f080012

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;->_titleIcon:Landroid/widget/ImageView;

    .line 182
    const v4, 0x7f080015

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;->_message1:Landroid/widget/TextView;

    .line 183
    const v4, 0x7f08001d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;->_message2:Landroid/widget/TextView;

    .line 186
    const v4, 0x7f080011

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;->_button1:Landroid/widget/Button;

    .line 188
    iget-object v4, p0, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;->_button1:Landroid/widget/Button;

    new-instance v5, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView$OnButtonClockListener;

    invoke-direct {v5, p0, v6}, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView$OnButtonClockListener;-><init>(Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView$1;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    new-instance v0, Lcom/felicanetworks/mfs/view/CustomAlertDialog$Builder;

    .end local v0    # "builder":Lcom/felicanetworks/mfs/view/CustomAlertDialog$Builder;
    iget-object v4, p0, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;->_activity:Landroid/app/Activity;

    invoke-direct {v0, v4}, Lcom/felicanetworks/mfs/view/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 192
    .restart local v0    # "builder":Lcom/felicanetworks/mfs/view/CustomAlertDialog$Builder;
    invoke-virtual {v0}, Lcom/felicanetworks/mfs/view/CustomAlertDialog$Builder;->create()Lcom/felicanetworks/mfs/view/CustomAlertDialog;

    move-result-object v1

    .line 194
    invoke-virtual {v1, v3}, Lcom/felicanetworks/mfs/view/CustomAlertDialog;->setCustomTitle(Landroid/view/View;)V

    .line 197
    invoke-virtual {p0}, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;->onSetViewParts()V

    .line 210
    return-object v1
.end method

.method public abstract onDialogButtonClick()V
.end method

.method public abstract onSetViewParts()V
.end method

.method public setBtn1Text(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 431
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;->_button1:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 435
    return-void
.end method

.method public setMsg1Text(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 287
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;->_message1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 291
    return-void
.end method

.method public setMsg1Text(ILjava/lang/String;)V
    .locals 3
    .param p1, "resId"    # I
    .param p2, "replaceStr"    # Ljava/lang/String;

    .prologue
    .line 248
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;->_activity:Landroid/app/Activity;

    invoke-virtual {v2, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "resStr":Ljava/lang/String;
    const-string v2, "%s"

    invoke-virtual {v0, v2, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;->_message1:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    return-void
.end method

.method public setMsg2Text(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 364
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;->_message2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 368
    return-void
.end method

.method public setMsg2Text(ILjava/lang/String;)V
    .locals 3
    .param p1, "resId"    # I
    .param p2, "replaceStr"    # Ljava/lang/String;

    .prologue
    .line 327
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;->_activity:Landroid/app/Activity;

    invoke-virtual {v2, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "resStr":Ljava/lang/String;
    const-string v2, "%s"

    invoke-virtual {v0, v2, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;->_message2:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    return-void
.end method

.method public setMsg2Text(Ljava/lang/String;)V
    .locals 1
    .param p1, "replaceStr"    # Ljava/lang/String;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;->_message2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    return-void
.end method

.method public setTitleIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 498
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;->_titleIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 502
    return-void
.end method

.method public setTitleMsg(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 464
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;->_titleMsg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 468
    return-void
.end method
