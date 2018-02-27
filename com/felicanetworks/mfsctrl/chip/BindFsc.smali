.class public Lcom/felicanetworks/mfsctrl/chip/BindFsc;
.super Ljava/lang/Object;
.source "BindFsc.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfsctrl/chip/BindFsc$1;,
        Lcom/felicanetworks/mfsctrl/chip/BindFsc$FscServiceConnection;
    }
.end annotation


# instance fields
.field private _connection:Lcom/felicanetworks/mfsctrl/chip/BindFsc$FscServiceConnection;

.field private _context:Lcom/felicanetworks/mfslib/MfsAppContext;

.field private _listener:Lcom/felicanetworks/mfsctrl/chip/BindFscListener;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/mfslib/MfsAppContext;)V
    .locals 2
    .param p1, "context"    # Lcom/felicanetworks/mfslib/MfsAppContext;

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/felicanetworks/mfsctrl/chip/BindFsc$FscServiceConnection;

    invoke-direct {v0, p0, v1}, Lcom/felicanetworks/mfsctrl/chip/BindFsc$FscServiceConnection;-><init>(Lcom/felicanetworks/mfsctrl/chip/BindFsc;Lcom/felicanetworks/mfsctrl/chip/BindFsc$1;)V

    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/chip/BindFsc;->_connection:Lcom/felicanetworks/mfsctrl/chip/BindFsc$FscServiceConnection;

    .line 29
    iput-object v1, p0, Lcom/felicanetworks/mfsctrl/chip/BindFsc;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    .line 31
    iput-object v1, p0, Lcom/felicanetworks/mfsctrl/chip/BindFsc;->_listener:Lcom/felicanetworks/mfsctrl/chip/BindFscListener;

    .line 42
    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/chip/BindFsc;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    .line 46
    return-void
.end method

.method static synthetic access$100(Lcom/felicanetworks/mfsctrl/chip/BindFsc;)Lcom/felicanetworks/mfsctrl/chip/BindFscListener;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/mfsctrl/chip/BindFsc;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/chip/BindFsc;->_listener:Lcom/felicanetworks/mfsctrl/chip/BindFscListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/felicanetworks/mfsctrl/chip/BindFsc;Lcom/felicanetworks/mfsctrl/chip/BindFscListener;)Lcom/felicanetworks/mfsctrl/chip/BindFscListener;
    .locals 0
    .param p0, "x0"    # Lcom/felicanetworks/mfsctrl/chip/BindFsc;
    .param p1, "x1"    # Lcom/felicanetworks/mfsctrl/chip/BindFscListener;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/chip/BindFsc;->_listener:Lcom/felicanetworks/mfsctrl/chip/BindFscListener;

    return-object p1
.end method

.method static synthetic access$200(Lcom/felicanetworks/mfsctrl/chip/BindFsc;)Lcom/felicanetworks/mfslib/MfsAppContext;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/mfsctrl/chip/BindFsc;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/chip/BindFsc;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    return-object v0
.end method


# virtual methods
.method public bindFsc(Lcom/felicanetworks/mfsctrl/chip/BindFscListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/felicanetworks/mfsctrl/chip/BindFscListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnctrl/chip/BindException;
        }
    .end annotation

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 69
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener parameter is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/chip/BindFsc;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v2, v2, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v2, v3, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "errorId":Ljava/lang/String;
    new-instance v2, Lcom/felicanetworks/cmnctrl/chip/BindException;

    invoke-direct {v2, v0, v1}, Lcom/felicanetworks/cmnctrl/chip/BindException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v2

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "errorId":Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/chip/BindFsc;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v2, v2, Lcom/felicanetworks/mfslib/MfsAppContext;->fsc:Lcom/felicanetworks/mfc/FSC;

    if-eqz v2, :cond_1

    .line 78
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Already Bind to FSC Service."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_1
    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/chip/BindFsc;->_listener:Lcom/felicanetworks/mfsctrl/chip/BindFscListener;

    .line 84
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/chip/BindFsc;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v2, v2, Lcom/felicanetworks/mfslib/MfsAppContext;->androidContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/felicanetworks/mfsctrl/chip/BindFsc;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v4, v4, Lcom/felicanetworks/mfslib/MfsAppContext;->androidContext:Landroid/content/Context;

    const-class v5, Lcom/felicanetworks/mfc/FSC;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/felicanetworks/mfsctrl/chip/BindFsc;->_connection:Lcom/felicanetworks/mfsctrl/chip/BindFsc$FscServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    return-void
.end method

.method public getClassCode()I
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x1

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 282
    const/16 v0, 0x22

    return v0
.end method

.method public unbindFsc()V
    .locals 3

    .prologue
    .line 110
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/felicanetworks/mfsctrl/chip/BindFsc;->_listener:Lcom/felicanetworks/mfsctrl/chip/BindFscListener;

    .line 112
    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/chip/BindFsc;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v1, v1, Lcom/felicanetworks/mfslib/MfsAppContext;->fsc:Lcom/felicanetworks/mfc/FSC;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/chip/BindFsc;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v1, v1, Lcom/felicanetworks/mfslib/MfsAppContext;->androidContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/chip/BindFsc;->_connection:Lcom/felicanetworks/mfsctrl/chip/BindFsc$FscServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/chip/BindFsc;->_context:Lcom/felicanetworks/mfslib/MfsAppContext;

    iget-object v1, v1, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v2, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v1, v2, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto :goto_0
.end method
