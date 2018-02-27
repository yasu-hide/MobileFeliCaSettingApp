.class public Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess$GpasGetFactoryClient;
.super Ljava/lang/Object;
.source "MfsGpasAccess.java"

# interfaces
.implements Lcom/felicanetworks/gpaslib/GpasEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GpasGetFactoryClient"
.end annotation


# instance fields
.field protected _listener:Lcom/felicanetworks/mfsctrl/gpas/GpasGetFactoryListener;

.field final synthetic this$0:Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;Lcom/felicanetworks/mfsctrl/gpas/GpasGetFactoryListener;)V
    .locals 0
    .param p2, "listener"    # Lcom/felicanetworks/mfsctrl/gpas/GpasGetFactoryListener;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess$GpasGetFactoryClient;->this$0:Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p2, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess$GpasGetFactoryClient;->_listener:Lcom/felicanetworks/mfsctrl/gpas/GpasGetFactoryListener;

    .line 235
    return-void
.end method


# virtual methods
.method public errorOccurred(Lcom/felicanetworks/gpaslib/GpasException;)V
    .locals 5
    .param p1, "ge"    # Lcom/felicanetworks/gpaslib/GpasException;

    .prologue
    .line 246
    new-instance v0, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess$GpasGetFactoryClient;->this$0:Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;

    invoke-static {v2}, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->access$000(Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v2

    iget-object v2, v2, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v4, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess$GpasGetFactoryClient;->this$0:Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;

    invoke-virtual {v2, v3, v4, p1}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;-><init>(ILjava/lang/String;Lcom/felicanetworks/gpaslib/GpasException;)V

    .line 250
    .local v0, "latestGpasAccessException":Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;
    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess$GpasGetFactoryClient;->_listener:Lcom/felicanetworks/mfsctrl/gpas/GpasGetFactoryListener;

    invoke-interface {v1, v0}, Lcom/felicanetworks/mfsctrl/gpas/GpasGetFactoryListener;->notifyError(Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;)V

    .line 251
    return-void
.end method

.method public finished(Ljava/lang/Object;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 263
    :try_start_0
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess$GpasGetFactoryClient;->this$0:Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;

    check-cast p1, Lcom/felicanetworks/gpaslib/Gpas;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-static {v2, p1}, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->access$102(Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;Lcom/felicanetworks/gpaslib/Gpas;)Lcom/felicanetworks/gpaslib/Gpas;

    .line 264
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess$GpasGetFactoryClient;->_listener:Lcom/felicanetworks/mfsctrl/gpas/GpasGetFactoryListener;

    invoke-interface {v2}, Lcom/felicanetworks/mfsctrl/gpas/GpasGetFactoryListener;->notifyComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess$GpasGetFactoryClient;->this$0:Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;

    invoke-static {v3}, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;->access$000(Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v3

    iget-object v3, v3, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v4, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v5, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess$GpasGetFactoryClient;->this$0:Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess;

    invoke-virtual {v3, v4, v5, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 270
    .local v1, "latestGpasAccessException":Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/gpas/MfsGpasAccess$GpasGetFactoryClient;->_listener:Lcom/felicanetworks/mfsctrl/gpas/GpasGetFactoryListener;

    invoke-interface {v2, v1}, Lcom/felicanetworks/mfsctrl/gpas/GpasGetFactoryListener;->notifyError(Lcom/felicanetworks/mfsctrl/gpas/GpasAccessException;)V

    goto :goto_0
.end method
