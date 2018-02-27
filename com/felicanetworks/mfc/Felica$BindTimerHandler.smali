.class Lcom/felicanetworks/mfc/Felica$BindTimerHandler;
.super Landroid/os/Handler;
.source "Felica.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfc/Felica;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BindTimerHandler"
.end annotation


# static fields
.field static final MSG_BIND_TIMER:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfc/Felica;


# direct methods
.method constructor <init>(Lcom/felicanetworks/mfc/Felica;)V
    .locals 0

    .prologue
    .line 2762
    iput-object p1, p0, Lcom/felicanetworks/mfc/Felica$BindTimerHandler;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x2

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2796
    const-string v1, "%s what=%d"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "000 handleMessage"

    aput-object v3, v2, v8

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v9, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2797
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v7, :cond_1

    .line 2798
    const-string v1, "%s bind timeout connecting=%b felica=%s"

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "800 handleMessage"

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica$BindTimerHandler;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-static {v3}, Lcom/felicanetworks/mfc/Felica;->access$3(Lcom/felicanetworks/mfc/Felica;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/felicanetworks/mfc/Felica$BindTimerHandler;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-static {v3}, Lcom/felicanetworks/mfc/Felica;->access$4(Lcom/felicanetworks/mfc/Felica;)Lcom/felicanetworks/mfc/IFelica;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2799
    const/4 v0, 0x0

    .line 2800
    .local v0, "appListener":Lcom/felicanetworks/mfc/FelicaEventListener;
    iget-object v2, p0, Lcom/felicanetworks/mfc/Felica$BindTimerHandler;->this$0:Lcom/felicanetworks/mfc/Felica;

    monitor-enter v2

    .line 2801
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica$BindTimerHandler;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-static {v1}, Lcom/felicanetworks/mfc/Felica;->access$3(Lcom/felicanetworks/mfc/Felica;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2802
    const/4 v1, 0x7

    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "001 handleMessage"

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2803
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica$BindTimerHandler;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-static {v1}, Lcom/felicanetworks/mfc/Felica;->access$0(Lcom/felicanetworks/mfc/Felica;)Lcom/felicanetworks/mfc/FelicaEventListener;

    move-result-object v0

    .line 2805
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica$BindTimerHandler;->this$0:Lcom/felicanetworks/mfc/Felica;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/felicanetworks/mfc/Felica;->access$1(Lcom/felicanetworks/mfc/Felica;Lcom/felicanetworks/mfc/FelicaEventListener;)V

    .line 2807
    iget-object v1, p0, Lcom/felicanetworks/mfc/Felica$BindTimerHandler;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/Felica;->unbindMfc()V

    .line 2800
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2811
    if-eqz v0, :cond_1

    .line 2812
    const-string v1, "%s Do the callback"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "010 handleMessage"

    aput-object v3, v2, v8

    invoke-static {v9, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2813
    const-string v1, "Bind timeout."

    invoke-interface {v0, v7, v1, v10}, Lcom/felicanetworks/mfc/FelicaEventListener;->errorOccurred(ILjava/lang/String;Lcom/felicanetworks/mfc/AppInfo;)V

    .line 2816
    .end local v0    # "appListener":Lcom/felicanetworks/mfc/FelicaEventListener;
    :cond_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2817
    const-string v1, "%s"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "999 handleMessage"

    aput-object v3, v2, v8

    invoke-static {v9, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2818
    return-void

    .line 2800
    .restart local v0    # "appListener":Lcom/felicanetworks/mfc/FelicaEventListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method startTimer(I)V
    .locals 7
    .param p1, "timeout"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2769
    const-string v0, "%s timeout=%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000 startTimer"

    aput-object v2, v1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2770
    if-lez p1, :cond_0

    .line 2771
    const/4 v0, 0x7

    const-string v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "001 startTimer"

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2773
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica$BindTimerHandler;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-static {v0}, Lcom/felicanetworks/mfc/Felica;->access$2(Lcom/felicanetworks/mfc/Felica;)Lcom/felicanetworks/mfc/Felica$BindTimerHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/felicanetworks/mfc/Felica$BindTimerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/felicanetworks/mfc/Felica$BindTimerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2775
    :cond_0
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999 startTimer"

    aput-object v2, v1, v5

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2776
    return-void
.end method

.method stopTimer()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2782
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "000 stopTimer"

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2784
    invoke-virtual {p0, v3}, Lcom/felicanetworks/mfc/Felica$BindTimerHandler;->removeMessages(I)V

    .line 2785
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "999 stopTimer"

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2786
    return-void
.end method
