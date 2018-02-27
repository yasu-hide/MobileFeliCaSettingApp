.class public Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary$FeliCaConnImpl;
.super Ljava/lang/Object;
.source "ControlFunctionLibrary.java"

# interfaces
.implements Lcom/felicanetworks/cmnctrl/chip/BindFelicaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FeliCaConnImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;


# direct methods
.method protected constructor <init>(Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary$FeliCaConnImpl;->this$0:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "errIdentifierCode"    # Ljava/lang/String;

    .prologue
    .line 619
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary$FeliCaConnImpl;->this$0:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    invoke-static {v0}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->access$000(Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;)Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary$FeliCaConnImpl;->this$0:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    invoke-static {v0}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->access$000(Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;)Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;->onError(Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary$FeliCaConnImpl;->this$0:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->access$002(Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;)Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary$FeliCaConnImpl;->this$0:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    invoke-virtual {v0}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->deinitializeApplication()V

    .line 634
    return-void
.end method

.method public notifySucceeded()V
    .locals 5

    .prologue
    .line 549
    :try_start_0
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary$FeliCaConnImpl;->this$0:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    invoke-static {v2}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->access$000(Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;)Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 554
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary$FeliCaConnImpl;->this$0:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    invoke-static {v2}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->access$100(Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;)Lcom/felicanetworks/mfsctrl/chip/BindFsc;

    move-result-object v2

    new-instance v3, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary$FscConnImpl;

    iget-object v4, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary$FeliCaConnImpl;->this$0:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    invoke-direct {v3, v4}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary$FscConnImpl;-><init>(Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;)V

    invoke-virtual {v2, v3}, Lcom/felicanetworks/mfsctrl/chip/BindFsc;->bindFsc(Lcom/felicanetworks/mfsctrl/chip/BindFscListener;)V

    .line 585
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary$FeliCaConnImpl;->this$0:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    invoke-virtual {v2}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->deinitializeApplication()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 563
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary$FeliCaConnImpl;->this$0:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    invoke-static {v2}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->access$200(Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;)Lcom/felicanetworks/mfslib/MfsAppContext;

    move-result-object v2

    iget-object v2, v2, Lcom/felicanetworks/mfslib/MfsAppContext;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v4, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary$FeliCaConnImpl;->this$0:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    invoke-virtual {v2, v3, v4, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 569
    .local v1, "errorId":Ljava/lang/String;
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary$FeliCaConnImpl;->this$0:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    invoke-static {v2}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->access$000(Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;)Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 574
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary$FeliCaConnImpl;->this$0:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    invoke-static {v2}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->access$000(Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;)Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;->onError(Ljava/lang/String;)V

    .line 577
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary$FeliCaConnImpl;->this$0:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->access$002(Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;)Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;

    .line 580
    :cond_1
    iget-object v2, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary$FeliCaConnImpl;->this$0:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    invoke-virtual {v2}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->deinitializeApplication()V

    goto :goto_0
.end method
