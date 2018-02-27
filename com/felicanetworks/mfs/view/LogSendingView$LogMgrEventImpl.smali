.class public Lcom/felicanetworks/mfs/view/LogSendingView$LogMgrEventImpl;
.super Ljava/lang/Object;
.source "LogSendingView.java"

# interfaces
.implements Lcom/felicanetworks/cmnlib/log/LogMgrEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfs/view/LogSendingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LogMgrEventImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfs/view/LogSendingView;


# direct methods
.method protected constructor <init>(Lcom/felicanetworks/mfs/view/LogSendingView;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/LogSendingView$LogMgrEventImpl;->this$0:Lcom/felicanetworks/mfs/view/LogSendingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finished(ILjava/lang/String;)V
    .locals 5
    .param p1, "result"    # I
    .param p2, "errIdentifierCode"    # Ljava/lang/String;

    .prologue
    .line 192
    :try_start_0
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/LogSendingView$LogMgrEventImpl;->this$0:Lcom/felicanetworks/mfs/view/LogSendingView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/felicanetworks/mfs/view/LogSendingView;->transferState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/felicanetworks/mfs/MfsAppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v2

    iget-object v2, v2, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v4, p0, Lcom/felicanetworks/mfs/view/LogSendingView$LogMgrEventImpl;->this$0:Lcom/felicanetworks/mfs/view/LogSendingView;

    invoke-virtual {v2, v3, v4, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "errorId":Ljava/lang/String;
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/LogSendingView$LogMgrEventImpl;->this$0:Lcom/felicanetworks/mfs/view/LogSendingView;

    invoke-virtual {v2, v1}, Lcom/felicanetworks/mfs/view/LogSendingView;->transferFatalError(Ljava/lang/String;)V

    goto :goto_0
.end method
