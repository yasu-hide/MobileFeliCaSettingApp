.class public Lcom/felicanetworks/cmnview/TransferData;
.super Ljava/lang/Object;
.source "TransferData.java"


# instance fields
.field data:Lcom/felicanetworks/cmnview/TransferStateData;

.field senderInfo:Lcom/felicanetworks/cmnview/TransferSenderInfo;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/cmnview/TransferStateData;Lcom/felicanetworks/cmnview/TransferSenderInfo;)V
    .locals 1
    .param p1, "data"    # Lcom/felicanetworks/cmnview/TransferStateData;
    .param p2, "senderInfo"    # Lcom/felicanetworks/cmnview/TransferSenderInfo;

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/felicanetworks/cmnview/TransferData;->data:Lcom/felicanetworks/cmnview/TransferStateData;

    .line 17
    iput-object v0, p0, Lcom/felicanetworks/cmnview/TransferData;->senderInfo:Lcom/felicanetworks/cmnview/TransferSenderInfo;

    .line 25
    iput-object p1, p0, Lcom/felicanetworks/cmnview/TransferData;->data:Lcom/felicanetworks/cmnview/TransferStateData;

    .line 26
    iput-object p2, p0, Lcom/felicanetworks/cmnview/TransferData;->senderInfo:Lcom/felicanetworks/cmnview/TransferSenderInfo;

    .line 27
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/cmnview/TransferData;->data:Lcom/felicanetworks/cmnview/TransferStateData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",senderInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/cmnview/TransferData;->senderInfo:Lcom/felicanetworks/cmnview/TransferSenderInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
