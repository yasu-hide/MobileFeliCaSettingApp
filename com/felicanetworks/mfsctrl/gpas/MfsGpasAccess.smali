.class public Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;
.super Ljava/lang/Object;
.source "MfsGpasAccess.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess$GpasGetFactoryClient;
    }
.end annotation


# instance fields
.field private context:Lcom/felicanetworks/mfslib/MfsAppContext;

.field private gpas:Lcom/felicanetworks/gpaslib/Gpas;

.field private uicc:Lcom/felicanetworks/gpaslib/GpasSession;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/mfslib/MfsAppContext;)V
    .locals 1
    .param p1, "context"    # Lcom/felicanetworks/mfslib/MfsAppContext;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->context:Lcom/felicanetworks/mfslib/MfsAppContext;

    .line 30
    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->gpas:Lcom/felicanetworks/gpaslib/Gpas;

    .line 33
    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->uicc:Lcom/felicanetworks/gpaslib/GpasSession;

    .line 41
    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->context:Lcom/felicanetworks/mfslib/MfsAppContext;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;)Lcom/felicanetworks/mfslib/MfsAppContext;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->context:Lcom/felicanetworks/mfslib/MfsAppContext;

    return-object v0
.end method

.method static synthetic access$102(Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;Lcom/felicanetworks/gpaslib/Gpas;)Lcom/felicanetworks/gpaslib/Gpas;
    .locals 0
    .param p0, "x0"    # Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;
    .param p1, "x1"    # Lcom/felicanetworks/gpaslib/Gpas;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->gpas:Lcom/felicanetworks/gpaslib/Gpas;

    return-object p1
.end method

.method private closeUiccSession()V
    .locals 3

    .prologue
    .line 169
    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->uicc:Lcom/felicanetworks/gpaslib/GpasSession;

    if-nez v1, :cond_0

    .line 184
    :goto_0
    return-void

    .line 178
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->uicc:Lcom/felicanetworks/gpaslib/GpasSession;

    invoke-interface {v1}, Lcom/felicanetworks/gpaslib/GpasSession;->close()V
    :try_end_0
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->uicc:Lcom/felicanetworks/gpaslib/GpasSession;

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "ge":Lcom/felicanetworks/gpaslib/GpasException;
    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v1, v1, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v2, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v1, v2, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public getClassCode()I
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x1

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 282
    const/16 v0, 0x26

    return v0
.end method

.method public isUiccInitState()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 128
    :try_start_0
    iget-object v3, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->gpas:Lcom/felicanetworks/gpaslib/Gpas;

    if-nez v3, :cond_0

    .line 129
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Instance of gpas is null."

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "ge":Lcom/felicanetworks/gpaslib/GpasException;
    const/16 v3, 0x8

    invoke-virtual {v1}, Lcom/felicanetworks/gpaslib/GpasException;->getType()I

    move-result v5

    if-ne v3, v5, :cond_1

    .line 143
    const/4 v3, 0x0

    .end local v1    # "ge":Lcom/felicanetworks/gpaslib/GpasException;
    :goto_0
    return v3

    .line 133
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v3, v3, Lcom/felicanetworks/mfslib/MfsAppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    const/16 v5, 0x8b

    invoke-virtual {v3, v5}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getSgValue(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 135
    .local v2, "uiccAccessTimeout":I
    iget-object v3, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->gpas:Lcom/felicanetworks/gpaslib/Gpas;

    const/4 v5, 0x1

    int-to-long v6, v2

    invoke-virtual {v3, v5, v6, v7}, Lcom/felicanetworks/gpaslib/Gpas;->getGpasSession(IJ)Lcom/felicanetworks/gpaslib/GpasSession;

    move-result-object v3

    iput-object v3, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->uicc:Lcom/felicanetworks/gpaslib/GpasSession;

    .line 137
    invoke-direct {p0}, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->closeUiccSession()V
    :try_end_1
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v4

    .line 139
    goto :goto_0

    .line 145
    .end local v2    # "uiccAccessTimeout":I
    .restart local v1    # "ge":Lcom/felicanetworks/gpaslib/GpasException;
    :cond_1
    new-instance v3, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;

    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v5, v5, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v6, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v5, v6, p0, v1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;-><init>(ILjava/lang/String;Lcom/felicanetworks/gpaslib/GpasException;)V

    throw v3

    .line 150
    .end local v1    # "ge":Lcom/felicanetworks/gpaslib/GpasException;
    :catch_1
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v5, v5, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v6, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v5, v6, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method public startGpas(Lcom/felicanetworks/mfsctrl/gpas/GpasGetFactoryListener;)V
    .locals 8
    .param p1, "listener"    # Lcom/felicanetworks/mfsctrl/gpas/GpasGetFactoryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;
        }
    .end annotation

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    :try_start_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Instance of listener is null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 82
    :catch_0
    move-exception v2

    .line 83
    .local v2, "ge":Lcom/felicanetworks/gpaslib/GpasException;
    new-instance v4, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v6, v6, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v7, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v6, v7, p0, v2}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v2}, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;-><init>(ILjava/lang/String;Lcom/felicanetworks/gpaslib/GpasException;)V

    throw v4

    .line 75
    .end local v2    # "ge":Lcom/felicanetworks/gpaslib/GpasException;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v4, v4, Lcom/felicanetworks/mfslib/MfsAppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    const v5, 0x1000081

    invoke-virtual {v4, v5}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getSgValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    .local v0, "config":Ljava/lang/String;
    iget-object v4, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v4, v4, Lcom/felicanetworks/mfslib/MfsAppContext;->sgMgr:Lcom/felicanetworks/cmnlib/sg/SgMgr;

    const/16 v5, 0x8a

    invoke-virtual {v4, v5}, Lcom/felicanetworks/cmnlib/sg/SgMgr;->getSgValue(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 81
    .local v3, "gpasAccessTimeout":I
    iget-object v4, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v4, v4, Lcom/felicanetworks/mfslib/MfsAppContext;->androidContext:Landroid/content/Context;

    int-to-long v5, v3

    new-instance v7, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess$GpasGetFactoryClient;

    invoke-direct {v7, p0, p1}, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess$GpasGetFactoryClient;-><init>(Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;Lcom/felicanetworks/mfsctrl/gpas/GpasGetFactoryListener;)V

    invoke-static {v4, v0, v5, v6, v7}, Lcom/felicanetworks/gpaslib/Gpas;->getFactory(Landroid/content/Context;Ljava/lang/String;JLcom/felicanetworks/gpaslib/GpasEventListener;)V
    :try_end_1
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    return-void

    .line 87
    .end local v0    # "config":Ljava/lang/String;
    .end local v3    # "gpasAccessTimeout":I
    :catch_1
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v6, v6, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v7, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v6, v7, p0, v1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v1}, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method

.method public stopGpas()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 198
    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->gpas:Lcom/felicanetworks/gpaslib/Gpas;

    if-nez v1, :cond_0

    .line 216
    :goto_0
    return-void

    .line 207
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->gpas:Lcom/felicanetworks/gpaslib/Gpas;

    invoke-virtual {v1}, Lcom/felicanetworks/gpaslib/Gpas;->shutdown()V
    :try_end_0
    .catch Lcom/felicanetworks/gpaslib/GpasException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_1
    iput-object v3, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->uicc:Lcom/felicanetworks/gpaslib/GpasSession;

    .line 215
    iput-object v3, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->gpas:Lcom/felicanetworks/gpaslib/Gpas;

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "ge":Lcom/felicanetworks/gpaslib/GpasException;
    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v1, v1, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v2, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v1, v2, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto :goto_1
.end method
