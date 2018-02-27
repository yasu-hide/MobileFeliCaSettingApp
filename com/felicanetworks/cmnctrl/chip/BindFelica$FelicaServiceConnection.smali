.class Lcom/felicanetworks/cmnctrl/chip/BindFelica$FelicaServiceConnection;
.super Ljava/lang/Object;
.source "BindFelica.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/cmnctrl/chip/BindFelica;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FelicaServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/cmnctrl/chip/BindFelica;


# direct methods
.method private constructor <init>(Lcom/felicanetworks/cmnctrl/chip/BindFelica;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/felicanetworks/cmnctrl/chip/BindFelica$FelicaServiceConnection;->this$0:Lcom/felicanetworks/cmnctrl/chip/BindFelica;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/felicanetworks/cmnctrl/chip/BindFelica;Lcom/felicanetworks/cmnctrl/chip/BindFelica$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/felicanetworks/cmnctrl/chip/BindFelica;
    .param p2, "x1"    # Lcom/felicanetworks/cmnctrl/chip/BindFelica$1;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/felicanetworks/cmnctrl/chip/BindFelica$FelicaServiceConnection;-><init>(Lcom/felicanetworks/cmnctrl/chip/BindFelica;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "cpName"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x0

    .line 181
    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/chip/BindFelica$FelicaServiceConnection;->this$0:Lcom/felicanetworks/cmnctrl/chip/BindFelica;

    invoke-static {v1}, Lcom/felicanetworks/cmnctrl/chip/BindFelica;->access$100(Lcom/felicanetworks/cmnctrl/chip/BindFelica;)Lcom/felicanetworks/cmnlib/AppContext;

    move-result-object v1

    iget-object v1, v1, Lcom/felicanetworks/cmnlib/AppContext;->felica:Lcom/felicanetworks/mfc/Felica;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/chip/BindFelica$FelicaServiceConnection;->this$0:Lcom/felicanetworks/cmnctrl/chip/BindFelica;

    invoke-static {v1}, Lcom/felicanetworks/cmnctrl/chip/BindFelica;->access$200(Lcom/felicanetworks/cmnctrl/chip/BindFelica;)Lcom/felicanetworks/cmnctrl/chip/BindFelicaListener;

    move-result-object v1

    if-nez v1, :cond_1

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/chip/BindFelica$FelicaServiceConnection;->this$0:Lcom/felicanetworks/cmnctrl/chip/BindFelica;

    invoke-static {v1}, Lcom/felicanetworks/cmnctrl/chip/BindFelica;->access$100(Lcom/felicanetworks/cmnctrl/chip/BindFelica;)Lcom/felicanetworks/cmnlib/AppContext;

    move-result-object v1

    iget-object v1, v1, Lcom/felicanetworks/cmnlib/AppContext;->androidContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 187
    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/chip/BindFelica$FelicaServiceConnection;->this$0:Lcom/felicanetworks/cmnctrl/chip/BindFelica;

    invoke-static {v1}, Lcom/felicanetworks/cmnctrl/chip/BindFelica;->access$100(Lcom/felicanetworks/cmnctrl/chip/BindFelica;)Lcom/felicanetworks/cmnlib/AppContext;

    move-result-object v1

    iput-object v5, v1, Lcom/felicanetworks/cmnlib/AppContext;->felica:Lcom/felicanetworks/mfc/Felica;

    .line 188
    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/chip/BindFelica$FelicaServiceConnection;->this$0:Lcom/felicanetworks/cmnctrl/chip/BindFelica;

    invoke-static {v1, v5}, Lcom/felicanetworks/cmnctrl/chip/BindFelica;->access$202(Lcom/felicanetworks/cmnctrl/chip/BindFelica;Lcom/felicanetworks/cmnctrl/chip/BindFelicaListener;)Lcom/felicanetworks/cmnctrl/chip/BindFelicaListener;

    .line 220
    .end local p2    # "service":Landroid/os/IBinder;
    :goto_0
    return-void

    .line 196
    .restart local p2    # "service":Landroid/os/IBinder;
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/chip/BindFelica$FelicaServiceConnection;->this$0:Lcom/felicanetworks/cmnctrl/chip/BindFelica;

    invoke-static {v1}, Lcom/felicanetworks/cmnctrl/chip/BindFelica;->access$100(Lcom/felicanetworks/cmnctrl/chip/BindFelica;)Lcom/felicanetworks/cmnlib/AppContext;

    move-result-object v1

    check-cast p2, Lcom/felicanetworks/mfc/Felica$LocalBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/Felica$LocalBinder;->getInstance()Lcom/felicanetworks/mfc/Felica;

    move-result-object v2

    iput-object v2, v1, Lcom/felicanetworks/cmnlib/AppContext;->felica:Lcom/felicanetworks/mfc/Felica;

    .line 201
    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/chip/BindFelica$FelicaServiceConnection;->this$0:Lcom/felicanetworks/cmnctrl/chip/BindFelica;

    invoke-static {v1}, Lcom/felicanetworks/cmnctrl/chip/BindFelica;->access$200(Lcom/felicanetworks/cmnctrl/chip/BindFelica;)Lcom/felicanetworks/cmnctrl/chip/BindFelicaListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/felicanetworks/cmnctrl/chip/BindFelicaListener;->notifySucceeded()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/chip/BindFelica$FelicaServiceConnection;->this$0:Lcom/felicanetworks/cmnctrl/chip/BindFelica;

    invoke-static {v1, v5}, Lcom/felicanetworks/cmnctrl/chip/BindFelica;->access$202(Lcom/felicanetworks/cmnctrl/chip/BindFelica;Lcom/felicanetworks/cmnctrl/chip/BindFelicaListener;)Lcom/felicanetworks/cmnctrl/chip/BindFelicaListener;

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/chip/BindFelica$FelicaServiceConnection;->this$0:Lcom/felicanetworks/cmnctrl/chip/BindFelica;

    invoke-static {v1}, Lcom/felicanetworks/cmnctrl/chip/BindFelica;->access$200(Lcom/felicanetworks/cmnctrl/chip/BindFelica;)Lcom/felicanetworks/cmnctrl/chip/BindFelicaListener;

    move-result-object v1

    iget-object v2, p0, Lcom/felicanetworks/cmnctrl/chip/BindFelica$FelicaServiceConnection;->this$0:Lcom/felicanetworks/cmnctrl/chip/BindFelica;

    invoke-static {v2}, Lcom/felicanetworks/cmnctrl/chip/BindFelica;->access$100(Lcom/felicanetworks/cmnctrl/chip/BindFelica;)Lcom/felicanetworks/cmnlib/AppContext;

    move-result-object v2

    iget-object v2, v2, Lcom/felicanetworks/cmnlib/AppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v4, p0, Lcom/felicanetworks/cmnctrl/chip/BindFelica$FelicaServiceConnection;->this$0:Lcom/felicanetworks/cmnctrl/chip/BindFelica;

    invoke-virtual {v2, v3, v4, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/felicanetworks/cmnctrl/chip/BindFelicaListener;->notifyFailed(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/chip/BindFelica$FelicaServiceConnection;->this$0:Lcom/felicanetworks/cmnctrl/chip/BindFelica;

    invoke-static {v1, v5}, Lcom/felicanetworks/cmnctrl/chip/BindFelica;->access$202(Lcom/felicanetworks/cmnctrl/chip/BindFelica;Lcom/felicanetworks/cmnctrl/chip/BindFelicaListener;)Lcom/felicanetworks/cmnctrl/chip/BindFelicaListener;

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/felicanetworks/cmnctrl/chip/BindFelica$FelicaServiceConnection;->this$0:Lcom/felicanetworks/cmnctrl/chip/BindFelica;

    invoke-static {v2, v5}, Lcom/felicanetworks/cmnctrl/chip/BindFelica;->access$202(Lcom/felicanetworks/cmnctrl/chip/BindFelica;Lcom/felicanetworks/cmnctrl/chip/BindFelicaListener;)Lcom/felicanetworks/cmnctrl/chip/BindFelicaListener;

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "cpName"    # Landroid/content/ComponentName;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/felicanetworks/cmnctrl/chip/BindFelica$FelicaServiceConnection;->this$0:Lcom/felicanetworks/cmnctrl/chip/BindFelica;

    invoke-static {v0}, Lcom/felicanetworks/cmnctrl/chip/BindFelica;->access$100(Lcom/felicanetworks/cmnctrl/chip/BindFelica;)Lcom/felicanetworks/cmnlib/AppContext;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/felicanetworks/cmnlib/AppContext;->felica:Lcom/felicanetworks/mfc/Felica;

    .line 240
    return-void
.end method
