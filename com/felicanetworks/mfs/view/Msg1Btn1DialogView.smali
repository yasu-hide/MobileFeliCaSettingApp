.class public Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;
.super Lcom/felicanetworks/cmnview/BaseDialogView;
.source "Msg1Btn1DialogView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$SetResultAction;,
        Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$TransferStateAction;,
        Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$Action;,
        Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;,
        Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$OnButton1ClickListener;
    }
.end annotation


# instance fields
.field protected activity:Landroid/app/Activity;

.field protected button1ClickAction:Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$Action;

.field protected dispInfo:Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;

.field protected inflater:Landroid/view/LayoutInflater;

.field protected name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnview/BaseDialogView;-><init>(Landroid/app/Activity;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->button1ClickAction:Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$Action;

    .line 53
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->activity:Landroid/app/Activity;

    .line 54
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->inflater:Landroid/view/LayoutInflater;

    .line 55
    iput-object p2, p0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->name:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public defaultButton()V
    .locals 0

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->onDialogButton1Click()V

    .line 160
    return-void
.end method

.method public getClassCode()I
    .locals 1

    .prologue
    .line 275
    const/16 v0, 0x1e

    return v0
.end method

.method public getDisplayInfo()Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->dispInfo:Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;

    return-object v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 279
    const/16 v0, 0x20

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->dispInfo:Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;

    iget v0, v0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->layoutId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->dispInfo:Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;

    iget v0, v0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->layoutId:I

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f030002

    goto :goto_0
.end method

.method public onCreateDialogView(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 108
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->getLayoutId()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 109
    .local v2, "layout":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->setupLayout(Landroid/view/View;)V

    .line 110
    new-instance v0, Lcom/felicanetworks/mfs/view/CustomAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/felicanetworks/mfs/view/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 111
    .local v0, "builder":Lcom/felicanetworks/mfs/view/CustomAlertDialog$Builder;
    invoke-virtual {v0}, Lcom/felicanetworks/mfs/view/CustomAlertDialog$Builder;->create()Lcom/felicanetworks/mfs/view/CustomAlertDialog;

    move-result-object v1

    .line 112
    .local v1, "dialog":Lcom/felicanetworks/mfs/view/CustomAlertDialog;
    invoke-virtual {v1, v2}, Lcom/felicanetworks/mfs/view/CustomAlertDialog;->setCustomTitle(Landroid/view/View;)V

    .line 113
    return-object v1
.end method

.method public onDialogButton1Click()V
    .locals 4

    .prologue
    .line 174
    :try_start_0
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->button1ClickAction:Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$Action;

    if-nez v2, :cond_0

    .line 175
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "clickAction is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/felicanetworks/cmnview/AppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v2

    iget-object v2, v2, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v2, v3, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "errorId":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->transferFatalError(Ljava/lang/String;)V

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "errorId":Ljava/lang/String;
    :goto_0
    return-void

    .line 177
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->button1ClickAction:Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$Action;

    invoke-interface {v2}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$Action;->action()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setButton1ClickAction(Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$Action;)Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;
    .locals 0
    .param p1, "action"    # Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$Action;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->button1ClickAction:Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$Action;

    .line 93
    return-object p0
.end method

.method public setDisplayInfo(Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->dispInfo:Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;

    .line 64
    return-void
.end method

.method protected setupLayout(Landroid/view/View;)V
    .locals 5
    .param p1, "layout"    # Landroid/view/View;

    .prologue
    .line 127
    const v4, 0x7f080012

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 128
    .local v2, "titleIcon":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->dispInfo:Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;

    iget-object v4, v4, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->titleIconId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    const v4, 0x7f080013

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 130
    .local v3, "titleMsg":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->dispInfo:Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;

    iget-object v4, v4, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->titleMsgId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 131
    const v4, 0x7f080015

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 132
    .local v1, "message1":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->dispInfo:Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;

    iget-object v4, v4, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->message1Id:Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 133
    iget-object v4, p0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->dispInfo:Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;

    iget-object v4, v4, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->message1Id:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 137
    :goto_0
    const v4, 0x7f080011

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 138
    .local v0, "button1":Landroid/widget/Button;
    iget-object v4, p0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->dispInfo:Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;

    iget-object v4, v4, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->button1Id:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 139
    new-instance v4, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$OnButton1ClickListener;

    invoke-direct {v4, p0}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$OnButton1ClickListener;-><init>(Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void

    .line 135
    .end local v0    # "button1":Landroid/widget/Button;
    :cond_0
    iget-object v4, p0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->dispInfo:Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;

    iget-object v4, v4, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->message1Str:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
