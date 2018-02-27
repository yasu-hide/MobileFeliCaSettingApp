.class Lcom/felicanetworks/mfc/Felica$MfcConnection;
.super Ljava/lang/Object;
.source "Felica.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfc/Felica;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MfcConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfc/Felica;


# direct methods
.method constructor <init>(Lcom/felicanetworks/mfc/Felica;)V
    .locals 0

    .prologue
    .line 2825
    iput-object p1, p0, Lcom/felicanetworks/mfc/Felica$MfcConnection;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 14
    .param p1, "arg0"    # Landroid/content/ComponentName;
    .param p2, "arg1"    # Landroid/os/IBinder;

    .prologue
    .line 2837
    const/4 v7, 0x3

    const-string v8, "%s %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "000"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2839
    const/4 v1, 0x0

    .line 2841
    .local v1, "appListener":Lcom/felicanetworks/mfc/FelicaEventListener;
    const/4 v6, 0x1

    .line 2842
    .local v6, "type":I
    const/4 v4, 0x0

    .line 2843
    .local v4, "msg":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2847
    .local v0, "appInfo":Lcom/felicanetworks/mfc/AppInfo;
    iget-object v8, p0, Lcom/felicanetworks/mfc/Felica$MfcConnection;->this$0:Lcom/felicanetworks/mfc/Felica;

    monitor-enter v8

    .line 2849
    :try_start_0
    iget-object v7, p0, Lcom/felicanetworks/mfc/Felica$MfcConnection;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-static/range {p2 .. p2}, Lcom/felicanetworks/mfc/IFelica$Stub;->asInterface(Landroid/os/IBinder;)Lcom/felicanetworks/mfc/IFelica;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/felicanetworks/mfc/Felica;->access$5(Lcom/felicanetworks/mfc/Felica;Lcom/felicanetworks/mfc/IFelica;)V

    .line 2850
    iget-object v7, p0, Lcom/felicanetworks/mfc/Felica$MfcConnection;->this$0:Lcom/felicanetworks/mfc/Felica;

    const/4 v9, 0x0

    invoke-static {v7, v9}, Lcom/felicanetworks/mfc/Felica;->access$6(Lcom/felicanetworks/mfc/Felica;Z)V

    .line 2852
    iget-object v7, p0, Lcom/felicanetworks/mfc/Felica$MfcConnection;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-static {v7}, Lcom/felicanetworks/mfc/Felica;->access$2(Lcom/felicanetworks/mfc/Felica;)Lcom/felicanetworks/mfc/Felica$BindTimerHandler;

    move-result-object v7

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/Felica$BindTimerHandler;->stopTimer()V

    .line 2861
    iget-object v7, p0, Lcom/felicanetworks/mfc/Felica$MfcConnection;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-static {v7}, Lcom/felicanetworks/mfc/Felica;->access$0(Lcom/felicanetworks/mfc/Felica;)Lcom/felicanetworks/mfc/FelicaEventListener;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 2862
    const/4 v7, 0x7

    const-string v9, "%s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "001"

    aput-object v12, v10, v11

    invoke-static {v7, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2863
    const/4 v3, 0x0

    .line 2866
    .local v3, "isError":Z
    :try_start_1
    iget-object v7, p0, Lcom/felicanetworks/mfc/Felica$MfcConnection;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-static {v7}, Lcom/felicanetworks/mfc/Felica;->access$4(Lcom/felicanetworks/mfc/Felica;)Lcom/felicanetworks/mfc/IFelica;

    move-result-object v7

    iget-object v9, p0, Lcom/felicanetworks/mfc/Felica$MfcConnection;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-static {v9}, Lcom/felicanetworks/mfc/Felica;->access$8(Lcom/felicanetworks/mfc/Felica;)[Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/felicanetworks/mfc/Felica$MfcConnection;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-static {v10}, Lcom/felicanetworks/mfc/Felica;->access$9(Lcom/felicanetworks/mfc/Felica;)Lcom/felicanetworks/mfc/IFelicaEventListener;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Lcom/felicanetworks/mfc/IFelica;->activateFelica([Ljava/lang/String;Lcom/felicanetworks/mfc/IFelicaEventListener;)Lcom/felicanetworks/mfc/FelicaResultInfo;

    move-result-object v5

    .line 2867
    .local v5, "result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    invoke-static {v5}, Lcom/felicanetworks/mfc/MfcUtil;->checkMfcResult(Lcom/felicanetworks/mfc/FelicaResultInfo;)V
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2894
    const/4 v7, 0x7

    :try_start_2
    const-string v9, "%s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "010"

    aput-object v12, v10, v11

    invoke-static {v7, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2896
    iget-object v7, p0, Lcom/felicanetworks/mfc/Felica$MfcConnection;->this$0:Lcom/felicanetworks/mfc/Felica;

    const/4 v9, 0x0

    invoke-static {v7, v9}, Lcom/felicanetworks/mfc/Felica;->access$7(Lcom/felicanetworks/mfc/Felica;[Ljava/lang/String;)V

    .line 2898
    if-eqz v3, :cond_0

    .line 2899
    const/4 v7, 0x7

    const-string v9, "%s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "011"

    aput-object v12, v10, v11

    invoke-static {v7, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2901
    iget-object v7, p0, Lcom/felicanetworks/mfc/Felica$MfcConnection;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-static {v7}, Lcom/felicanetworks/mfc/Felica;->access$0(Lcom/felicanetworks/mfc/Felica;)Lcom/felicanetworks/mfc/FelicaEventListener;

    move-result-object v1

    .line 2902
    iget-object v7, p0, Lcom/felicanetworks/mfc/Felica$MfcConnection;->this$0:Lcom/felicanetworks/mfc/Felica;

    const/4 v9, 0x0

    invoke-static {v7, v9}, Lcom/felicanetworks/mfc/Felica;->access$1(Lcom/felicanetworks/mfc/Felica;Lcom/felicanetworks/mfc/FelicaEventListener;)V

    .line 2903
    iget-object v7, p0, Lcom/felicanetworks/mfc/Felica$MfcConnection;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/Felica;->unbindMfc()V

    .line 2847
    .end local v3    # "isError":Z
    .end local v5    # "result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_0
    :goto_0
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2913
    const/4 v7, 0x7

    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "700"

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2916
    if-eqz v1, :cond_1

    .line 2917
    const/4 v7, 0x3

    const-string v8, "%s Do the callback"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "020"

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2918
    invoke-interface {v1, v6, v4, v0}, Lcom/felicanetworks/mfc/FelicaEventListener;->errorOccurred(ILjava/lang/String;Lcom/felicanetworks/mfc/AppInfo;)V

    .line 2920
    :cond_1
    const/4 v7, 0x3

    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "999"

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2921
    return-void

    .line 2868
    .restart local v3    # "isError":Z
    :catch_0
    move-exception v2

    .line 2869
    .local v2, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v7, 0x7

    :try_start_3
    const-string v9, "%s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "002"

    aput-object v12, v10, v11

    invoke-static {v7, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2870
    invoke-virtual {v2}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 2883
    :pswitch_0
    const/4 v7, 0x2

    const-string v9, "%s FelicaException id:%d type:%d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "702"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v2}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v2}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2887
    :goto_1
    const/4 v3, 0x1

    .line 2894
    const/4 v7, 0x7

    :try_start_4
    const-string v9, "%s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "010"

    aput-object v12, v10, v11

    invoke-static {v7, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2896
    iget-object v7, p0, Lcom/felicanetworks/mfc/Felica$MfcConnection;->this$0:Lcom/felicanetworks/mfc/Felica;

    const/4 v9, 0x0

    invoke-static {v7, v9}, Lcom/felicanetworks/mfc/Felica;->access$7(Lcom/felicanetworks/mfc/Felica;[Ljava/lang/String;)V

    .line 2898
    if-eqz v3, :cond_0

    .line 2899
    const/4 v7, 0x7

    const-string v9, "%s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "011"

    aput-object v12, v10, v11

    invoke-static {v7, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2901
    iget-object v7, p0, Lcom/felicanetworks/mfc/Felica$MfcConnection;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-static {v7}, Lcom/felicanetworks/mfc/Felica;->access$0(Lcom/felicanetworks/mfc/Felica;)Lcom/felicanetworks/mfc/FelicaEventListener;

    move-result-object v1

    .line 2902
    iget-object v7, p0, Lcom/felicanetworks/mfc/Felica$MfcConnection;->this$0:Lcom/felicanetworks/mfc/Felica;

    const/4 v9, 0x0

    invoke-static {v7, v9}, Lcom/felicanetworks/mfc/Felica;->access$1(Lcom/felicanetworks/mfc/Felica;Lcom/felicanetworks/mfc/FelicaEventListener;)V

    .line 2903
    iget-object v7, p0, Lcom/felicanetworks/mfc/Felica$MfcConnection;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/Felica;->unbindMfc()V

    goto/16 :goto_0

    .line 2847
    .end local v2    # "e":Lcom/felicanetworks/mfc/FelicaException;
    .end local v3    # "isError":Z
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .line 2873
    .restart local v2    # "e":Lcom/felicanetworks/mfc/FelicaException;
    .restart local v3    # "isError":Z
    :pswitch_1
    const/4 v6, 0x7

    .line 2874
    :try_start_5
    invoke-virtual {v2}, Lcom/felicanetworks/mfc/FelicaException;->getOtherAppInfo()Lcom/felicanetworks/mfc/AppInfo;

    move-result-object v0

    .line 2875
    const/4 v7, 0x2

    const-string v9, "%s FelicaException id:%d type:%d pid%d"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "700"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v2}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v2}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aput-object v4, v10, v11

    const/4 v11, 0x4

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/AppInfo;->getPid()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 2893
    .end local v2    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catchall_1
    move-exception v7

    .line 2894
    const/4 v9, 0x7

    :try_start_6
    const-string v10, "%s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "010"

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2896
    iget-object v9, p0, Lcom/felicanetworks/mfc/Felica$MfcConnection;->this$0:Lcom/felicanetworks/mfc/Felica;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/felicanetworks/mfc/Felica;->access$7(Lcom/felicanetworks/mfc/Felica;[Ljava/lang/String;)V

    .line 2898
    if-eqz v3, :cond_2

    .line 2899
    const/4 v9, 0x7

    const-string v10, "%s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "011"

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2901
    iget-object v9, p0, Lcom/felicanetworks/mfc/Felica$MfcConnection;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-static {v9}, Lcom/felicanetworks/mfc/Felica;->access$0(Lcom/felicanetworks/mfc/Felica;)Lcom/felicanetworks/mfc/FelicaEventListener;

    move-result-object v1

    .line 2902
    iget-object v9, p0, Lcom/felicanetworks/mfc/Felica$MfcConnection;->this$0:Lcom/felicanetworks/mfc/Felica;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/felicanetworks/mfc/Felica;->access$1(Lcom/felicanetworks/mfc/Felica;Lcom/felicanetworks/mfc/FelicaEventListener;)V

    .line 2903
    iget-object v9, p0, Lcom/felicanetworks/mfc/Felica$MfcConnection;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/Felica;->unbindMfc()V

    .line 2905
    :cond_2
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2879
    .restart local v2    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :pswitch_2
    const/4 v6, 0x1

    .line 2880
    const/4 v7, 0x2

    :try_start_7
    const-string v9, "%s FelicaException id:%d type:%d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "701"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v2}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v2}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2888
    .end local v2    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catch_1
    move-exception v2

    .line 2890
    .local v2, "e":Ljava/lang/Exception;
    const/4 v7, 0x2

    const-string v9, "%s Exception %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "703"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2892
    const/4 v3, 0x1

    .line 2894
    const/4 v7, 0x7

    :try_start_8
    const-string v9, "%s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "010"

    aput-object v12, v10, v11

    invoke-static {v7, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2896
    iget-object v7, p0, Lcom/felicanetworks/mfc/Felica$MfcConnection;->this$0:Lcom/felicanetworks/mfc/Felica;

    const/4 v9, 0x0

    invoke-static {v7, v9}, Lcom/felicanetworks/mfc/Felica;->access$7(Lcom/felicanetworks/mfc/Felica;[Ljava/lang/String;)V

    .line 2898
    if-eqz v3, :cond_0

    .line 2899
    const/4 v7, 0x7

    const-string v9, "%s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "011"

    aput-object v12, v10, v11

    invoke-static {v7, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2901
    iget-object v7, p0, Lcom/felicanetworks/mfc/Felica$MfcConnection;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-static {v7}, Lcom/felicanetworks/mfc/Felica;->access$0(Lcom/felicanetworks/mfc/Felica;)Lcom/felicanetworks/mfc/FelicaEventListener;

    move-result-object v1

    .line 2902
    iget-object v7, p0, Lcom/felicanetworks/mfc/Felica$MfcConnection;->this$0:Lcom/felicanetworks/mfc/Felica;

    const/4 v9, 0x0

    invoke-static {v7, v9}, Lcom/felicanetworks/mfc/Felica;->access$1(Lcom/felicanetworks/mfc/Felica;Lcom/felicanetworks/mfc/FelicaEventListener;)V

    .line 2903
    iget-object v7, p0, Lcom/felicanetworks/mfc/Felica$MfcConnection;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/Felica;->unbindMfc()V

    goto/16 :goto_0

    .line 2908
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "isError":Z
    :cond_3
    const/4 v7, 0x2

    const-string v9, "%s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "704"

    aput-object v12, v10, v11

    invoke-static {v7, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2910
    iget-object v7, p0, Lcom/felicanetworks/mfc/Felica$MfcConnection;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/Felica;->unbindMfc()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 2870
    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 14
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    const/4 v13, 0x7

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2928
    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "000"

    aput-object v6, v5, v10

    aput-object p1, v5, v11

    invoke-static {v12, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2930
    const/4 v1, 0x0

    .line 2931
    .local v1, "appListener":Lcom/felicanetworks/mfc/FelicaEventListener;
    const/4 v3, 0x1

    .line 2932
    .local v3, "type":I
    const-string v2, "Unknown error."

    .line 2933
    .local v2, "msg":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2936
    .local v0, "appInfo":Lcom/felicanetworks/mfc/AppInfo;
    iget-object v5, p0, Lcom/felicanetworks/mfc/Felica$MfcConnection;->this$0:Lcom/felicanetworks/mfc/Felica;

    monitor-enter v5

    .line 2937
    :try_start_0
    iget-object v4, p0, Lcom/felicanetworks/mfc/Felica$MfcConnection;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-static {v4}, Lcom/felicanetworks/mfc/Felica;->access$0(Lcom/felicanetworks/mfc/Felica;)Lcom/felicanetworks/mfc/FelicaEventListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2938
    const/4 v4, 0x7

    const-string v6, "%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "001"

    aput-object v9, v7, v8

    invoke-static {v4, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2939
    iget-object v4, p0, Lcom/felicanetworks/mfc/Felica$MfcConnection;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-static {v4}, Lcom/felicanetworks/mfc/Felica;->access$0(Lcom/felicanetworks/mfc/Felica;)Lcom/felicanetworks/mfc/FelicaEventListener;

    move-result-object v1

    .line 2940
    iget-object v4, p0, Lcom/felicanetworks/mfc/Felica$MfcConnection;->this$0:Lcom/felicanetworks/mfc/Felica;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/felicanetworks/mfc/Felica;->access$1(Lcom/felicanetworks/mfc/Felica;Lcom/felicanetworks/mfc/FelicaEventListener;)V

    .line 2944
    :cond_0
    iget-object v4, p0, Lcom/felicanetworks/mfc/Felica$MfcConnection;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-virtual {v4}, Lcom/felicanetworks/mfc/Felica;->unbindMfc()V

    .line 2936
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2946
    if-eqz v1, :cond_1

    .line 2947
    const-string v4, "%s"

    new-array v5, v11, [Ljava/lang/Object;

    const-string v6, "002"

    aput-object v6, v5, v10

    invoke-static {v13, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2948
    invoke-interface {v1, v3, v2, v0}, Lcom/felicanetworks/mfc/FelicaEventListener;->errorOccurred(ILjava/lang/String;Lcom/felicanetworks/mfc/AppInfo;)V

    .line 2950
    :cond_1
    const-string v4, "%s"

    new-array v5, v11, [Ljava/lang/Object;

    const-string v6, "999"

    aput-object v6, v5, v10

    invoke-static {v12, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2951
    return-void

    .line 2936
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
