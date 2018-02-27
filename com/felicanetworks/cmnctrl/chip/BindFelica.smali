.class public Lcom/felicanetworks/cmnctrl/chip/BindFelica;
.super Ljava/lang/Object;
.source "BindFelica.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/FunctionCodeInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/cmnctrl/chip/BindFelica$1;,
        Lcom/felicanetworks/cmnctrl/chip/BindFelica$FelicaServiceConnection;
    }
.end annotation


# instance fields
.field private connection:Lcom/felicanetworks/cmnctrl/chip/BindFelica$FelicaServiceConnection;

.field private context:Lcom/felicanetworks/cmnlib/AppContext;

.field private listener:Lcom/felicanetworks/cmnctrl/chip/BindFelicaListener;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/cmnlib/AppContext;)V
    .locals 2
    .param p1, "context"    # Lcom/felicanetworks/cmnlib/AppContext;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/felicanetworks/cmnctrl/chip/BindFelica$FelicaServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/felicanetworks/cmnctrl/chip/BindFelica$FelicaServiceConnection;-><init>(Lcom/felicanetworks/cmnctrl/chip/BindFelica;Lcom/felicanetworks/cmnctrl/chip/BindFelica$1;)V

    iput-object v0, p0, Lcom/felicanetworks/cmnctrl/chip/BindFelica;->connection:Lcom/felicanetworks/cmnctrl/chip/BindFelica$FelicaServiceConnection;

    .line 50
    iput-object p1, p0, Lcom/felicanetworks/cmnctrl/chip/BindFelica;->context:Lcom/felicanetworks/cmnlib/AppContext;

    .line 54
    return-void
.end method

.method static synthetic access$100(Lcom/felicanetworks/cmnctrl/chip/BindFelica;)Lcom/felicanetworks/cmnlib/AppContext;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/cmnctrl/chip/BindFelica;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/felicanetworks/cmnctrl/chip/BindFelica;->context:Lcom/felicanetworks/cmnlib/AppContext;

    return-object v0
.end method

.method static synthetic access$200(Lcom/felicanetworks/cmnctrl/chip/BindFelica;)Lcom/felicanetworks/cmnctrl/chip/BindFelicaListener;
    .locals 1
    .param p0, "x0"    # Lcom/felicanetworks/cmnctrl/chip/BindFelica;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/felicanetworks/cmnctrl/chip/BindFelica;->listener:Lcom/felicanetworks/cmnctrl/chip/BindFelicaListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/felicanetworks/cmnctrl/chip/BindFelica;Lcom/felicanetworks/cmnctrl/chip/BindFelicaListener;)Lcom/felicanetworks/cmnctrl/chip/BindFelicaListener;
    .locals 0
    .param p0, "x0"    # Lcom/felicanetworks/cmnctrl/chip/BindFelica;
    .param p1, "x1"    # Lcom/felicanetworks/cmnctrl/chip/BindFelicaListener;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/felicanetworks/cmnctrl/chip/BindFelica;->listener:Lcom/felicanetworks/cmnctrl/chip/BindFelicaListener;

    return-object p1
.end method


# virtual methods
.method public bindFelica(Lcom/felicanetworks/cmnctrl/chip/BindFelicaListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/felicanetworks/cmnctrl/chip/BindFelicaListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/cmnctrl/chip/BindException;
        }
    .end annotation

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 79
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener parameter is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/felicanetworks/cmnctrl/chip/BindException;

    iget-object v3, p0, Lcom/felicanetworks/cmnctrl/chip/BindFelica;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v3, v3, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v4, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v3, v4, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/felicanetworks/cmnctrl/chip/BindException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v2

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/felicanetworks/cmnctrl/chip/BindFelica;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v2, v2, Lcom/felicanetworks/cmnlib/AppContext;->felica:Lcom/felicanetworks/mfc/Felica;

    if-nez v2, :cond_1

    .line 87
    iput-object p1, p0, Lcom/felicanetworks/cmnctrl/chip/BindFelica;->listener:Lcom/felicanetworks/cmnctrl/chip/BindFelicaListener;

    .line 89
    iget-object v2, p0, Lcom/felicanetworks/cmnctrl/chip/BindFelica;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v2, v2, Lcom/felicanetworks/cmnlib/AppContext;->androidContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/felicanetworks/cmnctrl/chip/BindFelica;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v4, v4, Lcom/felicanetworks/cmnlib/AppContext;->androidContext:Landroid/content/Context;

    const-class v5, Lcom/felicanetworks/mfc/Felica;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/felicanetworks/cmnctrl/chip/BindFelica;->connection:Lcom/felicanetworks/cmnctrl/chip/BindFelica$FelicaServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 90
    .local v1, "isSucceeded":Z
    if-nez v1, :cond_2

    .line 94
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/felicanetworks/cmnctrl/chip/BindFelica;->listener:Lcom/felicanetworks/cmnctrl/chip/BindFelicaListener;

    .line 95
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to connect for Felica Service."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 101
    .end local v1    # "isSucceeded":Z
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Felica Service is already connected."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    .restart local v1    # "isSucceeded":Z
    :cond_2
    return-void
.end method

.method public getClassCode()I
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method public getFunctionCode()I
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x3

    return v0
.end method

.method public unbindFelica()V
    .locals 3

    .prologue
    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/chip/BindFelica;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v1, v1, Lcom/felicanetworks/cmnlib/AppContext;->androidContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/felicanetworks/cmnctrl/chip/BindFelica;->connection:Lcom/felicanetworks/cmnctrl/chip/BindFelica$FelicaServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/chip/BindFelica;->context:Lcom/felicanetworks/cmnlib/AppContext;

    iget-object v1, v1, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v2, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    invoke-virtual {v1, v2, p0, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto :goto_0
.end method
