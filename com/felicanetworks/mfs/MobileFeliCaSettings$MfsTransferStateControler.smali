.class public Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;
.super Lcom/felicanetworks/cmnview/AbstractTransferStateCommon;
.source "MobileFeliCaSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfs/MobileFeliCaSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MfsTransferStateControler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;


# direct methods
.method protected constructor <init>(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)V
    .locals 0

    .prologue
    .line 905
    iput-object p1, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-direct {p0}, Lcom/felicanetworks/cmnview/AbstractTransferStateCommon;-><init>()V

    return-void
.end method


# virtual methods
.method protected getViewLayer()Lcom/felicanetworks/cmnview/ViewLayer;
    .locals 1

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v0}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v0

    return-object v0
.end method

.method protected isActivityAlive()Z
    .locals 1

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v0}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$500(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Z

    move-result v0

    return v0
.end method

.method protected isFatalErrorScreen(Lcom/felicanetworks/cmnview/BaseView;)Z
    .locals 1
    .param p1, "view"    # Lcom/felicanetworks/cmnview/BaseView;

    .prologue
    .line 1308
    instance-of v0, p1, Lcom/felicanetworks/mfs/view/FatalErrorView;

    return v0
.end method

.method public onTransferState(ILcom/felicanetworks/cmnview/TransferStateData;Lcom/felicanetworks/cmnview/TransferSenderInfo;)V
    .locals 16
    .param p1, "id"    # I
    .param p2, "data"    # Lcom/felicanetworks/cmnview/TransferStateData;
    .param p3, "sndInfo"    # Lcom/felicanetworks/cmnview/TransferSenderInfo;

    .prologue
    .line 922
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$002(I)I

    .line 923
    invoke-static/range {p2 .. p2}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$102(Lcom/felicanetworks/cmnview/TransferStateData;)Lcom/felicanetworks/cmnview/TransferStateData;

    .line 928
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getAppStatus()Lcom/felicanetworks/mfs/AppStatus;

    move-result-object v1

    .line 930
    .local v1, "appStatus":Lcom/felicanetworks/mfs/AppStatus;
    sparse-switch p1, :sswitch_data_0

    .line 1256
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    const/16 v13, 0x6e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-virtual {v14}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->getFatalErrorResultIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1259
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    iget-object v12, v12, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    instance-of v12, v12, Lcom/felicanetworks/mfs/view/FatalErrorView;

    if-nez v12, :cond_1

    .line 1263
    const/4 v4, 0x0

    .line 1264
    .local v4, "fe_errorId":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1268
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/felicanetworks/cmnview/TransferStateData;->errorId:Ljava/lang/String;

    .line 1270
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    new-instance v13, Lcom/felicanetworks/mfs/view/FatalErrorView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-direct {v13, v14, v4}, Lcom/felicanetworks/mfs/view/FatalErrorView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 1271
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v13}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v13

    iget-object v13, v13, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1296
    .end local v1    # "appStatus":Lcom/felicanetworks/mfs/AppStatus;
    .end local v4    # "fe_errorId":Ljava/lang/String;
    .end local p2    # "data":Lcom/felicanetworks/cmnview/TransferStateData;
    :cond_1
    :goto_0
    return-void

    .line 935
    .restart local v1    # "appStatus":Lcom/felicanetworks/mfs/AppStatus;
    .restart local p2    # "data":Lcom/felicanetworks/cmnview/TransferStateData;
    :sswitch_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    new-instance v13, Lcom/felicanetworks/mfs/view/StartingView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-direct {v13, v14}, Lcom/felicanetworks/mfs/view/StartingView;-><init>(Landroid/app/Activity;)V

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->windowView:Lcom/felicanetworks/cmnview/BaseWindowView;

    .line 936
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 937
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v13}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v13

    iget-object v13, v13, Lcom/felicanetworks/cmnview/ViewLayer;->windowView:Lcom/felicanetworks/cmnview/BaseWindowView;

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1282
    .end local v1    # "appStatus":Lcom/felicanetworks/mfs/AppStatus;
    .end local p2    # "data":Lcom/felicanetworks/cmnview/TransferStateData;
    :catch_0
    move-exception v2

    .line 1287
    .local v2, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$400(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v12

    iget-object v12, v12, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v13, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-virtual {v12, v13, v14, v2}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    .line 1288
    .local v3, "errorId":Ljava/lang/String;
    invoke-static {v3}, Lcom/felicanetworks/cmnview/TransferState;->transferFatalError(Ljava/lang/String;)V

    goto :goto_0

    .line 944
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "errorId":Ljava/lang/String;
    .restart local v1    # "appStatus":Lcom/felicanetworks/mfs/AppStatus;
    .restart local p2    # "data":Lcom/felicanetworks/cmnview/TransferStateData;
    :sswitch_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    new-instance v13, Lcom/felicanetworks/mfs/view/BackScreenView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-direct {v13, v14}, Lcom/felicanetworks/mfs/view/BackScreenView;-><init>(Landroid/app/Activity;)V

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->windowView:Lcom/felicanetworks/cmnview/BaseWindowView;

    .line 945
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    new-instance v13, Lcom/felicanetworks/mfs/view/ConfirmInitView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-direct {v13, v14}, Lcom/felicanetworks/mfs/view/ConfirmInitView;-><init>(Landroid/app/Activity;)V

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 946
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v13}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v13

    iget-object v13, v13, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    goto/16 :goto_0

    .line 953
    :sswitch_2
    iget-object v12, v1, Lcom/felicanetworks/mfs/AppStatus;->felicaInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    sget-object v13, Lcom/felicanetworks/mfs/AppStatus$State;->CHECK_NEEDINIT:Lcom/felicanetworks/mfs/AppStatus$State;

    if-ne v12, v13, :cond_2

    .line 957
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    new-instance v13, Lcom/felicanetworks/mfs/view/RunningInitView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-direct {v13, v14}, Lcom/felicanetworks/mfs/view/RunningInitView;-><init>(Landroid/app/Activity;)V

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 958
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v13}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v13

    iget-object v13, v13, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    goto/16 :goto_0

    .line 965
    :cond_2
    const/16 v12, 0x19

    invoke-static {v12}, Lcom/felicanetworks/cmnview/TransferState;->transferState(I)V

    goto/16 :goto_0

    .line 973
    :sswitch_3
    iget-boolean v12, v1, Lcom/felicanetworks/mfs/AppStatus;->isNeedUiccInit:Z

    if-eqz v12, :cond_3

    iget-object v12, v1, Lcom/felicanetworks/mfs/AppStatus;->uiccInitState:Lcom/felicanetworks/mfs/AppStatus$State;

    sget-object v13, Lcom/felicanetworks/mfs/AppStatus$State;->CHECK_NEEDINIT:Lcom/felicanetworks/mfs/AppStatus$State;

    if-ne v12, v13, :cond_3

    .line 977
    const/16 v12, 0x18

    invoke-static {v12}, Lcom/felicanetworks/cmnview/TransferState;->transferState(I)V

    goto/16 :goto_0

    .line 983
    :cond_3
    const/16 v12, 0x1b

    invoke-static {v12}, Lcom/felicanetworks/cmnview/TransferState;->transferState(I)V

    goto/16 :goto_0

    .line 991
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-virtual {v14}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->getResultIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->setResult(ILandroid/content/Intent;)V

    .line 992
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    new-instance v13, Lcom/felicanetworks/mfs/view/CompleteInitView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-direct {v13, v14}, Lcom/felicanetworks/mfs/view/CompleteInitView;-><init>(Landroid/app/Activity;)V

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 993
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v13}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v13

    iget-object v13, v13, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    goto/16 :goto_0

    .line 1000
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-virtual {v14}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->getResultIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->setResult(ILandroid/content/Intent;)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    new-instance v13, Lcom/felicanetworks/mfs/view/BackScreenView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-direct {v13, v14}, Lcom/felicanetworks/mfs/view/BackScreenView;-><init>(Landroid/app/Activity;)V

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->windowView:Lcom/felicanetworks/cmnview/BaseWindowView;

    .line 1002
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    new-instance v13, Lcom/felicanetworks/mfs/view/AlreadyInitView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-direct {v13, v14}, Lcom/felicanetworks/mfs/view/AlreadyInitView;-><init>(Landroid/app/Activity;)V

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 1003
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v13}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v13

    iget-object v13, v13, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    goto/16 :goto_0

    .line 1010
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    new-instance v13, Lcom/felicanetworks/mfs/view/BackScreenView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-direct {v13, v14}, Lcom/felicanetworks/mfs/view/BackScreenView;-><init>(Landroid/app/Activity;)V

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->windowView:Lcom/felicanetworks/cmnview/BaseWindowView;

    .line 1011
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 1012
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v13}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v13

    iget-object v13, v13, Lcom/felicanetworks/cmnview/ViewLayer;->windowView:Lcom/felicanetworks/cmnview/BaseWindowView;

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    .line 1013
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-virtual {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->startUiccActivity()V

    goto/16 :goto_0

    .line 1020
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$300(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)V

    goto/16 :goto_0

    .line 1027
    :sswitch_8
    const/4 v6, 0x0

    .line 1028
    .local v6, "fiu_pid":I
    move-object/from16 v0, p2

    instance-of v12, v0, Lcom/felicanetworks/mfs/MfsTransferStateData;

    if-eqz v12, :cond_4

    .line 1032
    check-cast p2, Lcom/felicanetworks/mfs/MfsTransferStateData;

    .end local p2    # "data":Lcom/felicanetworks/cmnview/TransferStateData;
    move-object/from16 v0, p2

    iget v6, v0, Lcom/felicanetworks/mfs/MfsTransferStateData;->pid:I

    .line 1034
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    const/16 v13, 0x68

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-virtual {v14}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->getResultIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->setResult(ILandroid/content/Intent;)V

    .line 1035
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    new-instance v13, Lcom/felicanetworks/mfs/view/BackScreenView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-direct {v13, v14}, Lcom/felicanetworks/mfs/view/BackScreenView;-><init>(Landroid/app/Activity;)V

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->windowView:Lcom/felicanetworks/cmnview/BaseWindowView;

    .line 1036
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    new-instance v13, Lcom/felicanetworks/mfs/view/FeliCaInUseView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-direct {v13, v14, v6}, Lcom/felicanetworks/mfs/view/FeliCaInUseView;-><init>(Landroid/app/Activity;I)V

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 1037
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v13}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v13

    iget-object v13, v13, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    goto/16 :goto_0

    .line 1044
    .end local v6    # "fiu_pid":I
    .restart local p2    # "data":Lcom/felicanetworks/cmnview/TransferStateData;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    const/16 v13, 0x69

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-virtual {v14}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->getResultIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->setResult(ILandroid/content/Intent;)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    new-instance v13, Lcom/felicanetworks/mfs/view/BackScreenView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-direct {v13, v14}, Lcom/felicanetworks/mfs/view/BackScreenView;-><init>(Landroid/app/Activity;)V

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->windowView:Lcom/felicanetworks/cmnview/BaseWindowView;

    .line 1046
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    new-instance v13, Lcom/felicanetworks/mfs/view/FeliCaLockView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-direct {v13, v14}, Lcom/felicanetworks/mfs/view/FeliCaLockView;-><init>(Landroid/app/Activity;)V

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 1047
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v13}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v13

    iget-object v13, v13, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    goto/16 :goto_0

    .line 1054
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-virtual {v14}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->getResultIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->setResult(ILandroid/content/Intent;)V

    .line 1055
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    new-instance v13, Lcom/felicanetworks/mfs/view/CancelInitView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-direct {v13, v14}, Lcom/felicanetworks/mfs/view/CancelInitView;-><init>(Landroid/app/Activity;)V

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 1056
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v13}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v13

    iget-object v13, v13, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    goto/16 :goto_0

    .line 1063
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    const/16 v13, 0x6a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-virtual {v14}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->getResultIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->setResult(ILandroid/content/Intent;)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    new-instance v13, Lcom/felicanetworks/mfs/view/FailedInitView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-direct {v13, v14}, Lcom/felicanetworks/mfs/view/FailedInitView;-><init>(Landroid/app/Activity;)V

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 1065
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v13}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v13

    iget-object v13, v13, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    goto/16 :goto_0

    .line 1072
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    const/16 v13, 0x6b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-virtual {v14}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->getResultIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->setResult(ILandroid/content/Intent;)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    new-instance v13, Lcom/felicanetworks/mfs/view/CommunicationErrorView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-direct {v13, v14}, Lcom/felicanetworks/mfs/view/CommunicationErrorView;-><init>(Landroid/app/Activity;)V

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 1074
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v13}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v13

    iget-object v13, v13, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    goto/16 :goto_0

    .line 1081
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    const/16 v13, 0x6c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-virtual {v14}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->getResultIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->setResult(ILandroid/content/Intent;)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    new-instance v13, Lcom/felicanetworks/mfs/view/OvercrowdingErrorView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-direct {v13, v14}, Lcom/felicanetworks/mfs/view/OvercrowdingErrorView;-><init>(Landroid/app/Activity;)V

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 1083
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v13}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v13

    iget-object v13, v13, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    goto/16 :goto_0

    .line 1090
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    const/16 v13, 0x6d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-virtual {v14}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->getResultIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->setResult(ILandroid/content/Intent;)V

    .line 1091
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    new-instance v13, Lcom/felicanetworks/mfs/view/ServerMaintenanceErrorView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-direct {v13, v14}, Lcom/felicanetworks/mfs/view/ServerMaintenanceErrorView;-><init>(Landroid/app/Activity;)V

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 1092
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v13}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v13

    iget-object v13, v13, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    goto/16 :goto_0

    .line 1099
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    new-instance v13, Lcom/felicanetworks/mfs/view/LogSendingView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-direct {v13, v14}, Lcom/felicanetworks/mfs/view/LogSendingView;-><init>(Landroid/app/Activity;)V

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->windowView:Lcom/felicanetworks/cmnview/BaseWindowView;

    .line 1100
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v13}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v13

    iget-object v13, v13, Lcom/felicanetworks/cmnview/ViewLayer;->windowView:Lcom/felicanetworks/cmnview/BaseWindowView;

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    goto/16 :goto_0

    .line 1107
    :sswitch_10
    const/4 v7, 0x0

    .line 1108
    .local v7, "fiup_pid":I
    move-object/from16 v0, p2

    instance-of v12, v0, Lcom/felicanetworks/mfs/MfsTransferStateData;

    if-eqz v12, :cond_5

    .line 1112
    check-cast p2, Lcom/felicanetworks/mfs/MfsTransferStateData;

    .end local p2    # "data":Lcom/felicanetworks/cmnview/TransferStateData;
    move-object/from16 v0, p2

    iget v7, v0, Lcom/felicanetworks/mfs/MfsTransferStateData;->pid:I

    .line 1114
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    const/16 v13, 0x68

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-virtual {v14}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->getResultIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->setResult(ILandroid/content/Intent;)V

    .line 1115
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    new-instance v13, Lcom/felicanetworks/mfs/view/FeliCaInUseProcessingView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-direct {v13, v14, v7}, Lcom/felicanetworks/mfs/view/FeliCaInUseProcessingView;-><init>(Landroid/app/Activity;I)V

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 1116
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v13}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v13

    iget-object v13, v13, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    goto/16 :goto_0

    .line 1123
    .end local v7    # "fiup_pid":I
    .restart local p2    # "data":Lcom/felicanetworks/cmnview/TransferStateData;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    const/16 v13, 0x69

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-virtual {v14}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->getResultIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->setResult(ILandroid/content/Intent;)V

    .line 1124
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    new-instance v13, Lcom/felicanetworks/mfs/view/FeliCaLockProcessingView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-direct {v13, v14}, Lcom/felicanetworks/mfs/view/FeliCaLockProcessingView;-><init>(Landroid/app/Activity;)V

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 1125
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v13}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v13

    iget-object v13, v13, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    goto/16 :goto_0

    .line 1132
    :sswitch_12
    const/4 v10, 0x0

    .line 1133
    .local v10, "mpiErrId":Ljava/lang/String;
    if-eqz p2, :cond_6

    .line 1137
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/felicanetworks/cmnview/TransferStateData;->errorId:Ljava/lang/String;

    .line 1139
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    const/16 v13, 0x6e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-virtual {v14}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->getFatalErrorResultIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->setResult(ILandroid/content/Intent;)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    new-instance v13, Lcom/felicanetworks/mfs/view/BackScreenView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-direct {v13, v14}, Lcom/felicanetworks/mfs/view/BackScreenView;-><init>(Landroid/app/Activity;)V

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->windowView:Lcom/felicanetworks/cmnview/BaseWindowView;

    .line 1141
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    new-instance v13, Lcom/felicanetworks/mfs/view/FeliCaSignatureFailedView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-direct {v13, v14, v10}, Lcom/felicanetworks/mfs/view/FeliCaSignatureFailedView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 1142
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v13}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v13

    iget-object v13, v13, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    goto/16 :goto_0

    .line 1149
    .end local v10    # "mpiErrId":Ljava/lang/String;
    :sswitch_13
    const/4 v8, 0x0

    .line 1150
    .local v8, "ftoErrId":Ljava/lang/String;
    if-eqz p2, :cond_7

    .line 1154
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/felicanetworks/cmnview/TransferStateData;->errorId:Ljava/lang/String;

    .line 1156
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    const/16 v13, 0x6e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-virtual {v14}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->getFatalErrorResultIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->setResult(ILandroid/content/Intent;)V

    .line 1157
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    new-instance v13, Lcom/felicanetworks/mfs/view/BackScreenView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-direct {v13, v14}, Lcom/felicanetworks/mfs/view/BackScreenView;-><init>(Landroid/app/Activity;)V

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->windowView:Lcom/felicanetworks/cmnview/BaseWindowView;

    .line 1158
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    new-instance v13, Lcom/felicanetworks/mfs/view/FeliCaTimeoutView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-direct {v13, v14, v8}, Lcom/felicanetworks/mfs/view/FeliCaTimeoutView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 1159
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v13}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v13

    iget-object v13, v13, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    goto/16 :goto_0

    .line 1166
    .end local v8    # "ftoErrId":Ljava/lang/String;
    :sswitch_14
    const/4 v9, 0x0

    .line 1167
    .local v9, "moErrId":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1168
    .local v5, "fei":Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;
    if-eqz p2, :cond_8

    .line 1172
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/felicanetworks/cmnview/TransferStateData;->errorId:Ljava/lang/String;

    .line 1173
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/felicanetworks/cmnview/TransferStateData;->felicaErrInfo:Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    .line 1175
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    const/16 v13, 0x6e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-virtual {v14}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->getFatalErrorResultIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->setResult(ILandroid/content/Intent;)V

    .line 1176
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    new-instance v13, Lcom/felicanetworks/mfs/view/BackScreenView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-direct {v13, v14}, Lcom/felicanetworks/mfs/view/BackScreenView;-><init>(Landroid/app/Activity;)V

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->windowView:Lcom/felicanetworks/cmnview/BaseWindowView;

    .line 1177
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    new-instance v13, Lcom/felicanetworks/mfs/view/FeliCaOtherErrorView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-direct {v13, v14, v9, v5}, Lcom/felicanetworks/mfs/view/FeliCaOtherErrorView;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 1178
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v13}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v13

    iget-object v13, v13, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    goto/16 :goto_0

    .line 1187
    .end local v5    # "fei":Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;
    .end local v9    # "moErrId":Ljava/lang/String;
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-virtual {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->finish()V

    goto/16 :goto_0

    .line 1194
    :sswitch_16
    move-object/from16 v0, p2

    check-cast v0, Lcom/felicanetworks/mfs/MfsTransferStateData_Result;

    move-object v11, v0

    .line 1195
    .local v11, "rd":Lcom/felicanetworks/mfs/MfsTransferStateData_Result;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    iget v13, v11, Lcom/felicanetworks/mfs/MfsTransferStateData_Result;->result:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-virtual {v14}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->getResultIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->setResult(ILandroid/content/Intent;)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-virtual {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->finish()V

    goto/16 :goto_0

    .line 1203
    .end local v11    # "rd":Lcom/felicanetworks/mfs/MfsTransferStateData_Result;
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    iget-object v14, v1, Lcom/felicanetworks/mfs/AppStatus;->gpasException:Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;

    invoke-static {v13, v14}, Lcom/felicanetworks/mfs/view/ViewFactory;->createGpasErrorView(Landroid/app/Activity;Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;)Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;

    move-result-object v13

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 1204
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v13}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v13

    iget-object v13, v13, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    goto/16 :goto_0

    .line 1211
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    iget-boolean v14, v1, Lcom/felicanetworks/mfs/AppStatus;->isNeedcheckbox:Z

    invoke-static {v13, v14}, Lcom/felicanetworks/mfs/view/ViewFactory;->createSuccessCancelView(Landroid/app/Activity;Z)Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;

    move-result-object v13

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 1212
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v13}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v13

    iget-object v13, v13, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    goto/16 :goto_0

    .line 1219
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    iget-boolean v14, v1, Lcom/felicanetworks/mfs/AppStatus;->isNeedcheckbox:Z

    invoke-static {v13, v14}, Lcom/felicanetworks/mfs/view/ViewFactory;->createSuccessFailedView(Landroid/app/Activity;Z)Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;

    move-result-object v13

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 1220
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v13}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v13

    iget-object v13, v13, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    goto/16 :goto_0

    .line 1227
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    iget-boolean v14, v1, Lcom/felicanetworks/mfs/AppStatus;->isNeedcheckbox:Z

    invoke-static {v13, v14}, Lcom/felicanetworks/mfs/view/ViewFactory;->createUiccCancelView(Landroid/app/Activity;Z)Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;

    move-result-object v13

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 1228
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v13}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v13

    iget-object v13, v13, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    goto/16 :goto_0

    .line 1235
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    iget-boolean v14, v1, Lcom/felicanetworks/mfs/AppStatus;->isNeedcheckbox:Z

    invoke-static {v13, v14}, Lcom/felicanetworks/mfs/view/ViewFactory;->createUiccFailedView(Landroid/app/Activity;Z)Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;

    move-result-object v13

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 1236
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v13}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v13

    iget-object v13, v13, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    goto/16 :goto_0

    .line 1243
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    iget-boolean v14, v1, Lcom/felicanetworks/mfs/AppStatus;->isNeedcheckbox:Z

    iget-object v15, v1, Lcom/felicanetworks/mfs/AppStatus;->gpasException:Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;

    invoke-static {v13, v14, v15}, Lcom/felicanetworks/mfs/view/ViewFactory;->createSuccessGpasErrorView(Landroid/app/Activity;ZLcom/felicanetworks/mfsctrl/gpas/GpasAccessException;)Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;

    move-result-object v13

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    .line 1244
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v13}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$200(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/cmnview/ViewLayer;

    move-result-object v13

    iget-object v13, v13, Lcom/felicanetworks/cmnview/ViewLayer;->dialogView:Lcom/felicanetworks/cmnview/BaseDialogView;

    iput-object v13, v12, Lcom/felicanetworks/cmnview/ViewLayer;->activeView:Lcom/felicanetworks/cmnview/BaseView;

    goto/16 :goto_0

    .line 1273
    :catch_1
    move-exception v2

    .line 1278
    .restart local v2    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$MfsTransferStateControler;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-virtual {v12}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->finish()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 930
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_8
        0x7 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0xc -> :sswitch_d
        0xd -> :sswitch_e
        0xf -> :sswitch_f
        0x11 -> :sswitch_10
        0x12 -> :sswitch_11
        0x15 -> :sswitch_12
        0x16 -> :sswitch_13
        0x17 -> :sswitch_14
        0x18 -> :sswitch_6
        0x19 -> :sswitch_3
        0x1a -> :sswitch_16
        0x1b -> :sswitch_7
        0x1c -> :sswitch_17
        0x1e -> :sswitch_18
        0x1f -> :sswitch_19
        0x20 -> :sswitch_1a
        0x21 -> :sswitch_1b
        0x22 -> :sswitch_1c
        0x3e8 -> :sswitch_15
        0x3e9 -> :sswitch_15
    .end sparse-switch
.end method
