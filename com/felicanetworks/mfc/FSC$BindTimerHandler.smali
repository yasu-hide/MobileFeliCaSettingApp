.class Lcom/felicanetworks/mfc/FSC$BindTimerHandler;
.super Landroid/os/Handler;
.source "FSC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfc/FSC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BindTimerHandler"
.end annotation


# static fields
.field static final MSG_BIND_TIMER:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfc/FSC;


# direct methods
.method constructor <init>(Lcom/felicanetworks/mfc/FSC;)V
    .locals 0

    .prologue
    .line 773
    iput-object p1, p0, Lcom/felicanetworks/mfc/FSC$BindTimerHandler;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x2

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 807
    const-string v1, "%s what=%d"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "000 handleMessage"

    aput-object v3, v2, v8

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v9, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 808
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v7, :cond_1

    .line 809
    const-string v1, "%s bind timeout online=%b fsc=%s"

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "800 handleMessage"

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/felicanetworks/mfc/FSC$BindTimerHandler;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-static {v3}, Lcom/felicanetworks/mfc/FSC;->access$4(Lcom/felicanetworks/mfc/FSC;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/felicanetworks/mfc/FSC$BindTimerHandler;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-static {v3}, Lcom/felicanetworks/mfc/FSC;->access$2(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/IFSC;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 810
    const/4 v0, 0x0

    .line 811
    .local v0, "clientListener":Lcom/felicanetworks/mfc/FSCEventListener;
    iget-object v2, p0, Lcom/felicanetworks/mfc/FSC$BindTimerHandler;->this$0:Lcom/felicanetworks/mfc/FSC;

    monitor-enter v2

    .line 812
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC$BindTimerHandler;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-static {v1}, Lcom/felicanetworks/mfc/FSC;->access$4(Lcom/felicanetworks/mfc/FSC;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC$BindTimerHandler;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-static {v1}, Lcom/felicanetworks/mfc/FSC;->access$2(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/IFSC;

    move-result-object v1

    if-nez v1, :cond_0

    .line 813
    const/4 v1, 0x7

    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "001 handleMessage"

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 814
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC$BindTimerHandler;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-static {v1}, Lcom/felicanetworks/mfc/FSC;->access$0(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/FSCEventListener;

    move-result-object v0

    .line 816
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC$BindTimerHandler;->this$0:Lcom/felicanetworks/mfc/FSC;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/felicanetworks/mfc/FSC;->access$5(Lcom/felicanetworks/mfc/FSC;Z)V

    .line 817
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC$BindTimerHandler;->this$0:Lcom/felicanetworks/mfc/FSC;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/felicanetworks/mfc/FSC;->access$6(Lcom/felicanetworks/mfc/FSC;Z)V

    .line 811
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    if-eqz v0, :cond_1

    .line 822
    const-string v1, "%s Do the callback"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "010 handleMessage"

    aput-object v3, v2, v8

    invoke-static {v9, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 823
    const-string v1, "Bind timeout."

    invoke-interface {v0, v7, v1}, Lcom/felicanetworks/mfc/FSCEventListener;->errorOccurred(ILjava/lang/String;)V

    .line 826
    .end local v0    # "clientListener":Lcom/felicanetworks/mfc/FSCEventListener;
    :cond_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 827
    const-string v1, "%s"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "999 handleMessage"

    aput-object v3, v2, v8

    invoke-static {v9, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 828
    return-void

    .line 811
    .restart local v0    # "clientListener":Lcom/felicanetworks/mfc/FSCEventListener;
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

    .line 780
    const-string v0, "%s timeout=%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "000 startTimer"

    aput-object v2, v1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 781
    if-lez p1, :cond_0

    .line 782
    const/4 v0, 0x7

    const-string v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "001 startTimer"

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 784
    iget-object v0, p0, Lcom/felicanetworks/mfc/FSC$BindTimerHandler;->this$0:Lcom/felicanetworks/mfc/FSC;

    invoke-static {v0}, Lcom/felicanetworks/mfc/FSC;->access$3(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/FSC$BindTimerHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/felicanetworks/mfc/FSC$BindTimerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/felicanetworks/mfc/FSC$BindTimerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 786
    :cond_0
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "999 startTimer"

    aput-object v2, v1, v5

    invoke-static {v6, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 787
    return-void
.end method

.method stopTimer()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 793
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "000 stopTimer"

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 795
    invoke-virtual {p0, v3}, Lcom/felicanetworks/mfc/FSC$BindTimerHandler;->removeMessages(I)V

    .line 796
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "999 stopTimer"

    aput-object v2, v1, v4

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 797
    return-void
.end method
