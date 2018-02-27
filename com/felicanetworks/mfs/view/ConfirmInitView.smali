.class public Lcom/felicanetworks/mfs/view/ConfirmInitView;
.super Lcom/felicanetworks/cmnview/BaseDialogView;
.source "ConfirmInitView.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfs/view/ConfirmInitView$1;,
        Lcom/felicanetworks/mfs/view/ConfirmInitView$LinkClickListener;,
        Lcom/felicanetworks/mfs/view/ConfirmInitView$On2ndButtonClockListener;,
        Lcom/felicanetworks/mfs/view/ConfirmInitView$On1stButtonClockListener;
    }
.end annotation


# instance fields
.field protected _activity:Landroid/app/Activity;

.field protected _button1:Landroid/widget/Button;

.field protected _button2:Landroid/widget/Button;

.field protected _checkbox1:Landroid/widget/CheckBox;

.field protected _linearLayoutCM:Landroid/widget/LinearLayout;

.field protected _message1:Landroid/widget/TextView;

.field protected _messageR:Landroid/widget/TextView;

.field protected _titleIcon:Landroid/widget/ImageView;

.field protected _titleMsg:Landroid/widget/TextView;

.field protected context:Lcom/felicanetworks/mfslib/MfsAppContext;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnview/BaseDialogView;-><init>(Landroid/app/Activity;)V

    .line 42
    iput-object v0, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_activity:Landroid/app/Activity;

    .line 44
    iput-object v0, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_titleMsg:Landroid/widget/TextView;

    .line 46
    iput-object v0, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_titleIcon:Landroid/widget/ImageView;

    .line 48
    iput-object v0, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_message1:Landroid/widget/TextView;

    .line 50
    iput-object v0, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_checkbox1:Landroid/widget/CheckBox;

    .line 52
    iput-object v0, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_button1:Landroid/widget/Button;

    .line 54
    iput-object v0, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_button2:Landroid/widget/Button;

    .line 56
    iput-object v0, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->context:Lcom/felicanetworks/mfslib/MfsAppContext;

    .line 58
    iput-object v0, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_linearLayoutCM:Landroid/widget/LinearLayout;

    .line 60
    iput-object v0, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_messageR:Landroid/widget/TextView;

    .line 72
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_activity:Landroid/app/Activity;

    .line 73
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v0

    iget-object v0, v0, Lcom/felicanetworks/cmnview/AppData;->appContext:Lcom/felicanetworks/cmnlib/AppContext;

    check-cast v0, Lcom/felicanetworks/mfslib/MfsAppContext;

    iput-object v0, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->context:Lcom/felicanetworks/mfslib/MfsAppContext;

    .line 74
    return-void
.end method


# virtual methods
.method public defaultButton()V
    .locals 0

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/felicanetworks/mfs/view/ConfirmInitView;->on2ndDialogButtonClick()V

    .line 149
    return-void
.end method

.method public getClassCode()I
    .locals 1

    .prologue
    .line 298
    const/16 v0, 0xb

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 302
    const/16 v0, 0x20

    return v0
.end method

.method public on1stDialogButtonClick()V
    .locals 4

    .prologue
    .line 176
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/felicanetworks/mfs/view/ConfirmInitView;->transferState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v2

    iget-object v2, v2, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v2, v3, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "errorId":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/felicanetworks/mfs/view/ConfirmInitView;->transferFatalError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public on2ndDialogButtonClick()V
    .locals 5

    .prologue
    .line 196
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getAppStatus()Lcom/felicanetworks/mfs/AppStatus;

    move-result-object v0

    .line 197
    .local v0, "appStatus":Lcom/felicanetworks/mfs/AppStatus;
    iget-object v3, v0, Lcom/felicanetworks/mfs/AppStatus;->felicaInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    sget-object v4, Lcom/felicanetworks/mfs/AppStatus$State;->CHECK_NEEDINIT:Lcom/felicanetworks/mfs/AppStatus$State;

    if-ne v3, v4, :cond_0

    .line 198
    sget-object v3, Lcom/felicanetworks/mfs/AppStatus$State;->INIT_CANCEL:Lcom/felicanetworks/mfs/AppStatus$State;

    iput-object v3, v0, Lcom/felicanetworks/mfs/AppStatus;->felicaInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    .line 200
    :cond_0
    iget-boolean v3, v0, Lcom/felicanetworks/mfs/AppStatus;->isNeedUiccInit:Z

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/felicanetworks/mfs/AppStatus;->uiccInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    sget-object v4, Lcom/felicanetworks/mfs/AppStatus$State;->CHECK_NEEDINIT:Lcom/felicanetworks/mfs/AppStatus$State;

    if-ne v3, v4, :cond_1

    .line 201
    sget-object v3, Lcom/felicanetworks/mfs/AppStatus$State;->INIT_CANCEL:Lcom/felicanetworks/mfs/AppStatus$State;

    iput-object v3, v0, Lcom/felicanetworks/mfs/AppStatus;->uiccInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    .line 203
    :cond_1
    const/16 v3, 0x1b

    invoke-virtual {p0, v3}, Lcom/felicanetworks/mfs/view/ConfirmInitView;->transferState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v0    # "appStatus":Lcom/felicanetworks/mfs/AppStatus;
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v3

    iget-object v3, v3, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v4, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v3, v4, p0, v1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "errorId":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/felicanetworks/mfs/view/ConfirmInitView;->transferFatalError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "compoundbutton"    # Landroid/widget/CompoundButton;
    .param p2, "flag"    # Z

    .prologue
    .line 159
    if-eqz p2, :cond_0

    .line 160
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_button1:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_button1:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCreateDialogView(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x0

    .line 87
    iget-object v4, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 88
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f030005

    invoke-virtual {v2, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 91
    .local v3, "layout":Landroid/view/View;
    const v4, 0x7f080013

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_titleMsg:Landroid/widget/TextView;

    .line 93
    const v4, 0x7f080012

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_titleIcon:Landroid/widget/ImageView;

    .line 95
    const v4, 0x7f080015

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_message1:Landroid/widget/TextView;

    .line 97
    const v4, 0x7f080019

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_checkbox1:Landroid/widget/CheckBox;

    .line 98
    iget-object v4, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_checkbox1:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 100
    const v4, 0x7f080011

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_button1:Landroid/widget/Button;

    .line 101
    const v4, 0x7f08001c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_button2:Landroid/widget/Button;

    .line 103
    iget-object v4, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_button1:Landroid/widget/Button;

    new-instance v5, Lcom/felicanetworks/mfs/view/ConfirmInitView$On1stButtonClockListener;

    invoke-direct {v5, p0, v6}, Lcom/felicanetworks/mfs/view/ConfirmInitView$On1stButtonClockListener;-><init>(Lcom/felicanetworks/mfs/view/ConfirmInitView;Lcom/felicanetworks/mfs/view/ConfirmInitView$1;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v4, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_button2:Landroid/widget/Button;

    new-instance v5, Lcom/felicanetworks/mfs/view/ConfirmInitView$On2ndButtonClockListener;

    invoke-direct {v5, p0, v6}, Lcom/felicanetworks/mfs/view/ConfirmInitView$On2ndButtonClockListener;-><init>(Lcom/felicanetworks/mfs/view/ConfirmInitView;Lcom/felicanetworks/mfs/view/ConfirmInitView$1;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v4, 0x7f08001b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_linearLayoutCM:Landroid/widget/LinearLayout;

    .line 108
    const v4, 0x7f08001a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_messageR:Landroid/widget/TextView;

    .line 111
    new-instance v0, Lcom/felicanetworks/mfs/view/CustomAlertDialog$Builder;

    iget-object v4, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_activity:Landroid/app/Activity;

    invoke-direct {v0, v4}, Lcom/felicanetworks/mfs/view/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 112
    .local v0, "builder":Lcom/felicanetworks/mfs/view/CustomAlertDialog$Builder;
    invoke-virtual {v0}, Lcom/felicanetworks/mfs/view/CustomAlertDialog$Builder;->create()Lcom/felicanetworks/mfs/view/CustomAlertDialog;

    move-result-object v1

    .line 115
    .local v1, "dialog":Lcom/felicanetworks/mfs/view/CustomAlertDialog;
    invoke-virtual {v1, v3}, Lcom/felicanetworks/mfs/view/CustomAlertDialog;->setCustomTitle(Landroid/view/View;)V

    .line 118
    invoke-virtual {p0}, Lcom/felicanetworks/mfs/view/ConfirmInitView;->onSetViewParts()V

    .line 120
    return-object v1
.end method

.method protected onSetViewParts()V
    .locals 8

    .prologue
    .line 217
    :try_start_0
    iget-object v5, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_titleMsg:Landroid/widget/TextView;

    const v6, 0x7f05004a

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 219
    iget-object v5, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_titleIcon:Landroid/widget/ImageView;

    const v6, 0x7f020037

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 221
    iget-object v5, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_button1:Landroid/widget/Button;

    const v6, 0x7f05002f

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 223
    iget-object v5, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_button2:Landroid/widget/Button;

    const v6, 0x7f050030

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 226
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getAppStatus()Lcom/felicanetworks/mfs/AppStatus;

    move-result-object v0

    .line 228
    .local v0, "appStatus":Lcom/felicanetworks/mfs/AppStatus;
    const/16 v4, 0x43

    .line 229
    .local v4, "sgKey":I
    iget-boolean v5, v0, Lcom/felicanetworks/mfs/AppStatus;->isNeedUiccInit:Z

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/felicanetworks/mfs/AppStatus;->uiccInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    sget-object v6, Lcom/felicanetworks/mfs/AppStatus$State;->CHECK_NEEDINIT:Lcom/felicanetworks/mfs/AppStatus$State;

    if-ne v5, v6, :cond_0

    .line 230
    iget-object v5, v0, Lcom/felicanetworks/mfs/AppStatus;->felicaInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    sget-object v6, Lcom/felicanetworks/mfs/AppStatus$State;->CHECK_NEEDINIT:Lcom/felicanetworks/mfs/AppStatus$State;

    if-ne v5, v6, :cond_1

    .line 232
    const/16 v4, 0x8d

    .line 238
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v5, v5, Lcom/felicanetworks/mfslib/MfsAppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    invoke-virtual {v5, v4}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getSgValue(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "\\n"

    const-string v7, "\n"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "baseStr":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/felicanetworks/mfs/view/ConfirmInitView;->setMsg1Text(Ljava/lang/String;)V

    .line 242
    iget-object v5, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_checkbox1:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v0    # "appStatus":Lcom/felicanetworks/mfs/AppStatus;
    .end local v1    # "baseStr":Ljava/lang/String;
    .end local v4    # "sgKey":I
    :goto_1
    return-void

    .line 235
    .restart local v0    # "appStatus":Lcom/felicanetworks/mfs/AppStatus;
    .restart local v4    # "sgKey":I
    :cond_1
    const/16 v4, 0x8c

    goto :goto_0

    .line 243
    .end local v0    # "appStatus":Lcom/felicanetworks/mfs/AppStatus;
    .end local v4    # "sgKey":I
    :catch_0
    move-exception v2

    .line 245
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v5

    iget-object v5, v5, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v6, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v5, v6, p0, v2}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, "errorId":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/felicanetworks/mfs/view/ConfirmInitView;->transferFatalError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected setMsg1Text(Ljava/lang/String;)V
    .locals 8
    .param p1, "baseStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnlib/sg/SgMgrException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 254
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->context:Lcom/felicanetworks/mfslib/MfsAppContext;

    new-instance v3, Lcom/felicanetworks/mfs/view/ConfirmInitView$LinkClickListener;

    invoke-direct {v3, p0}, Lcom/felicanetworks/mfs/view/ConfirmInitView$LinkClickListener;-><init>(Lcom/felicanetworks/mfs/view/ConfirmInitView;)V

    invoke-static {v2, p1, v3}, Lcom/felicanetworks/mfs/view/ViewUtil;->replaceDisclamerLink(Lcom/felicanetworks/mfslib/MfsAppContext;Ljava/lang/String;Lcom/felicanetworks/mfs/view/ViewUtil$ClickListener;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 255
    .local v1, "spannable":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 257
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_message1:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 258
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_message1:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_activity:Landroid/app/Activity;

    sget-object v5, Lcom/felicanetworks/mfs/R$styleable;->Theme:[I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 260
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_message1:Landroid/widget/TextView;

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 263
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_message1:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 265
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_message1:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 267
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_button1:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 270
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v2, v2, Lcom/felicanetworks/mfslib/MfsAppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    const/16 v3, 0x8e

    invoke-virtual {v2, v3}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getSgValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 271
    .local v0, "chkStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_messageR:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    .end local v0    # "chkStr":Ljava/lang/String;
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_message1:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_button1:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 276
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView;->_linearLayoutCM:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
