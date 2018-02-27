.class public Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;
.super Ljava/lang/Object;
.source "FelicaAccess.java"

# interfaces
.implements Lcom/felicanetworks/mfc/FelicaEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ActivateFelicaClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;->this$0:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    return-void
.end method


# virtual methods
.method public errorOccurred(ILjava/lang/String;Lcom/felicanetworks/mfc/AppInfo;)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "otherAppInfo"    # Lcom/felicanetworks/mfc/AppInfo;

    .prologue
    .line 301
    const/4 v3, 0x0

    .line 303
    .local v3, "listener":Lcom/felicanetworks/cmnctrl/chip/FelicaAccessListener;
    new-instance v0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;

    iget-object v4, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;->this$0:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

    invoke-direct {v0, v4, p1, p2, p3}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;-><init>(Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;ILjava/lang/String;Lcom/felicanetworks/mfc/AppInfo;)V

    .line 305
    .local v0, "cv":Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;
    iget-object v4, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;->this$0:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

    invoke-virtual {v4, v0}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->makeFelicaErrorInfo(Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;)Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    move-result-object v1

    .line 307
    .local v1, "data":Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;
    new-instance v2, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;

    invoke-virtual {v1}, Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;-><init>(Ljava/lang/String;)V

    .line 309
    .local v2, "e":Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;
    iget-object v5, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;->this$0:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

    monitor-enter v5

    .line 310
    :try_start_0
    iget-object v4, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;->this$0:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

    invoke-static {v4}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->access$000(Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;)Lcom/felicanetworks/cmnctrl/chip/FelicaAccessListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 314
    iget-object v4, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;->this$0:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

    invoke-static {v4}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->access$000(Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;)Lcom/felicanetworks/cmnctrl/chip/FelicaAccessListener;

    move-result-object v3

    .line 315
    iget-object v4, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;->this$0:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->access$002(Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;Lcom/felicanetworks/cmnctrl/chip/FelicaAccessListener;)Lcom/felicanetworks/cmnctrl/chip/FelicaAccessListener;

    .line 317
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    if-eqz v3, :cond_1

    .line 323
    iget v4, v0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->notificationResult:I

    iget-object v5, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;->this$0:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

    invoke-static {v5}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->access$100(Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;)Lcom/felicanetworks/cmnlib/AppContext;

    move-result-object v5

    iget-object v5, v5, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    iget-object v6, v0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->category:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v7, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;->this$0:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

    invoke-virtual {v5, v6, v7, v2}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    iget v6, v0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->pid:I

    invoke-interface {v3, v4, v5, v6, v1}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessListener;->errorResult(ILjava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V

    .line 328
    :cond_1
    return-void

    .line 317
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public finished()V
    .locals 10

    .prologue
    .line 356
    const/4 v5, 0x0

    .line 358
    .local v5, "listener":Lcom/felicanetworks/cmnctrl/chip/FelicaAccessListener;
    :try_start_0
    iget-object v7, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;->this$0:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 359
    :try_start_1
    iget-object v6, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;->this$0:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

    invoke-static {v6}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->access$000(Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;)Lcom/felicanetworks/cmnctrl/chip/FelicaAccessListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 364
    iget-object v6, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;->this$0:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

    invoke-static {v6}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->access$000(Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;)Lcom/felicanetworks/cmnctrl/chip/FelicaAccessListener;

    move-result-object v5

    .line 365
    iget-object v6, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;->this$0:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->access$002(Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;Lcom/felicanetworks/cmnctrl/chip/FelicaAccessListener;)Lcom/felicanetworks/cmnctrl/chip/FelicaAccessListener;

    .line 367
    iget-object v6, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;->this$0:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

    invoke-static {v6}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->access$100(Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;)Lcom/felicanetworks/cmnlib/AppContext;

    move-result-object v6

    iget-object v6, v6, Lcom/felicanetworks/cmnlib/AppContext;->felica:Lcom/felicanetworks/mfc/Felica;

    invoke-virtual {v6}, Lcom/felicanetworks/mfc/Felica;->open()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    :try_start_2
    iget-object v6, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;->this$0:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

    invoke-static {v6}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->access$100(Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;)Lcom/felicanetworks/cmnlib/AppContext;

    move-result-object v6

    iget-object v8, v6, Lcom/felicanetworks/cmnlib/AppContext;->felica:Lcom/felicanetworks/mfc/Felica;

    iget-object v6, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;->this$0:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

    invoke-static {v6}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->access$100(Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;)Lcom/felicanetworks/cmnlib/AppContext;

    move-result-object v6

    iget-object v6, v6, Lcom/felicanetworks/cmnlib/AppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    const v9, 0x1000009

    invoke-virtual {v6, v9}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getSgValue(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v8, v6}, Lcom/felicanetworks/mfc/Felica;->setTimeout(I)V

    .line 379
    iget-object v6, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;->this$0:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

    invoke-static {v6}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->access$100(Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;)Lcom/felicanetworks/cmnlib/AppContext;

    move-result-object v6

    iget-object v8, v6, Lcom/felicanetworks/cmnlib/AppContext;->felica:Lcom/felicanetworks/mfc/Felica;

    iget-object v6, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;->this$0:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

    invoke-static {v6}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->access$100(Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;)Lcom/felicanetworks/cmnlib/AppContext;

    move-result-object v6

    iget-object v6, v6, Lcom/felicanetworks/cmnlib/AppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    const v9, 0x100000a

    invoke-virtual {v6, v9}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getSgValue(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v8, v6}, Lcom/felicanetworks/mfc/Felica;->setRetryCount(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 405
    :cond_0
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 407
    if-eqz v5, :cond_1

    .line 411
    :try_start_4
    invoke-interface {v5}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessListener;->finishResult()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 446
    :cond_1
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v2

    .line 392
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    iget-object v6, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;->this$0:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

    invoke-static {v6}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->access$100(Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;)Lcom/felicanetworks/cmnlib/AppContext;

    move-result-object v6

    iget-object v6, v6, Lcom/felicanetworks/cmnlib/AppContext;->felica:Lcom/felicanetworks/mfc/Felica;

    invoke-virtual {v6}, Lcom/felicanetworks/mfc/Felica;->close()V

    .line 393
    iget-object v6, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;->this$0:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

    invoke-static {v6}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->access$100(Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;)Lcom/felicanetworks/cmnlib/AppContext;

    move-result-object v6

    iget-object v6, v6, Lcom/felicanetworks/cmnlib/AppContext;->felica:Lcom/felicanetworks/mfc/Felica;

    invoke-virtual {v6}, Lcom/felicanetworks/mfc/Felica;->inactivateFelica()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 402
    :goto_1
    :try_start_6
    throw v2

    .line 405
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 413
    :catch_1
    move-exception v2

    .line 417
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;

    iget-object v6, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;->this$0:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

    invoke-direct {v0, v6, v2}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;-><init>(Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;Ljava/lang/Exception;)V

    .line 418
    .local v0, "cv":Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;
    if-eqz v5, :cond_1

    .line 423
    const/4 v1, 0x0

    .line 424
    .local v1, "data":Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;
    instance-of v6, v2, Lcom/felicanetworks/mfc/FelicaException;

    if-eqz v6, :cond_2

    .line 429
    iget-object v7, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;->this$0:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

    move-object v6, v2

    check-cast v6, Lcom/felicanetworks/mfc/FelicaException;

    invoke-virtual {v7, v6}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->makeFelicaErrorInfo(Lcom/felicanetworks/mfc/FelicaException;)Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    move-result-object v1

    .line 431
    new-instance v4, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;

    invoke-virtual {v1}, Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v2}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 432
    .local v4, "fe":Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;
    iget v6, v0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->notificationResult:I

    iget-object v7, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;->this$0:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

    invoke-static {v7}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->access$100(Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;)Lcom/felicanetworks/cmnlib/AppContext;

    move-result-object v7

    iget-object v7, v7, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    iget-object v8, v0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->category:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v9, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;->this$0:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

    invoke-virtual {v7, v8, v9, v4}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v7

    iget v8, v0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->pid:I

    invoke-interface {v5, v6, v7, v8, v1}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessListener;->errorResult(ILjava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V

    goto :goto_0

    .line 394
    .end local v0    # "cv":Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;
    .end local v1    # "data":Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;
    .end local v4    # "fe":Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;
    :catch_2
    move-exception v3

    .line 399
    .local v3, "e2":Ljava/lang/Exception;
    :try_start_8
    iget-object v6, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;->this$0:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

    invoke-static {v6}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->access$100(Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;)Lcom/felicanetworks/cmnlib/AppContext;

    move-result-object v6

    iget-object v6, v6, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v8, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v9, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;->this$0:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

    invoke-virtual {v6, v8, v9, v3}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 437
    .end local v3    # "e2":Ljava/lang/Exception;
    .restart local v0    # "cv":Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;
    .restart local v1    # "data":Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;
    :cond_2
    iget v6, v0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->notificationResult:I

    iget-object v7, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;->this$0:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

    invoke-static {v7}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->access$100(Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;)Lcom/felicanetworks/cmnlib/AppContext;

    move-result-object v7

    iget-object v7, v7, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    iget-object v8, v0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->category:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v9, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;->this$0:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

    invoke-virtual {v7, v8, v9, v2}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v7

    iget v8, v0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->pid:I

    invoke-interface {v5, v6, v7, v8, v1}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessListener;->errorResult(ILjava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V

    goto :goto_0
.end method
