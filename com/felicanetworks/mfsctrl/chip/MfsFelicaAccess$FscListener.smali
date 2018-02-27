.class public Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess$FscListener;
.super Ljava/lang/Object;
.source "MfsFelicaAccess.java"

# interfaces
.implements Lcom/felicanetworks/mfc/FSCEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FscListener"
.end annotation


# static fields
.field private static final STATUS_CODE_NOMALEND:I = 0x0

.field private static final STATUS_CODE_WRITEMAX:I = 0x24b9


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;


# direct methods
.method protected constructor <init>(Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess$FscListener;->this$0:Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public errorOccurred(ILjava/lang/String;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess$FscListener;->this$0:Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

    invoke-static {v0}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->access$000(Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;)Lcom/felicanetworks/mfsctrl/chip/FelicaInitializeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    const/4 v0, 0x3

    if-ne v0, p1, :cond_1

    .line 413
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess$FscListener;->this$0:Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

    invoke-static {v0}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->access$000(Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;)Lcom/felicanetworks/mfsctrl/chip/FelicaInitializeListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/felicanetworks/mfsctrl/chip/FelicaInitializeListener;->onWarning(I)V

    .line 421
    :goto_0
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess$FscListener;->this$0:Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

    invoke-static {v0}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->access$100(Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v0

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v1, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess$FscListener;->this$0:Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FSC#errorOccurred {type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " message="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    .line 423
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess$FscListener;->this$0:Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->access$002(Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;Lcom/felicanetworks/mfsctrl/chip/FelicaInitializeListener;)Lcom/felicanetworks/mfsctrl/chip/FelicaInitializeListener;

    .line 429
    :cond_0
    return-void

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess$FscListener;->this$0:Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

    invoke-static {v0}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->access$000(Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;)Lcom/felicanetworks/mfsctrl/chip/FelicaInitializeListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/felicanetworks/mfsctrl/chip/FelicaInitializeListener;->onWarning(I)V

    goto :goto_0
.end method

.method public finished(I)V
    .locals 6
    .param p1, "status"    # I

    .prologue
    .line 272
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess$FscListener;->this$0:Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

    invoke-static {v0}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->access$000(Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;)Lcom/felicanetworks/mfsctrl/chip/FelicaInitializeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 279
    if-eqz p1, :cond_0

    const/16 v0, 0x24b9

    if-ne v0, p1, :cond_2

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess$FscListener;->this$0:Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

    invoke-static {v0}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->access$000(Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;)Lcom/felicanetworks/mfsctrl/chip/FelicaInitializeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/felicanetworks/mfsctrl/chip/FelicaInitializeListener;->onComplete()V

    .line 295
    :goto_0
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess$FscListener;->this$0:Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->access$002(Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;Lcom/felicanetworks/mfsctrl/chip/FelicaInitializeListener;)Lcom/felicanetworks/mfsctrl/chip/FelicaInitializeListener;

    .line 300
    :cond_1
    return-void

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess$FscListener;->this$0:Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

    invoke-static {v0}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->access$000(Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;)Lcom/felicanetworks/mfsctrl/chip/FelicaInitializeListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/felicanetworks/mfsctrl/chip/FelicaInitializeListener;->onWarning(I)V

    .line 292
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess$FscListener;->this$0:Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

    invoke-static {v0}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->access$100(Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v0

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v1, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess$FscListener;->this$0:Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FSC#finished {status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    goto :goto_0
.end method

.method public operationRequested(ILjava/lang/String;[B)[B
    .locals 5
    .param p1, "deviceID"    # I
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess$FscListener;->this$0:Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

    invoke-static {v0}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;->access$100(Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v0

    iget-object v0, v0, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v1, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->WAR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess$FscListener;->this$0:Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccess;

    new-instance v3, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcom/felicanetworks/mfsctrl/chip/MfsFelicaAccessException;-><init>(I)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    .line 337
    new-instance v0, Ljava/lang/Exception;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
