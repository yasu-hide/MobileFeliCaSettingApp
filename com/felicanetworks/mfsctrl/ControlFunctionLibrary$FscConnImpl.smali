.class public Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary$FscConnImpl;
.super Ljava/lang/Object;
.source "ControlFunctionLibrary.java"

# interfaces
.implements Lcom/felicanetworks/mfsctrl/chip/BindFscListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FscConnImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;


# direct methods
.method protected constructor <init>(Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary$FscConnImpl;->this$0:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "errId"    # Ljava/lang/String;

    .prologue
    .line 730
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary$FscConnImpl;->this$0:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    invoke-static {v0}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->access$000(Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;)Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary$FscConnImpl;->this$0:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    invoke-static {v0}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->access$000(Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;)Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;->onError(Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary$FscConnImpl;->this$0:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->access$002(Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;)Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary$FscConnImpl;->this$0:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    invoke-virtual {v0}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->deinitializeApplication()V

    .line 744
    return-void
.end method

.method public notifySucceeded()V
    .locals 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary$FscConnImpl;->this$0:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    invoke-static {v0}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->access$000(Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;)Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary$FscConnImpl;->this$0:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    invoke-static {v0}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->access$000(Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;)Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;->onComplete()V

    .line 682
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary$FscConnImpl;->this$0:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->access$002(Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;)Lcom/felicanetworks/mfsctrl/InitializeApplicationListener;

    .line 696
    :goto_0
    return-void

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary$FscConnImpl;->this$0:Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;

    invoke-virtual {v0}, Lcom/felicanetworks/mfsctrl/ControlFunctionLibrary;->deinitializeApplication()V

    goto :goto_0
.end method
