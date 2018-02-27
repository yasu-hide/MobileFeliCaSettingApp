.class public Lcom/felicanetworks/mfs/view/ConfirmInitView$LinkClickListener;
.super Ljava/lang/Object;
.source "ConfirmInitView.java"

# interfaces
.implements Lcom/felicanetworks/mfs/view/ViewUtil$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfs/view/ConfirmInitView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LinkClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfs/view/ConfirmInitView;


# direct methods
.method protected constructor <init>(Lcom/felicanetworks/mfs/view/ConfirmInitView;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView$LinkClickListener;->this$0:Lcom/felicanetworks/mfs/view/ConfirmInitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 287
    :try_start_0
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView$LinkClickListener;->this$0:Lcom/felicanetworks/mfs/view/ConfirmInitView;

    iget-object v2, v2, Lcom/felicanetworks/mfs/view/ConfirmInitView;->context:Lcom/felicanetworks/mfslib/MfsAppContext;

    invoke-static {v2, p1}, Lcom/felicanetworks/mfs/view/ViewUtil;->showBrowser(Lcom/felicanetworks/mfslib/MfsAppContext;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/felicanetworks/cmnview/AppData;->getInstance()Lcom/felicanetworks/cmnview/AppData;

    move-result-object v2

    iget-object v2, v2, Lcom/felicanetworks/cmnview/AppData;->logMgr:Lcom/felicanetworks/cmnlib/log/LogMgr;

    sget-object v3, Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;->ERR:Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;

    iget-object v4, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView$LinkClickListener;->this$0:Lcom/felicanetworks/mfs/view/ConfirmInitView;

    invoke-virtual {v2, v3, v4, v0}, Lcom/felicanetworks/cmnlib/log/LogMgr;->out(Lcom/felicanetworks/cmnlib/log/LogMgr$CatExp;Lcom/felicanetworks/cmnlib/FunctionCodeInterface;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "errorId":Ljava/lang/String;
    iget-object v2, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView$LinkClickListener;->this$0:Lcom/felicanetworks/mfs/view/ConfirmInitView;

    invoke-virtual {v2, v1}, Lcom/felicanetworks/mfs/view/ConfirmInitView;->transferFatalError(Ljava/lang/String;)V

    goto :goto_0
.end method
