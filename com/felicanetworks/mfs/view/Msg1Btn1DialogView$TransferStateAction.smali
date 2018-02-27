.class public Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$TransferStateAction;
.super Ljava/lang/Object;
.source "Msg1Btn1DialogView.java"

# interfaces
.implements Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransferStateAction"
.end annotation


# instance fields
.field commandId:I

.field final synthetic this$0:Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;I)V
    .locals 0
    .param p2, "id"    # I

    .prologue
    .line 227
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$TransferStateAction;->this$0:Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput p2, p0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$TransferStateAction;->commandId:I

    .line 229
    return-void
.end method


# virtual methods
.method public action()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$TransferStateAction;->this$0:Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;

    iget v1, p0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$TransferStateAction;->commandId:I

    invoke-virtual {v0, v1}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->transferState(I)V

    .line 235
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$TransferStateAction;->commandId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
