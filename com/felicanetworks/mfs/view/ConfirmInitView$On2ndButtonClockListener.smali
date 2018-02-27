.class Lcom/felicanetworks/mfs/view/ConfirmInitView$On2ndButtonClockListener;
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
    name = "On2ndButtonClockListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfs/view/ConfirmInitView;


# direct methods
.method private constructor <init>(Lcom/felicanetworks/mfs/view/ConfirmInitView;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView$On2ndButtonClockListener;->this$0:Lcom/felicanetworks/mfs/view/ConfirmInitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/felicanetworks/mfs/view/ConfirmInitView;Lcom/felicanetworks/mfs/view/ConfirmInitView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/felicanetworks/mfs/view/ConfirmInitView;
    .param p2, "x1"    # Lcom/felicanetworks/mfs/view/ConfirmInitView$1;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfs/view/ConfirmInitView$On2ndButtonClockListener;-><init>(Lcom/felicanetworks/mfs/view/ConfirmInitView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/ConfirmInitView$On2ndButtonClockListener;->this$0:Lcom/felicanetworks/mfs/view/ConfirmInitView;

    invoke-virtual {v0}, Lcom/felicanetworks/mfs/view/ConfirmInitView;->on2ndDialogButtonClick()V

    .line 138
    return-void
.end method
