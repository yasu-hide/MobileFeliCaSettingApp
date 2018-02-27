.class public Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$SetResultAction;
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
    name = "SetResultAction"
.end annotation


# instance fields
.field resultCode:I

.field final synthetic this$0:Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;I)V
    .locals 0
    .param p2, "cd"    # I

    .prologue
    .line 253
    iput-object p1, p0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$SetResultAction;->this$0:Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput p2, p0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$SetResultAction;->resultCode:I

    .line 255
    return-void
.end method


# virtual methods
.method public action()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 260
    new-instance v0, Lcom/felicanetworks/mfs/MfsTransferStateData_Result;

    invoke-direct {v0}, Lcom/felicanetworks/mfs/MfsTransferStateData_Result;-><init>()V

    .line 261
    .local v0, "data":Lcom/felicanetworks/mfs/MfsTransferStateData_Result;
    iget v1, p0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$SetResultAction;->resultCode:I

    iput v1, v0, Lcom/felicanetworks/mfs/MfsTransferStateData_Result;->result:I

    .line 262
    iget-object v1, p0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$SetResultAction;->this$0:Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2, v0}, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView;->transferState(ILcom/felicanetworks/cmnview/TransferStateData;)V

    .line 263
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 269
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

    iget v1, p0, Lcom/felicanetworks/mfs/view/Msg1Btn1DialogView$SetResultAction;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
