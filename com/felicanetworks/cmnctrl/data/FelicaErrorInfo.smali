.class public Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;
.super Ljava/lang/Object;
.source "FelicaErrorInfo.java"


# static fields
.field public static final EX_TYPE_VALUE:Ljava/lang/String; = "01"

.field public static final INIT_VALUE:I = 0x0

.field public static final LS_TYPE_VALUE:Ljava/lang/String; = "02"


# instance fields
.field public errorID:I

.field public errorType:I

.field public genTypeValue:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public statusFlg1:I

.field public statusFlg2:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;)V
    .locals 2
    .param p1, "genTypeValue"    # Ljava/lang/String;
    .param p2, "errorID"    # I
    .param p3, "errorType"    # I
    .param p4, "statusFlg1"    # I
    .param p5, "statusFlg2"    # I
    .param p6, "message"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;->genTypeValue:Ljava/lang/String;

    .line 27
    iput v1, p0, Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;->errorID:I

    .line 29
    iput v1, p0, Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;->errorType:I

    .line 31
    iput v1, p0, Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;->statusFlg1:I

    .line 33
    iput v1, p0, Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;->statusFlg2:I

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;->message:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;->genTypeValue:Ljava/lang/String;

    .line 49
    iput p2, p0, Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;->errorID:I

    .line 50
    iput p3, p0, Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;->errorType:I

    .line 51
    iput p4, p0, Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;->statusFlg1:I

    .line 52
    iput p5, p0, Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;->statusFlg2:I

    .line 53
    iput-object p6, p0, Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;->message:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FelicaErrorInfo {class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;->genTypeValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;->errorID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;->errorType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;->statusFlg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flg2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;->statusFlg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/cmnctrl/data/FelicaErrorInfo;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
