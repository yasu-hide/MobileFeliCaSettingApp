.class public Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;
.super Ljava/lang/Thread;
.source "ErrReportSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/cmnlib/log/ErrReportSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ErrReportSenderThread"
.end annotation


# instance fields
.field private context:Lcom/felicanetworks/cmnlib/AppContext;

.field protected idm:Ljava/lang/String;

.field protected listener:Lcom/felicanetworks/cmnlib/log/LogMgrEventListener;

.field protected logData:Ljava/lang/String;

.field final synthetic this$0:Lcom/felicanetworks/cmnlib/log/ErrReportSender;

.field protected web:Lcom/felicanetworks/cmnctrl/net/NetworkAccess;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/cmnlib/log/ErrReportSender;Lcom/felicanetworks/cmnlib/AppContext;Lcom/felicanetworks/cmnlib/log/LogMgrEventListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "context"    # Lcom/felicanetworks/cmnlib/AppContext;
    .param p3, "listener"    # Lcom/felicanetworks/cmnlib/log/LogMgrEventListener;
    .param p4, "idm"    # Ljava/lang/String;
    .param p5, "logData"    # Ljava/lang/String;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->this$0:Lcom/felicanetworks/cmnlib/log/ErrReportSender;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 357
    iput-object p3, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->listener:Lcom/felicanetworks/cmnlib/log/LogMgrEventListener;

    .line 358
    iput-object p4, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->idm:Ljava/lang/String;

    .line 359
    iput-object p5, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->logData:Ljava/lang/String;

    .line 360
    iput-object p2, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->context:Lcom/felicanetworks/cmnlib/AppContext;

    .line 361
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    .prologue
    .line 402
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->listener:Lcom/felicanetworks/cmnlib/log/LogMgrEventListener;

    .line 404
    invoke-virtual {p0}, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->interrupt()V

    .line 405
    iget-object v0, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->web:Lcom/felicanetworks/cmnctrl/net/NetworkAccess;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->web:Lcom/felicanetworks/cmnctrl/net/NetworkAccess;

    invoke-virtual {v0}, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    :cond_0
    monitor-exit p0

    return-void

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected checkCanceled()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 445
    :cond_0
    return-void
.end method

.method protected convExceptionToNotificationParam(Lcom/felicanetworks/cmnctrl/net/DataParseException;)I
    .locals 2
    .param p1, "e"    # Lcom/felicanetworks/cmnctrl/net/DataParseException;

    .prologue
    .line 745
    invoke-virtual {p1}, Lcom/felicanetworks/cmnctrl/net/DataParseException;->getErrorId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 770
    const/4 v0, -0x3

    .line 785
    .local v0, "ret":I
    :goto_0
    return v0

    .line 754
    .end local v0    # "ret":I
    :pswitch_0
    const/4 v0, -0x2

    .line 755
    .restart local v0    # "ret":I
    goto :goto_0

    .line 745
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected convExceptionToNotificationParam(Lcom/felicanetworks/cmnctrl/net/NetworkAccessException;)I
    .locals 2
    .param p1, "e"    # Lcom/felicanetworks/cmnctrl/net/NetworkAccessException;

    .prologue
    .line 802
    invoke-virtual {p1}, Lcom/felicanetworks/cmnctrl/net/NetworkAccessException;->getErrorId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 838
    :pswitch_0
    const/4 v0, -0x3

    .line 853
    .local v0, "ret":I
    :goto_0
    return v0

    .line 813
    .end local v0    # "ret":I
    :pswitch_1
    const/4 v0, -0x2

    .line 814
    .restart local v0    # "ret":I
    goto :goto_0

    .line 824
    .end local v0    # "ret":I
    :pswitch_2
    const/4 v0, -0x1

    .line 825
    .restart local v0    # "ret":I
    goto :goto_0

    .line 802
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v9, -0x3

    .line 598
    const/4 v2, 0x0

    .line 599
    .local v2, "listener":Lcom/felicanetworks/cmnlib/log/LogMgrEventListener;
    const/4 v5, -0x3

    .line 600
    .local v5, "result":I
    const/4 v1, 0x0

    .line 605
    .local v1, "errIdentifierCode":Ljava/lang/String;
    :try_start_0
    new-instance v7, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;

    iget-object v8, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->context:Lcom/felicanetworks/cmnlib/AppContext;

    invoke-direct {v7, v8}, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;-><init>(Lcom/felicanetworks/cmnlib/AppContext;)V

    iput-object v7, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->web:Lcom/felicanetworks/cmnctrl/net/NetworkAccess;

    .line 606
    const/4 v6, 0x0

    .line 607
    .local v6, "webInst":Lcom/felicanetworks/cmnctrl/net/NetworkAccess;
    new-instance v3, Lcom/felicanetworks/cmnctrl/net/DataParser;

    iget-object v7, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->context:Lcom/felicanetworks/cmnlib/AppContext;

    invoke-direct {v3, v7}, Lcom/felicanetworks/cmnctrl/net/DataParser;-><init>(Lcom/felicanetworks/cmnlib/AppContext;)V

    .line 611
    .local v3, "parser":Lcom/felicanetworks/cmnctrl/net/DataParser;
    iget-object v7, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->logData:Ljava/lang/String;

    iget-object v8, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->idm:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lcom/felicanetworks/cmnctrl/net/DataParser;->createErrorLog(Ljava/lang/String;Ljava/lang/String;)Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;

    move-result-object v4

    .line 614
    .local v4, "reqData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;
    monitor-enter p0
    :try_end_0
    .catch Lcom/felicanetworks/cmnctrl/net/DataParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/net/NetworkAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 615
    :try_start_1
    invoke-virtual {p0}, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->checkCanceled()V

    .line 616
    iget-object v6, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->web:Lcom/felicanetworks/cmnctrl/net/NetworkAccess;

    .line 617
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 620
    :try_start_2
    invoke-virtual {v6, v4}, Lcom/felicanetworks/cmnctrl/net/NetworkAccess;->connect(Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;)Lcom/felicanetworks/cmnctrl/net/NetworkAccessResponseData;

    .line 621
    invoke-virtual {p0}, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->checkCanceled()V
    :try_end_2
    .catch Lcom/felicanetworks/cmnctrl/net/DataParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/net/NetworkAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 624
    const/4 v5, 0x0

    .line 678
    .end local v3    # "parser":Lcom/felicanetworks/cmnctrl/net/DataParser;
    .end local v4    # "reqData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;
    .end local v6    # "webInst":Lcom/felicanetworks/cmnctrl/net/NetworkAccess;
    :goto_0
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 679
    :try_start_4
    iget-object v2, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->listener:Lcom/felicanetworks/cmnlib/log/LogMgrEventListener;

    .line 680
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 701
    iget-object v8, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->this$0:Lcom/felicanetworks/cmnlib/log/ErrReportSender;

    monitor-enter v8

    .line 704
    :try_start_5
    iget-object v7, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->this$0:Lcom/felicanetworks/cmnlib/log/ErrReportSender;

    invoke-static {v7}, Lcom/felicanetworks/cmnlib/log/ErrReportSender;->access$000(Lcom/felicanetworks/cmnlib/log/ErrReportSender;)Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->this$0:Lcom/felicanetworks/cmnlib/log/ErrReportSender;

    invoke-static {v7}, Lcom/felicanetworks/cmnlib/log/ErrReportSender;->access$000(Lcom/felicanetworks/cmnlib/log/ErrReportSender;)Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 709
    iget-object v7, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->this$0:Lcom/felicanetworks/cmnlib/log/ErrReportSender;

    const/4 v9, 0x0

    invoke-static {v7, v9}, Lcom/felicanetworks/cmnlib/log/ErrReportSender;->access$002(Lcom/felicanetworks/cmnlib/log/ErrReportSender;Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;)Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;

    .line 711
    :cond_0
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 715
    if-eqz v2, :cond_1

    .line 722
    invoke-interface {v2, v5, v1}, Lcom/felicanetworks/cmnlib/log/LogMgrEventListener;->finished(ILjava/lang/String;)V

    .line 729
    :cond_1
    :goto_1
    return-void

    .line 617
    .restart local v3    # "parser":Lcom/felicanetworks/cmnctrl/net/DataParser;
    .restart local v4    # "reqData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;
    .restart local v6    # "webInst":Lcom/felicanetworks/cmnctrl/net/NetworkAccess;
    :catchall_0
    move-exception v7

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v7
    :try_end_7
    .catch Lcom/felicanetworks/cmnctrl/net/DataParseException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/felicanetworks/cmnctrl/net/NetworkAccessException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 625
    .end local v3    # "parser":Lcom/felicanetworks/cmnctrl/net/DataParser;
    .end local v4    # "reqData":Lcom/felicanetworks/cmnctrl/net/NetworkAccessRequestData;
    .end local v6    # "webInst":Lcom/felicanetworks/cmnctrl/net/NetworkAccess;
    :catch_0
    move-exception v0

    .line 629
    .local v0, "e":Lcom/felicanetworks/cmnctrl/net/DataParseException;
    :try_start_8
    invoke-virtual {p0, v0}, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->convExceptionToNotificationParam(Lcom/felicanetworks/cmnctrl/net/DataParseException;)I

    move-result v5

    .line 630
    if-ne v5, v9, :cond_2

    .line 634
    iget-object v7, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v7, v7, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v8, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v9, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->this$0:Lcom/felicanetworks/cmnlib/log/ErrReportSender;

    invoke-virtual {v7, v8, v9, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 639
    :cond_2
    iget-object v7, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v7, v7, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v8, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v9, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->this$0:Lcom/felicanetworks/cmnlib/log/ErrReportSender;

    invoke-virtual {v7, v8, v9, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    .line 684
    .end local v0    # "e":Lcom/felicanetworks/cmnctrl/net/DataParseException;
    :catch_1
    move-exception v0

    .line 689
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_9
    iget-object v7, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v7, v7, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v8, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v9, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->this$0:Lcom/felicanetworks/cmnlib/log/ErrReportSender;

    invoke-virtual {v7, v8, v9, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 701
    iget-object v8, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->this$0:Lcom/felicanetworks/cmnlib/log/ErrReportSender;

    monitor-enter v8

    .line 704
    :try_start_a
    iget-object v7, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->this$0:Lcom/felicanetworks/cmnlib/log/ErrReportSender;

    invoke-static {v7}, Lcom/felicanetworks/cmnlib/log/ErrReportSender;->access$000(Lcom/felicanetworks/cmnlib/log/ErrReportSender;)Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->this$0:Lcom/felicanetworks/cmnlib/log/ErrReportSender;

    invoke-static {v7}, Lcom/felicanetworks/cmnlib/log/ErrReportSender;->access$000(Lcom/felicanetworks/cmnlib/log/ErrReportSender;)Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 709
    iget-object v7, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->this$0:Lcom/felicanetworks/cmnlib/log/ErrReportSender;

    const/4 v9, 0x0

    invoke-static {v7, v9}, Lcom/felicanetworks/cmnlib/log/ErrReportSender;->access$002(Lcom/felicanetworks/cmnlib/log/ErrReportSender;Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;)Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;

    .line 711
    :cond_3
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 715
    if-eqz v2, :cond_1

    .line 722
    invoke-interface {v2, v5, v1}, Lcom/felicanetworks/cmnlib/log/LogMgrEventListener;->finished(ILjava/lang/String;)V

    goto :goto_1

    .line 641
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 645
    .local v0, "e":Lcom/felicanetworks/cmnctrl/net/NetworkAccessException;
    :try_start_b
    invoke-virtual {p0, v0}, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->convExceptionToNotificationParam(Lcom/felicanetworks/cmnctrl/net/NetworkAccessException;)I

    move-result v5

    .line 646
    if-ne v5, v9, :cond_4

    .line 650
    iget-object v7, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v7, v7, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v8, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v9, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->this$0:Lcom/felicanetworks/cmnlib/log/ErrReportSender;

    invoke-virtual {v7, v8, v9, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 655
    :cond_4
    iget-object v7, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v7, v7, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v8, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v9, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->this$0:Lcom/felicanetworks/cmnlib/log/ErrReportSender;

    invoke-virtual {v7, v8, v9, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_0

    .line 690
    .end local v0    # "e":Lcom/felicanetworks/cmnctrl/net/NetworkAccessException;
    :catch_3
    move-exception v0

    .line 695
    .local v0, "e":Ljava/lang/Exception;
    :try_start_c
    iget-object v7, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v7, v7, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v8, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v9, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->this$0:Lcom/felicanetworks/cmnlib/log/ErrReportSender;

    invoke-virtual {v7, v8, v9, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 701
    iget-object v8, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->this$0:Lcom/felicanetworks/cmnlib/log/ErrReportSender;

    monitor-enter v8

    .line 704
    :try_start_d
    iget-object v7, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->this$0:Lcom/felicanetworks/cmnlib/log/ErrReportSender;

    invoke-static {v7}, Lcom/felicanetworks/cmnlib/log/ErrReportSender;->access$000(Lcom/felicanetworks/cmnlib/log/ErrReportSender;)Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->this$0:Lcom/felicanetworks/cmnlib/log/ErrReportSender;

    invoke-static {v7}, Lcom/felicanetworks/cmnlib/log/ErrReportSender;->access$000(Lcom/felicanetworks/cmnlib/log/ErrReportSender;)Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 709
    iget-object v7, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->this$0:Lcom/felicanetworks/cmnlib/log/ErrReportSender;

    const/4 v9, 0x0

    invoke-static {v7, v9}, Lcom/felicanetworks/cmnlib/log/ErrReportSender;->access$002(Lcom/felicanetworks/cmnlib/log/ErrReportSender;Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;)Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;

    .line 711
    :cond_5
    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 715
    if-eqz v2, :cond_1

    .line 722
    invoke-interface {v2, v5, v1}, Lcom/felicanetworks/cmnlib/log/LogMgrEventListener;->finished(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 657
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 662
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_e
    throw v0
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 701
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v7

    iget-object v8, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->this$0:Lcom/felicanetworks/cmnlib/log/ErrReportSender;

    monitor-enter v8

    .line 704
    :try_start_f
    iget-object v9, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->this$0:Lcom/felicanetworks/cmnlib/log/ErrReportSender;

    invoke-static {v9}, Lcom/felicanetworks/cmnlib/log/ErrReportSender;->access$000(Lcom/felicanetworks/cmnlib/log/ErrReportSender;)Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;

    move-result-object v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->this$0:Lcom/felicanetworks/cmnlib/log/ErrReportSender;

    invoke-static {v9}, Lcom/felicanetworks/cmnlib/log/ErrReportSender;->access$000(Lcom/felicanetworks/cmnlib/log/ErrReportSender;)Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 709
    iget-object v9, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->this$0:Lcom/felicanetworks/cmnlib/log/ErrReportSender;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/felicanetworks/cmnlib/log/ErrReportSender;->access$002(Lcom/felicanetworks/cmnlib/log/ErrReportSender;Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;)Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;

    .line 711
    :cond_6
    monitor-exit v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 715
    if-eqz v2, :cond_7

    .line 722
    invoke-interface {v2, v5, v1}, Lcom/felicanetworks/cmnlib/log/LogMgrEventListener;->finished(ILjava/lang/String;)V

    :cond_7
    throw v7

    .line 663
    :catch_5
    move-exception v0

    .line 669
    .local v0, "e":Ljava/lang/Exception;
    const/4 v5, -0x3

    .line 673
    :try_start_10
    iget-object v7, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v7, v7, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v8, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v9, p0, Lcom/felicanetworks/cmnlib/log/ErrReportSender$ErrReportSenderThread;->this$0:Lcom/felicanetworks/cmnlib/log/ErrReportSender;

    invoke-virtual {v7, v8, v9, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-result-object v1

    goto/16 :goto_0

    .line 680
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v7

    :try_start_11
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :try_start_12
    throw v7
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 711
    :catchall_3
    move-exception v7

    :try_start_13
    monitor-exit v8
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    throw v7

    .local v0, "e":Ljava/lang/InterruptedException;
    :catchall_4
    move-exception v7

    :try_start_14
    monitor-exit v8
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    throw v7

    .local v0, "e":Ljava/lang/Exception;
    :catchall_5
    move-exception v7

    :try_start_15
    monitor-exit v8
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    throw v7

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_6
    move-exception v7

    :try_start_16
    monitor-exit v8
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    throw v7
.end method
