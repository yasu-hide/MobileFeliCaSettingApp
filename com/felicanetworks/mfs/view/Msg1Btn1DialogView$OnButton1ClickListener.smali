.class public Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$OnButton1ClickListener;
.super Ljava/lang/Object;
.source "Msg1Btn1DialogView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OnButton1ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;


# direct methods
.method protected constructor <init>(Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$OnButton1ClickListener;->this$0:Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$OnButton1ClickListener;->this$0:Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;

    invoke-virtual {v0}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->onDialogButton1Click()V

    .line 148
    return-void
.end method
