.class public Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$OnButtonClickListener;
.super Ljava/lang/Object;
.source "BaseMsg1Btn1ProgressDialogView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OnButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;


# direct methods
.method protected constructor <init>(Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$OnButtonClickListener;->this$0:Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView$OnButtonClickListener;->this$0:Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;

    invoke-virtual {v0}, Lcom/felicanetworks/mfs/view/BaseMsg1Btn1ProgressDialogView;->onDialogButtonClick()V

    .line 347
    return-void
.end method
