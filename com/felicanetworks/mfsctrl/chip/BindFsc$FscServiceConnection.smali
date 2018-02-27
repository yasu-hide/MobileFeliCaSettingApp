.class Lcom/felicanetworks/mfsctrl/chip/BindFsc$FscServiceConnection;
.super Ljava/lang/Object;
.source "BindFsc.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfsctrl/chip/BindFsc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FscServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfsctrl/chip/BindFsc;


# direct methods
.method private constructor <init>(Lcom/felicanetworks/mfsctrl/chip/BindFsc;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/chip/BindFsc$FscServiceConnection;->this$0:Lcom/felicanetworks/mfsctrl/chip/BindFsc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/felicanetworks/mfsctrl/chip/BindFsc;Lcom/felicanetworks/mfsctrl/chip/BindFsc$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/felicanetworks/mfsctrl/chip/BindFsc;
    .param p2, "x1"    # Lcom/felicanetworks/mfsctrl/chip/BindFsc$1;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfsctrl/chip/BindFsc$FscServiceConnection;-><init>(Lcom/felicanetworks/mfsctrl/chip/BindFsc;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "cpName"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x0

    .line 205
    :try_start_0
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/chip/BindFsc$FscServiceConnection;->this$0:Lcom/felicanetworks/mfsctrl/chip/BindFsc;

    invoke-static {v2}, Lcom/felicanetworks/mfsctrl/chip/BindFsc;->access$100(Lcom/felicanetworks/mfsctrl/chip/BindFsc;)Lcom/felicanetworks/mfsctrl/chip/BindFscListener;

    move-result-object v2

    if-nez v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/chip/BindFsc$FscServiceConnection;->this$0:Lcom/felicanetworks/mfsctrl/chip/BindFsc;

    invoke-static {v2}, Lcom/felicanetworks/mfsctrl/chip/BindFsc;->access$200(Lcom/felicanetworks/mfsctrl/chip/BindFsc;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v2

    iget-object v2, v2, Lcom/felicanetworks/mfslib/MfsAppContext;->androidContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/chip/BindFsc$FscServiceConnection;->this$0:Lcom/felicanetworks/mfsctrl/chip/BindFsc;

    invoke-static {v2, v5}, Lcom/felicanetworks/mfsctrl/chip/BindFsc;->access$102(Lcom/felicanetworks/mfsctrl/chip/BindFsc;Lcom/felicanetworks/mfsctrl/chip/BindFscListener;)Lcom/felicanetworks/mfsctrl/chip/BindFscListener;

    .line 233
    .end local p2    # "service":Landroid/os/IBinder;
    :goto_0
    return-void

    .line 213
    .restart local p2    # "service":Landroid/os/IBinder;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/chip/BindFsc$FscServiceConnection;->this$0:Lcom/felicanetworks/mfsctrl/chip/BindFsc;

    invoke-static {v2}, Lcom/felicanetworks/mfsctrl/chip/BindFsc;->access$200(Lcom/felicanetworks/mfsctrl/chip/BindFsc;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v2

    check-cast p2, Lcom/felicanetworks/mfc/FSC$LocalBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/FSC$LocalBinder;->getInstance()Lcom/felicanetworks/mfc/FSC;

    move-result-object v3

    iput-object v3, v2, Lcom/felicanetworks/mfslib/MfsAppContext;->fsc:Lcom/felicanetworks/mfc/FSC;

    .line 215
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/chip/BindFsc$FscServiceConnection;->this$0:Lcom/felicanetworks/mfsctrl/chip/BindFsc;

    invoke-static {v2}, Lcom/felicanetworks/mfsctrl/chip/BindFsc;->access$100(Lcom/felicanetworks/mfsctrl/chip/BindFsc;)Lcom/felicanetworks/mfsctrl/chip/BindFscListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/felicanetworks/mfsctrl/chip/BindFscListener;->notifySucceeded()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/chip/BindFsc$FscServiceConnection;->this$0:Lcom/felicanetworks/mfsctrl/chip/BindFsc;

    invoke-static {v2, v5}, Lcom/felicanetworks/mfsctrl/chip/BindFsc;->access$102(Lcom/felicanetworks/mfsctrl/chip/BindFsc;Lcom/felicanetworks/mfsctrl/chip/BindFscListener;)Lcom/felicanetworks/mfsctrl/chip/BindFscListener;

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/chip/BindFsc$FscServiceConnection;->this$0:Lcom/felicanetworks/mfsctrl/chip/BindFsc;

    invoke-static {v2}, Lcom/felicanetworks/mfsctrl/chip/BindFsc;->access$200(Lcom/felicanetworks/mfsctrl/chip/BindFsc;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v2

    iget-object v2, v2, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v4, p0, Lcom/felicanetworks/mfsctrl/chip/BindFsc$FscServiceConnection;->this$0:Lcom/felicanetworks/mfsctrl/chip/BindFsc;

    invoke-virtual {v2, v3, v4, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "errorId":Ljava/lang/String;
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/chip/BindFsc$FscServiceConnection;->this$0:Lcom/felicanetworks/mfsctrl/chip/BindFsc;

    invoke-static {v2}, Lcom/felicanetworks/mfsctrl/chip/BindFsc;->access$100(Lcom/felicanetworks/mfsctrl/chip/BindFsc;)Lcom/felicanetworks/mfsctrl/chip/BindFscListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/felicanetworks/mfsctrl/chip/BindFscListener;->notifyFailed(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/chip/BindFsc$FscServiceConnection;->this$0:Lcom/felicanetworks/mfsctrl/chip/BindFsc;

    invoke-static {v2, v5}, Lcom/felicanetworks/mfsctrl/chip/BindFsc;->access$102(Lcom/felicanetworks/mfsctrl/chip/BindFsc;Lcom/felicanetworks/mfsctrl/chip/BindFscListener;)Lcom/felicanetworks/mfsctrl/chip/BindFscListener;

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "errorId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/felicanetworks/mfsctrl/chip/BindFsc$FscServiceConnection;->this$0:Lcom/felicanetworks/mfsctrl/chip/BindFsc;

    invoke-static {v3, v5}, Lcom/felicanetworks/mfsctrl/chip/BindFsc;->access$102(Lcom/felicanetworks/mfsctrl/chip/BindFsc;Lcom/felicanetworks/mfsctrl/chip/BindFscListener;)Lcom/felicanetworks/mfsctrl/chip/BindFscListener;

    throw v2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "cpName"    # Landroid/content/ComponentName;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/chip/BindFsc$FscServiceConnection;->this$0:Lcom/felicanetworks/mfsctrl/chip/BindFsc;

    invoke-static {v0}, Lcom/felicanetworks/mfsctrl/chip/BindFsc;->access$200(Lcom/felicanetworks/mfsctrl/chip/BindFsc;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->fsc:Lcom/felicanetworks/mfc/FSC;

    .line 264
    return-void
.end method
