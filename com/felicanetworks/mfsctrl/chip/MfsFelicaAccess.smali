.class public Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;
.super Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;
.source "MfsFelicaAccess.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess$FscListener;
    }
.end annotation


# instance fields
.field private _context:Lcom/felicanetworks/mfslib/MfsAppContext;

.field private _initListener:Lcom/felicanetworks/mfsctrl/chip/FelicaInitializeListener;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/mfslib/MfsAppContext;)V
    .locals 1
    .param p1, "context"    # Lcom/felicanetworks/mfslib/MfsAppContext;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnctrl/chip/FelicaAccess;-><init>(Lcom/felicanetworks/cmnlib/AppContext;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->_initListener:Lcom/felicanetworks/mfsctrl/chip/FelicaInitializeListener;

    .line 45
    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;)Lcom/felicanetworks/mfsctrl/chip/FelicaInitializeListener;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->_initListener:Lcom/felicanetworks/mfsctrl/chip/FelicaInitializeListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;Lcom/felicanetworks/mfsctrl/chip/FelicaInitializeListener;)Lcom/felicanetworks/mfsctrl/chip/FelicaInitializeListener;
    .locals 0
    .param p0, "x0"    # Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;
    .param p1, "x1"    # Lcom/felicanetworks/mfsctrl/chip/FelicaInitializeListener;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->_initListener:Lcom/felicanetworks/mfsctrl/chip/FelicaInitializeListener;

    return-object p1
.end method

.method static synthetic access$100(Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;)Lcom/felicanetworks/mfslib/MfsAppContext;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    return-object v0
.end method


# virtual methods
.method public getChipMgrInfo()Lcom/felicanetworks/mfsctrl/data/ChipMgrInfoData;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;
        }
    .end annotation

    .prologue
    .line 70
    :try_start_0
    iget-object v9, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v9, v9, Lcom/felicanetworks/mfslib/MfsAppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    invoke-virtual {v9}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getManageSystemCode()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 73
    .local v8, "mgrSysCode":I
    iget-object v9, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v9, v9, Lcom/felicanetworks/mfslib/MfsAppContext;->felica:Lcom/felicanetworks/mfc/Felica;

    invoke-virtual {v9, v8}, Lcom/felicanetworks/mfc/Felica;->select(I)V

    .line 76
    iget-object v9, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v9, v9, Lcom/felicanetworks/mfslib/MfsAppContext;->felica:Lcom/felicanetworks/mfc/Felica;

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/Felica;->getIDm()[B

    move-result-object v6

    .line 79
    .local v6, "idm":[B
    iget-object v9, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v9, v9, Lcom/felicanetworks/mfslib/MfsAppContext;->felica:Lcom/felicanetworks/mfc/Felica;

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/Felica;->getContainerIssueInformation()[B

    move-result-object v0

    .line 82
    .local v0, "container":[B
    iget-object v9, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v9, v9, Lcom/felicanetworks/mfslib/MfsAppContext;->felica:Lcom/felicanetworks/mfc/Felica;

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/Felica;->getICCode()[B

    move-result-object v5

    .line 85
    .local v5, "icCode_le":[B
    invoke-static {v5}, Lcom/felicanetworks/cmnlib/util/CommonUtil;->changeEndian([B)[B

    move-result-object v4

    .line 87
    .local v4, "icCode_be":[B
    invoke-static {v4}, Lcom/felicanetworks/cmnlib/util/CommonUtil;->binToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "icCodeStr":Ljava/lang/String;
    new-instance v9, Lcom/felicanetworks/mfsctrl/data/ChipMgrInfoData;

    invoke-direct {v9, v6, v3, v0}, Lcom/felicanetworks/mfsctrl/data/ChipMgrInfoData;-><init>([BLjava/lang/String;[B)V
    :try_end_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v9

    .line 94
    .end local v0    # "container":[B
    .end local v3    # "icCodeStr":Ljava/lang/String;
    .end local v4    # "icCode_be":[B
    .end local v5    # "icCode_le":[B
    .end local v6    # "idm":[B
    .end local v8    # "mgrSysCode":I
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Lcom/felicanetworks/mfc/FelicaException;
    invoke-virtual {p0, v2}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->makeFelicaErrorInfo(Lcom/felicanetworks/mfc/FelicaException;)Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    move-result-object v1

    .line 101
    .local v1, "data":Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;
    new-instance v7, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;

    invoke-virtual {v1}, Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9, v2}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .local v7, "mfe":Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;
    invoke-virtual {v2}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_0

    .line 108
    new-instance v9, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;

    iget-object v10, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v10, v10, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v11, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v10, v11, p0, v7}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    invoke-direct {v9, v2, v10, v11, v1}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V

    throw v9

    .line 114
    :cond_0
    new-instance v9, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;

    iget-object v10, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v10, v10, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v11, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v10, v11, p0, v7}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x5

    invoke-direct {v9, v2, v10, v11, v1}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V

    throw v9

    .line 116
    .end local v1    # "data":Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;
    .end local v2    # "e":Lcom/felicanetworks/mfc/FelicaException;
    .end local v7    # "mfe":Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;
    :catch_1
    move-exception v2

    .line 120
    .local v2, "e":Ljava/lang/Exception;
    new-instance v9, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;

    iget-object v10, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v10, v10, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v11, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v10, v11, p0, v2}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {v9, v2, v10, v11}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;I)V

    throw v9
.end method

.method public getClassCode()I
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x2

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 439
    const/16 v0, 0x22

    return v0
.end method

.method public startInitialization(Ljava/lang/String;Lcom/felicanetworks/mfsctrl/chip/FelicaInitializeListener;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/felicanetworks/mfsctrl/chip/FelicaInitializeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;
        }
    .end annotation

    .prologue
    .line 139
    :try_start_0
    iget-object v6, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v4, v6, Lcom/felicanetworks/mfslib/MfsAppContext;->fsc:Lcom/felicanetworks/mfc/FSC;

    .line 140
    .local v4, "fsc":Lcom/felicanetworks/mfc/FSC;
    iget-object v6, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v3, v6, Lcom/felicanetworks/mfslib/MfsAppContext;->felica:Lcom/felicanetworks/mfc/Felica;

    .line 142
    .local v3, "felica":Lcom/felicanetworks/mfc/Felica;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz v4, :cond_0

    if-nez v3, :cond_1

    .line 143
    :cond_0
    new-instance v6, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;-><init>(I)V

    throw v6
    :try_end_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 162
    .end local v3    # "felica":Lcom/felicanetworks/mfc/Felica;
    .end local v4    # "fsc":Lcom/felicanetworks/mfc/FSC;
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Lcom/felicanetworks/mfc/FelicaException;
    invoke-virtual {p0, v2}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->makeFelicaErrorInfo(Lcom/felicanetworks/mfc/FelicaException;)Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;

    move-result-object v0

    .line 169
    .local v0, "data":Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;
    new-instance v5, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;

    invoke-virtual {v0}, Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    .local v5, "mfe":Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;
    new-instance v6, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;

    iget-object v7, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v7, v7, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v8, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v7, v8, p0, v5}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    invoke-direct {v6, v2, v7, v8, v0}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;ILcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;)V

    throw v6

    .line 147
    .end local v0    # "data":Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;
    .end local v2    # "e":Lcom/felicanetworks/mfc/FelicaException;
    .end local v5    # "mfe":Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;
    .restart local v3    # "felica":Lcom/felicanetworks/mfc/Felica;
    .restart local v4    # "fsc":Lcom/felicanetworks/mfc/FSC;
    :cond_1
    :try_start_1
    iput-object p2, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->_initListener:Lcom/felicanetworks/mfsctrl/chip/FelicaInitializeListener;

    .line 150
    invoke-virtual {v4, v3}, Lcom/felicanetworks/mfc/FSC;->setFelica(Lcom/felicanetworks/mfc/Felica;)V

    .line 153
    new-instance v1, Lcom/felicanetworks/mfc/DeviceList;

    invoke-direct {v1}, Lcom/felicanetworks/mfc/DeviceList;-><init>()V

    .line 155
    .local v1, "dl":Lcom/felicanetworks/mfc/DeviceList;
    invoke-virtual {v4, v1}, Lcom/felicanetworks/mfc/FSC;->setDeviceList(Lcom/felicanetworks/mfc/DeviceList;)V

    .line 158
    new-instance v6, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess$FscListener;

    invoke-direct {v6, p0}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess$FscListener;-><init>(Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;)V

    invoke-virtual {v4, v6}, Lcom/felicanetworks/mfc/FSC;->setFSCEventListener(Lcom/felicanetworks/mfc/FSCEventListener;)V

    .line 161
    invoke-virtual {v4, p1}, Lcom/felicanetworks/mfc/FSC;->start(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    return-void

    .line 173
    .end local v1    # "dl":Lcom/felicanetworks/mfc/DeviceList;
    .end local v3    # "felica":Lcom/felicanetworks/mfc/Felica;
    .end local v4    # "fsc":Lcom/felicanetworks/mfc/FSC;
    :catch_1
    move-exception v2

    .line 177
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;

    iget-object v7, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v7, v7, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v8, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v7, v8, p0, v2}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v6, v2, v7, v8}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;I)V

    throw v6
.end method

.method public stopInitialization()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->_initListener:Lcom/felicanetworks/mfsctrl/chip/FelicaInitializeListener;

    .line 195
    invoke-virtual {p0}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->felicaUseEnd()V

    .line 199
    return-void
.end method
