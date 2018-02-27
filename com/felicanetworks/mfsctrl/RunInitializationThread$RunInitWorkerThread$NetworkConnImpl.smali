.class public Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$NetworkConnImpl;
.super Ljava/lang/Object;
.source "RunInitializationThread.java"

# interfaces
.implements Lcom/felicanetworks/cmnctrl/net/NetworkAccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NetworkConnImpl"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;


# direct methods
.method protected constructor <init>(Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;)V
    .locals 0

    .prologue
    .line 1720
    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$NetworkConnImpl;->this$1:Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receiveRatio(I)V
    .locals 2
    .param p1, "callCnt"    # I

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$NetworkConnImpl;->this$1:Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->access$300(Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;I)V

    .line 1759
    return-void
.end method

.method public session()V
    .locals 2

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread$NetworkConnImpl;->this$1:Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;->access$300(Lcom/felicanetworks/mfsctrl/RunInitializationThread$RunInitWorkerThread;I)V

    .line 1790
    return-void
.end method
