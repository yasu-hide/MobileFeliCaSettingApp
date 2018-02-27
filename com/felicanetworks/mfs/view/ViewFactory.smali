.class public Lcom/felicanetworks/mfs/view/ViewFactory;
.super Ljava/lang/Object;
.source "ViewFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGpasErrorView(Landroid/app/Activity;Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;)Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "exception"    # Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;

    .prologue
    .line 33
    new-instance v0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;

    const-string v3, "GpasErrorView"

    invoke-direct {v0, p0, v3}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 34
    .local v0, "dialog":Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;
    new-instance v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;

    invoke-direct {v1}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;-><init>()V

    .line 35
    .local v1, "info":Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;
    const v3, 0x7f020036

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->titleIconId:Ljava/lang/Integer;

    .line 36
    const v3, 0x7f05005e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->titleMsgId:Ljava/lang/Integer;

    .line 37
    const v3, 0x7f050029

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;->getGpasErrorInfo()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "s":Ljava/lang/String;
    iput-object v2, v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->message1Str:Ljava/lang/String;

    .line 39
    const v3, 0x7f050044

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->button1Id:Ljava/lang/Integer;

    .line 40
    invoke-virtual {v0, v1}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->setDisplayInfo(Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;)V

    .line 41
    new-instance v3, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$SetResultAction;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x79

    invoke-direct {v3, v0, v4}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$SetResultAction;-><init>(Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;I)V

    invoke-virtual {v0, v3}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->setButton1ClickAction(Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$Action;)Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;

    .line 42
    return-object v0
.end method

.method public static createSuccessCancelView(Landroid/app/Activity;Z)Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "needcheckbox"    # Z

    .prologue
    .line 59
    if-eqz p1, :cond_0

    .line 60
    new-instance v0, Lcom/felicanetworks/mfs/view/Msg1Chk1Btn1DialogView;

    const-string v2, "SuccessCancelView"

    invoke-direct {v0, p0, v2}, Lcom/felicanetworks/mfs/view/Msg1Chk1Btn1DialogView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 64
    .local v0, "dialog":Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;
    :goto_0
    new-instance v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;

    invoke-direct {v1}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;-><init>()V

    .line 65
    .local v1, "info":Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;
    const v2, 0x7f020037

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->titleIconId:Ljava/lang/Integer;

    .line 66
    const v2, 0x7f05005f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->titleMsgId:Ljava/lang/Integer;

    .line 67
    const v2, 0x7f05002a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->message1Id:Ljava/lang/Integer;

    .line 68
    const v2, 0x7f050064

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->message2Id:Ljava/lang/Integer;

    .line 69
    const v2, 0x7f050045

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->button1Id:Ljava/lang/Integer;

    .line 70
    invoke-virtual {v0, v1}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->setDisplayInfo(Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;)V

    .line 71
    new-instance v2, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$SetResultAction;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$SetResultAction;-><init>(Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;I)V

    invoke-virtual {v0, v2}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->setButton1ClickAction(Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$Action;)Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;

    .line 72
    return-object v0

    .line 62
    .end local v0    # "dialog":Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;
    .end local v1    # "info":Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;
    :cond_0
    new-instance v0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;

    const-string v2, "SuccessCancelView"

    invoke-direct {v0, p0, v2}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .restart local v0    # "dialog":Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;
    goto :goto_0
.end method

.method public static createSuccessFailedView(Landroid/app/Activity;Z)Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "needcheckbox"    # Z

    .prologue
    .line 89
    if-eqz p1, :cond_0

    .line 90
    new-instance v0, Lcom/felicanetworks/mfs/view/Msg1Chk1Btn1DialogView;

    const-string v2, "SuccessFailedView"

    invoke-direct {v0, p0, v2}, Lcom/felicanetworks/mfs/view/Msg1Chk1Btn1DialogView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 94
    .local v0, "dialog":Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;
    :goto_0
    new-instance v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;

    invoke-direct {v1}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;-><init>()V

    .line 95
    .local v1, "info":Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;
    const v2, 0x7f020036

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->titleIconId:Ljava/lang/Integer;

    .line 96
    const v2, 0x7f050060

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->titleMsgId:Ljava/lang/Integer;

    .line 97
    const v2, 0x7f05002b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->message1Id:Ljava/lang/Integer;

    .line 98
    const v2, 0x7f050064

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->message2Id:Ljava/lang/Integer;

    .line 99
    const v2, 0x7f050046

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->button1Id:Ljava/lang/Integer;

    .line 100
    invoke-virtual {v0, v1}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->setDisplayInfo(Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;)V

    .line 101
    new-instance v2, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$SetResultAction;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x6a

    invoke-direct {v2, v0, v3}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$SetResultAction;-><init>(Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;I)V

    invoke-virtual {v0, v2}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->setButton1ClickAction(Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$Action;)Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;

    .line 102
    return-object v0

    .line 92
    .end local v0    # "dialog":Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;
    .end local v1    # "info":Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;
    :cond_0
    new-instance v0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;

    const-string v2, "SuccessFailedView"

    invoke-direct {v0, p0, v2}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .restart local v0    # "dialog":Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;
    goto :goto_0
.end method

.method public static createSuccessGpasErrorView(Landroid/app/Activity;ZLcom/felicanetworks/mfsctrl/gpas/GpasAccessException;)Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "needcheckbox"    # Z
    .param p2, "exception"    # Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;

    .prologue
    .line 180
    if-eqz p1, :cond_0

    .line 181
    new-instance v0, Lcom/felicanetworks/mfs/view/Msg1Chk1Btn1DialogView;

    const-string v3, "SuccessGpasErrorView"

    invoke-direct {v0, p0, v3}, Lcom/felicanetworks/mfs/view/Msg1Chk1Btn1DialogView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 185
    .local v0, "dialog":Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;
    :goto_0
    new-instance v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;

    invoke-direct {v1}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;-><init>()V

    .line 186
    .local v1, "info":Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;
    const v3, 0x7f020036

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->titleIconId:Ljava/lang/Integer;

    .line 187
    const v3, 0x7f050063

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->titleMsgId:Ljava/lang/Integer;

    .line 188
    const v3, 0x7f05002e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;->getGpasErrorInfo()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "s":Ljava/lang/String;
    iput-object v2, v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->message1Str:Ljava/lang/String;

    .line 190
    const v3, 0x7f050064

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->message2Id:Ljava/lang/Integer;

    .line 191
    const v3, 0x7f050049

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->button1Id:Ljava/lang/Integer;

    .line 192
    invoke-virtual {v0, v1}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->setDisplayInfo(Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;)V

    .line 193
    new-instance v3, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$SetResultAction;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x79

    invoke-direct {v3, v0, v4}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$SetResultAction;-><init>(Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;I)V

    invoke-virtual {v0, v3}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->setButton1ClickAction(Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$Action;)Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;

    .line 194
    return-object v0

    .line 183
    .end local v0    # "dialog":Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;
    .end local v1    # "info":Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;

    const-string v3, "SuccessGpasErrorView"

    invoke-direct {v0, p0, v3}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .restart local v0    # "dialog":Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;
    goto :goto_0
.end method

.method public static createUiccCancelView(Landroid/app/Activity;Z)Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "needcheckbox"    # Z

    .prologue
    .line 119
    if-eqz p1, :cond_0

    .line 120
    new-instance v0, Lcom/felicanetworks/mfs/view/Msg1Chk1Btn1DialogView;

    const-string v2, "UiccCancelView"

    invoke-direct {v0, p0, v2}, Lcom/felicanetworks/mfs/view/Msg1Chk1Btn1DialogView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 124
    .local v0, "dialog":Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;
    :goto_0
    new-instance v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;

    invoke-direct {v1}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;-><init>()V

    .line 125
    .local v1, "info":Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;
    const v2, 0x7f020037

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->titleIconId:Ljava/lang/Integer;

    .line 126
    const v2, 0x7f050061

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->titleMsgId:Ljava/lang/Integer;

    .line 127
    const v2, 0x7f05002c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->message1Id:Ljava/lang/Integer;

    .line 128
    const v2, 0x7f050064

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->message2Id:Ljava/lang/Integer;

    .line 129
    const v2, 0x7f050047

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->button1Id:Ljava/lang/Integer;

    .line 130
    invoke-virtual {v0, v1}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->setDisplayInfo(Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;)V

    .line 131
    new-instance v2, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$SetResultAction;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$SetResultAction;-><init>(Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;I)V

    invoke-virtual {v0, v2}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->setButton1ClickAction(Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$Action;)Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;

    .line 132
    return-object v0

    .line 122
    .end local v0    # "dialog":Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;
    .end local v1    # "info":Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;
    :cond_0
    new-instance v0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;

    const-string v2, "UiccCancelView"

    invoke-direct {v0, p0, v2}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .restart local v0    # "dialog":Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;
    goto :goto_0
.end method

.method public static createUiccFailedView(Landroid/app/Activity;Z)Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "needcheckbox"    # Z

    .prologue
    .line 149
    if-eqz p1, :cond_0

    .line 150
    new-instance v0, Lcom/felicanetworks/mfs/view/Msg1Chk1Btn1DialogView;

    const-string v2, "UiccFailedView"

    invoke-direct {v0, p0, v2}, Lcom/felicanetworks/mfs/view/Msg1Chk1Btn1DialogView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 154
    .local v0, "dialog":Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;
    :goto_0
    new-instance v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;

    invoke-direct {v1}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;-><init>()V

    .line 155
    .local v1, "info":Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;
    const v2, 0x7f020036

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->titleIconId:Ljava/lang/Integer;

    .line 156
    const v2, 0x7f050062

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->titleMsgId:Ljava/lang/Integer;

    .line 157
    const v2, 0x7f05002d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->message1Id:Ljava/lang/Integer;

    .line 158
    const v2, 0x7f050064

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->message2Id:Ljava/lang/Integer;

    .line 159
    const v2, 0x7f050048

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;->button1Id:Ljava/lang/Integer;

    .line 160
    invoke-virtual {v0, v1}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->setDisplayInfo(Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;)V

    .line 161
    new-instance v2, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$SetResultAction;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x6a

    invoke-direct {v2, v0, v3}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$SetResultAction;-><init>(Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;I)V

    invoke-virtual {v0, v2}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->setButton1ClickAction(Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$Action;)Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;

    .line 162
    return-object v0

    .line 152
    .end local v0    # "dialog":Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;
    .end local v1    # "info":Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$DisplayInfo;
    :cond_0
    new-instance v0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;

    const-string v2, "UiccFailedView"

    invoke-direct {v0, p0, v2}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .restart local v0    # "dialog":Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;
    goto :goto_0
.end method
