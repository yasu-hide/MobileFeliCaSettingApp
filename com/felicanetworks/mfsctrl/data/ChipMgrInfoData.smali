.class public Lcom/felicanetworks/mfsctrl/data/ChipMgrInfoData;
.super Ljava/lang/Object;
.source "ChipMgrInfoData.java"


# instance fields
.field public container:[B

.field public icCode:Ljava/lang/String;

.field public idm:[B


# direct methods
.method public constructor <init>([BLjava/lang/String;[B)V
    .locals 1
    .param p1, "idm"    # [B
    .param p2, "icCode"    # Ljava/lang/String;
    .param p3, "container"    # [B

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/data/ChipMgrInfoData;->idm:[B

    .line 31
    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/data/ChipMgrInfoData;->icCode:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/felicanetworks/mfsctrl/data/ChipMgrInfoData;->container:[B

    .line 49
    iput-object p1, p0, Lcom/felicanetworks/mfsctrl/data/ChipMgrInfoData;->idm:[B

    .line 50
    iput-object p2, p0, Lcom/felicanetworks/mfsctrl/data/ChipMgrInfoData;->icCode:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/felicanetworks/mfsctrl/data/ChipMgrInfoData;->container:[B

    .line 52
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChipMgrInfoData[idm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/data/ChipMgrInfoData;->idm:[B

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " icCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/data/ChipMgrInfoData;->icCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/data/ChipMgrInfoData;->container:[B

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
