.class public Lcom/felicanetworks/mfsctrl/data/AuthResponseData;
.super Ljava/lang/Object;
.source "AuthResponseData.java"


# static fields
.field public static final RESPONSE_NG:I = 0x1

.field public static final RESPONSE_OK:I


# instance fields
.field public authFinishCode:Ljava/lang/String;

.field public resCode:I

.field public startUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "resCode"    # I
    .param p2, "authFinishCode"    # Ljava/lang/String;
    .param p3, "startUrl"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/mfsctrl/data/AuthResponseData;->resCode:I

    .line 95
    iput-object v1, p0, Lcom/felicanetworks/mfsctrl/data/AuthResponseData;->authFinishCode:Ljava/lang/String;

    .line 112
    iput-object v1, p0, Lcom/felicanetworks/mfsctrl/data/AuthResponseData;->startUrl:Ljava/lang/String;

    .line 126
    iput p1, p0, Lcom/felicanetworks/mfsctrl/data/AuthResponseData;->resCode:I

    .line 127
    iput-object p2, p0, Lcom/felicanetworks/mfsctrl/data/AuthResponseData;->authFinishCode:Ljava/lang/String;

    .line 128
    iput-object p3, p0, Lcom/felicanetworks/mfsctrl/data/AuthResponseData;->startUrl:Ljava/lang/String;

    .line 129
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthResponseData["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/felicanetworks/mfsctrl/data/AuthResponseData;->resCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/data/AuthResponseData;->authFinishCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/mfsctrl/data/AuthResponseData;->startUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
