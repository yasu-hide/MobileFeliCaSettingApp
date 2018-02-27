.class public Lcom/felicanetworks/cmnctrl/data/ErrorLogData;
.super Ljava/lang/Object;
.source "ErrorLogData.java"


# instance fields
.field public date:Ljava/lang/String;

.field public idm:Ljava/lang/String;

.field public log:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "log"    # Ljava/lang/String;
    .param p3, "idm"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/felicanetworks/cmnctrl/data/ErrorLogData;->date:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/felicanetworks/cmnctrl/data/ErrorLogData;->log:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/felicanetworks/cmnctrl/data/ErrorLogData;->idm:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrorLogData["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/data/ErrorLogData;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/data/ErrorLogData;->log:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/data/ErrorLogData;->idm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
