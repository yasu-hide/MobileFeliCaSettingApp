.class Lcom/felicanetworks/mfc/FSC$MfcConnection;
.super Ljava/lang/Object;
.source "FSC.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfc/FSC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MfcConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfc/FSC;


# direct methods
.method constructor <init>(Lcom/felicanetworks/mfc/FSC;)V
    .locals 0

    .prologue
    .line 835
    iput-object p1, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 13
    .param p1, "arg0"    # Landroid/content/ComponentName;
    .param p2, "arg1"    # Landroid/os/IBinder;

    .prologue
    .line 841
    const/4 v6, 0x3

    const-string v7, "%s %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "000 onServiceConnected"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 844
    const/4 v0, 0x0

    .line 846
    .local v0, "clientListener":Lcom/felicanetworks/mfc/FSCEventListener;
    const/4 v3, 0x0

    .line 847
    .local v3, "listenerParameter":Lcom/felicanetworks/mfc/FSC$ListenerParameter;
    const/4 v2, 0x0

    .line 851
    .local v2, "ifelica":Lcom/felicanetworks/mfc/IFelica;
    iget-object v7, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    monitor-enter v7

    .line 852
    :try_start_0
    iget-object v6, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-static {p2}, Lcom/felicanetworks/mfc/IFSC$Stub;->asInterface(Landroid/os/IBinder;)Lcom/felicanetworks/mfc/IFSC;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/felicanetworks/mfc/FSC;->access$7(Lcom/felicanetworks/mfc/FSC;Lcom/felicanetworks/mfc/IFSC;)V

    .line 854
    iget-object v6, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-static {v6}, Lcom/felicanetworks/mfc/FSC;->access$3(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/FSC$BindTimerHandler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/felicanetworks/mfc/FSC$BindTimerHandler;->stopTimer()V

    .line 856
    iget-object v6, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-static {v6}, Lcom/felicanetworks/mfc/FSC;->access$8(Lcom/felicanetworks/mfc/FSC;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_8

    .line 859
    const/4 v6, 0x7

    :try_start_1
    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "010 onServiceConnected"

    aput-object v11, v9, v10

    invoke-static {v6, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 866
    iget-object v6, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-static {v6}, Lcom/felicanetworks/mfc/FSC;->access$9(Lcom/felicanetworks/mfc/FSC;)Ljava/lang/String;

    move-result-object v5

    .line 868
    .local v5, "url":Ljava/lang/String;
    iget-object v6, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-static {v6}, Lcom/felicanetworks/mfc/FSC;->access$10(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v6

    if-nez v6, :cond_2

    .line 870
    const/4 v6, 0x1

    const-string v8, "%s %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "800 onServiceConnected"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "Felica hasn\'t been set."

    aput-object v11, v9, v10

    invoke-static {v6, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 871
    new-instance v6, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v8, 0x2

    const/16 v9, 0x18

    invoke-direct {v6, v8, v9}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v6
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 883
    .end local v5    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 884
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const/4 v6, 0x2

    :try_start_2
    const-string v8, "%s %s msg:%s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "701 onServiceConnected"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "IllegalArgumentException"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v6, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 885
    iget-object v6, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-virtual {v6, v1}, Lcom/felicanetworks/mfc/FSC;->convExceptionToListenerParameter(Ljava/lang/IllegalArgumentException;)Lcom/felicanetworks/mfc/FSC$ListenerParameter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 895
    if-eqz v3, :cond_0

    .line 896
    const/4 v6, 0x7

    :try_start_3
    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "014 onServiceConnected"

    aput-object v11, v9, v10

    invoke-static {v6, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 897
    iget-object v6, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-static {v6}, Lcom/felicanetworks/mfc/FSC;->access$0(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/FSCEventListener;

    move-result-object v0

    .line 899
    iget-object v6, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/felicanetworks/mfc/FSC;->access$6(Lcom/felicanetworks/mfc/FSC;Z)V

    .line 901
    :cond_0
    const/4 v6, 0x7

    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "010 onServiceConnected"

    aput-object v11, v9, v10

    invoke-static {v6, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 915
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    iget-object v6, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/felicanetworks/mfc/FSC;->access$13(Lcom/felicanetworks/mfc/FSC;Ljava/lang/String;)V

    .line 851
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 918
    const/4 v6, 0x7

    const-string v7, "%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "030 onServiceConnected"

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 921
    if-eqz v0, :cond_1

    .line 923
    if-eqz v2, :cond_9

    .line 924
    invoke-virtual {v3}, Lcom/felicanetworks/mfc/FSC$ListenerParameter;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    .line 925
    invoke-virtual {v3}, Lcom/felicanetworks/mfc/FSC$ListenerParameter;->getMsg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v3}, Lcom/felicanetworks/mfc/FSC$ListenerParameter;->getMsg()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FeliCa chip is not opened yet."

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 926
    const/4 v6, 0x7

    const-string v7, "%s break call back."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "011 onServiceConnected"

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 934
    :cond_1
    :goto_1
    const/4 v6, 0x3

    const-string v7, "%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "999 onServiceConnected"

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 935
    return-void

    .line 873
    .restart local v5    # "url":Ljava/lang/String;
    :cond_2
    :try_start_4
    iget-object v6, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-static {v6}, Lcom/felicanetworks/mfc/FSC;->access$10(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v6

    invoke-virtual {v6}, Lcom/felicanetworks/mfc/Felica;->getIFelica()Lcom/felicanetworks/mfc/IFelica;

    move-result-object v2

    .line 874
    if-nez v2, :cond_4

    .line 877
    const/4 v6, 0x2

    const-string v8, "%s %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "703 onServiceConnected"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "IFelica instance is not found."

    aput-object v11, v9, v10

    invoke-static {v6, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 878
    new-instance v6, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-direct {v6, v8, v9}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v6
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 886
    .end local v5    # "url":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 887
    .local v1, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v6, 0x2

    :try_start_5
    const-string v8, "%s %s id:%d type:%d"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "702 onServiceConnected"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "FelicaException"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v6, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 888
    iget-object v6, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-virtual {v6, v1}, Lcom/felicanetworks/mfc/FSC;->convExceptionToListenerParameter(Lcom/felicanetworks/mfc/FelicaException;)Lcom/felicanetworks/mfc/FSC$ListenerParameter;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v3

    .line 895
    if-eqz v3, :cond_3

    .line 896
    const/4 v6, 0x7

    :try_start_6
    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "014 onServiceConnected"

    aput-object v11, v9, v10

    invoke-static {v6, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 897
    iget-object v6, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-static {v6}, Lcom/felicanetworks/mfc/FSC;->access$0(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/FSCEventListener;

    move-result-object v0

    .line 899
    iget-object v6, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/felicanetworks/mfc/FSC;->access$6(Lcom/felicanetworks/mfc/FSC;Z)V

    .line 901
    :cond_3
    const/4 v6, 0x7

    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "010 onServiceConnected"

    aput-object v11, v9, v10

    invoke-static {v6, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 851
    .end local v1    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catchall_0
    move-exception v6

    :goto_2
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v6

    .line 881
    .restart local v5    # "url":Ljava/lang/String;
    :cond_4
    :try_start_7
    iget-object v6, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-static {v6}, Lcom/felicanetworks/mfc/FSC;->access$2(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/IFSC;

    move-result-object v6

    iget-object v8, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-static {v8}, Lcom/felicanetworks/mfc/FSC;->access$11(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/DeviceList;

    move-result-object v8

    iget-object v9, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-static {v9}, Lcom/felicanetworks/mfc/FSC;->access$12(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/IFSCEventListener;

    move-result-object v9

    invoke-interface {v6, v5, v8, v9, v2}, Lcom/felicanetworks/mfc/IFSC;->start(Ljava/lang/String;Lcom/felicanetworks/mfc/DeviceList;Lcom/felicanetworks/mfc/IFSCEventListener;Lcom/felicanetworks/mfc/IFelica;)Lcom/felicanetworks/mfc/FelicaResultInfo;

    move-result-object v6

    invoke-static {v6}, Lcom/felicanetworks/mfc/MfcUtil;->checkMfcResult(Lcom/felicanetworks/mfc/FelicaResultInfo;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 895
    if-eqz v3, :cond_5

    .line 896
    const/4 v6, 0x7

    :try_start_8
    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "014 onServiceConnected"

    aput-object v11, v9, v10

    invoke-static {v6, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 897
    iget-object v6, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-static {v6}, Lcom/felicanetworks/mfc/FSC;->access$0(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/FSCEventListener;

    move-result-object v0

    .line 899
    iget-object v6, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/felicanetworks/mfc/FSC;->access$6(Lcom/felicanetworks/mfc/FSC;Z)V

    .line 901
    :cond_5
    const/4 v6, 0x7

    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "010 onServiceConnected"

    aput-object v11, v9, v10

    invoke-static {v6, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 889
    .end local v5    # "url":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 891
    .local v1, "e":Ljava/lang/Exception;
    const/4 v6, 0x2

    :try_start_9
    const-string v8, "%s %s msg:%s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "709 onServiceConnected"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "Exception"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v6, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 892
    iget-object v6, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-virtual {v6, v1}, Lcom/felicanetworks/mfc/FSC;->convExceptionToListenerParameter(Ljava/lang/Exception;)Lcom/felicanetworks/mfc/FSC$ListenerParameter;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v3

    .line 895
    if-eqz v3, :cond_6

    .line 896
    const/4 v6, 0x7

    :try_start_a
    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "014 onServiceConnected"

    aput-object v11, v9, v10

    invoke-static {v6, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 897
    iget-object v6, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-static {v6}, Lcom/felicanetworks/mfc/FSC;->access$0(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/FSCEventListener;

    move-result-object v0

    .line 899
    iget-object v6, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/felicanetworks/mfc/FSC;->access$6(Lcom/felicanetworks/mfc/FSC;Z)V

    .line 901
    :cond_6
    const/4 v6, 0x7

    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "010 onServiceConnected"

    aput-object v11, v9, v10

    invoke-static {v6, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 893
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v6

    .line 895
    if-eqz v3, :cond_7

    .line 896
    const/4 v8, 0x7

    const-string v9, "%s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "014 onServiceConnected"

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 897
    iget-object v8, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-static {v8}, Lcom/felicanetworks/mfc/FSC;->access$0(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/FSCEventListener;

    move-result-object v0

    .line 899
    iget-object v8, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/felicanetworks/mfc/FSC;->access$6(Lcom/felicanetworks/mfc/FSC;Z)V

    .line 901
    :cond_7
    const/4 v8, 0x7

    const-string v9, "%s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "010 onServiceConnected"

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 902
    throw v6

    .line 904
    :cond_8
    const/4 v6, 0x7

    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "020 onServiceConnected"

    aput-object v11, v9, v10

    invoke-static {v6, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 906
    iget-object v6, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-static {v6}, Lcom/felicanetworks/mfc/FSC;->access$0(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/FSCEventListener;

    move-result-object v0

    .line 907
    new-instance v4, Lcom/felicanetworks/mfc/FSC$ListenerParameter;

    iget-object v6, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    const/4 v8, 0x2

    const-string v9, "Interrupted."

    invoke-direct {v4, v6, v8, v9}, Lcom/felicanetworks/mfc/FSC$ListenerParameter;-><init>(Lcom/felicanetworks/mfc/FSC;ILjava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 910
    .end local v3    # "listenerParameter":Lcom/felicanetworks/mfc/FSC$ListenerParameter;
    .local v4, "listenerParameter":Lcom/felicanetworks/mfc/FSC$ListenerParameter;
    :try_start_b
    iget-object v6, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/felicanetworks/mfc/FSC;->access$5(Lcom/felicanetworks/mfc/FSC;Z)V

    .line 911
    iget-object v6, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/felicanetworks/mfc/FSC;->access$6(Lcom/felicanetworks/mfc/FSC;Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-object v3, v4

    .end local v4    # "listenerParameter":Lcom/felicanetworks/mfc/FSC$ListenerParameter;
    .restart local v3    # "listenerParameter":Lcom/felicanetworks/mfc/FSC$ListenerParameter;
    goto/16 :goto_0

    .line 929
    :cond_9
    const/4 v6, 0x3

    const-string v7, "%s Doing the callback. type:%d, msg:%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "031 onServiceConnected"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v3}, Lcom/felicanetworks/mfc/FSC$ListenerParameter;->getType()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v3}, Lcom/felicanetworks/mfc/FSC$ListenerParameter;->getMsg()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 930
    invoke-virtual {v3}, Lcom/felicanetworks/mfc/FSC$ListenerParameter;->getType()I

    move-result v6

    invoke-virtual {v3}, Lcom/felicanetworks/mfc/FSC$ListenerParameter;->getMsg()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lcom/felicanetworks/mfc/FSCEventListener;->errorOccurred(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 851
    .end local v3    # "listenerParameter":Lcom/felicanetworks/mfc/FSC$ListenerParameter;
    .restart local v4    # "listenerParameter":Lcom/felicanetworks/mfc/FSC$ListenerParameter;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4    # "listenerParameter":Lcom/felicanetworks/mfc/FSC$ListenerParameter;
    .restart local v3    # "listenerParameter":Lcom/felicanetworks/mfc/FSC$ListenerParameter;
    goto/16 :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 11
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 942
    const-string v1, "%s %s"

    new-array v2, v10, [Ljava/lang/Object;

    const-string v3, "000 onServiceDisconnected"

    aput-object v3, v2, v8

    aput-object p1, v2, v7

    invoke-static {v9, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 943
    const/4 v0, 0x0

    .line 947
    .local v0, "clientListener":Lcom/felicanetworks/mfc/FSCEventListener;
    iget-object v2, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    monitor-enter v2

    .line 950
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-static {v1}, Lcom/felicanetworks/mfc/FSC;->access$4(Lcom/felicanetworks/mfc/FSC;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 951
    const/4 v1, 0x7

    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "001 onServiceDisconnected"

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 952
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-static {v1}, Lcom/felicanetworks/mfc/FSC;->access$0(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/FSCEventListener;

    move-result-object v0

    .line 959
    :cond_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC$MfcConnection;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/FSC;->unbindMfc()V

    .line 947
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    if-eqz v0, :cond_1

    .line 963
    const-string v1, "%s %s id:%d msg:%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "002 onServiceDisconnected"

    aput-object v3, v2, v8

    const-string v3, "Client Listener Call"

    aput-object v3, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    const-string v3, "Unknown error."

    aput-object v3, v2, v9

    invoke-static {v9, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 964
    const-string v1, "Unknown error."

    invoke-interface {v0, v7, v1}, Lcom/felicanetworks/mfc/FSCEventListener;->errorOccurred(ILjava/lang/String;)V

    .line 966
    :cond_1
    const-string v1, "%s"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "999 onServiceDisconnected"

    aput-object v3, v2, v8

    invoke-static {v9, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 967
    return-void

    .line 947
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
