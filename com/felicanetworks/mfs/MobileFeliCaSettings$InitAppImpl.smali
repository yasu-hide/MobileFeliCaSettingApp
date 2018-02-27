.class public Lcom/felicanetworks/mfs/MobileFeliCaSettings$InitAppImpl;
.super Ljava/lang/Object;
.source "MobileFeliCaSettings.java"

# interfaces
.implements Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfs/MobileFeliCaSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InitAppImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;


# direct methods
.method protected constructor <init>(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)V
    .locals 0

    .prologue
    .line 1342
    iput-object p1, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$InitAppImpl;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 5

    .prologue
    .line 1384
    :try_start_0
    iget-object v2, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$InitAppImpl;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v2}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$400(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v2

    iget-object v2, v2, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    invoke-virtual {v2}, Lcom/felicanetworks/cmnlib/log/LogMgr;->isExistErrReport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1390
    const/16 v2, 0xf

    invoke-static {v2}, Lcom/felicanetworks/cmnview/TransferState;->transferState(I)V

    .line 1410
    :goto_0
    return-void

    .line 1398
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/felicanetworks/cmnview/TransferState;->transferState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1400
    :catch_0
    move-exception v0

    .line 1404
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$InitAppImpl;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-static {v2}, Lcom/felicanetworks/mfs/MobileFeliCaSettings;->access$400(Lcom/felicanetworks/mfs/MobileFeliCaSettings;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v2

    iget-object v2, v2, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v4, p0, Lcom/felicanetworks/mfs/MobileFeliCaSettings$InitAppImpl;->this$0:Lcom/felicanetworks/mfs/MobileFeliCaSettings;

    invoke-virtual {v2, v3, v4, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 1405
    .local v1, "errorId":Ljava/lang/String;
    invoke-static {v1}, Lcom/felicanetworks/cmnview/TransferState;->transferFatalError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 1422
    invoke-static {p1}, Lcom/felicanetworks/cmnview/TransferState;->transferFatalError(Ljava/lang/String;)V

    .line 1426
    return-void
.end method
