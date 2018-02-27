.class Lcom/felicanetworks/mfs/view/ConfirmInitView$On1stButtonClockListener;
.super Ljava/lang/Object;
.source "ConfirmInitView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfs/view/ConfirmInitView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "On1stButtonClockListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfs/view/ConfirmInitView;


# direct methods
.method private constructor <init>(Lcom/felicanetworks/mfs/view/ConfirmInitView;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView$On1stButtonClockListener;->this$0:Lcom/felicanetworks/mfs/view/ConfirmInitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/felicanetworks/mfs/view/ConfirmInitView;Lcom/felicanetworks/mfs/view/ConfirmInitView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/felicanetworks/mfs/view/ConfirmInitView;
    .param p2, "x1"    # Lcom/felicanetworks/mfs/view/ConfirmInitView$1;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfs/view/ConfirmInitView$On1stButtonClockListener;-><init>(Lcom/felicanetworks/mfs/view/ConfirmInitView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView$On1stButtonClockListener;->this$0:Lcom/felicanetworks/mfs/view/ConfirmInitView;

    invoke-virtual {v0}, Lcom/felicanetworks/mfs/view/ConfirmInitView;->on1stDialogButtonClick()V

    .line 129
    return-void
.end method
