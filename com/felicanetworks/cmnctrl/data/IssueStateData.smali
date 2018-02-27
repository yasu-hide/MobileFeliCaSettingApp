.class public Lcom/felicanetworks/cmnctrl/data/IssueStateData;
.super Ljava/lang/Object;
.source "IssueStateData.java"


# instance fields
.field public apiCodeBeta:Ljava/lang/String;

.field public apiCodeVersion:Ljava/lang/String;

.field public idmData:Ljava/lang/String;

.field public issueStateResult:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "issueStateResult"    # Z
    .param p2, "idmData"    # Ljava/lang/String;
    .param p3, "apiCodeBeta"    # Ljava/lang/String;
    .param p4, "apiCodeVersion"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean p1, p0, Lcom/felicanetworks/cmnctrl/data/IssueStateData;->issueStateResult:Z

    .line 36
    iput-object p2, p0, Lcom/felicanetworks/cmnctrl/data/IssueStateData;->idmData:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/felicanetworks/cmnctrl/data/IssueStateData;->apiCodeBeta:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/felicanetworks/cmnctrl/data/IssueStateData;->apiCodeVersion:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IssueStateData["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/felicanetworks/cmnctrl/data/IssueStateData;->issueStateResult:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/data/IssueStateData;->idmData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/data/IssueStateData;->apiCodeBeta:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/data/IssueStateData;->apiCodeVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
