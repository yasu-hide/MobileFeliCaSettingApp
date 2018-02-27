.class Lcom/felicanetworks/mfc/Felica$FelicaEventListenerStub;
.super Lcom/felicanetworks/mfc/IFelicaEventListener$Stub;
.source "Felica.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfc/Felica;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FelicaEventListenerStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfc/Felica;


# direct methods
.method constructor <init>(Lcom/felicanetworks/mfc/Felica;)V
    .locals 0

    .prologue
    .line 2539
    iput-object p1, p0, Lcom/felicanetworks/mfc/Felica$FelicaEventListenerStub;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-direct {p0}, Lcom/felicanetworks/mfc/IFelicaEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public errorOccurred(ILjava/lang/String;Lcom/felicanetworks/mfc/AppInfo;)V
    .locals 12
    .param p1, "id"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "otherAppInfo"    # Lcom/felicanetworks/mfc/AppInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2545
    const-string v2, "%s"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "000"

    aput-object v4, v3, v9

    invoke-static {v11, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2547
    const/4 v0, 0x0

    .line 2548
    .local v0, "appListener":Lcom/felicanetworks/mfc/FelicaEventListener;
    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica$FelicaEventListenerStub;->this$0:Lcom/felicanetworks/mfc/Felica;

    monitor-enter v3

    .line 2549
    const/4 v2, 0x7

    :try_start_0
    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "001"

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2551
    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica$FelicaEventListenerStub;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-static {v2}, Lcom/felicanetworks/mfc/Felica;->access$0(Lcom/felicanetworks/mfc/Felica;)Lcom/felicanetworks/mfc/FelicaEventListener;

    move-result-object v0

    .line 2552
    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica$FelicaEventListenerStub;->this$0:Lcom/felicanetworks/mfc/Felica;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/felicanetworks/mfc/Felica;->access$1(Lcom/felicanetworks/mfc/Felica;Lcom/felicanetworks/mfc/FelicaEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2555
    :try_start_1
    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica$FelicaEventListenerStub;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-virtual {v2}, Lcom/felicanetworks/mfc/Felica;->unbindMfc()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2548
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2562
    if-eqz v0, :cond_1

    .line 2565
    const/4 v2, 0x7

    :try_start_3
    const-string v3, "%s %s %d %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "002"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "FelicaEventListener#errorOccurred"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p2, v4, v5

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2566
    if-eqz p3, :cond_0

    .line 2567
    const/4 v2, 0x3

    const-string v3, "%s %s %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "003"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "FelicaEventListener#errorOccurred"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p3}, Lcom/felicanetworks/mfc/AppInfo;->getPid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2569
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/felicanetworks/mfc/FelicaEventListener;->errorOccurred(ILjava/lang/String;Lcom/felicanetworks/mfc/AppInfo;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2574
    :cond_1
    :goto_1
    const-string v2, "%s"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "999"

    aput-object v4, v3, v9

    invoke-static {v11, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2575
    return-void

    .line 2556
    :catch_0
    move-exception v1

    .line 2557
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    :try_start_4
    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "900"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2548
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 2570
    :catch_1
    move-exception v1

    .line 2571
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "%s %s"

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "700"

    aput-object v4, v3, v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v10, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public finished()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2581
    const-string v2, "%s %s"

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "000"

    aput-object v4, v3, v9

    const-string v4, "FelicaEventListener#finished"

    aput-object v4, v3, v8

    invoke-static {v11, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2584
    const/4 v0, 0x0

    .line 2586
    .local v0, "appListener":Lcom/felicanetworks/mfc/FelicaEventListener;
    :try_start_0
    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica$FelicaEventListenerStub;->this$0:Lcom/felicanetworks/mfc/Felica;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2587
    :try_start_1
    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica$FelicaEventListenerStub;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-static {v2}, Lcom/felicanetworks/mfc/Felica;->access$0(Lcom/felicanetworks/mfc/Felica;)Lcom/felicanetworks/mfc/FelicaEventListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2589
    const/4 v2, 0x7

    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "001"

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2591
    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica$FelicaEventListenerStub;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-static {v2}, Lcom/felicanetworks/mfc/Felica;->access$0(Lcom/felicanetworks/mfc/Felica;)Lcom/felicanetworks/mfc/FelicaEventListener;

    move-result-object v0

    .line 2592
    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica$FelicaEventListenerStub;->this$0:Lcom/felicanetworks/mfc/Felica;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/felicanetworks/mfc/Felica;->access$1(Lcom/felicanetworks/mfc/Felica;Lcom/felicanetworks/mfc/FelicaEventListener;)V

    .line 2586
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2602
    if-eqz v0, :cond_0

    .line 2604
    const/4 v2, 0x3

    :try_start_2
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "003"

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2606
    invoke-interface {v0}, Lcom/felicanetworks/mfc/FelicaEventListener;->finished()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2614
    :cond_0
    :goto_1
    const-string v2, "%s"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "999"

    aput-object v4, v3, v9

    invoke-static {v11, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2615
    return-void

    .line 2596
    :cond_1
    const/4 v2, 0x7

    :try_start_3
    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "002"

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2598
    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica$FelicaEventListenerStub;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-virtual {v2}, Lcom/felicanetworks/mfc/Felica;->unbindMfc()V

    goto :goto_0

    .line 2586
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 2611
    :catch_0
    move-exception v1

    .line 2612
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "%s %s"

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "900"

    aput-object v4, v3, v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v8, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 2607
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 2608
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v2, 0x2

    :try_start_5
    const-string v3, "%s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "700"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method
