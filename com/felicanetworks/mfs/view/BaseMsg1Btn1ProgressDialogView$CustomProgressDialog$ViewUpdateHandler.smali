.class Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog$ViewUpdateHandler;
.super Landroid/os/Handler;
.source "BaseMsg1Btn1ProgressDialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewUpdateHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;


# direct methods
.method private constructor <init>(Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;)V
    .locals 0

    .prologue
    .line 699
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog$ViewUpdateHandler;->this$1:Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;
    .param p2, "x1"    # Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$1;

    .prologue
    .line 699
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog$ViewUpdateHandler;-><init>(Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 703
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 707
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog$ViewUpdateHandler;->this$1:Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;->access$500(Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$CustomProgressDialog;I)V

    .line 711
    return-void
.end method
