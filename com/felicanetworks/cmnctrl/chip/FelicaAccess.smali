.class public Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;
.super Ljava/lang/Object;
.source "FelicaAccess.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;,
        Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;
    }
.end annotation


# static fields
.field protected static final CODESTR_BASEMENT:I = 0x10

.field protected static final NODE_CODE_SIZE:I = 0x4

.field protected static final PID_NONE:I

.field protected static final TYPE_DF:I


# instance fields
.field private client:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;

.field private context:Lcom/felicanetworks/cmnlib/AppContext;

.field private faListener:Lcom/felicanetworks/cmnctrl/chip/FelicaAccessListener;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/cmnlib/AppContext;)V
    .locals 1
    .param p1, "context"    # Lcom/felicanetworks/cmnlib/AppContext;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->faListener:Lcom/felicanetworks/cmnctrl/chip/FelicaAccessListener;

    .line 36
    new-instance v0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;

    invoke-direct {v0, p0}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;-><init>(Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;)V

    iput-object v0, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->client:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;

    .line 55
    iput-object p1, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;)Lcom/felicanetworks/cmnctrl/chip/FelicaAccessListener;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->faListener:Lcom/felicanetworks/cmnctrl/chip/FelicaAccessListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;Lcom/felicanetworks/cmnctrl/chip/FelicaAccessListener;)Lcom/felicanetworks/cmnctrl/chip/FelicaAccessListener;
    .locals 0
    .param p0, "x0"    # Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;
    .param p1, "x1"    # Lcom/felicanetworks/cmnctrl/chip/FelicaAccessListener;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->faListener:Lcom/felicanetworks/cmnctrl/chip/FelicaAccessListener;

    return-object p1
.end method

.method static synthetic access$100(Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;)Lcom/felicanetworks/cmnlib/AppContext;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    return-object v0
.end method


# virtual methods
.method protected assortException(Lcom/felicanetworks/mfc/FelicaException;)V
    .locals 5
    .param p1, "e"    # Lcom/felicanetworks/mfc/FelicaException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;
        }
    .end annotation

    .prologue
    .line 629
    invoke-virtual {p0, p1}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->makeFelicaErrorInfo(Lcom/felicanetworks/mfc/FelicaException;)Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    move-result-object v0

    .line 631
    .local v0, "data":Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;
    new-instance v1, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;

    invoke-virtual {v0}, Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 633
    .local v1, "fe":Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;
    invoke-virtual {p1}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 638
    new-instance v2, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;

    iget-object v3, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v3, v3, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v4, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v3, v4, p0, v1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, p1, v3, v4, v0}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V

    throw v2

    .line 644
    :cond_0
    new-instance v2, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;

    iget-object v3, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v3, v3, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v4, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v3, v4, p0, v1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v2, p1, v3, v4, v0}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V

    throw v2
.end method

.method public declared-synchronized felicaUseEnd()V
    .locals 3

    .prologue
    .line 494
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->faListener:Lcom/felicanetworks/cmnctrl/chip/FelicaAccessListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    :try_start_1
    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v1, v1, Lcom/felicanetworks/cmnlib/AppContext;->felica:Lcom/felicanetworks/mfc/Felica;

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/Felica;->close()V

    .line 502
    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v1, v1, Lcom/felicanetworks/cmnlib/AppContext;->felica:Lcom/felicanetworks/mfc/Felica;

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/Felica;->inactivateFelica()V
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 515
    :goto_0
    monitor-exit p0

    return-void

    .line 506
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e":Lcom/felicanetworks/mfc/FelicaException;
    :try_start_2
    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v1, v1, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v2, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v1, v2, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 494
    .end local v0    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized felicaUseStart(Lcom/felicanetworks/cmnctrl/chip/FelicaAccessListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/felicanetworks/cmnctrl/chip/FelicaAccessListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;
        }
    .end annotation

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->faListener:Lcom/felicanetworks/cmnctrl/chip/FelicaAccessListener;

    if-eqz v2, :cond_0

    .line 85
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Activation is already running."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Lcom/felicanetworks/mfc/FelicaException;
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->assortException(Lcom/felicanetworks/mfc/FelicaException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    .end local v0    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :goto_0
    monitor-exit p0

    return-void

    .line 88
    :cond_0
    const/4 v2, 0x1

    :try_start_2
    new-array v1, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v2, v2, Lcom/felicanetworks/cmnlib/AppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    const v4, 0x100002b

    invoke-virtual {v2, v4}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getSgValue(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v3

    .line 90
    .local v1, "permitList":[Ljava/lang/String;
    iput-object p1, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->faListener:Lcom/felicanetworks/cmnctrl/chip/FelicaAccessListener;

    .line 92
    iget-object v2, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v2, v2, Lcom/felicanetworks/cmnlib/AppContext;->felica:Lcom/felicanetworks/mfc/Felica;

    iget-object v3, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->client:Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$ActivateFelicaClient;

    invoke-virtual {v2, v1, v3}, Lcom/felicanetworks/mfc/Felica;->activateFelica([Ljava/lang/String;Lcom/felicanetworks/mfc/FelicaEventListener;)V
    :try_end_2
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 101
    .end local v1    # "permitList":[Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v2, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;

    iget-object v3, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v3, v3, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v4, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v3, v4, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v0, v3, v4}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;I)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getClassCode()I
    .locals 1

    .prologue
    .line 654
    const/4 v0, 0x2

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 663
    const/4 v0, 0x3

    return v0
.end method

.method public getIssueStateResult()Lcom/felicanetworks/cmnctrl/data/IssueStateData;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;
        }
    .end annotation

    .prologue
    .line 530
    const/4 v3, 0x0

    .line 533
    .local v3, "result":Lcom/felicanetworks/cmnctrl/data/IssueStateData;
    :try_start_0
    iget-object v5, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v5, v5, Lcom/felicanetworks/cmnlib/AppContext;->felica:Lcom/felicanetworks/mfc/Felica;

    iget-object v6, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v6, v6, Lcom/felicanetworks/cmnlib/AppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    invoke-virtual {v6}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getManageSystemCode()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/felicanetworks/mfc/Felica;->select(I)V

    .line 539
    iget-object v5, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v5, v5, Lcom/felicanetworks/cmnlib/AppContext;->felica:Lcom/felicanetworks/mfc/Felica;

    invoke-virtual {v5}, Lcom/felicanetworks/mfc/Felica;->getIDm()[B

    move-result-object v2

    .line 545
    .local v2, "idm":[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-byte v6, v2, v6

    and-int/lit8 v6, v6, 0xf

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 546
    iget-object v5, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    invoke-static {v2}, Lcom/felicanetworks/cmnlib/util/CommonUtil;->binToHexString([B)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/felicanetworks/cmnlib/AppContext;->idm:Ljava/lang/String;

    .line 548
    iget-object v5, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v5, v5, Lcom/felicanetworks/cmnlib/AppContext;->felica:Lcom/felicanetworks/mfc/Felica;

    invoke-virtual {v5}, Lcom/felicanetworks/mfc/Felica;->getContainerIssueInformation()[B

    move-result-object v0

    .line 553
    .local v0, "contIssueInfo":[B
    new-instance v4, Lcom/felicanetworks/cmnctrl/data/IssueStateData;

    invoke-virtual {p0, v0}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->isSetupContainerIssue([B)Z

    move-result v5

    invoke-static {v2}, Lcom/felicanetworks/cmnlib/util/CommonUtil;->binToHexString([B)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/felicanetworks/cmnctrl/data/IssueStateData;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3    # "result":Lcom/felicanetworks/cmnctrl/data/IssueStateData;
    .local v4, "result":Lcom/felicanetworks/cmnctrl/data/IssueStateData;
    move-object v3, v4

    .line 568
    .end local v0    # "contIssueInfo":[B
    .end local v2    # "idm":[B
    .end local v4    # "result":Lcom/felicanetworks/cmnctrl/data/IssueStateData;
    .restart local v3    # "result":Lcom/felicanetworks/cmnctrl/data/IssueStateData;
    :goto_0
    return-object v3

    .line 554
    :catch_0
    move-exception v1

    .line 558
    .local v1, "e":Lcom/felicanetworks/mfc/FelicaException;
    invoke-virtual {p0, v1}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->assortException(Lcom/felicanetworks/mfc/FelicaException;)V

    goto :goto_0

    .line 559
    .end local v1    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catch_1
    move-exception v1

    .line 563
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;

    iget-object v6, p0, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v6, v6, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v7, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v6, v7, p0, v1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v5, v1, v6, v7}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;I)V

    throw v5
.end method

.method protected isSetupContainerIssue([B)Z
    .locals 5
    .param p1, "containerIssueInfo"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnctrl/chip/FelicaAccessException;
        }
    .end annotation

    .prologue
    .line 599
    const/4 v4, 0x0

    .line 601
    .local v4, "result":Z
    move-object v0, p1

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 602
    .local v1, "i":B
    if-eqz v1, :cond_1

    .line 606
    const/4 v4, 0x1

    .line 613
    .end local v1    # "i":B
    :cond_0
    return v4

    .line 601
    .restart local v1    # "i":B
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected makeFelicaErrorInfo(Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;)Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;
    .locals 7
    .param p1, "cv"    # Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;

    .prologue
    const/4 v2, 0x0

    .line 479
    new-instance v0, Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    const-string v1, "02"

    iget v3, p1, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->type:I

    iget-object v6, p1, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess$MfcNotificationConverter;->msgResult:Ljava/lang/String;

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    return-object v0
.end method

.method protected makeFelicaErrorInfo(Lcom/felicanetworks/mfc/FelicaException;)Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;
    .locals 7
    .param p1, "e"    # Lcom/felicanetworks/mfc/FelicaException;

    .prologue
    .line 462
    new-instance v0, Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    const-string v1, "01"

    invoke-virtual {p1}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v2

    invoke-virtual {p1}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v3

    invoke-virtual {p1}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v4

    invoke-virtual {p1}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v5

    invoke-virtual {p1}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    return-object v0
.end method
