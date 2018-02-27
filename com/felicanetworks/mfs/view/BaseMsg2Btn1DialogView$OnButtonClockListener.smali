.class Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView$OnButtonClockListener;
.super Ljava/lang/Object;
.source "BaseMsg2Btn1DialogView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnButtonClockListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;


# direct methods
.method private constructor <init>(Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView$OnButtonClockListener;->this$0:Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;
    .param p2, "x1"    # Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView$1;

    .prologue
    .line 511
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView$OnButtonClockListener;-><init>(Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 540
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView$OnButtonClockListener;->this$0:Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;

    invoke-virtual {v0}, Lcom/felicanetworks/mfs/view/BaseMsg2Btn1DialogView;->onDialogButtonClick()V

    .line 544
    return-void
.end method
