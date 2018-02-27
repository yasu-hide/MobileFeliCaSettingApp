.class Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;
.super Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener$Stub;
.source "Felica.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfc/Felica;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PushAppNotificationListenerStub"
.end annotation


# instance fields
.field listener:Lcom/felicanetworks/mfc/PushAppNotificationListener;

.field final synthetic this$0:Lcom/felicanetworks/mfc/Felica;


# direct methods
.method constructor <init>(Lcom/felicanetworks/mfc/Felica;Lcom/felicanetworks/mfc/PushAppNotificationListener;)V
    .locals 6
    .param p2, "listener"    # Lcom/felicanetworks/mfc/PushAppNotificationListener;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2499
    iput-object p1, p0, Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;->this$0:Lcom/felicanetworks/mfc/Felica;

    .line 2495
    invoke-direct {p0}, Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener$Stub;-><init>()V

    .line 2496
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "000 mfc/Felica$PushAppNotificationListenerStub"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2497
    iput-object p2, p0, Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;->listener:Lcom/felicanetworks/mfc/PushAppNotificationListener;

    .line 2498
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999 mfc/Felica$PushAppNotificationListenerStub"

    aput-object v2, v1, v3

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public pushAppNotified(Lcom/felicanetworks/mfc/PushNotifyAppSegment;)V
    .locals 10
    .param p1, "pushNotificationAppSegment"    # Lcom/felicanetworks/mfc/PushNotifyAppSegment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2516
    const/4 v1, 0x3

    :try_start_0
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "000 pushAppNotified"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2518
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2520
    :try_start_1
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;->listener:Lcom/felicanetworks/mfc/PushAppNotificationListener;

    if-eqz v1, :cond_1

    .line 2521
    const/4 v1, 0x3

    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "001 pushAppNotified"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "pushAppNotified"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2522
    if-eqz p1, :cond_0

    .line 2523
    const/4 v1, 0x3

    const-string v2, "%s %s %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "002 pushAppNotified"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->getAppIdentificationCode()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->getAppNotificationParam()[Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2525
    :cond_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;->listener:Lcom/felicanetworks/mfc/PushAppNotificationListener;

    invoke-interface {v1, p1}, Lcom/felicanetworks/mfc/PushAppNotificationListener;->pushAppNotified(Lcom/felicanetworks/mfc/PushNotifyAppSegment;)V

    .line 2518
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2531
    :goto_0
    const-string v1, "%s"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "999 pushAppNotified"

    aput-object v3, v2, v6

    invoke-static {v8, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2532
    return-void

    .line 2518
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 2528
    :catch_0
    move-exception v0

    .line 2529
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "%s %s"

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "700 pushAppNotified"

    aput-object v3, v2, v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v9, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public declared-synchronized setListener(Lcom/felicanetworks/mfc/PushAppNotificationListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/felicanetworks/mfc/PushAppNotificationListener;

    .prologue
    .line 2506
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "000 setListener"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2507
    iput-object p1, p0, Lcom/felicanetworks/mfc/Felica$PushAppNotificationListenerStub;->listener:Lcom/felicanetworks/mfc/PushAppNotificationListener;

    .line 2508
    const/4 v0, 0x3

    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "999 setListener"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2509
    monitor-exit p0

    return-void

    .line 2506
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
