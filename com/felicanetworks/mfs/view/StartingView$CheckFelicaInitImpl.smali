.class public Lcom/felicanetworks/mfs/view/StartingView$CheckFelicaInitImpl;
.super Ljava/lang/Object;
.source "StartingView.java"

# interfaces
.implements Lcom/felicanetworks/mfsctrl/CheckInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfs/view/StartingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CheckFelicaInitImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfs/view/StartingView;


# direct methods
.method protected constructor <init>(Lcom/felicanetworks/mfs/view/StartingView;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckFelicaInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 8
    .param p1, "chipStatus"    # I

    .prologue
    .line 153
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckFelicaInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    iget-object v2, v2, Lcom/felicanetworks/mfs/view/StartingView;->appStatus:Lcom/felicanetworks/mfs/AppStatus;

    iput p1, v2, Lcom/felicanetworks/mfs/AppStatus;->felicaStatus:I

    .line 155
    packed-switch p1, :pswitch_data_0

    .line 177
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v2

    iget-object v2, v2, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v4, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckFelicaInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Other Error at Complete Parame "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "errorId":Ljava/lang/String;
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckFelicaInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    invoke-virtual {v2, v1}, Lcom/felicanetworks/mfs/view/StartingView;->transferFatalError(Ljava/lang/String;)V

    .line 191
    .end local v1    # "errorId":Ljava/lang/String;
    :goto_0
    return-void

    .line 161
    :pswitch_0
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckFelicaInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    iget-object v2, v2, Lcom/felicanetworks/mfs/view/StartingView;->appStatus:Lcom/felicanetworks/mfs/AppStatus;

    sget-object v3, Lcom/felicanetworks/mfs/AppStatus$State;->CHECK_NEEDINIT:Lcom/felicanetworks/mfs/AppStatus$State;

    iput-object v3, v2, Lcom/felicanetworks/mfs/AppStatus;->felicaInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    .line 162
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckFelicaInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    invoke-virtual {v2}, Lcom/felicanetworks/mfs/view/StartingView;->startCheckInitializeUicc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v2

    iget-object v2, v2, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v4, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckFelicaInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    invoke-virtual {v2, v3, v4, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .restart local v1    # "errorId":Ljava/lang/String;
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckFelicaInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    invoke-virtual {v2, v1}, Lcom/felicanetworks/mfs/view/StartingView;->transferFatalError(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "errorId":Ljava/lang/String;
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckFelicaInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    iget-object v2, v2, Lcom/felicanetworks/mfs/view/StartingView;->appStatus:Lcom/felicanetworks/mfs/AppStatus;

    sget-object v3, Lcom/felicanetworks/mfs/AppStatus$State;->CHECK_DONEINIT:Lcom/felicanetworks/mfs/AppStatus$State;

    iput-object v3, v2, Lcom/felicanetworks/mfs/AppStatus;->felicaInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    .line 170
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckFelicaInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    invoke-virtual {v2}, Lcom/felicanetworks/mfs/view/StartingView;->startCheckInitializeUicc()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onError(ILjava/lang/String;Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V
    .locals 6
    .param p1, "errType"    # I
    .param p2, "errCode"    # Ljava/lang/String;
    .param p3, "felicaErrInfo"    # Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    .prologue
    .line 301
    :try_start_0
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckFelicaInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    iget-object v3, v3, Lcom/felicanetworks/mfs/view/StartingView;->appStatus:Lcom/felicanetworks/mfs/AppStatus;

    sget-object v4, Lcom/felicanetworks/mfs/AppStatus$State;->CHECK_FAILED:Lcom/felicanetworks/mfs/AppStatus$State;

    iput-object v4, v3, Lcom/felicanetworks/mfs/AppStatus;->felicaInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    .line 302
    new-instance v2, Lcom/felicanetworks/mfs/MfsTransferStateData;

    invoke-direct {v2}, Lcom/felicanetworks/mfs/MfsTransferStateData;-><init>()V

    .line 303
    .local v2, "tData":Lcom/felicanetworks/mfs/MfsTransferStateData;
    packed-switch p1, :pswitch_data_0

    .line 334
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckFelicaInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    invoke-virtual {v3, p2}, Lcom/felicanetworks/mfs/view/StartingView;->transferFatalError(Ljava/lang/String;)V

    .line 347
    .end local v2    # "tData":Lcom/felicanetworks/mfs/MfsTransferStateData;
    :goto_0
    return-void

    .line 309
    .restart local v2    # "tData":Lcom/felicanetworks/mfs/MfsTransferStateData;
    :pswitch_0
    iput-object p2, v2, Lcom/felicanetworks/mfs/MfsTransferStateData;->errorId:Ljava/lang/String;

    .line 310
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckFelicaInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    const/16 v4, 0x15

    invoke-virtual {v3, v4, v2}, Lcom/felicanetworks/mfs/view/StartingView;->transferState(ILcom/felicanetworks/cmnview/TransferStateData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 337
    .end local v2    # "tData":Lcom/felicanetworks/mfs/MfsTransferStateData;
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v3

    iget-object v3, v3, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v4, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v5, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckFelicaInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    invoke-virtual {v3, v4, v5, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "errorId":Ljava/lang/String;
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckFelicaInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    invoke-virtual {v3, v1}, Lcom/felicanetworks/mfs/view/StartingView;->transferFatalError(Ljava/lang/String;)V

    goto :goto_0

    .line 317
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "errorId":Ljava/lang/String;
    .restart local v2    # "tData":Lcom/felicanetworks/mfs/MfsTransferStateData;
    :pswitch_1
    :try_start_1
    iput-object p2, v2, Lcom/felicanetworks/mfs/MfsTransferStateData;->errorId:Ljava/lang/String;

    .line 318
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckFelicaInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    const/16 v4, 0x16

    invoke-virtual {v3, v4, v2}, Lcom/felicanetworks/mfs/view/StartingView;->transferState(ILcom/felicanetworks/cmnview/TransferStateData;)V

    goto :goto_0

    .line 325
    :pswitch_2
    iput-object p2, v2, Lcom/felicanetworks/mfs/MfsTransferStateData;->errorId:Ljava/lang/String;

    .line 326
    iput-object p3, v2, Lcom/felicanetworks/mfs/MfsTransferStateData;->felicaErrInfo:Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    .line 327
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckFelicaInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    const/16 v4, 0x17

    invoke-virtual {v3, v4, v2}, Lcom/felicanetworks/mfs/view/StartingView;->transferState(ILcom/felicanetworks/cmnview/TransferStateData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onWarning(II)V
    .locals 7
    .param p1, "warnCode"    # I
    .param p2, "data"    # I

    .prologue
    .line 236
    :try_start_0
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckFelicaInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    iget-object v3, v3, Lcom/felicanetworks/mfs/view/StartingView;->appStatus:Lcom/felicanetworks/mfs/AppStatus;

    sget-object v4, Lcom/felicanetworks/mfs/AppStatus$State;->CHECK_FAILED:Lcom/felicanetworks/mfs/AppStatus$State;

    iput-object v4, v3, Lcom/felicanetworks/mfs/AppStatus;->felicaInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    .line 237
    packed-switch p1, :pswitch_data_0

    .line 259
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v3

    iget-object v3, v3, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v4, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v5, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckFelicaInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v3, v4, v5, v6}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "errorId":Ljava/lang/String;
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckFelicaInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    invoke-virtual {v3, v1}, Lcom/felicanetworks/mfs/view/StartingView;->transferFatalError(Ljava/lang/String;)V

    .line 273
    .end local v1    # "errorId":Ljava/lang/String;
    :goto_0
    return-void

    .line 243
    :pswitch_0
    new-instance v2, Lcom/felicanetworks/mfs/MfsTransferStateData;

    invoke-direct {v2}, Lcom/felicanetworks/mfs/MfsTransferStateData;-><init>()V

    .line 244
    .local v2, "sndData":Lcom/felicanetworks/mfs/MfsTransferStateData;
    iput p2, v2, Lcom/felicanetworks/mfs/MfsTransferStateData;->pid:I

    .line 245
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckFelicaInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v2}, Lcom/felicanetworks/mfs/view/StartingView;->transferState(ILcom/felicanetworks/cmnview/TransferStateData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    .end local v2    # "sndData":Lcom/felicanetworks/mfs/MfsTransferStateData;
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v3

    iget-object v3, v3, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v4, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v5, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckFelicaInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    invoke-virtual {v3, v4, v5, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 268
    .restart local v1    # "errorId":Ljava/lang/String;
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckFelicaInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    invoke-virtual {v3, v1}, Lcom/felicanetworks/mfs/view/StartingView;->transferFatalError(Ljava/lang/String;)V

    goto :goto_0

    .line 252
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "errorId":Ljava/lang/String;
    :pswitch_1
    :try_start_1
    iget-object v3, p0, Lcom/felicanetworks/mfs/view/StartingView$CheckFelicaInitImpl;->this$0:Lcom/felicanetworks/mfs/view/StartingView;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/felicanetworks/mfs/view/StartingView;->transferState(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
